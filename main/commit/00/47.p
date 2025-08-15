don't sleep as long
--- cmd/ele/ele/Session.lua
+++ cmd/ele/ele/Session.lua
@@ -71 +71 @@
-      yield'stop'
+      yield'STOP'
@@ -77 +76,0 @@
-    log.info('!! actFn running: %q', actFn)
@@ -79 +77,0 @@
-    log.info('!! actFn result: %q %q', ok, err)
@@ -81 +78,0 @@
-      log.info'!! not ok'

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -378 +377,0 @@
-  log.info('!! window %q', ev)

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -345 +344,0 @@
-  log.info('!! install %q', ed)

--- cmd/ele/ele/edit.lua
+++ cmd/ele/ele/edit.lua
@@ -199 +198,0 @@
-  log.info('!! Edit.split %q', S)

--- lib/civix/civix.lua
+++ lib/civix/civix.lua
@@ -436 +436 @@
-    while not sh:isDone() do yield('sleep', 0.005) end
+    while not sh:isDone() do yield('sleep', 1e-4) end

--- lib/fd/fd.lua
+++ lib/fd/fd.lua
@@ -114 +114 @@
-  fd:_flush(); M.finishRunning(fd, 'sleep', 0.001)
+  fd:_flush(); M.finishRunning(fd, 'sleep', 1e-4)
@@ -218 +218 @@
-  M.finishRunning(fd, 'sleep', 0.001)
+  M.finishRunning(fd, 'sleep', 1e-4)
@@ -265 +265 @@
-  local f = openFn(path, flags); M.finishRunning(f, 'sleep', 0.001)
+  local f = openFn(path, flags); M.finishRunning(f, 'sleep', 1e-4)
@@ -276 +276 @@
-  local f = sysFn(); M.finishRunning(f, 'sleep', 0.005)
+  local f = sysFn(); M.finishRunning(f, 'sleep', 1e-4)

--- lib/fd/test.lua
+++ lib/fd/test.lua
@@ -55 +55 @@
-    if M.type(f) ~= 'closed file' then ix.sleep(0.001) end
+    if M.type(f) ~= 'closed file' then ix.sleep(1e-4) end

--- lib/lap/lap.lua
+++ lib/lap/lap.lua
@@ -281 +281,2 @@
-  stop = function(l) ds.clear(M.LAP_READY); l:stop() end
+  -- Stop ALL coroutines.
+  STOP = function(l) ds.clear(M.LAP_READY); l:stop() end
