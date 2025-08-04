minor cleanup
--- lib/lap/lap.lua
+++ lib/lap/lap.lua
@@ -383 +383,2 @@
-  local errors; async, sync = async or M.async, sync or M.sync
+  async, sync = async or M.async, sync or M.sync
+  local errors
@@ -386,4 +387,7 @@
-  if type(fns) == 'function' then LAP_READY[coroutine.create(fns)] = 'run'
-  else; for i, fn in ipairs(fns) do
-    LAP_READY[coroutine.create(fn)] = 'run'
-  end ; end
+  if type(fns) == 'function' then
+    LAP_READY[coroutine.create(fns)] = 'run'
+  else
+    for i, fn in ipairs(fns) do
+      LAP_READY[coroutine.create(fn)] = 'run'
+    end
+  end
