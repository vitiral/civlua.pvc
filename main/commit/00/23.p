inset tested
--- lib/ds/test.lua
+++ lib/ds/test.lua
@@ -302,0 +303 @@
+  require'ds.testing'.testInsetStr(ds.iden)

--- lib/lines/test.lua
+++ lib/lines/test.lua
@@ -104 +104,4 @@
-  require'ds.testing'.testInset(Gap)
+  -- FIXME: Gap actually passes testInset lol. Need to
+  --   assert inputs are strings.
+  require'ds.testing'.testInsetStr(Gap)
+end
@@ -106 +109 @@
-  -- TODO: move relevant ones to ds.testing
+T['Gap lines.inset'] = function()

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -258 +258 @@
-  -- require'ds.testing'.testInset(newEdFile, edEq)
+  -- require'ds.testing'.testInsetStr(newEdFile, edEq)
