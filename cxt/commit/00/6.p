remove cxt.Writer.indent
--- cmd/cxt/cxt.lua
+++ cmd/cxt/cxt.lua
@@ -460,2 +459,0 @@
-  'indent[int]',
-  'style [string]: see asciicolor.Style',
@@ -465 +463 @@
-  return ty_{src=p.dat, to=to or fmt.Fmt{}, indent=0}
+  return ty_{src=p.dat, to=to or fmt.Fmt{}}
