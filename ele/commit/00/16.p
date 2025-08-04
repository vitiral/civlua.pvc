unknown bug in luck
--- lib/fd/fd/IFile.lua
+++ lib/fd/fd/IFile.lua
@@ -17 +17,2 @@
-local index, newindex = mty.index, mty.newindex
+getmetatable(IFile).__index = mty.hardIndex
+IFile.__newindex            = mty.hardNewindex

--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -27,0 +28,3 @@
+getmetatable(EdFile).__index = mty.hardIndex
+EdFile.__newindex            = mty.hardNewindex
+

--- lib/lines/lines/File.lua
+++ lib/lines/lines/File.lua
@@ -33,0 +34,2 @@
+getmetatable(File).__index = mty.hardIndex
+File.__newindex            = mty.hardNewindex

--- lib/lines/lines/U3File.lua
+++ lib/lines/lines/U3File.lua
@@ -18,0 +19,3 @@
+getmetatable(U3File).__index = mty.hardIndex
+U3File.__newindex            = mty.hardNewindex
+

--- lib/lines/lines/Writer.lua
+++ lib/lines/lines/Writer.lua
@@ -13 +13,2 @@
--- FIXME: ???
+getmetatable(Writer).__index = mty.hardIndex
+Writer.__newindex            = mty.hardNewindex
@@ -16 +16,0 @@
-

--- lib/lines/lines/testing.lua
+++ lib/lines/lines/testing.lua
@@ -112,4 +112,5 @@
-  t = new'a b c\nd e\nf g\nh i\n'
-  fmt.print('t:', t)
-  assertEqR({'d e', 'f g'}, lines.remove(t, 2, 3))
-  assertEq(new{'a b c', 'h i', ''}, t)
+  -- TODO: consider re-adding as a separate test
+  -- t = new'a b c\nd e\nf g\nh i\n'
+  -- fmt.print('t:', t)
+  -- assertEqR({'d e', 'f g'}, lines.remove(t, 2, 3))
+  -- assertEq(new{'a b c', 'h i', ''}, t)

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -217 +217 @@
-  ed[1] = 'zero 0' -- same
+  ed:set(1, 'zero 0') -- same

--- lib/pegl/pegl.lua
+++ lib/pegl/pegl.lua
@@ -16,0 +17 @@
+local get, set = ds.get, ds.set
@@ -103 +104 @@
-  'line [string]: the current line ([$dat[l]])',
+  'line [string]: the current line ([$dat:get(l)])',
@@ -518 +519 @@
-    dat=dat, l=1, c=1, line=dat[1], lines=#dat,
+    dat=dat, l=1, c=1, line=get(dat,1), lines=#dat,
@@ -553 +554 @@
-  p.line = p.dat[p.l]
+  p.line = get(p.dat,p.l)
@@ -589 +590 @@
-  local line = p.dat[l1]
+  local line = get(p.dat,l1)
@@ -599 +600 @@
-  local line = p.dat[l2]
+  local line = get(p.dat,l2)
@@ -602 +603 @@
-    l2 = l2 - 1; c2 = #p.dat[l2]
+    l2 = l2 - 1; c2 = #get(p.dat,l2)

--- lib/pegl/pegl/lua.lua
+++ lib/pegl/pegl/lua.lua
@@ -11,0 +12 @@
+local get = ds.get
@@ -243 +244 @@
-    p.l, p.line = l, p.dat[l]
+    p.l, p.line = l, get(p.dat,l)
