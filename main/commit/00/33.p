implemented IFile:move, need to bubble up to Ed
--- cmd/ele/ele/edit.lua
+++ cmd/ele/ele/edit.lua
@@ -58,0 +59 @@
+  -- TODO: I should re-index first and mv with index

--- lib/fd/fd/IFile.lua
+++ lib/fd/fd/IFile.lua
@@ -7 +7 @@
-  'f [file]', 'path [str]',
+  'f [file]', 'path [str]', 'mode [str]',
@@ -36 +36 @@
-  return T{sz=sz, f=f, len=0, _i = 1, path=path}
+  return T{sz=sz, f=f, len=0, _i = 1, path=path, mode='w+'}
@@ -39,3 +39,3 @@
---- reload from path
-IFile.reload = function(fi, mode) --> IFile?, errmsg?
-  local f, err = io.open(fi.path, mode or 'r+')
+--- Reload IFile from path.
+IFile.reload = function(fi) --> IFile?, errmsg?
+  local f, err = io.open(fi.path, fi.mode or 'r+')
@@ -53 +53 @@
-  return mty.construct(T, {sz=sz, path=path}):reload(mode)
+  return mty.construct(T, {sz=sz, path=path, mode=mode}):reload()
@@ -62,0 +63,3 @@
+IFile.closed = function(fi) --> bool
+  return fi.f and true or false
+end
@@ -85,0 +89,18 @@
+--- Move the IFile's path to [$to].
+---
+--- [$mv] must be of type [$fn(from, to)]. If not provided,
+--- [$civix.mv] will be used.
+---
+--- This can be done on both closed and opened files.
+---
+--- The IFile will re-open on the new file regardless of the
+--- previous state.
+IFile.move = function(fi, to, mvFn) --> fi
+  assert(fi.path, 'cannot move tmp file')
+  mvFn = mvFn or require'civix'.mv
+  if fi.f then fi:flush(); fi:close() end
+  mvFn(fi.path, to); fi.path = to
+  fi.mode = 'r+'
+  return fi:reload()
+end
+

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -12,0 +13 @@
+local ix      = require'civix'
@@ -61,0 +63,9 @@
+
+  -- Move the idx file
+  local to = IDX..'2'
+  assert(u:move(to));
+    T.exists(to)
+    assert(not ix.exists(IDX))
+  T.eq(to, u.path)
+  T.eq({0, 3, 5, 7}, ds.icopy(u))
+  T.eq({0, 3, 5, 7}, loadu3s(u.f))
