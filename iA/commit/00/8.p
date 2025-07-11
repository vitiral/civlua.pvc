flushing out iA.Op
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

--- os/iA/iA.lua
+++ os/iA/iA.lua
@@ -62,2 +62,3 @@
-  -- lowest memory address of return stack
-  sp = 27,
+  --- Not used in syntax, used in instruction.
+  I2=28, I4=29, I8=30, -- 2,4,8 byte immediate
+  OFS=31, -- offset
@@ -149 +150 @@
-M.Literal = mty'Literal' { 'ty [iA.Ty]', 'value', }
+M.Literal = mty'Literal' { 'ty [iA.Ty]', 'value' }
@@ -159,0 +161,26 @@
+--- Cross-platofrm operations. Operations work on an l and r values which are
+--- an iA.Reg.
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
+--- ]#
+--- Where: [+
+--- * [*o] operation (iA.Op) is low bits 0-5          (6 bits, 0x003F)
+--- * [*l] left register (iA.Reg) is middle bits 6-10 (5 bits, 0x07C0)
+--- * [*r] right register (iA.Reg) is high bits 11-15 (5 bits, 0xF800)
+--- ]
+---
+--- For some iA.Reg values, the instruction will be followed with
+--- one or more 16bit immediate values. [+
+--- * [*V]: an immediate offset of the stack pointer.
+--- * [*L2, L4, L8]: immediate of the given bytes.
+--- * [*OFS]: 16bit immediate, 5 bit iA.Reg followed by an 11bit offset.
+--- ]
@@ -161 +188,3 @@
-  INT = 0, -- CPU interrupt. Used for errors and kernel stuff.
+  INT  = 0,  -- CPU interrupt. Used for errors and kernel stuff.
+  REGL = 1, -- l = reg(r): load from a system register
+  REGS = 2, -- reg(l) = r: store to a system register
@@ -164,7 +193,10 @@
-  SP   = 1, -- sp(l): increment/decrement sp by literal
-  PUSH = 2, -- push(l,r): push value/s to stack
-  POP  = 3, -- pop(l,r): pop value/s from stack into register/s
-  CALL = 4, -- call(l): call procedure at l
-  RET  = 5, -- return from procedure
-  CMP  = 6, -- cmp(l,r): compare and set flags register
-  JMP  = 7, -- jmpif imm == (l&imm): l can be 0 (flags) or a reg.
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
@@ -173 +205 @@
-  FT1=16, FT2=17, FT4=18, FT8=19,
+  FT1=17, FT2=18, FT4=19, FT8=20,
@@ -176,4 +208 @@
-  ST1=20, ST2=21, ST4=22, ST8=23,
-
-  -- l = r: set l to value r
-  MOV = 24,
+  ST1=21, ST2=22, ST4=23, ST8=24,
@@ -186,2 +215,2 @@
-  SHL = 29,  -- l <<= r: unsigned shift left
-  SHR = 30,  -- l >>= r: unsigned shift right
+  SHL = 29,  -- l <<= r: shift left
+  SHR = 30,  -- l >>= r: shift right
@@ -191 +220,2 @@
-  -- int multiplication: A low, D high = mul(A, r)
+  -- int multiplication.
+  -- guaranteed optimized: A low, D high = mul(A, r)
@@ -194 +224,2 @@
-  -- int division: A quot, D rem = div(D high, A low, r div)]
+  -- int division.
+  -- guaranteed optimized: A quot, D rem = div(D high, A low, r div)]
@@ -203 +234,4 @@
-  PRINT = 63, -- used in reference impl
+  --- The PRINT instruction causes a debug print of the cstr (byte-size + data)
+  --- pointed to by l (typically a literal). Also pretty-prints r if set.
+  --- It is mostly used for low-level debugging.
+  PRINT = 63,
@@ -209,3 +243,2 @@
---- * EQ1: will contain two items on both sides of equal.
----        Will optionally have an [$op].
---- * FN1: will contain the function arguments.
+--- * EQ1: will contain two items on both sides of equal and an op.
+--- * FN1: will contain the function arguments and fn.
@@ -215,0 +249 @@
+  'fn [iA.Fn | iA.Var]: the function being called',
