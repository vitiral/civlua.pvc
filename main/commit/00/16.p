Buffer:get
--- .pvcpaths
+++ .pvcpaths
@@ -36 +35,0 @@
-cmd/ele/ele/nav.lua

--- cmd/ele/ele/Ed.lua
+++ cmd/ele/ele/Ed.lua
@@ -44 +43,0 @@
-  require'ele.nav'.install(t)

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -129 +129 @@
-  if fn      then fn(e, e.buf[e.l], ev)       end
+  if fn      then fn(e, e.buf:get(e.l), ev)       end
@@ -196 +196,8 @@
--- nav: navigation
+-- NAV
+
+M.expandDir = function(ed, ev, evsend)
+  local e = ed.edit
+  local line = 
+  log.trace('expandDir', ev, e.l, e.c)
+
+end

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -291,0 +292,15 @@
+-- NAV Mode
+
+--- Nav mode
+--- Nav mode is for dealing with file paths in ANY buffer.
+--- It allows expanding/collapsing directory-like paths to their
+--- entries, as well as as creating/deleting/opening files
+--- or directories.
+M.nav = M.KeyBindings {
+  name = 'nav', doc = 'nav mode',
+}
+
+M.expandDir   = {action='expandDir'}
+M.collapseDir = {action='collapseDir'}
+
+---------------------------

--- cmd/ele/ele/edit.lua
+++ cmd/ele/ele/edit.lua
@@ -63 +63 @@
-    return 1, ds.bound(c, 1, #e.buf[1] + 1)
+    return 1, ds.bound(c, 1, #e.buf:get(1) + 1)
@@ -66 +66 @@
-  return l, ds.bound(c, 1, #e.buf[l] + 1)
+  return l, ds.bound(c, 1, #e.buf:get(l) + 1)
@@ -71 +71 @@
-  return ds.bound(c, 1, #e.buf[l or e.l] + 1)
+  return ds.bound(c, 1, #e.buf:get(l or e.l) + 1)

--- cmd/ele/tests/test_actions.lua
+++ cmd/ele/tests/test_actions.lua
@@ -61,2 +61,2 @@
-    T.eq('3 5 7 9', b[1])
-    T.eq('  3 5', b[2])
+    T.eq('3 5 7 9', b:get(1))
+    T.eq('  3 5', b:get(2))
@@ -64 +64 @@
-    T.eq('7 9', b[1])
+    T.eq('7 9', b:get(1))
@@ -81,2 +81,2 @@
-    T.eq('4 5 1 2 3', b[1])
-    T.eq('4 5 6',     b[2])
+    T.eq('4 5 1 2 3', b:get(1))
+    T.eq('4 5 6',     b:get(2))

--- cmd/ele/tests/test_session.lua
+++ cmd/ele/tests/test_session.lua
@@ -110 +110 @@
-    T.eq('13 5 7 9', b[1])
+    T.eq('13 5 7 9', b:get(1))
@@ -121 +121 @@
-    T.eq('-- a small lua file for tests', b[1])
+    T.eq('-- a small lua file for tests', b:get(1))
@@ -124 +124 @@
-    T.eq('a small lua file for tests', b[1])
+    T.eq('a small lua file for tests', b:get(1))
@@ -128 +128 @@
-    T.eq('a small lua file for tests', b[1]) -- no change to contents
+    T.eq('a small lua file for tests', b:get(1)) -- no change to contents

--- lib/lines/lines/buffer.lua
+++ lib/lines/lines/buffer.lua
@@ -36,0 +37,3 @@
+getmetatable(M.Buffer).__index = mty.hardIndex
+M.Buffer.__newindex            = mty.hardNewindex
+
@@ -62 +65 @@
-Buffer.new=function(s)
+Buffer.new = function(s)
@@ -72,4 +75 @@
-Buffer.__index = function(b, i)
-  if type(i) == 'string' then return Buffer[i] end
-  return b.dat[i]
-end
+Buffer.get   = function(b, i) return b.dat:get(i) end

--- cmd/ele/ele/nav.lua
+++ /dev/null
@@ -1,50 +0,0 @@
--- nav: core navigation
-local M = mod and mod'ele.nav' or {}
-
-local ds = require'ds'
-local lap = require'lap'
-local cx = require'civix'
-local lines = require'lines'
-
-local B = require'ele.bindings'
-
-local dp = ds.dotpath
-
-local isDir = function(p) return p:sub(-1) == '/' end
-
-M.to = mod and mod'ele.nav.to' or {}
-
-M.modes = mod and mod'ele.nav.modes' or {}
-M.modes.insert  = B.KeyBindings {
-  fallback = function() error'cannot insert in nav list' end
-}
-M.modes.command = B.KeyBindings {
-  ['return'] = {action='nav', 'line'},
-  esc        = B.close,
-}
-
--- Create a new buffer for nav related actions
-M.navEdit = function(ed) --> new temporary nav buffer
-  local b = ed:buffer(); local e = ed:focus(b); push(b.tmp, e)
-  e.modes = M.modes
-  return e
-end
-
-M.to.listcwd = function(ed)
-  local e = M.navEdit(ed)
-  local d = function() ed.redraw = true end
-  lap:schedule(function()
-    cx.walk({assert(CWD)}, {
-      dir     = function(p) e:append(p..'/\n'); d() end,
-      default = function(p) e:append(p..'\n');  d() end,
-    }, 1)
-  end)
-end
-
-M.to.line = function(ed, ev) eD:open(ed.edit:curLine()) end
-
-M.install = function(ed)
-  ed.ext.nav = ds.merge(ed.ext.nav or {}, M.to)
-end
-
-return M
