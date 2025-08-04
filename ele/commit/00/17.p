fixed bug
--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -265,0 +266 @@
+local get = M.get
@@ -631 +632 @@
-    else  o = dat[i];             i =   - i end
+    else  o = get(dat,i);         i =   - i end
