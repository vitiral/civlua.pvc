some code cleanup
--- cmd/ele/ele/Ed.lua
+++ cmd/ele/ele/Ed.lua
@@ -34,7 +34 @@
-Ed.__fmt = function(ed, f)
-  f:write'Ed{mode='; f:string(ed.mode); f:write'}'
-end
-
---- list of named buffers (name -> buffer)
-
-Ed.init = function(T, t)
+getmetatable(Ed).__call = function(T, t)
@@ -48,4 +42,13 @@
-  }, t or {})
-  t = Ed(t)
-  require'ele.bindings'.install(t)
-  return t
+  }, t)
+  return mty.construct(T, t)
+end
+
+Ed.__fmt = function(ed, f)
+  f:write'Ed{mode='; f:string(ed.mode); f:write'}'
+end
+
+--- list of named buffers (name -> buffer)
+
+Ed.init = function(ed)
+  require'ele.bindings'.install(ed)
+  return ed

--- cmd/ele/ele/Session.lua
+++ cmd/ele/ele/Session.lua
@@ -28,3 +28,3 @@
-Session.init = function(T, s)
-  s = s or {}
-  s.ed = s.ed or Ed:init()
+getmetatable(Session).__call = function(T, s)
+  s.ed = s.ed or Ed{}
+  s.ed:init()
@@ -34 +34 @@
-  return T(s)
+  return mty.construct(T, s)
@@ -37,2 +37,2 @@
-Session.test = function(T, ed)
-  local s = T:init(ed)
+Session.test = function(T, s)
+  local s = T(s)
@@ -44,2 +44,2 @@
-Session.user = function(T, ed)
-  local s = T:init(ed)
+Session.user = function(T, s)
+  local s = T(s)

--- cmd/ele/ele/testing.lua
+++ cmd/ele/ele/testing.lua
@@ -14 +14 @@
-  local s = Session:test(); local ed = s.ed
+  local s = Session:test{}; local ed = s.ed

--- cmd/ele/tests/test_session.lua
+++ cmd/ele/tests/test_session.lua
@@ -42 +42 @@
-  t.s = t.s or Session:test(); local ed = t.s.ed
+  t.s = t.s or Session:test{}; local ed = t.s.ed
