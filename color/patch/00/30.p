fix rebase
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -1006 +1006 @@
-  M.rebase(br, M.rawtip(M.branchpath(P, base)))
+  M.rebase(P, br, M.rawtip(M.branchDir(P, base)))
