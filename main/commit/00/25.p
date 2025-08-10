okay, finally ready to fix Ed.inset rm
--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -174 +174,2 @@
-    return ef:extend(values)
+    ef:extend(values)
+    return
