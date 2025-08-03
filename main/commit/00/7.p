initial iA syntax and some pegl work
--- .pvcpaths
+++ .pvcpaths
@@ -180,0 +181,2 @@
+os/iA/iA/parse.lua
+os/iA/test.lua

--- cmd/ele/ARCH.md
+++ cmd/ele/ARCH.md
@@ -47 +47,2 @@
-schedule coroutines which call `evsend(newEvent)` asynchronously.
+schedule coroutines which themselves call `evsend(newEvent)` asynchronously
+in order ot update the main loop.

--- cmd/ele/README.cxt
+++ cmd/ele/README.cxt
@@ -1 +1 @@
-Ele: Extendable Lua Editor
+[{h1}Ele: Extendable Lua Editor]
@@ -9 +9 @@
-* Enjoyable and extendable for developers to fit their workflow
+* Enjoyable and extendable for developers to fit their workflow [+
@@ -11,0 +12 @@
+]
@@ -17 +18,3 @@
-* focusing on performance against the other goals
+* Focusing on performance against the other goals. It should be fast enough
+  to be an editor and should not choke on large files -- otherwise performance
+  is not important.
@@ -20 +23 @@
-See [/ARCH.md] for the current architecture.
+[{h1}Architecture]

--- cmd/ele/ele.lua
+++ cmd/ele/ele.lua
@@ -5,0 +6 @@
+local shim = require'shim'
@@ -7 +7,0 @@
-local log = require'ds.log'
@@ -8,0 +9 @@
+local log = require'ds.log'

--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -146 +145,0 @@
-
@@ -237,0 +237,19 @@
+--- Convert integer to binary representation (0's and 1's) [+
+--- * width will be the number of bits.
+--- * sep4 will be used to separate every 4 bits, set to
+---   nil to disable.
+--- ]
+M.bin = function(uint, width--[[8]], sep4--[['_']]) --> str
+  width = width or 8
+  if sep4 == nil then sep4 = '_' end
+  local str = {}
+  for w=0,width-2 do
+    push(str, tostring(1 & uint))
+    uint = uint >> 1
+    if sep4 and w % 4 == 3 then push(str, sep4) end
+  end
+  push(str, tostring(1 & uint))
+  M.reverse(str)
+  return concat(str, '')
+end
+

--- lib/ds/test.lua
+++ lib/ds/test.lua
@@ -68,0 +69,7 @@
+T.binString = function()
+  T.eq('0000_1000', M.bin(8))
+  T.eq('1100_1010', M.bin(0xCA))
+  T.eq('1000',      M.bin(8, 4))
+  T.eq('0_1000',    M.bin(8, 5))
+end
+

--- lib/fmt/fmt.lua
+++ lib/fmt/fmt.lua
@@ -78,0 +79,9 @@
+Fmt.toPretty = function(f)
+  f.tableStart = rawget(f, 'tableStart') or '{\n'
+  f.tableEnd   = rawget(f, 'tableEnd')   or '\n}'
+  f.listEnd    = rawget(f, 'listEnd')    or '\n'
+  f.keyEnd     = rawget(f, 'keyEnd')     or ',\n'
+  f.indent     = rawget(f, 'indent')     or '  '
+  return f
+end
+
@@ -81,8 +90 @@
-Fmt.pretty = function(F, t)
-  t.tableStart = t.tableStart or '{\n'
-  t.tableEnd   = t.tableEnd   or '\n}'
-  t.listEnd    = t.listEnd    or '\n'
-  t.keyEnd     = t.keyEnd     or ',\n'
-  t.indent     = t.indent     or '  '
-  return F(t)
-end
+Fmt.pretty = function(F, t) return F(t):toPretty() end
@@ -183 +185 @@
-    if (i < len) or hasKeys then f:write(f.indexEnd) end
+    if (i < len) or hasKeys then f:styled('meta', f.indexEnd, '') end
@@ -185 +187 @@
-  if listEnd then f:write(listEnd) end
+  if listEnd then f:styled('meta', listEnd, '') end
@@ -217 +219 @@
-  f:write(multi and f.tableStart or '{')
+  f:styled('symbol', multi and f.tableStart or '{', '')
@@ -221 +223 @@
-  f:write(multi and f.tableEnd or '}')
+  f:styled('symbol', multi and f.tableEnd or '}', '')
@@ -261 +262,0 @@
-
@@ -292,0 +294,11 @@
+--- pretty print
+M.pprint = function(...)
+  local f; if io.fmt then
+    f = {}
+    for k,v in pairs(io.fmt) do f[k] = v end
+    setmetatable(f, getmetatable(io.fmt))
+    f:toPretty()
+  end
+  return M.fprint(f, ...)
+end
+

