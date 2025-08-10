okay, finally ready to fix Ed.inset rm
--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -51 +51 @@
-  local l = ef.lens; return l[#l]
+  local l = ef.lens; return l[#l] or 0
@@ -161 +160,0 @@
---- FIXME: return rm list

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -258 +258 @@
-  -- require'ds.testing'.testInsetStr(newEdFile, edEq)
+  require'ds.testing'.testInsetStr(newEdFile, edEq)
