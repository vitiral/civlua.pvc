split works
--- cmd/ele/ele/Editor.lua
+++ cmd/ele/ele/Editor.lua
@@ -135,4 +134,0 @@
-  if ed.edit == from then
-    ed.edit = nil
-    ed:focusFirst(to)
-  end
@@ -159,0 +156 @@
+  if not ed.view then ed.view = c end

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -338,3 +338,3 @@
-  if create or ix.exists(p) then
-    ed:replace(ed.edit, Edit{buf=ed:buffer(p)})
-    return
+  if create or ed:getBuffer(p) or ix.exists(p) then
+    ed:focus(p)
+  else error'TODO: goto nav'
@@ -342 +341,0 @@
-  error'TODO: goto nav'
