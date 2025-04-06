better error message for empty files
--- cmd/pvc/pvc/unix.lua
+++ cmd/pvc/pvc/unix.lua
@@ -56 +56,4 @@
-  error((a or b)..' is empty (https://stackoverflow.com/questions/44427545)')
+  -- https://stackoverflow.com/questions/44427545]])
+  error((a or b)..[[ is empty, which pvc does not support.
+Solution: Add a newline (or any other content) to the file,
+          or delete the file.]])
