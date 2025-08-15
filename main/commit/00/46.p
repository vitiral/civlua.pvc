some more tests for split, add coroutine stop
--- cmd/ele/ele/Editor.lua
+++ cmd/ele/ele/Editor.lua
@@ -111,2 +111 @@
-  e:viewCursor()
-  d.l, d.c = e.l, e.c
+  e:drawCursor(d)

--- cmd/ele/ele/Session.lua
+++ cmd/ele/ele/Session.lua
@@ -71 +71 @@
-      break
+      yield'stop'

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -306 +305,0 @@
-  -- s = M.splitVRight, -- FIXME: remove
@@ -365,0 +365 @@
+      evsend{action='exit'}

--- cmd/ele/ele/edit.lua
+++ cmd/ele/ele/edit.lua
@@ -96 +96 @@
--- update view to see cursor (if needed)
+-- update view fields to see cursor (if needed)
@@ -184,2 +184 @@
-  e:viewCursor()
-  local c = ds.min(e.c, e:colEnd())
+  local c = math.min(e.c, e:colEnd())

--- cmd/ele/tests/test_session.lua
+++ cmd/ele/tests/test_session.lua
@@ -12,0 +13 @@
+local et = require'ele.types'
@@ -149 +149,0 @@
-  -- s:play's'
@@ -151 +151,11 @@
-  T.eq(SPLIT_1, fmt(ed.display))
+    T.eq(SPLIT_1, fmt(ed.display))
+    T.eq(et.VSplit, mty.ty(ed.view))
+    T.eq(e, ed.view[1])
+    T.eq(ed.edit, ed.view[2])
+    assert(e ~= ed.edit)
+
+  local sp = ed.view
+  local e1, e2 = sp[1], sp[2]
+  s:play'j f M'
+    T.eq({1,1}, {e1.l,e1.c})
+    T.eq({2,7}, {e2.l,e2.c})

--- lib/lap/lap.lua
+++ lib/lap/lap.lua
@@ -280,0 +281 @@
+  stop = function(l) ds.clear(M.LAP_READY); l:stop() end
@@ -307 +308,2 @@
-  'pollMap [table]',
+  'pollMap [table[fileno,coroutine]]',
+
@@ -321,0 +324 @@
+M.Lap.stop  = function(l) l.pollMap, l.pollList = nil, nil end
