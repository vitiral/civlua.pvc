create nav buffer in install
--- cmd/ele/ele/Ed.lua
+++ cmd/ele/ele/Ed.lua
@@ -20,2 +20 @@
-  'buffers [list[Buffer]]',
-  -- 'namedBuffers [map[string,Buffer]]',
+  'buffers [list[Buffer]]', 'namedBuffers [map[string,Buffer]]',
@@ -45 +44 @@
-    buffers={}, -- namedBuffers=ds.WeakV{},
+    buffers={}, namedBuffers=ds.WeakV{},
@@ -49,0 +49 @@
+  t = Ed(t)
@@ -51 +51 @@
-  return Ed(t)
+  return t

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -329,0 +330 @@
+  log.info('!! install %q', ed)
@@ -331,4 +331,0 @@
-  -- FIXME
-  -- if not ed.namedBuffers.nav then
-  --   ed.namedBuffers.nav = ed:buffer()
-  -- end
@@ -338,0 +336,3 @@
+  if not ed.namedBuffers.nav then
+    ed.namedBuffers.nav = ed:buffer()
+  end

--- cmd/ele/tests/test_bindings.lua
+++ cmd/ele/tests/test_bindings.lua
@@ -31 +31 @@
-    buffers={}, -- namedBuffers={},
+    buffers={}, namedBuffers={},

--- cmd/ele/tests/test_session.lua
+++ cmd/ele/tests/test_session.lua
@@ -116 +116 @@
-  local b, BID = e.buf, 2
+  local b, BID = e.buf, 3
