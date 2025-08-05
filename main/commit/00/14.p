test_action passes
--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -84 +84 @@
-  return mty.construct(T, b)
+  return mty.constructUnchecked(T, b)

--- cmd/ele/ele/nav.lua
+++ cmd/ele/ele/nav.lua
@@ -18,4 +18,6 @@
-M.modes.insert  = { fallback=function() error'cannot insert in nav list' end }
-M.modes.command = {
-  enter = B.Event{action='nav', 'line'},
-  esc   = B.close,
+M.modes.insert  = B.KeyBindings {
+  fallback = function() error'cannot insert in nav list' end
+}
+M.modes.command = B.KeyBindings {
+  ['return'] = {action='nav', 'line'},
+  esc        = B.close,
