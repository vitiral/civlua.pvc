minor pvc fix
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -389,3 +389,4 @@
-    if ix.pathEq(P..path, nsnap..path) then goto cont end -- local==next
-    if ix.pathEq(P..path, csnap..path) then -- local didn't change
-      if not ix.pathEq(csnap..path, nsnap..path) then -- next did change
+    local lpath, npath = P..path, nsnap..path
+    if ix.pathEq(lpath, npath) then goto cont end -- local==next
+    if ix.pathEq(lpath, csnap..path) then -- local didn't change
+      if not ix.pathEq(csnap..path, npath) then -- next did change
@@ -397 +398 @@
-    if ix.pathEq(csnap..path, nsnap..path) then
+    if ix.pathEq(csnap..path, npath) then
