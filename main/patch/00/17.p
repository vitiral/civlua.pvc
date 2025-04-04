help for missing subcommand
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -982,2 +982,3 @@
-    io.fmt:styled('error', cmd..' is not recognized', '\n')
-    M.main.help()
+    io.fmt:styled('error',
+      cmd and (cmd..' is not recognized') or 'Must provide sub command', '\n')
+    return M.main.help()
