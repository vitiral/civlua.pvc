flushing out iA
--- os/iA/README.cxt
+++ os/iA/README.cxt
@@ -323 +323 @@
-* [$A low: int, D high: int *= mul($A a: int, V b: int)] defines
+* [$A low: int, D high: int = mul($A a: int, V b: int)] defines

--- os/iA/iA.lua
+++ os/iA/iA.lua
@@ -5,0 +6,16 @@
+--- iA submodule containing all modules
+--- (both user-defined and native).
+---
+--- Modules contain their own types.
+M.mod = G.mod and G.mod'iA.mod' or {}
+
+--- iA default core module, containing core types and functions.
+M.core = G.mod and G.mod'iA.core' or {}
+
+--- iA array module, containing all array types used in code.
+--- Get or fetch an array type by calling it with the inner type.
+M.array = G.mod and G.mod'iA.array' or setmetatable({}, {})
+
+local C = M.core
+M.mod.core, M.mod.array = C, M.array
+
@@ -13,5 +29,11 @@
-  -- Input / Output registers.
-  A = 1, -- Accumulator. First input, second output
-  B = 2, -- Second input, third output
-  C = 3, -- Count/branch. First output, not an input.
-  D = 4, -- Fourth output.
+  NONE = 0, -- no register selected
+
+  -- Corruptable input/output registers
+  -- Input order:  A B D E F G H  (note: no C)
+  -- Output order: C A B D
+  --- Accumulator register.
+  A = 1,
+  B = 2,
+  --- Count register, used in branch-if-zero
+  C = 3,
+  D = 4,
@@ -25,3 +47,7 @@
-  -- corruptable regiseters used as temporaries.
-  -- S and T are used for memory instructions like memcpy.
-  Q = 17, R = 18, S = 19, T = 20,
+  -- corruptable registers used as temporaries.
+  Q = 17, R = 18,
+
+  --- corruptable "source" or temporary
+  S = 19,
+  --- corruptable "to" (aka destination) or temporary
+  T = 20,
@@ -33 +59 @@
-  -- reserved: 24 - 32
+  -- reserved and unused
@@ -36,3 +62,12 @@
-  -- stack pointer holding the "top" of stack at the lowest
-  -- memory address.
-  sp = 32,
+  -- lowest memory address of return stack
+  sp = 27,
+}
+
+M.TyKind = mty.enum'TyKind' {
+  UNKNOWN = 0, -- an unknown type.
+  NATIVE  = 1, -- a native type such as an integer.
+  CSTR    = 2, -- a counted string.
+  ARRAY   = 3, -- an array with a U4 len, U4 cap, then the data.
+  ENUM    = 4, -- a user-defined enum.
+  STRUCT  = 5, -- a user-defined struct.
+}
@@ -40 +75,8 @@
-  fs = 33, -- floating point stack
+--- iA Type, either user-defined (i.e. struct, enum) or native.
+M.Ty = mty'Ty' {
+  'mod  [iA.Mod]: the module the type is defined in.',
+  'name [str]: the name of the type.',
+  'sz   [int?]: the size of the type in bytes, or nil if unknown.',
+  'ref  [int]: the number of & reference levels of the type', ref = 0,
+  'kind [iA.TyKind]: the kind of type',
+  'field [table[string, int]]: STRUCT/ENUM only, map of name -> idx.',
@@ -42,0 +85,55 @@
+local native = function(name, sz)
+  return M.Ty{mod=C, name=name, sz=sz, ref=0, kind=M.TyKind.NATIVE}
+end
+
+C.U1, C.U2 = native('U1', 1), native('U2', 2)
+C.U4, C.U8 = native('U4', 4), native('U8', 8)
+
+C.I1, C.I2 = native('I1', 1), native('I2', 2)
+C.I4, C.I8 = native('I4', 4), native('I8', 8)
+
+--- Note: platforms may mutate this size
+C.Int = native('Int', 4)
+
+--- Note: platforms may mutate this size
+C.UInt = native('UInt', 4)
+
+local userTyCheck = function(t)
+  assert(t.fields, 'user type must have fields table')
+  for f, i in pairs(t.fields) do
+    if not t[i] then error('field '..f..' is missing type') end
+  end
+end
+
+--- Create or fetch an array with inner-type.
+M.array.__call = function(_, ty)
+  assert(mty.ty(ty) == M.Ty)
+  local name = sfmt('[%s.%s]', ty.mod.name, ty.name)
+  local a = rawget(M.array, name); if a then
+    if a[1] ~= ty then
+      error('duplicate array name: '..t.name)
+    end
+    return a
+  end
+  a = M.Ty{a, mod=M.array, name=name, kind=M.TyKind.ARRAY}
+  M.array[name] = a
+  return a
+end
+
+--- Create a new struct type
+M.struct = function(t)
+  assert(t.mod, 'missing mod'); assert(t.name, 'missing name')
+  userTyCheck(t)
+  t.kind = M.TyKind.STRUCT
+  return M.Ty(t)
+end
+
+--- Create a new enum type
+C.enum = function(t)
+  assert(t.mod, 'missing mod'); assert(t.name, 'missing name')
+  userTyCheck(t)
+  t.kind = M.TyKind.ENUM
+  return M.Ty(t)
+end
+
+--- Named register or memory location and its type.
@@ -44,0 +142,87 @@
+  'ty  [iA.Ty]: the type of the variable.',
+ [[scope: the scope where the variable is active for
+          (Mod, Fn, Block, etc)]],
+  'cap [int]: the max capacity of a non-ref array type, or nil',
+}
+
+--- A literal value.
+M.Literal = mty'Literal' { 'ty [iA.Ty]', 'value', }
+
+M.Expr1Kind = mty.enum'Expr1Kind' {
+  --- Named variable or literal
+  VAL = 1,
+  --- single-assignment with optional operator.
+  EQ1 = 2,
+  --- function call which returns one register.
+  FN1 = 3,
+}
+
+M.Op = mty.enum'Op' {
+  INT = 0, -- CPU interrupt. Used for errors and kernel stuff.
+
+  -- stack and jump operations
+  SP   = 1, -- sp(l): increment/decrement sp by literal
+  PUSH = 2, -- push(l,r): push value/s to stack
+  POP  = 3, -- pop(l,r): pop value/s from stack into register/s
+  CALL = 4, -- call(l): call procedure at l
+  RET  = 5, -- return from procedure
+  CMP  = 6, -- cmp(l,r): compare and set flags register
+  JMP  = 7, -- jmpif imm == (l&imm): l can be 0 (flags) or a reg.
+
+  -- l @= r: fetch value of size at address r
+  FT1=16, FT2=17, FT4=18, FT8=19,
+
+  -- store(l, r): store value r of size at address l
+  ST1=20, ST2=21, ST4=22, ST8=23,
+
+  -- l = r: set l to value r
+  MOV = 24,
+
+  -- Unsigned bitwise operations
+  INV = 25,  -- l ~= r: inversion
+  OR  = 26,  -- l |= r: or
+  AND = 27,  -- l |= r: and
+  XOR = 28,  -- l = xor(l, r): exclusive or
+  SHL = 29,  -- l <<= r: unsigned shift left
+  SHR = 30,  -- l >>= r: unsigned shift right
+  ROL = 31,  -- l = rotl(l, imm): rotate l left by imm
+  ROR = 32,  -- l = rotr(l, imm): rotate l left by imm
+
+  -- int multiplication: A low, D high = mul(A, r)
+  MUL = 40, IMUL = 41,
+
+  -- int division: A quot, D rem = div(D high, A low, r div)]
+  DIV = 42, IDIV = 43,
+
+  -- arithmetic
+  NEG = 44,  -- l = -r: 2's compliment negation
+  ADD = 45,  -- l += r
+  SUB = 46,  -- l -= r
+  MOD = 47,  -- l %= r
+
+  PRINT = 63, -- used in reference impl
+}
+
+--- An expression which returns a single value or register. The number
+--- of items in the list will depend on the kind: [+
+--- * VAL: will contain one item, the Var or Literal.
+--- * EQ1: will contain two items on both sides of equal.
+---        Will optionally have an [$op].
+--- * FN1: will contain the function arguments.
+--- ]
+M.Expr1 = mty'Expr1' {
+  'kind [iA.Expr1Kind]',
+  'op [iA.Op]: the operation being performed for EQ1',
+}
+
+M.StmtKind = mty'StmtKind' {
+  --- expression with single return
+  EXPR1 = 1,
+  --- Multi-assignment function call
+  MULTI = 2,
+  --- if/elif/else statement
+  IF = 3,
+  --- switch/case
+  SWITCH = 4,
+  --- loop
+  LOOP = 5,
