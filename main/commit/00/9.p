more doc fixes
--- cmd/pvc/README.cxt
+++ cmd/pvc/README.cxt
@@ -10 +10,4 @@
-Simply follow civlua's [@Installation] and then run
+Simply follow civlua's [<#Installation>] and add the following to your [$.bashrc]
+[##
+alias pvc="civlua pvc"
+]##
@@ -12,6 +15,5 @@
-
-pvc is a git or mercurial like (in usage) but extremely simple version control
-system where branches are simply a series of unix patches, each containing a
-series of [$diff -u] entries. The only fundamental disadvantage (or advantage)
-of using pvc instead of git is that pvc supports only fast-forward merges,
-which are the cleanest and simplest to understand.
+pvc is a version control system similar to git or mercurial, but is ultra simple:
+branches are simply a [$base] followed by a set of unix patches with
+incrementing id. The only fundamental disadvantage (or advantage) of using pvc
+instead of git is that pvc supports only fast-forward merges, which are the
+cleanest and simplest to understand.