--- lib/fmt/test.lua
+++ lib/fmt/test.lua
@@ -5,0 +6 @@
+local sfmt = string.format
@@ -72,0 +74,11 @@
+
+T.metaty = function()
+  local A = mty'A'{'a1', 'a2'}
+  T.eq('A{a1=42, a2=nil}', M(A{a1=42}))
+  local a = A{a1=1, a2=2, 3, 4, 5}
+  local aFmt = 'A{3, 4, 5, a1=1, a2=2}'
+  T.eq(aFmt, M(a))
+  local B = mty'B'{'b1'}
+  local b = B{a, b1=a}
+  T.eq(sfmt('B{%s, b1=%s}', aFmt, aFmt), M(b))
+end

--- lib/metaty/metaty.lua
+++ lib/metaty/metaty.lua
@@ -145,2 +145,2 @@
-  local fields = rawget(mt, '__fields')
-  local multi = #fields > 1 -- use multiple lines
+  local len, fields = #self, rawget(mt, '__fields')
+  local multi = len + #fields > 1 -- use multiple lines
@@ -148,0 +149,2 @@
+  f:items(self, #fields > 0,
+          multi and (len>0) and (#fields>0) and f.listEnd)

--- lib/pegl/pegl.lua
+++ lib/pegl/pegl.lua
@@ -255,0 +256,3 @@
+M.isEmpty  = function(t) return mty.eq(M.EMPTY, t) end
+M.notEmpty = function(t) return not mty.eq(M.EMPTY, t) end
+
@@ -474 +477 @@
-      civtest.showDiff(io.fmt, eStr, rStr)
+      T.showDiff(io.fmt, eStr, rStr)
@@ -491 +494 @@
-M.assertParse = function (t) --> nil
+M.assertParse = function (t) --> result, node, parser
@@ -671,3 +674,21 @@
-local _n10, _hpat = M.Pat'[0-9]+', '[a-fA-F0-9]+'
-local n10 = {kind='n10', -- base 10 number
-  M.UNPIN, M.Maybe'-',  _n10, M.Maybe{'.', _n10}
+local _10pat = M.Pat'[0-9]+'
+local _16pat = '[a-fA-F0-9]+'
+M.common = G.mod and G.mod'pegl.common' or {}
+
+M.common.nameStr = '[%a_][%w_]*'
+
+--- Most common programatic name: a non-decimal word
+--- character followed by word characters.
+M.common.name = M.Pat{M.common.nameStr, kind='name'}
+
+--- Most common programatic ty name, with same rules
+--- as normal name (but different context)
+M.common.ty   = M.Pat{M.common.nameStr, kind='ty'}
+
+--- base 2 number
+--- Note: does not support negatives or decimals.
+M.common.base2 = M.Pat{'0b[01]+', kind='base2'}
+
+--- base 10 number, supporting negatives and decimals.
+M.common.base10 = {kind='base10',
+  M.UNPIN, M.Maybe'-', _10pat, M.Maybe{'.', _10pat}
@@ -675,3 +696,5 @@
-local n16 = {kind='n16', -- base 16 number
-  M.UNPIN, M.Maybe'-',  M.Pat('0x'.._hpat),
-  M.Maybe{'.', M.Pat(_hpat)},
+
+--- base 16 number, supporting negatives and decimals.
+M.common.base16 = {kind='base16',
+  M.UNPIN, M.Maybe'-',  M.Pat('0x'.._16pat),
+  M.Maybe{'.', M.Pat(_16pat)},
@@ -679,2 +701,0 @@
-local num = M.Or{name='num', n16, n10}
-M.common = {num=num, n10=n10, n16=n16}
@@ -693,3 +714,4 @@
-M.testing.N = function(name) return {name, kind='name'} end -- name
-M.testing.NUM = function(t)  return NumT('n10', t) end
-M.testing.HEX = function(t)  return NumT('n16', t) end
+M.testing.N  = function(name) return {name, kind='name'} end -- name
+M.testing.TY = function(ty)   return {ty,   kind='ty'} end -- ty
+M.testing.NUM = function(t)   return NumT('base10', t) end
+M.testing.HEX = function(t)   return NumT('base16', t) end
@@ -708,3 +730,4 @@
-  name  = function(f, t) f:write(sfmt('N%q', t[1])) end,
-  n10   = function(...) fmtKindNum('NUM', ...) end,
-  n16   = function(...) fmtKindNum('HEX', ...) end,
+  name  = function(f, t) f:write(sfmt('N%q',  t[1])) end,
+  ty    = function(f, t) f:write(sfmt('TY%q', t[1])) end,
+  base10 = function(...) fmtKindNum('NUM', ...) end,
+  base16 = function(...) fmtKindNum('HEX', ...) end,

--- lib/pegl/pegl/lua.lua
+++ lib/pegl/pegl/lua.lua
@@ -18 +18 @@
-local num = common.num
+local num = Or{name='num', common.base16, common.base10}
@@ -26 +26 @@
-local name = {UNPIN, Not{keyW}, Pat{'[%a_][%w_]*', kind='name'}}
+local name = {UNPIN, Not{keyW}, common.name}
@@ -129 +129 @@
-local str     = Or{name='str', singleStr, doubleStr, bracketStr}
+local str = Or{name='str', singleStr, doubleStr, bracketStr}

--- lib/pegl/tests/test_lua.lua
+++ lib/pegl/tests/test_lua.lua
@@ -61 +60,0 @@
-

--- os/iA/PKG.lua
+++ os/iA/PKG.lua
@@ -14,0 +15 @@
+  'iA/parse.lua',

--- os/iA/README.cxt
+++ os/iA/README.cxt
@@ -269,0 +270,10 @@
+
+::my_location:: \ define a location
+
+\ jump to my_location
+goto my_location; 
+
+\ jump to my_location if a < b
+if a < b goto my_location;
+
+\ if-elif-else blocks
@@ -272 +282,3 @@
-elif B b = foo(1, 2); c == bar(b) do
+elif B b = foo(1, 2); c <= bar(b) do
+  ...
+else
@@ -288,3 +299,0 @@
-::my_location:: \ define a location
-  ...
-  goto my_location; \\ goto that location
@@ -323 +332 @@
-* [$A low: int, D high: int *= mul($A a: int, V b: int)] defines
+* [$A low: int, D high: int = mul($A a: int, V b: int)] defines

--- os/iA/iA.lua
+++ os/iA/iA.lua
@@ -8,0 +9 @@
+local info = require'ds.log'.info
@@ -11,0 +13,17 @@
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
+
@@ -13,5 +31,11 @@
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
@@ -25,3 +49,7 @@
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
@@ -33 +61 @@
-  -- reserved: 24 - 32
+  -- reserved and unused
@@ -36,3 +64,13 @@
-  -- stack pointer holding the "top" of stack at the lowest
-  -- memory address.
-  sp = 32,
+  --- Not used in syntax, used in instruction.
+  I2=28, I4=29, I8=30, -- 2,4,8 byte immediate
+  OFS=31, -- offset
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
@@ -40 +78,8 @@
-  fs = 33, -- floating point stack
+--- iA Type, either user-defined (i.e. struct, enum) or native.
+M.Ty = mty'Ty' {
+  'mod  [iA.Mod]: the module the type is defined in.',
+  'name [str]: the name of the type.',
+  'sz   [int?]: the size of the type in bytes, or nil if unknown.',
+  'ref  [int]: the number of & reference levels of the type', ref = 0,
+  'kind [iA.TyKind]: the kind of type',
+  'field [table[string, int]]: STRUCT/ENUM only, map of name -> idx.',
@@ -41,0 +87,57 @@
+M.Ty.__fmt = function(ty, f)
+  f:write(sfmt('Ty(%s.%s)', mod.name, ty.name))
+end
+
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
@@ -42,0 +145 @@
+--- Named register or memory location and its type.
@@ -43,0 +147 @@
+  'imm [bool]: whether this is immutable',
@@ -44,0 +149,180 @@
+  'name [str]: name',
+  'ty  [iA.Ty]: the type of the variable.',
+ [[scope: the scope where the variable is active for
+          (Mod, Fn, Block, etc)]],
+  'cap [int]: the max capacity of a non-ref array type, or nil',
+}
+
+--- A literal value.
+M.Literal = mty'Literal' { 'ty [iA.Ty]' }
+
+--- Create a Literal
+M.literal = function(v)
+  info('!! literal %q', v)
+  if not v then error('invalid literal: '..tostring(v)) end
+  if type(v) == 'string' then
+    error'strings not yet impl'
+  elseif math.type(v) == 'float' then
+    error'floats not yet impl'
+  elseif v < 0 then
+    error'negative not yet impl'
+  else
+    if     v <= 0xFF       then return M.Literal{v, ty=C.U1}
+    elseif v <= 0xFFFF     then return M.Literal{v, ty=C.U2}
+    elseif v <= 0xFFFFFFFF then return M.Literal{v, ty=C.U4}
+    else                        return M.Literal{v, ty=C.U8} end
+  end
+end
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
+--- Cross-platform operations. Operations work on an l and r values
+--- which are an iA.Reg.
+---
+--- [{h1}CivCPU]
+--- This enum is intended to be used with a 16bit virtual CPU,
+--- called the CivCPU. The primary purpose of CivCPU is for
+--- unit-testing and development of this library. It offers a
+--- simple and inspectable runtime for crafting iA code.
+---
+--- The 16bit instruction format for CivCPU is:
+--- [#
+---   5b left  5b right  6b op
+---   lllll    rrrrr     oooooo
+---   0xF800   0x07C0    0x003F  (mask)
+--- ]#
+--- Where: [+
+--- * [*o] operation (iA.Op) is low bits 0-5          (6 bits)
+--- * [*l] left register (iA.Reg) is middle bits 6-10 (5 bits)
+--- * [*r] right register (iA.Reg) is high bits 11-15 (5 bits)
+--- ]
+---
+--- For some iA.Reg values, the instruction will be followed with
+--- one or more 16bit immediate values. [+
+--- * [*V]: an immediate offset of the stack pointer.
+--- * [*L2, L4, L8]: immediate of the given bytes.
+--- * [*OFS]: 16bit immediate of 5 bit iA.Reg followed by an 11bit offset.
+--- ]
+M.Op = mty.enum'Op' {
+  INT  = 0, -- CPU interrupt. Used for errors and kernel stuff.
+  REGL = 1, -- l = reg(r): load from a system register
+  REGS = 2, -- reg(l) = r: store to a system register
+
+  -- stack and jump operations
+  SP   = 3, -- sp(l): increment/decrement sp by literal
+  PUSH = 4, -- push(l,r): push value/s to stack
+  POP  = 5, -- pop(l,r): pop value/s from stack into register/s
+  CALL = 6, -- call(l): call procedure at l
+  RET  = 7, -- return from procedure
+  CMP  = 8, -- cmp(l,r): compare and set flags register
+  JMP  = 9, -- jmpif imm == (l&imm): l can be 0 (flags) or a reg.
+
+  -- l = r: set l to r
+  MOV = 16,
+
+  -- l @= r: fetch value of size at address r
+  FT1=17, FT2=18, FT4=19, FT8=20,
+
+  -- store(l, r): store value r of size at address l
+  ST1=21, ST2=22, ST4=23, ST8=24,
+
+  -- Unsigned bitwise operations
+  INV  = 25,  -- l ~= r: inversion
+  BOR  = 26,  -- l |= r: or
+  BAND = 27,  -- l &= r: and
+  XOR  = 28,  -- l = xor(l, r): exclusive or
+  SHL  = 29,  -- l <<= r: shift left
+  SHR  = 30,  -- l >>= r: shift right
+  ROL  = 31,  -- l = rotl(l, imm): rotate l left by imm
+  ROR  = 32,  -- l = rotr(l, imm): rotate l left by imm
+
+  -- int multiplication.
+  -- guaranteed optimized: A low, D high = mul(A, r)
+  MUL = 40, IMUL = 41,
+
+  -- int division.
+  -- guaranteed optimized: A quot, D rem = div(D high, A low, r div)]
+  DIV = 42, IDIV = 43,
+
+  -- arithmetic
+  NEG = 44,  -- l = -r: 2's compliment negation
+  ADD = 45,  -- l += r
+  SUB = 46,  -- l -= r
+  MOD = 47,  -- l %= r
+
+  --- The PRINT instruction causes a debug print of the cstr (byte-size + data)
+  --- pointed to by l (typically a literal). Also pretty-prints r if set.
+  --- It is mostly used for low-level debugging.
+  PRINT = 63,
+}
+
+--- An expression which returns a single value or register. The number
+--- of items in the list will depend on the kind: [+
+--- * VAL: will contain one item, the Var or Literal.
+--- * EQ1: will contain two items on both sides of equal and an op.
+--- * FN1: will contain the function arguments and fn.
+--- ]
+M.Expr1 = mty'Expr1' {
+  'kind [iA.Expr1Kind]',
+  'op [iA.Op]: the operation being performed for EQ1',
+  'fn [iA.Fn | iA.Var]: the function being called',
+}
+
+--- Multi assignment statement.
+--- [$a, b, c = myfn()] where: [+
+--- * [$to] is the right side of the fn.
+--- * values are stored in assign list.
+--- ]
+M.Assign = mty'Assign' {
+  'eq: expr1',
+}
+
+M.CmpOp = mty.enum'CmpOp' {
+  ['=='] = 1, ['~='] = 2,
+  ['<'] = 3,  ['<='] = 4,
+  ['>'] = 5,  ['>='] = 6,
+}
+
+--- Cmp operation between left and right
+M.Cmp = mty'Cmp' {
+  'op [CmpOp]', 'l: left expr', 'r: right expr',
+}
+
+--- A block of statements gated by a condition,
+--- used in If and Loop.
+---
+--- Note: a normal block is just a list (no type)
+M.CondBlock = mty'CondBlock' {
+  'cond [list[expr1]]: the final must be cmp',
+}
+
+--- if-elif-else statement (not if-goto)
+--- The list is a series of CondBlocks with an optional
+--- else block.
+M.If = mty'If' {
+  'else_ [list[expr1]]'
+}
+
+--- A local #loc location statement.
+M.Loc = mty'Loc' {
+  'name [string]',
+}
+
+--- if cond goto to
+M.Goto = mty'Goto' {
+  'to   [str]',
+}
+
+--- switch of do case 0 do ... default ... end
+--- Type is map[int, list[stmt]]
+--- 0 - highest MUST be filled out.
+M.Switch = mty'Switch' {
+  'of [list[expr1]]: last expr1 is jmp',
+  'default list[stmt]',
@@ -46,0 +331,6 @@
+--- while cond [atend] do block end
+--- The block is stored in the While list.
+M.While = mty'While' {
+  'cond [list[expr1]]',
+  'atend [list[expr1]]',
+}

--- test.lua
+++ test.lua
@@ -57,0 +58,3 @@
+print'[[os]]'
+  dofile(dir..'os/iA/test.lua')
+
@@ -63,0 +67 @@
+

--- ui/asciicolor/asciicolor.lua
+++ ui/asciicolor/asciicolor.lua
@@ -82 +82 @@
-  symbol        = 't', -- = + . { } etc
+  symbol        = 'A', -- = + . { } etc

--- /dev/null
+++ os/iA/iA/parse.lua
@@ -0,0 +1,211 @@
+local G = G or _G
+
+--- parse intermediate assembly
+local M = G.mod and G.mod'iA.parse' or {}
+
+local iA = require'iA'
+local mty = require'metaty'
+local ds = require'ds'
+local info = require'ds.log'.info
+local pegl = require'pegl'
+local lua = require'pegl.lua'
+
+local isEmpty, notEmpty = pegl.isEmpty, pegl.notEmpty
+local EMPTY        = pegl.EMPTY
+local PIN, UNPIN   = pegl.PIN, pegl.UNPIN
+local Not, Pat, Or = pegl.Not, pegl.Pat, pegl.Or
+local Maybe, Many  = pegl.Maybe, pegl.Many
+
+
+local common = pegl.common
+local byte, char = string.byte, string.char
+local push = table.insert
+
+M.tableToIa = {}
+M.toIa = function(tok)
+  assert(tok.kind, 'only supports tokens with a kind')
+  local toFn = M.tableToIa[tok.kind]; if not toFn then
+    error(tok.kind..' is not a known kind')
+  end
+  return toFn(tok)
+end
+
+M.rvalue = Or{name='rvalue'}
+M.lvalue = Or{name='lvalue'}
+
+M.num = Or{
+  'true', 'false',
+  common.base16, common.base2, common.base10
+}
+
+M.literal = Or{M.num, lua.str}
+
+-- form: neg? number (. number)
+local extractNum = function(t) --> str
+  return (isEmpty(t[1]) and '' or '-1')
+       ..t[2]
+       ..(isEmpty(t[3]) and '' or ('.'..t[4]))
+end
+ds.update(M.tableToIa, {
+  ['false'] = function() return iA.literal(0) end,
+  ['true']  = function() return iA.literal(1) end,
+  base2 = function(t)
+    return iA.literal(tonumber(t[1], 2))
+  end,
+  base10 = function(t)
+    return iA.literal(tonumber(extractNum(t), 10))
+  end,
+  base16 = function(t)
+    return iA.literal(tonumber(extractNum(t), 16))
+  end,
+})
+
+--- ( rvalue ): used for i.e. (A = 3) += ...
+M.group = {kind='group', '(', M.rvalue, ')'}
+M.tableToIa.group = function(t) return toIa(t[2]) end
+
+M.keyword = pegl.Key{name='keyw', {
+  'do', 'end', 'if', 'else', 'elseif',
+  'loop', 'then', 'until',
+  'fn', 'return',
+}}
+
+M.reg = {}
+for b=byte'A',byte'Z' do push(M.reg, char(b)) end
+M.reg = pegl.Key{kind='reg', M.reg}
+
+M.name   = {UNPIN, Not{M.keyword}, common.name}
+M.tableToIa.name = function(r) return iA.Var{name=r[1]} end
+
+M.tySpec = {kind='tySpec', ':', common.ty}
+M.var    = {kind='var',
+  Maybe'$', M.reg, Maybe(M.name),
+  Maybe(M.tySpec),
+}
+
+M.tableToIa.var = function(r)
+  local reg = r[2][1]; assert(iA.Reg.name(reg))
+  return iA.Var{
+    imm=isEmpty(r[1]) or nil, reg=reg,
+    name=notEmpty(r[3]) and r[3][1] or nil,
+    ty=notEmpty(r[4]) and assert(r[4][2][1]) or nil,
+  }
+end
+
+M.val = Or{M.var, M.literal}
+
+--- Operation token lookup.
+--- See iA.Op
+M.eqOpToken = {
+  ['=']   = 'MOV',
+  ['~=']  = 'INV',
+  ['|=']  = 'BOR', ['&=']  = 'BAND',
+  ['+=']  = 'ADD', ['-=']  = 'SUB',
+  ['%=']  = 'MOD',
+  ['<<='] = 'SHL', ['>>='] = 'SHR',
+}
+
+M.cmpOp = pegl.Key{{
+  ['='] = {['=']=true}, ['~'] = {['='] = true}, -- == and ~=
+  ['<']={true, ['=']=true},                     -- <  and <=
+  ['>']={true, ['=']=true},                     -- >  and >=
+}}
+M.cmp = {kind='cmp', UNPIN, M.rvalue, M.cmpOp, PIN, M.rvalue}
+M.tableToIa.eq = function(tok)
+  return iA.Cmp{l=M.toIa(tok[1]), op=tok[2][1], r=M.toIa(tok[3])}
+end
+
+local _eq = {['=']=true} -- tokens end in =
+M.eqOp = {
+  ['='] = true,
+  ['~'] = _eq,
+  ['|'] = _eq, ['&'] = _eq,
+  ['+'] = _eq, ['-'] = _eq,
+  ['%'] = _eq,
+  ['<'] = {['<']=_eq}, -- <<=
+  ['>'] = {['>']=_eq}, -- >>=
+}
+M.eqOp = pegl.Key{M.eqOp, kind='eqOp'}
+
+M.eq = {kind='eq',
+  UNPIN, M.lvalue, Not{M.cmpOp},
+  M.eqOp, PIN, M.rvalue
+}
+M.tableToIa.eq = function(tok)
+  return iA.Expr1{
+    kind=iA.Expr1Kind.EQ1,
+    op=iA.Op.name(assert(M.eqOpToken[tok[2][1]])),
+    M.toIa(tok[1]), M.toIa(tok[3]),
+  }
+end
+
+M.fnArgs    = {UNPIN, '(', PIN,
+  M.rvalue, Many{',', M.rvalue}, Maybe',',
+')'}
+--- eXecute a function
+M.fncall    = {UNPIN, M.name, M.fnArgs}
+--- eXecute a macro.
+M.macrox = {UNPIN, '#', PIN, M.name, Or{M.fnArgs, M.lvalue}}
+
+ds.extend(M.rvalue, {
+  M.macrox, M.fnArgs, M.literal,
+  M.fncall, M.eq,
+  M.reg, M.name,
+})
+
+ds.extend(M.lvalue, {
+  M.macrox, M.group, M.literal,
+  M.reg, M.name,
+})
+
+M.stmt = Or{name = 'stmt'} -- (to be extended)
+M.block = {kind='block', Many{M.stmt}}
+M.tableToIa['block'] = function(t)
+  local b = {}
+  for i, stmt in ipairs(t) do b[i] = M.toIa(stmt) end
+  return b
+end
+
+M.assign = {kind='assign',
+  UNPIN, M.lvalue, Not{M.cmpOp}, Many{',', M.lvalue},
+  '=', PIN, M.rvalue,
+}
+M.tableToIa['assign'] = function(t)
+  local a = iA.Assign{eq=M.toIa(t[#t])}
+  a[1] = M.toIa(t[1])
+  for i=2,#t-2 do a[i] = M.toIa(t[i][2]) end
+  return a
+end
+
+M.goto_  = {kind='goto', UNPIN, 'goto', PIN, M.name}
+M.tableToIa['goto'] = function(t)
+  return iA.Goto{to=assert(t[2][1])}
+end
+
+M.if_ = {kind='if',
+  UNPIN,       'if',   PIN, M.block, 'do', M.block,
+  Many {UNPIN, 'elif', PIN, M.block, 'do', M.block},
+  Maybe{UNPIN, 'else', PIN, M.block},
+  'end',
+}
+
+local condBlockToIa = function(t)
+  local cond = iA.CondBlock{cond=M.toIa(t[2])}
+  for i, stmt in ipairs(t[4]) do cond[i] = M.toIa(stmt) end
+  return cond
+end
+M.tableToIa['if'] = function(t)
+  local if_ = iA.If{condBlockToIa(t)}
+  for i=5,#t-2 do push(if_, condBlockToIa(t[i])) end
+  local elseTok = t[#t-1]
+  if notEmpty(elseTok) then if_.else_ = M.toIa(elseTok) end
+  return if_
+end
+
+ds.extend(M.stmt, {
+  M.goto_, M.if_,
+  M.cmp, M.assign, M.eq,
+  M.lvalue,
+})
+
+return M

--- /dev/null
+++ os/iA/test.lua
@@ -0,0 +1,93 @@
+METATY_CHECK = true
+
+local ds = require'ds'
+local iA = require'iA'
+local piA = require'iA.parse'
+local T = require'civtest'
+local info = require'ds.log'.info
+
+local C = iA.core
+
+local testing, EMPTY, EOF, assertParse, assertParseError
+local pegl = ds.auto'pegl'
+
+local KW, N, TY, NUM, HEX; ds.auto(testing)
+
+T.expr1 = function()
+  -- literal 42
+  local tok = assertParse{dat='42', spec=pegl.common.base10,
+    expect=NUM{42},
+  }
+  T.eq(iA.Literal{42, ty=C.U1}, piA.toIa(tok))
+
+  -- variable declaration
+  tok = assertParse{dat='A a: UInt', spec={piA.var},
+    expect={kind='var',
+      EMPTY, {kind='reg', 'A'}, N'a',
+      {kind='tySpec', KW':', TY'UInt'},
+    },
+  }
+  T.eq(iA.Var{imm=true, reg='A', name='a', ty='UInt'},
+       piA.toIa(tok))
+
+  -- assignment
+  tok = assertParse{dat='a+= 3', spec={piA.rvalue},
+    expect={kind='eq',
+      N'a', {'+=', kind='eqOp'}, NUM{3}
+    },
+  }
+  T.eq(iA.Expr1{
+      kind='EQ1', op='ADD', iA.Var{name='a'}, iA.literal(3),
+    }, piA.toIa(tok))
+end
+
+T.Cmp = function()
+  local tok = assertParse{dat='a==3', spec=piA.stmt,
+    expect={kind='cmp', N'a', KW'==', NUM{3},
+    },
+  }
+end
+
+T.Block = function()
+  local tok = assertParse{dat='true false a=2',
+    spec=piA.block, expect={kind='block',
+      KW'true', KW'false', {kind='assign',
+        N'a', KW'=', NUM{2}
+      }
+    },
+  }
+  T.eq({
+    iA.literal(1),
+    iA.literal(0),
+    iA.Assign{iA.Var{name='a'}, eq=iA.literal(2)},
+  }, piA.toIa(tok))
+end
+
+T.If = function()
+  local tok = assertParse{dat='goto loc', spec=piA.stmt,
+    expect={kind='goto',
+      KW'goto', N'loc',
+    },
+  }
+  T.eq(iA.Goto{to='loc'}, piA.toIa(tok))
+
+  tok = assertParse{dat='if true do goto loc end', spec=piA.stmt,
+    expect={kind='if',
+      KW'if', {kind='block', KW'true'}, KW'do',
+      {kind='block',
+        {kind='goto', KW'goto', N'loc'},
+      }, EMPTY, KW'end'
+    },
+  }
+  T.eq(iA.If{
+    iA.CondBlock{cond={iA.literal(1)}, iA.Goto{to="loc"}},
+  }, piA.toIa(tok))
+
+  -- tok = assertParse{parseOnly=true, spec=piA.stmt,
+  --   dat=[[
+  --     if false    do goto loc
+  --     elif a == 3 do a += 3
+  --     else           a = 0  end
+  --   ]]
+  -- }
+end
