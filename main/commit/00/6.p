start iA
--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -1 +1 @@
--- ds: data structures and algorithms
+local G = G or _G
@@ -3 +3,2 @@
-local M = mod and mod'ds' or {}
+-- ds: data structures and algorithms
+local M = G.mod and G.mod'ds' or {}
@@ -6,0 +8 @@
+

--- os/iA/README.cxt
+++ os/iA/README.cxt
@@ -99,2 +99,2 @@
-  * For single-argument operations like ~ (bitwise not), the right-hand
-    expression can be _ (an underscore).
+  * the right-hand expression can be _ (an underscore), which does the
+    operation with itself.
@@ -109,2 +109,14 @@
-like below. Note that you don't need to be as explicit about the return
-registers (they can be infered).
+like below. Note that you can be explicit about the registers like below,
+or they can be inferred.
+
+All expressions are evaluate from right to left. Once a variable is assigned
+as a function input it is considered "locked" and attempts to mutate it will
+result in a corruption error.
+
+[{## lang=iA}
+(a=10) += (C c: Int = foo($A a=5, $B b = bar($A a=6)))
+]##
+
+In the example above the A register is modified twice but is not locked until
+[$a=5], so the above code compiles. The above code is very explicit with
+what registers are modified and could be rewritten as:
@@ -113 +125 @@
-(a=10) += (C c: Int = foo($A a = 5, $B b = bar($A a = 6)))
+(a=10) += foo(5, bar(a))
@@ -116,6 +128,3 @@
-eq1 expressions are evaluated on the right side of the equal sign first.
-Otherwise, expressions are evaluated from left to right. Additionally,
-once a variable is assigned in a function call it is considered "locked",
-and mutating it again will result in a corruption error. The example above
-modifies the A register twice, which would be an error. Therefore it needs
-to be changed to:
+An example of a corruption error is below. Register B is locked with
+[$b=3] (remember, right-to-left evaluation) and then is corrupted
+by [$bar(a=1, b=2)].
@@ -124,3 +133 @@
-$A a:Int
-B b = bar($A a = 6);  \ Note: bar returns C, the move is implicit.
-(a=10) += (C c:Int = foo(a=5, b));
+foo(a=bar(a=1, b=2), b=3)
@@ -129,3 +136,3 @@
-The above statement results in [$a = [$10 + foo(5, 6)]]. Perhaps most
-importantly, no temporaries are created to store intermediate values
-and the compiler makes sure registers are not corrupted during function calls.
+From the above you can see the general rule when calling functions in iA:
+the functions called must be progressively simpler as they go from right to
+left, since more registers will be locked.
@@ -145,5 +152,7 @@
-* [$[Type, 16]]: array of Type with a declared maximum capacity of 16,
-  used for declaring array variables.
-
-* [$[Type]]: array of Type, which is len and capacity uints directly followed
-  by the data. Used for function arguments or when allocating on the heap.
+* [$[Type]]: array of Type, which is len and capacity U4 values directly
+  followed by the data (the data itself, NOT a pointer). Used for function
+  arguments or when allocating on the heap.
+
+* [$[Type, 16]]: array of Type with a declared maximum capacity of 16 (the
+  capacity is still stored in a slot though), used for declaring array
+  variables on the local stack.
@@ -156 +165 @@
-["Note that a conventional Str is aliased as just [$[U1]].]
+["Note that a conventional Str is just [$[U1]].]
@@ -162 +171,2 @@
-iA is implemented in, and can be extended by, the programming language Lua.
+iA is implemented as a Lua library and it can be extended by other Lua
+libraries.
@@ -167 +177 @@
-  globals, etc.
+  globals, etc. It can call to Lua code via $macros
@@ -170 +180,2 @@
-  previously compiled code to perform other operations.
+  previously compiled code to perform other operations (such as converting
+  it into a target platforms actual assembly).
@@ -173,4 +184,4 @@
-Symbols prefixed with # such as [$#auto] are considered "macros". They
-are defined in Lua and are passed a single expression. They are executed
-from right -> left, so [$#mymacro #auto fn myFn()] would first execute
-#auto and then execute #mymacro.
+Symbols prefixed with # such as #auto are considered "macros". They are defined
+in Lua and are passed a single expression (which can be (inside, parens)). They
+are executed from right -> left, so [$#mymacro #auto fn myFn()] would first
+execute #auto and then execute #mymacro.
@@ -180,2 +191,2 @@
-common use for macros is to inline code, which is provided directly.
-Macro expansion happens before type or corruption checking.
+common use for macros is to inline code.  Macro expansion happens before type
+or corruption checking, but all macros must be valid code.
@@ -199,6 +210,6 @@
-* [@Var] encapsulates a variable (register, local, etc).
-* [@Expr1] encapsulates a single-assignment expression.
-* [@Multi] encapsulates a multi-assignment function call expression.
-* [@Fn] encapsulates a function (inputs, outputs, body, etc).
-* [@Mod] encapsulates a module.
-* [@State] encapsulates the total compilation state.
+* [*Var] encapsulates a variable (register, local, etc).
+* [*Expr1] encapsulates a single-assignment expression.
+* [*Multi] encapsulates a multi-assignment function call expression.
+* [*Fn] encapsulates a function (inputs, outputs, body, etc).
+* [*Mod] encapsulates a module.
+* [*State] encapsulates the total compilation state.
@@ -219 +230 @@
-Basically, iA is built by calling the top-most [$pkg.iA()], which recursively
+Basically, iA is built by calling the top-most [$pkg:iA()], which recursively
@@ -230,3 +241,2 @@
-* [$val += add] addition, val will be the result of [$val + expr]
-* [$val -= sub] subtraction, val will be result of [$val - expr]
-* [$val *= mul] multiplication, [$val * mod]
+* [$val += add] addition, val will be the result of [$val + add]
+* [$val -= sub] subtraction, val will be result of [$val - sub]
@@ -234,2 +244,5 @@
-* [$val //= idiv] integer division, remainder is thrown away.
-* [$val /= fdiv] floating point division.
+* [$val ~= not] bitwise NOT.
+* [$val |= or] bitwise OR.
+* [$val &= and] bitwise AND.
+* [$val <<= shl] shift left.
+* [$val >>= shr] shift right
@@ -239,3 +252,11 @@
-Builtin multi assignment operators: [+
-* [$a, b = div(a, b)] integer division [$a / b]. a is set to the quotient
-  and b is set to the remainder.
+["See also [@iA-reg-common] for the integer multiply and division
+  operations.]
+
+iA supports the following compare operations, which evaluate
+two expressions as a boolean, which can be assigned to
+a register or used for control flow: [+
+* [$a == b] equal.
+* [$a ~= b] not equal.
+* [$a < b], [$a <= b] less than, less than equal.
+* [$a > b], [$a >= b] greater than, greater than equal.
+* [$not a] [$a or b] [$a and b]: logical operations
@@ -245 +265,0 @@
-TODO: labels, goto, if/elif/else, while, etc.
@@ -246,0 +267,36 @@
+These are used in control flow structures. For each, the last statement is
+evaluated for a non-zero value to determine when to jump.
+[{## lang=iA}
+if   a == 4 do
+  ...
+elif B b = foo(1, 2); c == bar(b) do
+  ...
+end
+
+\ Similar to a C++ for loop, loops from 0 - 9
+\    init,  op before end,  loop condition
+loop $I i=0 then i+=1       until i<10 do
+  ...
+end
+
+\ Similar to C++ while loop.
+until i<10 do ... end
+
+\ infinite loop
+loop do ... end
+
+::my_location:: \ define a location
+  ...
+  goto my_location; \\ goto that location
+
+\ similar to C switch-case.
+switch i
+case 0..15 do
+  ...
+  goto next; // explicit fallthrough
+case 16    do
+  ...
+else
+  ...
+end
+]##
@@ -259,2 +315,2 @@
-A B C D: inputs should use these registers, in this order, then
- non-corruptable registers or local values.
+A B D: inputs should use these registers, in this order, then non-corruptable
+registers or local values.
@@ -262 +318 @@
-Outputs should use C D A B (in that order). These are the only registers that
+Outputs should use C A B D (in that order). These are the only registers that
@@ -288,3 +344,2 @@
-E F G H: non-corruptable registers, commonly used as additional function
-inputs after A B C D. When these are used, they should be put before
-A B C D, i.e. [$fn(E, F, A, B, C, D)].
+E F G H: corruptable registers, commonly used as additional function
+inputs after A B D.
@@ -292,2 +347,2 @@
-I J K L M N: non-corruptable registers for general use, very common for
-loop values.
+I J K L M N O P: non-corruptable registers for general use. I J K are
+very common for loop registers.
@@ -295 +350 @@
-O P Q R S T: corruptable temporary values.
+Q R S T: corruptable registers, typically used for temporary values.
@@ -297,2 +352,2 @@
-[*Other registers]: the following are considered special registers and
-cannot be assigned to a variable name. However, they can be accessed directly.
+[*Other registers]: the following are special registers and cannot be assigned
+to a variable name. However, they can be accessed directly.
@@ -310,2 +364,0 @@
-
-

--- os/iA/iA.lua
+++ os/iA/iA.lua
@@ -0,0 +1,2 @@
+local G = G or _G
+
@@ -2 +4,42 @@
-local M = {}
+local M = G.mod and G.mod'iA' or {}
+
+local mty = require'metaty'
+local ds = require'ds'
+local fmt = require'fmt'
+
+local push, pop, sfmt    = table.insert, table.remove, string.format
+
+M.Reg = mty.enum'Reg' {
+  -- Input / Output registers.
+  A = 1, -- Accumulator. First input, second output
+  B = 2, -- Second input, third output
+  C = 3, -- Count/branch. First output, not an input.
+  D = 4, -- Fourth output.
+
+  -- Corruptable registers, additional inputs.
+  E = 5, F = 6, G = 7, H = 8,
+
+  -- non-corruptable registers for general use.
+  I = 9, J = 10, K = 11, L = 12, M = 13, N = 14, O = 15, P = 16,
+
+  -- corruptable regiseters used as temporaries.
+  -- S and T are used for memory instructions like memcpy.
+  Q = 17, R = 18, S = 19, T = 20,
+
+  U = 21, -- "universal" value stored on the heap
+  V = 22, -- "value", aka a local value stored on the stack
+  W = 23, -- reserved for "world" value, aka thread-global.
+
+  -- reserved: 24 - 32
+  X = 24, Y = 25, Z = 26,
+
+  -- stack pointer holding the "top" of stack at the lowest
+  -- memory address.
+  sp = 32,
+
+  fs = 33, -- floating point stack
+}
+
+M.Var = mty'Var' {
+  'reg [iA.Reg]: register type (or V/U/etc)',
+}
