working on ele nav
--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -5,0 +6 @@
+local pth = require'ds.path'
@@ -198,4 +199,2 @@
-M.expandDir = function(ed, ev, evsend)
-  local e = ed.edit
-  local line = 
-  log.trace('expandDir', ev, e.l, e.c)
+M.nav = mod and mod'ele.actions.nav' or {};
+local nav = M.nav
@@ -202,0 +202,7 @@
+nav.getFocus = function(line)
+  return line:match'^%-?([.~]?/[^\n]*)'
+end
+nav.getEntry = function(line) --> (indent, kind, entry)
+  local i, k, e = line:match'^(%s+)([*+-])%s*([^\n]+)'
+  if not i then return end
+  return i, k, e:match'^%./' and e:sub(3) or e
@@ -203,0 +210 @@
+local getFocus, getEntry = nav.getFocus, nav.getEntry
@@ -205,5 +212,37 @@
-M.nav = function(ed, ev, evsend)
-  local to = assert(ev[1], 'nav: must provide index 1 for to')
-  to = fmt.assertf(ed.ext.nav[to], 'nav: invalid to=%q', to)
-  to(ed, ev, evsend)
-  ed:handleStandard(ev)
+--- Find the parent of current path entry
+--- if isFocus the entry will be the focus (and ind will be 0)
+nav.findParent = function(b, l) --> linenum, line
+  local line = b:get(l);
+  if getFocus(line) then return l, line, true  end
+  local ind = getEntry(line); if not ind then return end
+  ind = #ind
+  for l = l, 1, -1 do
+    local line = b:get(l);
+    if getFocus(line) then return l, line, true  end
+    local i = getEntry(line); if not i then return end
+    if #i < ind       then return l, line, false end
+  end
+end
+
+--- Find the focus path line num (i.e. the starting directory)
+nav.findFocus = function(b, l) --> linenum, line
+  for l=l,1,-1 do
+    local line = b:get(l)
+    if getFocus(line)     then return l, line end
+    if not getEntry(line) then return end
+  end
+end
+
+--- Find the last line of the focus's entities (or itself).
+--- invariant: line l is an entry or focus.
+nav.findEnd = function(b, l) --> linenum, line
+  for l=l+1,#b do
+    local line = b:get(l);
+    if not getEntry(line) then return l, line end
+  end
+end
+
+--- Find the view (focusLineNum, endLineNum, focusLine)
+nav.findView = function(b, l) --> (fln, eln, fline)
+  local fl, fline = nav.findFocus(b, l); if not fl then return end
+  return fl, assert(nav.findEnd(b, l)), fline
@@ -211,0 +251,68 @@
+--- Walk up the parents, getting the full path
+nav.getPath = function(b, l) --> string
+  local line = b:get(l)
+  local focus = getFocus(line); if focus then return focus end
+  local ind = getEntry(line);   if not ind then return end
+  local path, ind = {}, #ind
+
+  -- Scan up, adding entries with less indent to path.
+  for l = l, 1, -1 do
+    line = b:get(l)
+    focus = getFocus(line); if focus then
+      push(path, focus)
+      return pth.concat(ds.reverse(path))
+    end
+    local i, _, e = getEntry(line)
+    if #i < ind then push(path, e); ind = #i end
+  end
+end
+
+nav.findEntryEnd = function(b, l) --> linenum
+  local ind = getEntry(b:get(l)); if not ind then return end
+  ind = #ind
+  for l=l+1, #b do
+    local i = getEntry(b:get(l))
+    if not i or #i <= ind then return l-1 end
+  end
+end
+
+nav.collapseEntry = function(b, l)
+  local el = nav.findEntryEnd(b, l); if not el then return end
+  if el > l then b:remove(l+1, el) end
+end
+
+local doCollapse = function(e, l)
+  local fl,fe = nav.findView(e.buf, l or e.l)
+  if not fl then return end
+  if fe > fl then e.buf:remove(fl+1, fe) end
+end
+
+local doPathChange = function(e, ch, l)
+  local fl, fline = nav.findFocus(e.buf, l or e.l)
+  if not fl then return end
+  local focus = nav.getFocus(fline)
+
+  if ch > 0 then -- expand only
+
+  end
+end
+
+local doPath = function(e, ev)
+  if ev.collapse then doCollapse(e) end
+  if ev.path     then doPathChange(e, ev.path) end
+end
+
+M.path = function(ed, ev, evsend)
+  local e = ed.edit
+  log.trace('path: %q line=%i', ev, e.l)
+  for _=1,ev.times or 1 do doPath(e, ev) end
+  if path.run then error'todo' end
+end
+
+-- M.nav = function(ed, ev, evsend)
+--   local to = assert(ev[1], 'nav: must provide index 1 for to')
+--   to = fmt.assertf(ed.ext.nav[to], 'nav: invalid to=%q', to)
+--   to(ed, ev, evsend)
+--   ed:handleStandard(ev)
+-- end
+

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -244,0 +245,16 @@
+-- Basic movement and times (used in multiple)
+M.movement = {
+  right = M.right, left=M.left, up=M.up, down=M.down,
+  l     = M.right, h   =M.left, k =M.up, j   =M.down,
+  w=M.forword, b=M.backword,
+  t=M.till, T=M.tillback,
+  ['^'] = M.sot, ['$'] = M.eol,
+
+  -- times (note: 1-9 defined below)
+  ['0'] = M.zero, -- sol+0times
+}
+-- times
+for b=('1'):byte(), ('9'):byte() do
+  M.movement[string.char(b)] = M.times
+end
+
@@ -254,0 +271 @@
+
@@ -256,0 +274,2 @@
+ds.update(M.command, M.movement)
+
@@ -265,11 +283,0 @@
-  -- movement
-  right = M.right, left=M.left, up=M.up, down=M.down,
-  l     = M.right, h   =M.left, k =M.up, j   =M.down,
-  w=M.forword, b=M.backword,
-  f=M.find, F=M.findback,
-  t=M.till, T=M.tillback,
-  ['^'] = M.sot, ['$'] = M.eol,
-
-  -- times (note: 1-9 defined below)
-  ['0'] = M.zero, -- sol+0times
-
@@ -278,0 +287,3 @@
+  -- movement
+  f=M.find, F=M.findback,
+
@@ -286,4 +296,0 @@
--- times
-for b=('1'):byte(), ('9'):byte() do
-  M.command[string.char(b)] = M.times
-end
@@ -301,0 +309,19 @@
+ds.update(M.nav, M.movement)
+
+M.pathRun  = {action='path', run=true}
+M.pathBack = {action='path', path=-1}
+M.pathBackExpand = {
+  action='path', collapse=true, path=-1, expand=true,
+}
+M.pathExpand = {action='path', expand=true}
+M.pathFocusExpand = {action='path', focus=true, expand=true}
+
+ds.update(M.nav, {
+  h = M.pathBack,   H = M.pathBackExpand,
+  l = M.pathExpand, L = M.pathFocusExpand,
+
+  enter = M.pathRun,
+
+  -- TODO: J/K: focus below/above
+})
+
@@ -303,2 +328,0 @@
-M.expandDir   = {action='expandDir'}
-M.collapseDir = {action='collapseDir'}

