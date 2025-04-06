move asciicolor/style to be part of asciicolor.lua
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -689 +689 @@
-  local backup = M.backupDir(pdir, cbr); ix.mkDir(backup)
+  local backup = M.backupDir(pdir, cbr); ix.mkDirs(backup)
@@ -731 +731 @@
-  ix.mv(fdir, back)
+  ix.mkDirs(pth.last(back)); ix.mv(fdir, back)
@@ -761 +761 @@
-  local back = M.backupDir(P, br..'-squash'); ix.mkDir(back)
+  local back = M.backupDir(P, br..'-squash'); ix.mkDirs(back)
@@ -958 +958 @@
-  local back = M.backupDir(P, sfmt('%s#%s', br, id)); ix.mkDir(back)
+  local back = M.backupDir(P, sfmt('%s#%s', br, id)); ix.mkDirs(back)
@@ -1014 +1014 @@
-  local back = M.backupDir(D, br); ix.mkDir(back)
+  local back = M.backupDir(D, br); ix.mkDirs(back)
