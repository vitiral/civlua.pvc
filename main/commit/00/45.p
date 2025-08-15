fix test
--- cmd/ele/ele/Editor.lua
+++ cmd/ele/ele/Editor.lua
@@ -159,2 +159 @@
---- Focus on the buffer.
---- Calls ed:buffer(b) for convenience.
+--- Replace the current edit view with the new [$ed:buffer(b)].

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -340,2 +340 @@
-  else error'TODO: goto nav'
-  end
+  else error'TODO: goto nav' end

--- cmd/ele/tests/test_session.lua
+++ cmd/ele/tests/test_session.lua
@@ -138,0 +139,5 @@
+
+local SPLIT_1 = [[
+-- a small lua file for tests -- a small lua file for tests
+local M = {}                  local M = {}]]
+
@@ -146 +151 @@
-  T.eq('... TODO ...', fmt(ed.display))
+  T.eq(SPLIT_1, fmt(ed.display))
