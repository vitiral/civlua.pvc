adding snap

--- cmd/cxt/cxt.lua
+++ cmd/cxt/cxt.lua
@@ -459,0 +460 @@
+  'style [string]: see asciicolor.Style',

--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -1071,0 +1072,13 @@
+--- [$snap [branch#id]] get the snapshot directory of branch#id
+--- (default=at).
+--- 
+--- The snapshot contains a copy of files at that commit and
+--- should not be modified.
+M.main.snap = function(args) --> snap/
+  local P = popdir(args)
+  local br, id = M.resolve(P, args[1] or 'at')
+  local snap = M.snapshot(P, br, id)
+  io.stdout:write(snap, '\n')
+  return pth.nice(snap)
+end
+

--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -429 +429 @@
-  eq = eq or ds.eq
+  eq = eq or M.eq
@@ -436 +436 @@
-  move(t,     rl + 1, l,  1) -- move to start
+  move(t,     rl + 1, l,  1, t) -- move to start

--- lib/ds/ds/path.lua
+++ lib/ds/ds/path.lua
@@ -14 +14 @@
-local clear, ds_rmleft  = ds.clear, ds.rmleft
+local clear             = ds.clear
@@ -146 +146 @@
-  return ds_rmleft(path, rm, M.itemeq)
+  return ds.rmleft(path, rm, M.itemeq)

--- lib/ds/test.lua
+++ lib/ds/test.lua
@@ -194,0 +195,2 @@
+  T.eq({'d', 'e'},
+    M.rmleft({'a', 'b', 'c', 'd', 'e'}, {'a', 'b', 'c'}))
