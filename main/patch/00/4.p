space separate commit messages
--- cmd/pvc/README.cxt
+++ cmd/pvc/README.cxt
@@ -30 +30 @@
-  specified after the [$--] argument.
+  specified after the [$--] argument (multiple are space-separated).

--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -832 +832 @@
---- specified after the [$--] argument, where multiple arguments are newline
+--- specified after the [$--] argument, where multiple arguments are space
@@ -837 +837 @@
-  if desc then desc = concat(desc, '\n')
+  if desc then desc = concat(desc, ' ')
