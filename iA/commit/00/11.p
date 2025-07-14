initial goto and if-goto-elif-else
--- lib/pegl/pegl.lua
+++ lib/pegl/pegl.lua
@@ -674,0 +675,2 @@
+M.common.nameStr = '[%a_][%w_]*'
+
@@ -677 +679 @@
-M.common.name = M.Pat{'[%a_][%w_]*', kind='name'}
+M.common.name = M.Pat{M.common.nameStr, kind='name'}
@@ -681 +683 @@
-M.ty     = M.Pat{'[%a_][%w_]*', kind='ty'}
+M.ty     = M.Pat{M.common.nameStr, kind='ty'}

--- os/iA/README.cxt
+++ os/iA/README.cxt
@@ -269,0 +270,10 @@
+
+::my_location:: \ define a location
+
+\ jump to my_location
+goto my_location; 
+
+\ jump to my_location if a < b
+if a < b goto my_location;
+
+\ if-elif-else blocks
@@ -272 +282,3 @@
-elif B b = foo(1, 2); c == bar(b) do
+elif B b = foo(1, 2); c <= bar(b) do
+  ...
+else
@@ -288,3 +299,0 @@
-::my_location:: \ define a location
-  ...
-  goto my_location; \\ goto that location
