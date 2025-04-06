initial implementation of amend
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -637 +637 @@
-M.rebase = function(pdir, branch, id)
+M.rebase = function(pdir, branch, id) --> backup/dir/
@@ -697,0 +698 @@
+  return backup
@@ -1064,5 +1065,19 @@
-  -- (1): create new brach_amend at current id
-  -- (2): commit change to branch_amend
-  -- (3): rebase branch_amend onto branch
-  -- (4): squash the commit into the previous and update description
-  -- (5): move branch -> backup/ and branch_amend
+  local D = popdir(args)
+  local br,id = M.rawat(D)
+  if not M.diff(D, br):hasDiff() then
+    error'no diff detected. Use desc to change description'
+  end
+  local bdir = M.branchDir(D, br)
+  local desc = M.desc(M.patchPath(bdir, id, '.p'))
+
+  local nbr = br..'_amend'
+  local ndir = M.branch(D, nbr, br,id)
+  M.commit(D, 'amend: this commit will be folded')
+  M.at(D, br,id)
+  local backup = M.rebase(D, nbr,id+1)
+
+  local bpatch = backup..'amend.p'
+  io.fmt:styled('notify', 'storing amended patch at '..bpatch, '\n')
+  ix.cp(M.patchPath(nbr,id+1, '.p'), bpatch)
+  io.fmt:styled('notify', 'removing temporary branch '..nbr, '\n')
+  ix.rmRecursive(ndir)
