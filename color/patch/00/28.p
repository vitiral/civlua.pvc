
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -257 +257 @@
-M.rawtip = function(bpath, id)
+M.rawtip = function(bpath, id) 
@@ -978,2 +978,8 @@
-  local br,bot = M.resolve(P, assert(args[1], 'must set branch#id (aka "at")'))
-  local top = toint(assert(args[2], 'must set endId'))
+  local br, bot,top
+  if args[1] then
+    br, bot = M.resolve(P, args[1])
+    top     = toint(assert(args[2], 'must set endId'))
+  else -- local commits
+    M.commit(P, '')
+    br, bot = M.at(P); top = bot
+  end
@@ -1062,24 +1067,0 @@
---- [$amend -- new commit message]: amend the current patch,
---- rebasing the later patches on top.
-M.main.amend = function(args)
-  local D = popdir(args)
-  local br,id = M.rawat(D)
-  if not M.diff(D, br):hasDiff() then
-    error'no diff detected. Use desc to change description'
-  end
-  local bdir = M.branchDir(D, br)
-  local desc = M.desc(M.patchPath(bdir, id, '.p'))
-
-  local nbr = br..'_amend'
-  local ndir = M.branch(D, nbr, br,id)
-  M.commit(D, 'amend: this commit will be folded')
-  M.at(D, br,id)
-  local backup = M.rebase(D, nbr,id+1)
-
-  local bpatch = backup..'amend.p'
-  io.fmt:styled('notify', 'storing amended patch at '..bpatch, '\n')
-  ix.cp(M.patchPath(nbr,id+1, '.p'), bpatch)
-  io.fmt:styled('notify', 'removing temporary branch '..nbr, '\n')
-  ix.rmRecursive(ndir)
-end
-

--- cmd/pvc/test.lua
+++ cmd/pvc/test.lua
@@ -27 +27 @@
-local initPvc = function(d)
+local initPvc = function(d) --> projDir
@@ -271 +270,0 @@
-
