more buffer cleanup
--- cmd/ele/ele/Editor.lua
+++ cmd/ele/ele/Editor.lua
@@ -81 +80,0 @@
-    return false
@@ -91,3 +90,3 @@
-  local b = ed:getBuffer(idOrPath)
-  if b == nil            then return end
-  if mty.ty(b) == Buffer then return b end
+  if idOrPath ~= nil then
+    local b = ed:getBuffer(idOrPath); if b then return b end
+  end
@@ -97 +96 @@
-  b = Buffer{id=id, dat=dat, tmp=not idOrPath and {} or nil}
+  local b = Buffer{id=id, dat=dat, tmp=not idOrPath and {} or nil}
@@ -155 +154 @@
-  b = ed:buffer(b)
+  local b = assertf(ed:buffer(b), '%q', b)
