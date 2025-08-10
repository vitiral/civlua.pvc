initial impl of go done
--- cmd/ele/ele/Ed.lua
+++ cmd/ele/ele/Ed.lua
@@ -4 +4 @@
-local path   = require'ds.path'
+local pth    = require'ds.path'
@@ -47,5 +47,3 @@
--- create new buffer from v (path or table of lines)
--- if v is nil the buffer will be an empty tmp buffer
---
--- If v is a string this will first check if a buffer exists at the path.
-Ed.buffer = function(ed, v) --> Buffer
+--- Get an existing buffer if it exists
+Ed.getBuffer = function(ed, v) --> Buffer?
+  if type(v) == 'number' then return ed.buffers[v] end
@@ -53 +51,5 @@
-    v = path.abs(v)
+    local id = v:match'b#(%d+)'; if id then
+      return ed.buffers[tonumber(id)]
+    end
+
+    v = pth.abs(v)
@@ -57,0 +60,8 @@
+end
+
+-- create new buffer from v (path or table of lines)
+-- if v is nil the buffer will be an empty tmp buffer
+--
+-- If v is a string this will first check if a buffer exists at the path.
+Ed.buffer = function(ed, v) --> Buffer
+  local b = ed:getBuffer(v); if b then return b end
@@ -64,0 +75,9 @@
+--- Switch to edit (default from current edit)
+Ed.edit = function(ed, to, from)
+  from = from or ed.edit
+  if mty.ty(to) ~= Edit then to = Edit(ed, to) end
+  if ed.view then ed.view:editSwap(from, to)
+  else from.container = nil; from:close() end
+  if rawequal(from, ed.edit) then ed.edit = to end
+end
+

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -256 +256 @@
-  local focus = getFocus(line);     if focus then return focus end
+  local focus   = getFocus(line); if focus then return focus end
@@ -267 +267 @@
-    i, _, e = getEntry(line)
+    i, _, e = getEntry(line); if not i then return end
@@ -281 +281 @@
-nav.collapseFocus = function(b, l)
+nav.backFocus = function(b, l)
@@ -287,2 +287,4 @@
---- Collapse the entry, returning the new line
-nav.collapseEntry = function(b, l) --> ln
+--- Go backwards on the entry, returning the new line
+--- For focus, this will go back one component.
+--- For entry, this will collapse parent (and move to it).
+nav.backEntry = function(b, l) --> ln
@@ -292 +294 @@
-    nav.collapseFocus(b, l)
+    nav.backFocus(b, l)
@@ -303 +305 @@
-nav.expandEntry = function(b, l, ls)
+nav.expandEntry = function(b, l, ls) --> numEntries
@@ -305 +307,2 @@
-  local ind = #getEntry(b:get(l))
+  if #entries == 0 then return end
+  local ind = #(getEntry(b:get(l)) or '')
@@ -309 +312,3 @@
-  b:inset(l+1, entries)
+  push(entries, '')
+  b:insert(concat(entries, '\n'), l+1)
+  return #entries
@@ -312,10 +317,4 @@
---- perform the entry operation
-nav.doEntry = function(b, l, op, ls)
-  if op == 'focus' then return nav.collapseFocus(b, l) end
-  assert(type(op) == 'number', 'entry op must be focus or number')
-  if op < 0 then -- negative op: collapse
-    for _=op,0 do
-      local nl = nav.collapseEntry(b, l); if l == nl then break end
-      l = nl
-    end
-    return l
+nav.doBack = function(b, l, times)
+  for _=1,times do
+    local nl = nav.backEntry(b, l); if l == nl then break end
+    l = nl
@@ -323,5 +321,0 @@
-  -- positive op: expand
-  ls = ls or ix.dir
-  nav.expandEntry(b, l, ls)
-  op = op - 1; if op == 0 then return l end
-  error'todo: expand children until op == 1'
@@ -330,4 +324,7 @@
-nav.doPath = function(e, ev)
-  local b, l = e.buf, e.l
-  
-  if ev.collapse then nav.doCollapse(b, l, ev.collapse) end
+nav.doExpand = function(b, l, times, ls)
+  if not pth.isDir(getEntry(b:get(l))) then return end
+  ls = ls or ix.dir
+  local numEntries = nav.expandEntry(b, l, ls)
+  times = times - 1; if times <= 0 then return end
+  for l=l+1, l+numEntries do nav.doExpand(b, l, times, ls) end
+end
@@ -335,3 +332,5 @@
-  local fl, fline = nav.findFocus(e.buf, l or e.l)
-  if not fl then return end
-  local focus = nav.getFocus(fline)
+local DO_ENTRY = {
+  focus  = nav.backFocus,
+  back   = nav.doBack,
+  expand = nav.doExpand,
+}
@@ -339 +338,6 @@
-  if ch > 0 then -- expand only
+--- perform the entry operation
+nav.doEntry = function(ed, op, times, ls)
+  local e = ed.edit; local l = e.l
+  local fn = fmt.assertf(DO_ENTRY[op], 'uknown entry op: %s', op)
+  e.l = fn(e.buf, l, times, ls) or l
+end
@@ -340,0 +345,5 @@
+nav.goPath = function(ed, path, force)
+  local b = ed:getBuffer(path); if b then return ed:editSwap(b) end
+  path = pth.abs(path)
+  if force or ix.exists(path) then
+    return ed:editSwap(ed:buffer(path))
@@ -341,0 +351 @@
+  error'TODO: goto nav'
@@ -344,3 +354,6 @@
-nav.doPath = function(e, ev)
-  if ev.collapse then nav.collapseFocus(e.buf, e.l) end
-  if ev.path     then nav.doPathChange(e, ev.path)  end
+M.path = function(ed, ev, evsend)
+  log.trace('path: %q line=%i', ev, e.l)
+  if ev.entry then
+    nav.doEntry(ed, ev.entry, ev.times or 1, civix.dir)
+  end
+  if path.go then error'todo: path.go' end
@@ -349 +362,2 @@
-M.path = function(ed, ev, evsend)
+M.go = function(ed)
+  log.trace('go: %q %i.%i', ev, e.l, e.c)
@@ -351,3 +365,7 @@
-  log.trace('path: %q line=%i', ev, e.l)
-  for _=1,ev.times or 1 do nav.doPath(e, ev) end
-  if path.run then error'todo' end
+  local l, c = e.l, e.c
+  local ln = e.buf:get(l);   if not ln then return end
+  local p = nav.getPath(ln); if p then return goPath(ed, p) end
+
+  if motion.pathKind(ln:sub(c,c)) ~= 'path' then return end
+  local si, ei = motion.getRange(ln, c, motion.pathKind)
+  return nav.goPath(ed, ln:sub(si,ei), true)
@@ -355,0 +374 @@
+

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -242,2 +242 @@
-M.goline  = {action='nav', 'line'}
-M.listCWD = {action='nav', 'listcwd'}
+M.go  = {action='go'}
@@ -291,5 +290 @@
-  -- ['g f']       = M.navFind,
-  ['g l']           = M.goline,
-  -- ['space f f']     = M.navInteractive,
-  ['space f space'] = M.listCWD,
-  -- ['space f .']     = M.listFileDir,
+  ['g f']           = M.go,
@@ -299 +294 @@
--- NAV Mode
+-- SYSTEM Mode
@@ -301,2 +296,2 @@
---- Nav mode
---- Nav mode is for dealing with file paths in ANY buffer.
+--- System mode
+--- System mode is for dealing with file paths in ANY buffer.
@@ -311,4 +306,7 @@
-M.pathRun  = {action='path', run=true}
-M.pathBack = {action='path', path=-1}
-M.pathBackExpand = {
-  action='path', collapse=true, path=-1, expand=true,
+M.pathGo     = {action='path', entry='go'}
+M.pathFocus  = {action='path', entry='focus'}
+M.pathBack   = {action='path', entry='back'}
+M.pathExpand = {action='path', entry='expand'}
+M.pathFocusExpand = {action='chain', M.pathFocus, M.pathExpand}
+M.pathBackExpand = {action='chain',
+  M.pathFocus, M.pathBack, M.pathExpand,
@@ -316,2 +313,0 @@
-M.pathExpand = {action='path', expand=true}
-M.pathFocusExpand = {action='path', focus=true, expand=true}
@@ -323 +319 @@
-  enter = M.pathRun,
+  enter = M.pathGo,

--- cmd/ele/tests/test_actions.lua
+++ cmd/ele/tests/test_actions.lua
@@ -91,4 +91,4 @@
-  + f
-  + d/
-    + d/
-    + f
+  * f
+  * d/
+    * d/
+    * f
@@ -103 +103 @@
-  T.eq({'  ', '+', 'f'}, {nav.getEntry'  + f'})
+  T.eq({'  ', '*', 'f'}, {nav.getEntry'  * f'})
@@ -123,2 +123,2 @@
-  nav.collapseEntry(b, 4)
-  T.eq('/focus/path/\n  + f\n  + d/\n', fmt(b.dat))
+  nav.backEntry(b, 4)
+  T.eq('/focus/path/\n  * f\n  * d/\n', fmt(b.dat))
@@ -126 +126 @@
-  nav.collapseEntry(b, 3)
+  nav.backEntry(b, 3)
@@ -127,0 +128,5 @@
+
+  local r, entries = nil, {'f', 'd/'}
+  nav.expandEntry(b, 1, function(p) r = p; return entries end)
+  T.eq('/focus/path/', r)
+  T.eq('/focus/path/\n  * f\n  * d/\n', fmt(b.dat))

--- lib/lines/lines/motion.lua
+++ lib/lines/lines/motion.lua
@@ -56 +56 @@
-local WordKind = {}; M.WordKind = WordKind -- ws, sym, let
+local WordKind = {}; M.WordKind = WordKind
@@ -60,4 +60,4 @@
-  elseif '1' <= ch and ch <= '9' then -- let, leave
-  elseif 'a' <= ch and ch <= 'z' then -- let, leave
-  elseif 'A' <= ch and ch <= 'Z' then -- let, leave
-  elseif ch == '_'               then -- let, leave
+  elseif '1' <= ch and ch <= '9' then -- nil
+  elseif 'a' <= ch and ch <= 'z' then -- nil
+  elseif 'A' <= ch and ch <= 'Z' then -- nil
+  elseif ch == '_'               then -- nil
@@ -66,0 +67 @@
+
@@ -72,2 +73,11 @@
-local function wordKind(ch) return WordKind[ch] or 'let' end
-M.wordKind = wordKind --> string
+M.wordKind = function(ch) --> ws|sym|let
+  return WordKind[ch] or 'let' -- letter
+end
+
+M.PathKind = ds.copy(M.WordKind); local PathKind = M.PathKind
+for _, c in ipairs{'/', '.', '-', ':', '#'} do
+  M.PathKind[c] = nil
+end
+M.pathKind = function(ch) --> ws|sym|path
+  return PathKind[ch] or 'path'
+end
@@ -76,3 +86,3 @@
-M.forword = function(s, begin) --> int
-  begin = begin or 1
-  local i, kStart = begin+1, wordKind(s:sub(begin,begin))
+M.forword = function(s, begin, getKind) --> int
+  begin, getKind = begin or 1, getKind or M.wordKind
+  local i, kStart = begin+1, getKind(s:sub(begin,begin))
@@ -80 +90 @@
-    local k = wordKind(ch)
+    local k = getKind(ch)
@@ -91 +101,2 @@
-M.backword = function(s, end_) --> int
+M.backword = function(s, end_, getKind) --> int
+  getKind = getKind or M.wordKind
@@ -93 +104 @@
-  local i, kStart = 2, wordKind(s:sub(1,1))
+  local i, kStart = 2, getKind(s:sub(1,1))
@@ -95 +106 @@
-    local k = wordKind(ch)
+    local k = getKind(ch)
@@ -103,0 +115,16 @@
+--- get the range[si,ei] of whatever is at s[i].
+M.getRange = function(s, i, getKind) --> si,ei
+  getKind = getKind or M.wordKind
+  local si, ei = 1, #s; if ei < i then return nil end
+  local kind = getKind(s:sub(i,i))
+  for k = i-1, 1, -1 do
+    if kind == getKind(s:sub(k,k)) then si=k
+    else break end
+  end
+  for k = i+1, ei do
+    if kind == getKind(s:sub(k,k)) then ei=k
+    else break end
+  end
+  return si, ei
+end
+

--- lib/lines/test_motion.lua
+++ lib/lines/test_motion.lua
@@ -9 +9 @@
-local wordKind
+local wordKind, pathKind, getRange
@@ -71,0 +72,31 @@
+
+T.pathKind = function()
+  T.eq('path', pathKind'a')
+  T.eq('path', pathKind'/')
+  T.eq('path', pathKind'-')
+  T.eq('()',   pathKind'(')
+  T.eq('()',   pathKind')')
+  T.eq('sym',  pathKind'+')
+end
+
+local function forpath(s, begin)
+  return forword(s, begin, pathKind)
+end
+local function backpath(s, end_)
+  return backword(s, end_, pathKind)
+end
+
+T.forpath = function()
+  T.eq(3, forpath('a bcd'))
+  T.eq(6, forpath('a/bcd"  '))
+  T.eq(8, forpath('a/b/c.d" '))
+end
+
+T.backpath = function()
+  T.eq(3, backpath('a b/c/d', 7))
+end
+
+local pathRange = function(s, i) return getRange(s, i, pathKind) end
+T.getRange = function()
+  T.eq({3, 5}, {pathRange(' "a/b is the path" ', 4)})
+end
