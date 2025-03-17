actual correct docs
--- cmd/pvc/README.cxt
+++ cmd/pvc/README.cxt
@@ -167,5 +167,4 @@
-  $(cd .pvc/
-    && git add ./
-    && git commit -am "$desc"
-    && git push origin main
-  )
+  (cd .pvc/ &&
+    git add ./ &&
+    git commit -am "$desc" &&
+    git push origin main)
