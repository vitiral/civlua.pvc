some things working, might need refactor
--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -29,0 +30 @@
+  -- note: ki=key-input
@@ -36,2 +37 @@
-    nxt = callable(K.next) and K.next
-          or rawget(K.next, ki)
+    nxt = callable(K.next) and K.next or rawget(K.next, ki)
@@ -50 +50 @@
-    return
+    return -- wait until next key
@@ -126,0 +127 @@
+  if ev.rows then e.l = e.l + ev.rows         end

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -67,4 +67,6 @@
-getmetatable(M.Event).__call = mty.constructUnchecked
-getmetatable(M.Event).__index = nil
-M.Event.__newindex = nil
-M.Event.__call = function(a, keys)
+local EV = M.Event
+EV.__fmt = function(ev, f) f:write'EV'; f:rawtable(ev) end
+getmetatable(EV).__call = mty.constructUnchecked
+getmetatable(EV).__index = nil
+EV.__newindex = nil
+EV.__call = function(ev, keys)
@@ -72,9 +74 @@
-  return ds.update(keys.event, a)
-end
-
--- Chain of literal events
-M.Chain = mty'Chain'{}
-M.Chain.__call = function(acts, keys)
-  local ev = keys.event or {}; ev.action = 'chain'
-  for i, act in ipairs(acts) do ev[i] = ds.copy(act) end
-  return ev
+  return ds.update(keys.event, ev)
@@ -98 +92 @@
-M.exit = M.Event{action='exit'}
+M.exit = EV{action='exit'}
@@ -109,12 +103,14 @@
-
-M.close       = M.Event{action='close'} -- close current focus
-
-M.insertmode  = M.Event{mode='insert'}
-M.insertsot   = M.Event{mode='insert', action='move', move='sot'}
-M.inserteol   = M.Event{mode='insert', action='move', move='eol', cols=1}
-M.commandmode = M.Event{mode='command'}
-
--- FIXME: this isn't quite right
-M.insertnl    = M.Chain{
-  M.inserteol,
-  M.Event{'\n', action='insert'},
+M.close       = EV{action='close'} -- close current focus
+M.insertmode  = EV{mode='insert'}
+M.insertsot   = EV{mode='insert', action='move', move='sot'}
+M.inserteol   = EV{mode='insert', action='move', move='eol', cols=1}
+M.commandmode = EV{mode='command'}
+
+M.insertBelow = EV{
+  action='chain', mode='insert',
+  {action='move', move='eol', cols=1}, {action='insert', '\n'},
+}
+M.insertAbove = EV{
+  action='chain', mode='insert',
+  {action='move', move='sol'},         {action='insert', '\n'},
+  {action='move', rows=-1},
@@ -164,2 +160,2 @@
-M.backspace = M.Event{action='remove', off=-1, cols1=-1}
-M.delkey    = M.Event{action='remove', off=1}
+M.backspace = EV{action='remove', off=-1, cols1=-1}
+M.delkey    = EV{action='remove', off=1}
@@ -226,2 +222,2 @@
-M.goline  = M.Event{action='nav', 'line'}
-M.listCWD = M.Event{action='nav', 'listcwd'}
+M.goline  = EV{action='nav', 'line'}
+M.listCWD = EV{action='nav', 'listcwd'}
@@ -247 +243 @@
-  o = M.insertnl,
+  o = M.insertBelow, O = M.insertAbove,
@@ -261 +257 @@
-  c = M.change, C = M.Chain{M.change, M.eol},
+  c = M.change, C = EV{action='chain', M.change, M.eol},
@@ -293 +289,3 @@
-    if key == '^q' then ed.run = false; log.warn('received ^q, exiting') end
+    if key == '^q' then
+      ed.run = false; log.warn('received ^q, exiting')
+    end

--- lib/fmt/fmt.lua
+++ lib/fmt/fmt.lua
@@ -201,0 +202,11 @@
+Fmt.rawtable = function(f, t)
+  local keys = M.sortKeys(t)
+  local multi = #t + #keys > 1 -- use multiple lines
+  f:level(1)
+  f:styled('symbol', multi and f.tableStart or '{', '')
+  f:items(t, next(keys), multi and (#t>0) and (#keys>0) and f.listEnd)
+  f:keyvals(t, keys)
+  f:level(-1)
+  f:styled('symbol', multi and f.tableEnd or '}', '')
+end
+
@@ -216,8 +227 @@
-  local keys = M.sortKeys(t)
-  local multi = #t + #keys > 1 -- use multiple lines
-  f:level(1)
-  f:styled('symbol', multi and f.tableStart or '{', '')
-  f:items(t, next(keys), multi and (#t>0) and (#keys>0) and f.listEnd)
-  f:keyvals(t, keys)
-  f:level(-1)
-  f:styled('symbol', multi and f.tableEnd or '}', '')
+  return f:rawtable(t)
