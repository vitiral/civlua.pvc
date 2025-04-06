update install instructions and make docs
--- README.cxt
+++ README.cxt
@@ -11 +11,6 @@
-also need standard build tools (i.e. [$make], [$gcc]).
+also need standard build tools (i.e. [$make], [$gcc]) and [$rcs] (for [$merge]
+etc, required for [<#pvc>]).
+
+["on NetBSD you must have Lua installed via pkgsrc
+ (aka [$pkgin install lua5.4]) as base Lua doesn't link pthread.
+]
