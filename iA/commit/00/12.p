parsing Var
--- lib/pegl/pegl.lua
+++ lib/pegl/pegl.lua
@@ -255,0 +256,3 @@
+M.isEmpty  = function(t) return mty.eq(M.EMPTY, t) end
+M.notEmpty = function(t) return not mty.eq(M.EMPTY, t) end
+
@@ -491 +494 @@
-M.assertParse = function (t) --> nil
+M.assertParse = function (t) --> result, node, parser
@@ -683 +686 @@
-M.ty     = M.Pat{M.common.nameStr, kind='ty'}
+M.common.ty   = M.Pat{M.common.nameStr, kind='ty'}

--- os/iA/iA.lua
+++ os/iA/iA.lua
@@ -5,0 +6,7 @@
+local mty = require'metaty'
+local ds = require'ds'
+local fmt = require'fmt'
+local info = require'ds.log'.info
+
+local push, pop, sfmt    = table.insert, table.remove, string.format
+
@@ -22,5 +28,0 @@
-local mty = require'metaty'
-local ds = require'ds'
-local fmt = require'fmt'
-
-local push, pop, sfmt    = table.insert, table.remove, string.format
@@ -141,0 +144 @@
+  'imm [bool]: whether this is immutable',
@@ -142,0 +146 @@
+  'name [str]: name',
@@ -150 +154,21 @@
-M.Literal = mty'Literal' { 'ty [iA.Ty]', 'value' }
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
+
