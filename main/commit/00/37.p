initial Edit:split

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -10 +10 @@
-local ix     = require'civix'
+local ix = require'civix'
@@ -379,0 +380,13 @@
+--- What a window.split translates to
+M.SPLIT = {
+  h = et.HSplit, horizontal=et.HSplit,
+  v = et.VSplit, verticle=et.VSplit,
+}
+--- Window operations like split and close
+M.window = function(d, ev)
+  if ev.split then
+    local sp = assert(SPLIT[ev.split], ev.split)
+
+  end
+end
+

--- cmd/ele/ele/edit.lua
+++ cmd/ele/ele/edit.lua
@@ -20,2 +20 @@
-  'container', -- parent (Window/Model)
-  'canvas',
+  'container', -- parent (Editor/Split)
@@ -188,0 +188,17 @@
+M.Edit.copy = function(e)
+  e.tl,e.tc, e.tw,e.th = -1,-1, -1,-1
+  local e2 = ds.copy(e)
+  e2.id, e2.modes = types.uniqueId(), ds.copy(e.modes)
+  return e2
+end
+
+--- Split the edit by wrapping it and a copy into split type S.
+--- Return the resulting split.
+M.Edit.split = function(e, S) --> split
+  local p = e.parent; e.parent = nil
+  local e2 = e:copy()
+  local sp = S{}; sp:insert(1, e); sp:insert(2, e2)
+  p:replace(e, sp)
+  return sp
+end
+
