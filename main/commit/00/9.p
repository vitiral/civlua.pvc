playing with ele
--- cmd/ele/ele.lua
+++ cmd/ele/ele.lua
@@ -25,0 +26 @@
+    io.fmt = require'civ'.Fmt{to=stderr}

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -116,0 +117,6 @@
+-- FIXME: this isn't quite right
+M.insertnl    = M.Chain{
+  M.inserteol,
+  M.Event{'\n', action='insert'},
+}
+
@@ -237,0 +244,2 @@
+
+  -- insert
@@ -238,0 +247 @@
+  o = M.insertnl,
@@ -251 +260,2 @@
-  d = M.delete, c = M.change,
+  d = M.delete,
+  c = M.change, C = M.Chain{M.change, M.eol},
