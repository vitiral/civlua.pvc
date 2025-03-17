doc fixes
--- cmd/pvc/README.cxt
+++ cmd/pvc/README.cxt
@@ -15,2 +15,3 @@
-pvc is a version control system similar to git or mercurial, but is ultra simple:
-branches are simply a [$base] followed by a set of unix patches with
+[{:h2 name=pvc-about}About]
+[*pvc] is a version control system similar to git or mercurial, but is ultra
+simple: branches are simply a [$base] followed by a set of unix patches with
@@ -97 +98 @@
-First install [@Package_civ], then run pvc in bash with [$civ.lua pvc <cmd>].
+First install [<#Package_civ>], then run pvc in bash with [$civ.lua pvc <cmd>].
@@ -104 +105 @@
-  with appropriate entries (see [@pvcignore]) to ignore paths you don't
+  with appropriate entries (see [<#pvcignore>]) to ignore paths you don't
@@ -115,3 +116,3 @@
-The [$.pvcignore] file should contain a line-separated list of lua patterns
-([@lua.find]) that should be ignored. Items ending in [$/] will apply to
-whole directories. A common pvc ignore file might look like:
+The [$.pvcignore] file should contain a line-separated list of [<#string.find>]
+patterns that should be ignored. Items ending in [$/] will apply to whole
+directories. A common pvc ignore file might look like:
@@ -127,2 +128,2 @@
-# specific files
-%./path/to/some_file
+# binary files
+%./path/to/some_binary
