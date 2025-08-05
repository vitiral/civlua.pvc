test_session works
--- cmd/ele/ele/Ed.lua
+++ cmd/ele/ele/Ed.lua
@@ -8,0 +9 @@
+local et     = require'ele.types'
@@ -91,0 +93,10 @@
+Ed.handleStandard = function(ed, ev)
+  if ev.mode then
+    local err = et.checkMode(ed, ev.mode); if err then
+      return ed.error('%s has invalid mode', ev, ev.mode)
+    end
+    log.info(' + mode %s -> %s', ed.mode, ev.mode)
+    ed.mode = ev.mode
+  end
+end
+

--- cmd/ele/ele/Session.lua
+++ cmd/ele/ele/Session.lua
@@ -51 +50,0 @@
-
@@ -62 +61 @@
-    if not ev or not ev.action then goto cont end
+    if not ev then goto cont end
@@ -64 +63,6 @@
-    local act = ev.action; if act == 'exit' then
+    local act = ev.action;
+    if not act then
+      s.ed:handleStandard(ev)
+      goto cont
+    end
+    if act == 'exit' then

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -18,9 +17,0 @@
-M.handleStandard = function(ed, ev)
-  if ev.mode then
-    local err = et.checkMode(ed, ev.mode); if err then
-      ed.error('%s has invalid mode', ev, ev.mode)
-    end
-    ed.mode = ev.mode
-  end
-end
-
@@ -64 +55,2 @@
-      ed.error('%q (%s) failed: %q', nxt, concat(K.chord, ' '), ev)
+      return ed.error('%q (%s) failed: %q',
+                      nxt, concat(K.chord, ' '), ev)
@@ -141 +132,0 @@
-  M.handleStandard(e, ev)
@@ -161 +152 @@
-  M.handleStandard(e, ev)
+  ed:handleStandard(ev)
@@ -173 +164 @@
-  M.handleStandard(e, ev)
+  ed:handleStandard(ev)
@@ -190 +181 @@
-    return M.handleStandard(ed, ev)
+    return ed:handleStandard(ev)
@@ -201 +192 @@
-  M.handleStandard(ed, ev)
+  ed:handleStandard(ev)
@@ -211 +202 @@
-  M.handleStandard(ed, ev)
+  ed:handleStandard(ev)

--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -73 +73 @@
-    if mt then return mtFn(v, mt) end
+    if mt then return (mtFn or retTrue)(v, mt) end
@@ -96,0 +97,2 @@
+local retTrue = M.retTrue
+
