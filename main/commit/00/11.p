remove comments
--- cmd/ff/ff.lua
+++ cmd/ff/ff.lua
@@ -83 +82,0 @@
-  log.trace('!! replace %s %q %q', path, pats, sub)
@@ -86 +84,0 @@
-    log.trace('!! finding %q: %s', pats, line)
@@ -89 +86,0 @@
-      print('!! replacing:', line)
@@ -144 +140,0 @@
-    print'!! performing replacements'
@@ -153 +148,0 @@
-        print('!! writing sub:', subPath)

--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -632 +631,0 @@
-    print('!! backupDir', b)
@@ -739 +737,0 @@
-  print('!! getting desc', ppath)
@@ -742 +739,0 @@
-    print('!! line', line)

--- cmd/pvc/test.lua
+++ cmd/pvc/test.lua
@@ -135,2 +134,0 @@
-  print('!! DIFF1')
-  print(DIFF1)

--- lib/lines/test_diff.lua
+++ lib/lines/test_diff.lua
@@ -48,2 +47,0 @@
-  fmt.print('!! Formatted'); fmt.print(res)
-

--- lib/pod/pod.lua
+++ lib/pod/pod.lua
@@ -1 +0,0 @@
-print('!! loading pod')
@@ -273 +271,0 @@
-  print('!! dumping to '..f)
@@ -289 +286,0 @@
-  print('!! read', str, err)
@@ -294 +290,0 @@
-print('!! loaded pod')

--- lib/smol/test.lua
+++ lib/smol/test.lua
@@ -14 +14 @@
-  print(('!! ### rtest (%q)  (%q)  ->  %q %q'):format(
+  print(('### rtest (%q)  (%q)  ->  %q %q'):format(
@@ -18,2 +18,2 @@
-  print('!! cmds, text:', cmds, text)
-  io.fmt:write('!! cmds\n')
+  print('cmds, text:', cmds, text)
+  io.fmt:write('cmds\n')
@@ -21 +21 @@
-  io.fmt:write('!! text\n')
+  io.fmt:write('text\n')
