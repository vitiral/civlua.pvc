bugs fixed, going to refactor API a bit
--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -101 +101 @@
-  f:write' and this'
+  f:write' and this'; f:flush()
@@ -110 +110 @@
-  f:write'line 1\nline 2\nline 3'
+  f:write'line 1\nline 2\nline 3'; f:flush()
@@ -113 +112,0 @@
-  f:flush()

--- lib/metaty/metaty.lua
+++ lib/metaty/metaty.lua
@@ -6,2 +6 @@
-local getmt = getmetatable
-local type = type
+local getmt, type, rawget = getmetatable, type, rawget
@@ -208 +207,3 @@
-  if not rawget(R, '__fields')[k] then M.indexError(R, k, 3) end
+  if type(k) ~= 'string' or not rawget(R, '__fields')[k] then
+    M.indexError(R, k, 3)
+  end
