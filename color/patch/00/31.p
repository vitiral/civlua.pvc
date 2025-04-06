--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -754 +754 @@
-    io.fmt:styled('error', 'squashing ids [%s - %s] is a noop', bot, top, '\n')
+    io.fmt:styled('error', sfmt('squashing ids [%s - %s] is a noop', bot, top), '\n')
@@ -759,2 +759,2 @@
-  if bot <= bid  then error(sfmt('bottom %i <= base id %s', top, bid)) end
-  if top  >  tip then error(sfmt('top %i > tip %i', top, tip)) end
+  if bot <= bid then error(sfmt('bottom %i <= base id %s', top, bid)) end
+  if top >  tip then error(sfmt('top %i > tip %i', top, tip)) end
@@ -793 +793 @@
-  M.rawat(P, br,bot)
+  M.rawat(P, br,bot); M.rawtip(P, br,bi-1)
@@ -945 +944,0 @@
-  trace('!! desc: %q', desc)
@@ -948 +946,0 @@
-  trace('!! desc now: %q', desc)
@@ -982,0 +981 @@
+    br, bot = M.at(P); top = bot + 1
@@ -984 +982,0 @@
-    br, bot = M.at(P); top = bot
