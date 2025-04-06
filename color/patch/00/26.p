start working on amend
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -1064,0 +1065,9 @@
+--- [$amend -- new commit message]: amend the current patch,
+--- rebasing the later patches on top.
+M.main.amend = function(args)
+  -- (1): create new brach_amend at current id
+  -- (2): commit change to branch_amend
+  -- (3): rebase branch_amend onto branch
+  -- (4): squash the commit into the previous and update description
+  -- (5): move branch -> backup/ and branch_amend
+end
