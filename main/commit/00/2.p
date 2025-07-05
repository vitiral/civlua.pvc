update docs for patch/ -> commit/
--- cmd/pvc/README.cxt
+++ cmd/pvc/README.cxt
@@ -112 +112 @@
-  [$.pvc/main/patch/.../1.p].
+  [$.pvc/main/commit/.../1.p].
@@ -145 +145 @@
-  patches/branches/whatever here.
+  commits/branches/whatever here.
@@ -205 +205 @@
-  contains the [$patch/] directory (described in [*commit]) and the plain-text files:
+  contains the [$commit/] directory (described in [*commit]) and the plain-text files:
@@ -209 +209 @@
-  * [*tip]: contains an ascii decimal number, representing the last patch id.
+  * [*tip]: contains an ascii decimal number, representing the last commit id.
@@ -216,2 +216,2 @@
-* [*commit (noun)]: refers to a single patch file inside of [$.pvc/branch/patch/.../123.p]. [+
-  * The length of [$patch/.../] is stored in [$patch/depth] which is an ascii
+* [*commit (noun)]: refers to a single patch file (i.e. [$.pvc/branch/commit/.../123.p]). [+
+  * The length of [$commit/.../] is stored in [$commit/depth] which is an ascii
@@ -220 +220 @@
-    [$patch/00/00/12.p] and store [$123456.p] in [$12/34/123456.p].
+    [$commit/00/00/12.p] and store [$123456.p] in [$12/34/123456.p].
@@ -234 +234 @@
-   current directory and store it as a patch file in the branch's [$patch/]
+   current directory and store it as a patch file in the branch's [$commit/]
@@ -238,2 +238,2 @@
-  is a directory which uses the extension [$.snap/] inside of the patch
-  directory, i.e. [$patch/00/123.snap/].
+  is a directory which uses the extension [$.snap/] inside of the [$commit/]
+  directory, i.e. [$commit/00/123.snap/].
