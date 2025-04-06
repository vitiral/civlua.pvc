rename patch/ -> commit/.
this requires restarting the repo, as checking out previous commits will break pvc

--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -261 +261 @@
-M.depth = function(bdir) return readInt(toDir(bdir)..'patch/depth') end
+M.depth = function(bdir) return readInt(toDir(bdir)..'commit/depth') end
@@ -268 +268 @@
-  local path = {bdir, 'patch'}; for i=1,#dirstr,2 do
+  local path = {bdir, 'commit'}; for i=1,#dirstr,2 do
@@ -291 +291 @@
-    tip=tostring(id), patch = {depth=tostring(depth)},
+    tip=tostring(id), commit = {depth=tostring(depth)},
@@ -351 +351 @@
-  local depth, pp, zz = M.depth(bdir), bdir..'patch/', bdir..'00/'
+  local depth, pp, zz = M.depth(bdir), bdir..'commit/', bdir..'00/'
@@ -1060 +1060 @@
-  ix.mkDirs(to..'patch/')
+  ix.mkDirs(to..'commit/')
@@ -1062 +1062 @@
-  ix.cp(bdir..'patch/depth', to..'patch/depth')
+  ix.cp(bdir..'commit/depth', to..'commit/depth')

--- cmd/pvc/test.lua
+++ cmd/pvc/test.lua
@@ -24 +24 @@
-  T.eq('foo/patch/00/1.p', pvc.patchPath('foo', 1, '.p', 2))
+  T.eq('foo/commit/00/1.p', pvc.patchPath('foo', 1, '.p', 2))
@@ -101 +101 @@
-  T.path(Bm..'patch/', {
+  T.path(Bm..'commit/', {
@@ -118 +118 @@
-    dir1=D..'.pvc/main/patch/00/0.snap/', dir2=D,
+    dir1=D..'.pvc/main/commit/00/0.snap/', dir2=D,
@@ -154 +154 @@
-    dir1=D..'.pvc/main/patch/00/1.snap/', dir2=D,
+    dir1=D..'.pvc/main/commit/00/1.snap/', dir2=D,
@@ -165 +165 @@
-    dir1=D..'.pvc/main/patch/00/1.snap/', dir2=D,
+    dir1=D..'.pvc/main/commit/00/1.snap/', dir2=D,
@@ -195 +195 @@
-  T.path(D, EXPECT2); T.path(Bm..'patch/00/2.snap/', EXPECT2)
+  T.path(D, EXPECT2); T.path(Bm..'commit/00/2.snap/', EXPECT2)
@@ -206 +206 @@
-  T.eq(Bm..'patch/00/2.snap/', pvc.snapshot(D, 'dev', 2))
+  T.eq(Bm..'commit/00/2.snap/', pvc.snapshot(D, 'dev', 2))
@@ -241 +241 @@
-  T.eq({'desc4d'}, pvc.desc(Bd..'patch/00/5.p'))
+  T.eq({'desc4d'}, pvc.desc(Bd..'commit/00/5.p'))
@@ -246 +246 @@
-  T.path(Bd..'patch/00/5.snap/', EXPECT5)
+  T.path(Bd..'commit/00/5.snap/', EXPECT5)
