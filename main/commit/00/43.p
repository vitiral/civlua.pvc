working, windows are hard
--- cmd/ele/ele/Editor.lua
+++ cmd/ele/ele/Editor.lua
@@ -108 +108 @@
-  local v, d, e = ed.view or ed.edit, ed.display, ed.edit
+  local v, d, e = ed.view, ed.display, ed.edit
@@ -130,2 +130,2 @@
-  assert(ed.view or ed.edit == from,
-    'view being replaced is not ed.view')
+  assert(to)
+  assert(ed.view == from, 'view being replaced is not ed.view')
@@ -134,2 +134,5 @@
-  if ed.edit == from then ed.edit = to
-  elseif ed.view     then ed.view = to end
+  ed.view = to
+  if ed.edit == from then
+    ed.edit = nil
+    ed:focusFirst(to)
+  end
@@ -145 +148,2 @@
-  ed.view = nil; if ed.edit == v then ed.edit = nil end
+  ed.view = nil
+  if ed.edit == v then ed.edit = nil end
@@ -149,0 +154,8 @@
+--- Focus the first edit view in container c (default ed.view)
+Editor.focusFirst = function(ed, c)
+  c = c or ed.view
+  while mty.ty(c) ~= Edit do c = c[1] end
+  assert(mty.ty(c) == Edit)
+  ed.edit = c
+end
+
@@ -151 +163 @@
---- Calls ed:buffer(b) for convieinece.
+--- Calls ed:buffer(b) for convenience.
@@ -156,6 +168,2 @@
-  if ed.edit then
-    ed.edit.container:replace(ed.edit, e)
-  else
-    assert(not ed.view, 'internal error')
-    e.container = ed
-  end
+  if ed.edit then ed.edit.container:replace(ed.edit, e)
+  else            e.container = ed end
@@ -162,0 +171 @@
+  if not ed.view then ed.view = e end

--- cmd/ele/ele/Session.lua
+++ cmd/ele/ele/Session.lua
@@ -39 +39 @@
-  s.ed.error = log.LogTable{}
+  s.ed.error = log.LogTable{tee=log.err}
@@ -76,0 +77 @@
+    log.info('!! actFn running: %q', actFn)
@@ -78 +79,5 @@
-    if not ok then s.ed.error('failed event %q. %q', ev, err) end
+    log.info('!! actFn result: %q %q', ok, err)
+    if not ok then
+      log.info'!! not ok'
+      s.ed.error('failed event %q. %q', ev, err)
+    end

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -39 +39 @@
-  log.info('keyinput %q mode=%s', K.chord, ed.mode)
+  log.info('keyinput %q mode:%s %q', ki, ed.mode, K.chord)
@@ -379,0 +380 @@
+  log.info('!! window %q', ev)
@@ -381 +382 @@
-    local S = assert(SPLIT[ev.split], ev.split)
+    local S = assert(M.SPLIT[ev.split], ev.split)
@@ -391,0 +393 @@
+        assert(mty.ty(c[i] == Edit))
@@ -397 +399 @@
-    local v = ed.edit; local c = e.container
+    local v = ed.edit; local c = v.container
@@ -403,0 +406 @@
+        assert(mty.ty(c[i] == Edit))
@@ -412 +415 @@
-    if ed.edit.view == nil then
+    if not ed.view or not ed.edit then

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -78,3 +78 @@
-M.KeyBindings.getBinding = function(kb, k)
-  return getmetatable(kb).__index(kb, k)
-end
+M.KeyBindings.getBinding = rawget
@@ -122 +120 @@
-M.splitVRight = {action='window', split='vertical', moveH=1}
+M.splitVRight = {action='window', split='vertical',   moveH=1}
@@ -307,0 +306 @@
+  -- s = M.splitVRight, -- FIXME: remove

--- cmd/ele/ele/edit.lua
+++ cmd/ele/ele/edit.lua
@@ -192,2 +192,2 @@
-  e2.id, e2.modes = types.uniqueId(), ds.copy(e.modes)
-  e2.parent = nil
+  e2.id, e2.container = types.uniqueId(), nil
+  e2.modes = e.modes and ds.copy(e.modes) or nil
@@ -200,2 +200,3 @@
-  local p = e.parent
-  local sp = S{};  p:replace(e, sp)
+  log.info('!! Edit.split %q', S)
+  local c = e.container
+  local sp = S{};  c:replace(e, sp)

--- cmd/ele/ele/types.lua
+++ cmd/ele/ele/types.lua
@@ -47 +47 @@
-  local v = sp[1]; v.l,v.c, v.w,v.h = l,c, w + (sp.tw % len), h
+  local v = sp[1]; v.tl,v.tc, v.tw,v.th = l,c, w + (sp.tw % len), h
@@ -50,2 +50,2 @@
-    c = c + v.w -- increment the col# by previous width
-    v = sp[i];     v.l,v.c, v.w,v.h = l,c, w,h
+    c = c + v.tw -- increment the col# by previous width
+    v = sp[i];     v.tl,v.tc, v.tw,v.th = l,c, w,h
@@ -63 +63 @@
-  local v = sp[1]; v.l,v.c, v.w,v.h = l,c, w, h + (sp.th % len)
+  local v = sp[1]; v.tl,v.tc, v.tw,v.th = l,c, w, h + (sp.th % len)
@@ -65,2 +65,2 @@
-    l = l + v.h -- increment the line# by previous height
-    v = sp[i];     v.l,v.c, v.w,v.h = l,c, w,h
+    l = l + v.th -- increment the line# by previous height
+    v = sp[i];     v.tl,v.tc, v.tw,v.th = l,c, w,h

--- cmd/ele/tests/test_session.lua
+++ cmd/ele/tests/test_session.lua
@@ -42,0 +43 @@
+  assert(ed.view == ed.edit)
@@ -142,0 +144 @@
+  -- s:play's'
@@ -144 +146 @@
-  -- T.eq('... TODO ...', fmt(ed.display))
+  T.eq('... TODO ...', fmt(ed.display))

--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -374,0 +375,7 @@
+--- Return true if two list-like tables are equal.
+M.ieq = function(a, b)
+  if #a ~= #b then return false end
+  for i=1,#a do if a[i] ~= b[i] then return false end end
+  return true
+end
+

--- lib/ds/ds/log.lua
+++ lib/ds/ds/log.lua
@@ -78,2 +78,11 @@
-M.LogTable = mty.record'LogTable'{}
-M.LogTable.__call = function(lt, ...) push(lt, {...}) end
+M.LogTable = mty.record'LogTable'{
+  'tee [fn(...)] call calls will also call tee',
+}
+M.LogTable.__fmt = function(lt, f)
+  f:write'LogTable'; f:list(lt)
+end
+M.LogTable.__eq = ds.ieq
+M.LogTable.__call = function(lt, ...)
+  if lt.tee then lt.tee(...) end
+  push(lt, {...})
+end

--- lib/fmt/fmt.lua
+++ lib/fmt/fmt.lua
@@ -201,0 +202,10 @@
+--- Format only the list-elements of a table.
+Fmt.list = function(f, t)
+  local multi = #t > 1
+  f:level(1)
+  f:styled('symbol', multi and f.tableStart or '{', '')
+  f:items(t, false,  nil)
+  f:level(-1)
+  f:styled('symbol', multi and f.tableEnd or '}', '')
+end
+
