cleaning up pegl
--- lib/pegl/pegl.lua
+++ lib/pegl/pegl.lua
@@ -671,3 +671,6 @@
-local _n10, _hpat = M.Pat'[0-9]+', '[a-fA-F0-9]+'
-local n10 = {kind='n10', -- base 10 number
-  M.UNPIN, M.Maybe'-',  _n10, M.Maybe{'.', _n10}
+local _base10, _hpat = M.Pat'[0-9]+', '[a-fA-F0-9]+'
+M.common = G.mod and G.mod'pegl.common' or {}
+
+--- base 10 number
+M.common.base10 = {kind='base10',
+  M.UNPIN, M.Maybe'-',  _base10, M.Maybe{'.', _base10}
@@ -675 +678,2 @@
-local n16 = {kind='n16', -- base 16 number
+--- base 16 number
+M.common.base16 = {kind='base16',
@@ -679,2 +683 @@
-local num = M.Or{name='num', n16, n10}
-M.common = {num=num, n10=n10, n16=n16}
+M.common.name = M.Pat{'[%a_][%w_]*', kind='name'}
@@ -694,2 +697,2 @@
-M.testing.NUM = function(t)  return NumT('n10', t) end
-M.testing.HEX = function(t)  return NumT('n16', t) end
+M.testing.NUM = function(t)  return NumT('base10', t) end
+M.testing.HEX = function(t)  return NumT('base16', t) end
@@ -709,2 +712,2 @@
-  n10   = function(...) fmtKindNum('NUM', ...) end,
-  n16   = function(...) fmtKindNum('HEX', ...) end,
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

--- os/iA/PKG.lua
+++ os/iA/PKG.lua
@@ -14,0 +15 @@
+  'iA/parse.lua',

--- os/iA/iA.lua
+++ os/iA/iA.lua
@@ -173,0 +174 @@
+---   0xF800   0x07C0    0x003F  (mask)
@@ -176,3 +177,3 @@
---- * [*o] operation (iA.Op) is low bits 0-5          (6 bits, 0x003F)
---- * [*l] left register (iA.Reg) is middle bits 6-10 (5 bits, 0x07C0)
---- * [*r] right register (iA.Reg) is high bits 11-15 (5 bits, 0xF800)
+--- * [*o] operation (iA.Op) is low bits 0-5          (6 bits)
+--- * [*l] left register (iA.Reg) is middle bits 6-10 (5 bits)
+--- * [*r] right register (iA.Reg) is high bits 11-15 (5 bits)
@@ -185 +186 @@
---- * [*OFS]: 16bit immediate, 5 bit iA.Reg followed by an 11bit offset.
+--- * [*OFS]: 16bit immediate of 5 bit iA.Reg followed by an 11bit offset.

--- test.lua
+++ test.lua
@@ -57,0 +58,3 @@
+print'[[os]]'
+  dofile(dir..'os/iA/test.lua')
+
@@ -63,0 +67 @@
+
