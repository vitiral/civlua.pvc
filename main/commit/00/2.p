branchPath -> branchDir
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -248 +248 @@
-M.branchPath = function(pdir, branch, dot)
+M.branchDir = function(pdir, branch, dot)
@@ -301 +301 @@
-  local bpath = M.branchPath(pdir, br)
+  local bpath = M.branchDir(pdir, br)
@@ -374 +374 @@
-  local npath = M.branchPath(pdir, nbr)
+  local npath = M.branchDir(pdir, nbr)
@@ -456 +456 @@
-  return br, id, M.branchPath(P, br)
+  return br, id, M.branchDir(P, br)
@@ -485 +485 @@
-  initBranch(M.branchPath(pdir, branch), 0)
+  initBranch(M.branchDir(pdir, branch), 0)
@@ -512 +512 @@
-  local bp, cid = M.branchPath(pdir, br), id+1
+  local bp, cid = M.branchDir(pdir, br), id+1
@@ -541 +541 @@
-  return br, id or bid or M.rawtip(M.branchPath(pdir, br))
+  return br, id or bid or M.rawtip(M.branchDir(pdir, br))
@@ -545 +545 @@
-  local fpath = M.branchPath(pdir, fbr)
+  local fpath = M.branchDir(pdir, fbr)
@@ -548 +548 @@
-  local npath = M.branchPath(pdir, name)
+  local npath = M.branchDir(pdir, name)
@@ -579 +579 @@
-    local bt = M.rawtip(M.branchPath(pdir, bbr))
+    local bt = M.rawtip(M.branchDir(pdir, bbr))
@@ -637 +637 @@
-  local cpath = M.branchPath(pdir, cbr)
+  local cpath = M.branchDir(pdir, cbr)
@@ -643 +643 @@
-  local bpath = M.branchPath(pdir, bbr)
+  local bpath = M.branchDir(pdir, bbr)
@@ -647 +647 @@
-  local cpath, cid = M.branchPath(pdir, cbr), bid + 1
+  local cpath, cid = M.branchDir(pdir, cbr), bid + 1
@@ -650 +650 @@
-  local tpath      = M.branchPath(pdir, tbr)
+  local tpath      = M.branchDir(pdir, tbr)
@@ -696 +696 @@
-  local fbr, fdir = assert(from, 'must set from'), M.branchPath(P, from)
+  local fbr, fdir = assert(from, 'must set from'), M.branchDir(P, from)
@@ -703 +703 @@
-  local tdir = M.branchPath(P, tbr)
+  local tdir = M.branchDir(P, tbr)
@@ -750 +750 @@
-  local bdir = M.branchPath(P, br)
+  local bdir = M.branchDir(P, br)
@@ -859 +859 @@
-    M.rawtip(M.branchPath(P, args[1] or M.rawat(P))))
+    M.rawtip(M.branchDir(P, args[1] or M.rawat(P))))
@@ -897 +897 @@
-        local bdir = M.branchPath(D, br)
+        local bdir = M.branchDir(D, br)
@@ -908 +908 @@
-  local num, dir = toint(args.num or 10), M.branchPath(D, br)
+  local num, dir = toint(args.num or 10), M.branchDir(D, br)
@@ -914 +914 @@
-      br, dir = bbr, M.branchPath(D, bbr)
+      br, dir = bbr, M.branchDir(D, bbr)
@@ -985 +985 @@
-  local base = M.getbase(M.branchPath(P,br))
+  local base = M.getbase(M.branchDir(P,br))
@@ -999 +999 @@
-  local bdir = M.branchPath(D, br)
+  local bdir = M.branchDir(D, br)
@@ -1033 +1033 @@
-  local bdir = M.branchPath(D, br)
+  local bdir = M.branchDir(D, br)

--- lib/civix/civix/lib.c
+++ lib/civix/civix/lib.c
@@ -185 +184,0 @@
-  printf("!! stat_size %i\n", st->st_size);
