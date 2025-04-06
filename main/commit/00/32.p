fix patch path
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -271 +271 @@
-  push(path, tostring(id)..(last or ''))
+  push(path, tostring(id)..(last or '.p'))
@@ -338 +338 @@
-    local ppath = M.patchPath(bdir, fid, '.p')
+    local ppath = M.patchPath(bdir, fid)
@@ -526 +526 @@
-  local patchf = M.patchPath(bp, cid, '.p')
+  local patchf = M.patchPath(bp, cid)
@@ -678 +678 @@
-    local desc = M.desc(M.patchPath(cdir, cid, '.p'))
+    local desc = M.desc(M.patchPath(cdir, cid))
@@ -681 +681 @@
-    local tpatch = M.patchPath(tdir,tid, '.p')
+    local tpatch = M.patchPath(tdir,tid)
@@ -722 +722 @@
-    local tpath = M.patchPath(tdir, id, '.p')
+    local tpath = M.patchPath(tdir, id)
@@ -724 +724 @@
-    local fpath = M.patchPath(fdir, id, '.p')
+    local fpath = M.patchPath(fdir, id)
@@ -764 +764 @@
-  local last = M.patchPath(bdir, tip, '.p')
+  local last = M.patchPath(bdir, tip)
@@ -771 +771 @@
-    local path = M.patchPath(bdir, i, '.p')
+    local path = M.patchPath(bdir, i)
@@ -779 +779 @@
-  local f = io.open(M.patchPath(bdir, bot, '.p'), 'w')
+  local f = io.open(M.patchPath(bdir, bot), 'w')
@@ -789,2 +789,2 @@
-    local botPat = M.patchPath(bdir, bi, '.p')
-    local topPat = M.patchPath(bdir, i, '.p')
+    local botPat = M.patchPath(bdir, bi)
+    local topPat = M.patchPath(bdir, i)
@@ -926 +926 @@
-    local ppath = M.patchPath(dir, i, '.p')
+    local ppath = M.patchPath(dir, i)
@@ -949 +949 @@
-  local oldp = M.patchPath(bdir, id, '.p')
+  local oldp = M.patchPath(bdir, id)
@@ -953 +953 @@
-  local newp = sconcat('', bdir, tostring(id), '.p')
+  local newp = sconcat('', bdir, tostring(id))
@@ -1032 +1032 @@
-      local from = M.patchPath(bdir,id, '.p', d)
+      local from = M.patchPath(bdir,id, d)
@@ -1066 +1066 @@
-    ix.forceCp(M.patchPath(bdir,id, '.p', M.patchPath(to,id, '.p')))
+    ix.forceCp(M.patchPath(bdir,id, M.patchPath(to,id)))
