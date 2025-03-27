preserve description
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -526 +525,0 @@
-  -- TODO(commit): add description
@@ -678,0 +678 @@
+    local desc = M.desc(M.patchPath(cpath, cid, '.p'))
@@ -680 +679,0 @@
-    -- TODO(commit): preserve description
@@ -684 +683,2 @@
-    ix.forceWrite(tpatch, M.Diff:of(tprev, tsnap):patch())
+    ix.forceWrite(tpatch,
+      concat(desc, '\n')..'\n'..M.Diff:of(tprev, tsnap):patch())

--- cmd/pvc/test.lua
+++ cmd/pvc/test.lua
@@ -240,0 +241 @@
+  T.eq({'desc4d'}, pvc.desc(Bd..'patch/00/5.p'))

--- lib/fd/fd/IFile.lua
+++ lib/fd/fd/IFile.lua
@@ -13 +13 @@
-  'len [int]', '_i [int]',
+  'len [int]', '_i [int]', '_m [str]: r/w mode',
@@ -25,4 +25,4 @@
---- seek to index. Invariant: [$i <= len+1]
--- FIXME: only seek when pos is different OR switching between reading / writing
-local function iseek(fi, i, sz) --!!> nil
-  -- if fi._i == i then return end
+--- seek to index in the "mode" m. Invariant: [$i <= len+1]
+local function iseek(fi, i, m, sz) --!!> nil
+  if fi._i == i and fi._m == m then return end
+  fi._m = m
@@ -73 +73 @@
-  local sz = fi.sz; iseek(fi, i, sz)
+  local sz = fi.sz; iseek(fi, i, 'r', sz)
@@ -91 +91 @@
-  iseek(fi, i, sz); assert(fi.f:write(v))
+  iseek(fi, i, 'w', sz); assert(fi.f:write(v))
