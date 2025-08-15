add window bindings, minor File:reader fixes
--- cmd/ele/ele/Editor.lua
+++ cmd/ele/ele/Editor.lua
@@ -94 +94 @@
-  local dat = ed.newDat(idOrPath) -- first so it can yield
+  local dat = ed.newDat(idOrPath) -- do first to allow yield

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -383,0 +384,24 @@
+  if ev.moveV then
+    local v = ed.edit; local c = e.container
+    if mty.ty(c) == et.VSplit then
+      v, c = c, c.container
+    end
+    if mty.ty(c) == et.HSplit then
+      local i = assert(ds.indexOf(c, v)) + ev.moveV
+      if 1 <= i and i <= #c then
+        ed.edit = c[i]
+      end
+    end
+  end
+  if ev.moveH then
+    local v = ed.edit; local c = e.container
+    if mty.ty(c) == et.HSplit then
+      v, c = c, c.container
+    end
+    if mty.ty(c) == et.VSplit then
+      local i = assert(ds.indexOf(c, v)) + ev.moveH
+      if 1 <= i and i <= #c then
+        ed.edit = c[i]
+      end
+    end
+  end

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -121,2 +121,10 @@
-M.splitV = {action='window', split='vertical'}
-M.splitH = {action='window', split='horizontal'}
+M.splitVLeft  = {action='window', split='vertical'}
+M.splitVRight = {action='window', split='vertical', moveH=1}
+M.splitHUp    = {action='window', split='horizontal'}
+M.splitHDown  = {action='window', split='horizontal', moveV=1}
+
+M.windowUp    = {action='window', moveV=-1}
+M.windowDown  = {action='window', moveV=1}
+M.windowLeft  = {action='window', moveH=-1}
+M.windowRight = {action='window', moveH=1}
+
@@ -245,2 +253,2 @@
--- M.goPath      = {action='path', go=true}
--- M.createPath  = {action='path', go='create'}
+M.goPath      = {action='path', go=true}
+M.createPath  = {action='path', go='create'}
@@ -258,0 +267 @@
+
@@ -294 +303,7 @@
-  -- ['g f']           = M.goPath,
+  ['g f'] = M.goPath,
+
+  ['g h'] = M.windowLeft, ['g l'] = M.windowRight,
+  ['g j'] = M.windowDown, ['g k'] = M.windowUp,
+
+  ['g H'] = M.splitVLeft, ['g L'] = M.splitVRight,
+  ['g J'] = M.splitHDown, ['g K'] = M.splitHUp,
@@ -325 +339,0 @@
-

--- cmd/ele/tests/test_session.lua
+++ cmd/ele/tests/test_session.lua
@@ -137,0 +138,10 @@
+Test{'window', open=SMALL, th=2, tw=60, function(tst)
+  local s, ed, e = tst.s, tst.s.ed, tst.s.ed.edit
+  local b, BID = e.buf, 3
+  T.eq(b.id, BID)
+  T.eq(SMALL, b.dat.path)
+  s:play'g L'
+  -- T.eq('... TODO ...', fmt(ed.display))
+end}
+
+

--- lib/fd/fd/IFile.lua
+++ lib/fd/fd/IFile.lua
@@ -106,0 +107,14 @@
+--- Get a new read-only instance with an independent file-descriptor.
+---
+--- Warning: currently the reader's len will be static, so this should
+--- be mostly used for temporary cases. This might be changed in
+--- the future.
+IFile.reader = function(fi) --> IFile?, err?
+  assert(fi.path, 'reader only allowed on file with path')
+  fi:flush()
+  local f,e = io.open(fi.path, 'r'); if not f then return nil, e end
+  local r = ds.copy(fi)
+  r.f, r.mode = f, 'r'
+  return r
+end
+

--- lib/lines/lines/File.lua
+++ lib/lines/lines/File.lua
@@ -157,7 +157,8 @@
-File.reader = function(lf) --> lines.File (readonly)
-  local path = assert(lf.path, 'path not set')
-  local idx, err = assert(
-    getmt(lf.idx):load(assert(lf.idx.path, 'idx path not set'), 'r'))
-  return construct(getmt(lf), {
-    f=assert(io.open(path, 'r')), path=path, cache=lf.cache, idx=idx,
-  })
+--- Get a new read-only instance with an independent file-descriptor.
+File.reader = function(lf) --> lines.File?, err?
+  local path = assert(lf.path, 'reader only allowed on file with path')
+  local idx = lf.idx:reader()
+  local f,e = io.open(lf.path, 'r'); if not f then return nil, e end
+  local new = ds.copy(lf)
+  new.f, new.idx, new.mode = f, idx, 'r'
+  return new
