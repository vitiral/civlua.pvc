improve codestr
--- lib/fd/fd.c
+++ lib/fd/fd.c
@@ -328 +328 @@
-  lua_pushstring(L, str); return 1;
+  lua_pushfstring(L, "%s [%I]", str, code); return 1;

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -263,0 +264 @@
+T.SUBNAME = '[ioAsync]'
@@ -265 +265,0 @@
--- T.SUBNAME = '[ioAsync]'
