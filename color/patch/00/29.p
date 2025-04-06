fix squash and assert on correct tip
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -257 +257 @@
-M.rawtip = function(bpath, id) 
+M.rawtip = function(bpath, id)
@@ -768,0 +769 @@
+  -- move [bot,top] commits to backup/ and remove their .snap/ directories.
@@ -777 +778,2 @@
-  local f = io.open(M.patchPath(bdir, top, '.p'), 'w')
+  -- write the squashed patch file
+  local f = io.open(M.patchPath(bdir, bot, '.p'), 'w')
@@ -781,3 +783,5 @@
-  ix.rmRecursive(M.snapDir(bdir, bot))
-  local bi = bot + 1
-  for i=top+1, tip do
+  ix.rmRecursive(M.snapDir(bdir, bot)) -- TODO: remove this I think
+
+  -- move the patch files above top down to be above squashed bot
+  local bi = bot
+  for i=top+1, tip do; bi = bi + 1
@@ -785,9 +789,7 @@
-    local bpat = M.patchPath(bdir, bi, '.p')
-    local tpat = M.patchPath(bdir, i, '.p')
-    io.fmt:styled('notify', sfmt('mv %s %s', tpat, bpat), '\n')
-    ix.mv(tpat, bpat)
-    bi = bi + 1
-  end
-  local ppath = M.patchPath(bdir, bot, '.p')
-  pth.write(ppath, patch)
-  M.rawat(P, br,bot); M.rawtip(P, br,bi-1)
+    local botPat = M.patchPath(bdir, bi, '.p')
+    local topPat = M.patchPath(bdir, i, '.p')
+    io.fmt:styled('notify', sfmt('mv %s %s', topPat, botPat), '\n')
+    ix.mv(topPat, botPat)
+  end
+
+  M.rawat(P, br,bot); M.rawtip(bdir,bi)
@@ -795 +797 @@
-    sfmt('squashed [%s - %s] into %s', bot, top, ppath), '\n')
+    sfmt('squashed [%s - %s] into %s. New tip=%i', bot, top, bot, bi), '\n')

--- cmd/pvc/test.lua
+++ cmd/pvc/test.lua
@@ -264,0 +265 @@
+  T.eq(4, pvc.rawtip(Bm))
