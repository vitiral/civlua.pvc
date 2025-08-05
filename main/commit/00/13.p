test_bindings passes
--- cmd/ele/ele/Session.lua
+++ cmd/ele/ele/Session.lua
@@ -56,0 +57,4 @@
+    if type(ev) ~= 'table' or not ds.isPod(ev) then
+      s.ed.error('event is not POD table: %q', ev)
+      goto cont
+    end
@@ -65 +69 @@
-    act = actions[act]; if not act then
+    local actFn = actions[act]; if not actFn then
@@ -69 +73 @@
-    local ok, err = ds.try(act, s.ed, ev, s.evsend)
+    local ok, err = ds.try(actFn, s.ed, ev, s.evsend)

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -17,0 +18,9 @@
+M.handleStandard = function(ed, ev)
+  if ev.mode then
+    local err = et.checkMode(ed, ev.mode); if err then
+      ed.error('%s has invalid mode', ev, ev.mode)
+    end
+    ed.mode = ev.mode
+  end
+end
+
@@ -36,2 +45,4 @@
-  local nxt; if K.next then
-    nxt = callable(K.next) and K.next or rawget(K.next, ki)
+  local nxt = K.next
+  if nxt then
+    local getb = type(nxt) == 'table' and mty.getmethod(nxt, 'getBinding')
+    if getb then nxt = getb(nxt, ki) end
@@ -45,3 +56,9 @@
-  if not callable(nxt) then
-    if not type(nxt) == 'table' then
-      K.keep = nil; fmt.errorf('%q is neither fn or table', K.chord)
+  local ok, ev
+  if type(nxt) == 'table' and not getmetatable(nxt) then
+    log.info(' + keyinput plain ev %q (%q)', K.chord, nxt)
+    ok, ev = true, ds.copy(nxt)
+  elseif callable(nxt) then
+    log.info(' + keyinput calling %q (%q)', K.chord, nxt)
+    ok, ev = try(nxt, K)
+    if not ok then
+      ed.error('%q (%s) failed: %q', nxt, concat(K.chord, ' '), ev)
@@ -48,0 +66 @@
+  elseif mty.getmethod(nxt, 'getBinding') then
@@ -50 +68,5 @@
-    return -- wait until next key
+    return -- wait till next key
+  else
+    K.keep = nil
+    fmt.errorf('%q is neither callable, plain table or KeyBindings',
+      K.chord)
@@ -52,5 +74,2 @@
-  log.info(' + keyinput calling %q (%q)', K.chord, nxt)
-  local ok, ev = try(nxt, K)
-  if not ok then ed.error('%q (%s) failed: %q', nxt, concat(K.chord, ' '), ev)
-  elseif ev then
-    log.info(' + keyinput %q -> %q', ki, ev)
+  if ev then
+    log.info(' --> %q', ev)
@@ -58,6 +76,0 @@
-    if ev.mode then
-      err = et.checkMode(ed, ev.mode); if err then
-        ed.error('%s -> event has invalid mode: %s', n, ev.mode)
-      end
-      ed.mode = ev.mode
-    end
@@ -67 +80 @@
-    ed.error('bindings.%s(keys) -> invalid keys: %s', n, err)
+    ed.error('%s -> invalid keys: %s', ki, err)
@@ -127,0 +141 @@
+  M.handleStandard(e, ev)
@@ -146,0 +161 @@
+  M.handleStandard(e, ev)
@@ -157,0 +173 @@
+  M.handleStandard(e, ev)
@@ -173 +189,2 @@
-    return e:remove(e.l, e.l + l2)
+    e:remove(e.l, e.l + l2)
+    return M.handleStandard(ed, ev)
@@ -183,0 +201 @@
+  M.handleStandard(ed, ev)
@@ -192,0 +211 @@
+  M.handleStandard(ed, ev)

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -78 +78,3 @@
-
+M.KeyBindings.getBinding = function(kb, k)
+  return getmetatable(kb).__index(kb, k)
+end
@@ -84 +85,0 @@
-
@@ -88 +88,0 @@
-
@@ -90 +90 @@
-  if getmetatable(kb).__fields[k] then
+  if M.KeyBindings.__fields[k] then
@@ -95,2 +95,4 @@
-  fmt.assertf(ds.isCallable(v)
-           or (type(v) == 'table' and not getmetatable(v)),
+  local mtv = getmetatable(v)
+  fmt.assertf(mty.callable(v)
+              or (mtv == M.KeyBindings)
+              or (not mtv and type(v) == 'table'),
@@ -97,0 +100 @@
+  if k == 'fallback' then return rawset(kb,k, v) end
@@ -101,2 +104,2 @@
-    if not kb[key] then
-      kb[key] = M.KeyBindings{
+    if not rawget(kb,key) then
+      rawset(kb,key, M.KeyBindings{
@@ -104 +107 @@
-      }
+      })
@@ -106 +109 @@
-    kb = kb[key]
+    kb = rawget(kb,key)
@@ -110,13 +113 @@
-  kb[key] = v
-end
-
--- Return an updated keys.event when called (typically for an action)
-M.Event = mty'Event'{}
-local EV = M.Event
-EV.__fmt = function(ev, f) f:write'EV'; f:rawtable(ev) end
-getmetatable(EV).__call = mty.constructUnchecked
-getmetatable(EV).__index = nil
-EV.__newindex = nil
-EV.__call = function(ev, keys)
-  keys.event = keys.event or {}
-  return ds.update(keys.event, ev)
+  rawset(kb,key, v)
@@ -128 +119 @@
-M.exit = EV{action='exit'}
+M.exit = {action='exit'}
@@ -139,5 +130,5 @@
-M.close       = EV{action='close'} -- close current focus
-M.insertmode  = EV{mode='insert'}
-M.insertsot   = EV{mode='insert', action='move', move='sot'}
-M.inserteol   = EV{mode='insert', action='move', move='eol', cols=1}
-M.commandmode = EV{mode='command'}
+M.close       = {action='close'} -- close current focus
+M.insertmode  = {mode='insert'}
+M.insertsot   = {mode='insert', action='move', move='sot'}
+M.inserteol   = {mode='insert', action='move', move='eol', cols=1}
+M.commandmode = {mode='command'}
@@ -145 +136 @@
-M.insertBelow = EV{
+M.insertBelow = {
@@ -149 +140 @@
-M.insertAbove = EV{
+M.insertAbove = {
@@ -203,2 +194,2 @@
-M.backspace = EV{action='remove', off=-1, cols1=-1}
-M.delkey    = EV{action='remove', off=1}
+M.backspace = {action='remove', off=-1, cols1=-1}
+M.delkey    = {action='remove', off=1}
@@ -206 +197 @@
--- delete until a movement command (or similar)
+--- delete until a movement command (or similar)
@@ -210 +201,2 @@
-    ev.lines = 0; return ev
+    ev.lines = 0
+    return ev
@@ -216,2 +208,9 @@
-M.change = function(keys)
-  local ev = M.delete(keys); keys.event.mode = 'insert'
+M.change = function(keySt)
+  local ev = M.delete(keySt)
+  keySt.event.mode = 'insert'
+  return ev
+end
+M.changeEol = function(keySt, evsend)
+  M.delete(keySt)
+  local ev = ds.pop(keySt, 'event')
+  ev.move = 'eol'; ev.mode = 'insert'; ev.keep = false
@@ -221,2 +220,2 @@
--- used for setting the number of times to do an action.
--- 1 0 d t x: delete till the 10th x
+--- used for setting the number of times to do an action.
+--- 1 0 d t x: delete till the 10th x
@@ -238,21 +236,0 @@
--- bind chord to function
--- example: bind(B.insert, 'space a b', function(keys) ... end)
-M.bind = function(b, chord, fn)
-  assert(type(fn) == 'table' or mty.callable(fn),
-    'can only bind to table or callable')
-  chord = (type(chord) == 'string') and M.chord(chord) or chord
-  assert(#chord > 0, 'chord is empty')
-  local i, mpath = 1, {}
-  while i < #chord do
-    mpath[i] = mty.name(b)
-    local key = chord[i]; if not rawget(b, key) then
-      b[key] = mod and mod(concat(mpath)) or {}
-    end
-    b, i = b[key], i + 1
-  end
-  b[chord[i]] = fn
-end
-M.bindall = function(b, map)
-  for chord, fn in pairs(map) do M.bind(b, chord, fn) end
-end
-
@@ -260,3 +238,2 @@
-M.insert  = {}
-M.command = {}
-
+M.insert  = M.KeyBindings{name='insert', doc='insert mode'}
+M.command = M.KeyBindings{name='command', doc='command mode'}
@@ -265,2 +242,2 @@
-M.goline  = EV{action='nav', 'line'}
-M.listCWD = EV{action='nav', 'listcwd'}
+M.goline  = {action='nav', 'line'}
+M.listCWD = {action='nav', 'listcwd'}
@@ -270,2 +247,2 @@
-M.insert.fallback = M.insertChord
-M.bindall(M.insert, {
+ds.update(M.insert, {
+  fallback = M.insertChord,
@@ -280,2 +257,2 @@
-M.command.fallback = M.unboundChord
-M.bindall(M.command, {
+ds.update(M.command, {
+  fallback = M.unboundChord,
@@ -300 +277 @@
-  c = M.change, C = EV{action='chain', M.change, M.eol},
+  c = M.change, C = M.changeEol,
@@ -310 +287,3 @@
-for b=('1'):byte(), ('9'):byte() do M.command[string.char(b)] = M.times end
+for b=('1'):byte(), ('9'):byte() do
+  M.command[string.char(b)] = M.times
+end
@@ -320 +299,2 @@
-  ed.modes = ds.merge(ed.modes or {}, {
+  -- TODO: replace with merge but need shouldMerge closure.
+  ed.modes = ds.update(ed.modes or {}, {

--- cmd/ele/tests/test_bindings.lua
+++ cmd/ele/tests/test_bindings.lua
@@ -43,0 +44 @@
+  data.error = require'fmt'.errorf
@@ -60 +60,0 @@
-    T.eq('command', d.mode)
@@ -63 +62,0 @@
-    T.eq('insert', d.mode)
@@ -65,4 +64 @@
-  d = assertKeys('esc i', 'insert', false,
-    {mode'insert', mode'command'}) -- note: reverse order because pushLeft
-    T.eq('insert',  d.mode)
-    T.eq({'i'},     d.ext.keys.chord)
+  d = assertKeys('esc', 'insert', false, {mode'command'})
@@ -90 +86 @@
-  local ch = function(t) t.mode = 'insert'; return rm(t) end
+  local ch = function(t) t.mode='insert'; return rm(t) end
@@ -92 +87,0 @@
-    T.eq('insert', d.mode)
@@ -94 +88,0 @@
-    T.eq('insert', d.mode)
