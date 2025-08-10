working on goPath
--- .pvcpaths
+++ .pvcpaths
@@ -87,0 +88 @@
+lib/ds/ds/testing.lua

--- cmd/ele/ele/Ed.lua
+++ cmd/ele/ele/Ed.lua
@@ -20 +20,2 @@
-  'buffers [List]: list of Buffer objects',
+  'buffers [list[Buffer]]',
+  -- 'namedBuffers [map[string,Buffer]]',
@@ -33,0 +35,6 @@
+Ed.__fmt = function(ed, f)
+  f:write'Ed{mode='; f:string(ed.mode); f:write'}'
+end
+
+--- list of named buffers (name -> buffer)
+
@@ -38 +45 @@
-    buffers={},
+    buffers={}, -- namedBuffers=ds.WeakV{},
@@ -49 +56,3 @@
-  if type(v) == 'number' then return ed.buffers[v] end
+  if type(v) == 'number' then
+    local b = ed.buffers[v]; if b then return b end
+  end
@@ -52 +61 @@
-      return ed.buffers[tonumber(id)]
+      return ed.buffers[tonumber(id) or ed.BUFFER[id]]
@@ -76 +85 @@
-Ed.edit = function(ed, to, from)
+Ed.editSwap = function(ed, to, from)
@@ -79 +88 @@
-  if ed.view then ed.view:editSwap(from, to)
+  if ed.view then ed.view:editSwap(to, from)

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -253,6 +253,7 @@
---- Walk up the parents, getting the full path
-nav.getPath = function(b, l) --> string
-  local line = b:get(l)
-  local focus   = getFocus(line); if focus then return focus end
-  local i, _, e = getEntry(line); if not i then return end
-  local path, ind = {e}, #i
+--- Walk up the parents, getting the full path.
+--- If not an entry, try to find the path from the column.
+nav.getPath = function(b, l,c) --> string
+  local ln = b:get(l); local path, ind
+  local focus   = getFocus(ln); if focus then return focus  end
+  local i, _, e = getEntry(ln); if not i then goto nonentry end
+  path, ind = {e}, #i
@@ -262 +263 @@
-    line = b:get(l)
+    local line = b:get(l)
@@ -267 +268 @@
-    i, _, e = getEntry(line); if not i then return end
+    i, _, e = getEntry(line); if not i then break end
@@ -269,0 +271,4 @@
+  ::nonentry::
+  if motion.pathKind(ln:sub(c,c)) ~= 'path' then return end
+  local si, ei = motion.getRange(ln, c, motion.pathKind)
+  return ln:sub(si,ei)
@@ -331,0 +337,15 @@
+--- go to path at l,c. If op=='create' then create the path
+nav.goPath = function(ed, create)
+  local e = ed.edit
+  local p = nav.getPath(e.buf, e.l,e.c)
+  if p then
+    local b = ed:getBuffer(path)
+    if b then return ed:editSwap(b) end
+  end
+  p = pth.abs(p)
+  if ev.create or ix.exists(path) then
+    return ed:editSwap(ed:buffer(path))
+  end
+  error'TODO: goto nav'
+end
+
@@ -345,9 +364,0 @@
-nav.goPath = function(ed, path, force)
-  local b = ed:getBuffer(path); if b then return ed:editSwap(b) end
-  path = pth.abs(path)
-  if force or ix.exists(path) then
-    return ed:editSwap(ed:buffer(path))
-  end
-  error'TODO: goto nav'
-end
-
@@ -359,13 +370 @@
-  if path.go then error'todo: path.go' end
-end
-
-M.go = function(ed)
-  log.trace('go: %q %i.%i', ev, e.l, e.c)
-  local e = ed.edit
-  local l, c = e.l, e.c
-  local ln = e.buf:get(l);   if not ln then return end
-  local p = nav.getPath(ln); if p then return goPath(ed, p) end
-
-  if motion.pathKind(ln:sub(c,c)) ~= 'path' then return end
-  local si, ei = motion.getRange(ln, c, motion.pathKind)
-  return nav.goPath(ed, ln:sub(si,ei), true)
+  if ev.go then nav.goPath(ed, 'create' == ev.go) end
@@ -374 +372,0 @@
-

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -242 +242,2 @@
-M.go  = {action='go'}
+-- M.goPath      = {action='path', go=true}
+-- M.createPath  = {action='path', go='create'}
@@ -290 +291 @@
-  ['g f']           = M.go,
+  -- ['g f']           = M.goPath,
@@ -297,5 +298,4 @@
---- System mode is for dealing with file paths in ANY buffer.
---- It allows expanding/collapsing directory-like paths to their
---- entries, as well as as creating/deleting/opening files
---- or directories.
-M.nav = M.KeyBindings {
+--- Mode for dealing with system-related resources such as
+--- files, directories and running single line or block
+--- commands directly in a buffer.
+M.sys = M.KeyBindings {
@@ -304 +304 @@
-ds.update(M.nav, M.movement)
+ds.update(M.sys, M.movement)
@@ -306 +305,0 @@
-M.pathGo     = {action='path', entry='go'}
@@ -315 +314 @@
-ds.update(M.nav, {
+ds.update(M.sys, {
@@ -319,2 +317,0 @@
-  enter = M.pathGo,
-
@@ -333,0 +331,4 @@
+  -- FIXME
+  -- if not ed.namedBuffers.nav then
+  --   ed.namedBuffers.nav = ed:buffer()
+  -- end

--- cmd/ele/tests/test_bindings.lua
+++ cmd/ele/tests/test_bindings.lua
@@ -30 +30,2 @@
-    mode=mode, modes={}, actions=actions, ext={}
+    mode=mode, modes={}, actions=actions, ext={},
+    buffers={}, -- namedBuffers={},

--- lib/civtest/civtest.lua
+++ lib/civtest/civtest.lua
@@ -108 +108,2 @@
-    f:styled('error', '!! Unexpected: did not receive an error')
+    io.fmt:styled('error',
+      '!! Unexpected: did not receive an error')

--- /dev/null
+++ lib/ds/ds/testing.lua
@@ -0,0 +1,40 @@
+local G = G or _G
+local M = G.mod and mod'ds.testing' or {}
+local ds = require'ds'
+
+local T = require'civtest'
+
+M.testInset = function(new, assertEq)
+  local N, eq, t, rm = new, assertEq or T.eq
+  t = N{}; ds.inset(t, 1, {}); eq(N{}, t);
+
+  t = N{1}; ds.inset(t, 1, {}, 1) -- rmlen=1
+    eq(N{}, t)
+
+  t = N{1, 3}; ds.inset(t, 2, {2})
+    eq(N{1, 2, 3}, t)
+
+  t = N{1, 4, 3}; ds.inset(t, 2, {2}, 1)
+    eq(N{1, 2, 3}, t)
+end
+
+M.testInsetStr = function(new, assertEq)
+  local N, eq, t, rm = new, assertEq or T.eq
+  t = N{};  ds.inset(t, 1, {})
+   eq(N{}, t)
+
+  t = N{'a'}; ds.inset(t, 1, {}, 1) -- rmlen=1
+    eq(N{}, t)
+
+  t = N{'a aa', 'ccc'}; ds.inset(t, 2, {'bb bbb'})
+    eq(N{'a aa', 'bb bbb', 'ccc'}, t)
+
+  t = N{"ab", "c", "", "d"}; ds.inset(t, 2, {}, 2)
+    eq(N{"ab", "d"}, t)
+
+  t = N{'123', '456', '789', 'abc'}
+  ds.inset(t, 2, {'444', '555'}, 2)
+    eq(N{'123', '444', '555', 'abc'}, t)
+end
+
+return M