--- cmd/ele/tests/test_actions.lua
+++ cmd/ele/tests/test_actions.lua
@@ -10,0 +11,2 @@
+local nav = M.nav
+
@@ -85,0 +88,20 @@
+
+local NAV1 = [[
+/focus/path/
+  + f
+  + d/
+    + d/
+    + f
+]]
+T.nav = function()
+  local d = newEd(NAV1)
+  local e, b = d.edit, d.edit.buf
+
+
+  T.eq('./focus/path/', nav.getFocus'-./focus/path/\n')
+  T.eq(nil,             nav.getFocus'focus/path/\n')
+  T.eq({'  ', '+', 'f'}, {nav.getEntry'  + f'})
+
+  nav.collapseEntry(b, 3)
+  -- T.eq('/focus/path/\n  + f\n  +d/\n', fmt(b.dat))
+end

--- cmd/ele/tests/test_session.lua
+++ cmd/ele/tests/test_session.lua
@@ -79 +79 @@
-  s:play'space 7 return 6'
+  s:play'space 7 enter 6'

--- lib/civix/civix.lua
+++ lib/civix/civix.lua
@@ -72 +72,2 @@
-  dir = lib.dir, rm=lib.rm, rmdir = lib.rmdir,
+  dir = lib.dir, ls    = lib.dir,
+  rm  = lib.rm,  rmdir = lib.rmdir,

--- ui/vt100/test.lua
+++ ui/vt100/test.lua
@@ -22 +22 @@
-  T.eq('\n', l'return')
+  T.eq('\n', l'enter')
@@ -42 +42 @@
-  T.eq('return', key(13))
+  T.eq('enter', key(13))

--- ui/vt100/vt100.lua
+++ ui/vt100/vt100.lua
@@ -107 +107 @@
-  [  9] = 'tab',   [ 13] = 'return',  [ 32] = 'space',
+  [  9] = 'tab',   [ 13] = 'enter',  [ 32] = 'space',
@@ -125 +125 @@
-  ['return']    = '\n',
+  ['enter']     = '\n',
@@ -134 +134 @@
----   literal'return'  -> '\n'
+---   literal'enter'   -> '\n'
