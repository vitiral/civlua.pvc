window should be ready for testing
--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -389 +389 @@
-      ed.edit = Edit{buf=ed:buffer'scratch'}
+      ed:focus(ed:buffer'scratch')
