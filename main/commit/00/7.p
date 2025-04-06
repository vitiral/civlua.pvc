don't commit on an empty repo
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -522 +521,0 @@
-  if M.calcPatchDepth(cid) > M.depth(bp) then M.deepen(bp) end
@@ -525,0 +525,5 @@
+  local diff = M.Diff:of(bsnap, pdir)
+  if not diff:hasDiff() then
+    error('invalid commit: no differences detected')
+  end
+  if M.calcPatchDepth(cid) > M.depth(bp) then M.deepen(bp) end
@@ -527 +531 @@
-    sconcat('\n', desc, M.Diff:of(bsnap, pdir):patch()))
+    sconcat('\n', desc, diff:patch()))

--- cmd/pvc/test.lua
+++ cmd/pvc/test.lua
@@ -33,0 +34,3 @@
+  T.throws('no differences detected', function()
+    pvc.commit(d, 'empty repo')
+  end)
