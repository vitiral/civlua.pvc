starting to parse iA
--- lib/pegl/pegl.lua
+++ lib/pegl/pegl.lua
@@ -671 +671,2 @@
-local _base10, _hpat = M.Pat'[0-9]+', '[a-fA-F0-9]+'
+local _10pat = M.Pat'[0-9]+'
+local _16pat = '[a-fA-F0-9]+'
@@ -674 +675,13 @@
---- base 10 number
+--- Most common programatic name: a non-decimal word
+--- character followed by word characters.
+M.common.name = M.Pat{'[%a_][%w_]*', kind='name'}
+
+--- Most common programatic ty name, with same rules
+--- as normal name (but different context)
+M.ty     = M.Pat{'[%a_][%w_]*', kind='ty'}
+
+--- base 2 number
+--- Note: does not support negatives or decimals.
+M.common.base2 = M.Pat{'0b[01]+', kind='base2'}
+
+--- base 10 number, supporting negatives and decimals.
@@ -676 +689 @@
-  M.UNPIN, M.Maybe'-',  _base10, M.Maybe{'.', _base10}
+  M.UNPIN, M.Maybe'-', _10pat, M.Maybe{'.', _10pat}
@@ -678 +691,2 @@
---- base 16 number
+
+--- base 16 number, supporting negatives and decimals.
@@ -680,2 +694,2 @@
-  M.UNPIN, M.Maybe'-',  M.Pat('0x'.._hpat),
-  M.Maybe{'.', M.Pat(_hpat)},
+  M.UNPIN, M.Maybe'-',  M.Pat('0x'.._16pat),
+  M.Maybe{'.', M.Pat(_16pat)},
@@ -683 +696,0 @@
-M.common.name = M.Pat{'[%a_][%w_]*', kind='name'}
@@ -696,3 +709,4 @@
-M.testing.N = function(name) return {name, kind='name'} end -- name
-M.testing.NUM = function(t)  return NumT('base10', t) end
-M.testing.HEX = function(t)  return NumT('base16', t) end
+M.testing.N  = function(name) return {name, kind='name'} end -- name
+M.testing.TY = function(ty)   return {ty,   kind='ty'} end -- ty
+M.testing.NUM = function(t)   return NumT('base10', t) end
+M.testing.HEX = function(t)   return NumT('base16', t) end
@@ -711 +725,2 @@
-  name  = function(f, t) f:write(sfmt('N%q', t[1])) end,
+  name  = function(f, t) f:write(sfmt('N%q',  t[1])) end,
+  ty    = function(f, t) f:write(sfmt('TY%q', t[1])) end,

--- lib/pegl/tests/test_lua.lua
+++ lib/pegl/tests/test_lua.lua
@@ -61 +60,0 @@
-

--- os/iA/iA.lua
+++ os/iA/iA.lua
@@ -189 +189 @@
-  INT  = 0,  -- CPU interrupt. Used for errors and kernel stuff.
+  INT  = 0, -- CPU interrupt. Used for errors and kernel stuff.
@@ -212,8 +212,8 @@
-  INV = 25,  -- l ~= r: inversion
-  OR  = 26,  -- l |= r: or
-  AND = 27,  -- l |= r: and
-  XOR = 28,  -- l = xor(l, r): exclusive or
-  SHL = 29,  -- l <<= r: shift left
-  SHR = 30,  -- l >>= r: shift right
-  ROL = 31,  -- l = rotl(l, imm): rotate l left by imm
-  ROR = 32,  -- l = rotr(l, imm): rotate l left by imm
+  INV  = 25,  -- l ~= r: inversion
+  BOR  = 26,  -- l |= r: or
+  BAND = 27,  -- l &= r: and
+  XOR  = 28,  -- l = xor(l, r): exclusive or
+  SHL  = 29,  -- l <<= r: shift left
+  SHR  = 30,  -- l >>= r: shift right
+  ROL  = 31,  -- l = rotl(l, imm): rotate l left by imm
+  ROR  = 32,  -- l = rotr(l, imm): rotate l left by imm
