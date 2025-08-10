need to test more inset
--- lib/ds/PKG.lua
+++ lib/ds/PKG.lua
@@ -22,0 +23 @@
+  'ds/testing.lua',

--- lib/ds/test.lua
+++ lib/ds/test.lua
@@ -302,21 +302 @@
-  local t, rm
-  t = {};  rm = M.inset(t, 1, {})
-   T.eq({}, t); T.eq(nil, rm)
-
-  t = {1}; rm = M.inset(t, 1, {}, 1) -- rmlen=1
-    T.eq({}, t); T.eq({1}, rm)
-
-  t = {1, 3}; rm = M.inset(t, 2, {2})
-    T.eq({1, 2, 3}, t); T.eq(nil, rm)
-
-  t = {1, 4, 3}; rm = M.inset(t, 2, {2}, 1)
-    T.eq({1, 2, 3}, t)
-    T.eq({4}, rm)
-
-  t = {"ab", "c", "", "d"}; rm = M.inset(t, 2, {}, 2)
-    T.eq({"ab", "d"}, t); T.eq({"c", ""}, rm)
-
-  t = {'123', '456', '789', 'abc'}
-  rm = M.inset(t, 2, {'444', '555'}, 2)
-    T.eq({'123', '444', '555', 'abc'}, t)
-    T.eq({'456', '789'}, rm)
+  require'ds.testing'.testInset(ds.iden)

--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -161 +161,2 @@
-EdFile.inset = function(ef, i, values, rmlen)
+--- FIXME: return rm list
+EdFile.inset = function(ef, i, values, rmlen) --> rm?
@@ -163 +164 @@
-  rmlen = rmlen or 0
+  rmlen = rmlen or 0; local rm = {}
@@ -184,0 +186,2 @@
+  -- Note: rdats is replace dats (not rm), they
+  -- are inset into dats at the end.
@@ -193,2 +196 @@
-      local slc = Slc{si=first.si, ei=first.si + fi - 2}
-      push(rdats, slc)
+      push(rdats, Slc{si=first.si, ei=first.si + fi - 2})
@@ -197,2 +199 @@
-      rmlen = rmlen - (#first - fi)
-      assert(rmlen > 0, 'programmer error')
+      rmlen = rmlen - (#first - fi); assert(rmlen > 0, 'programmer error')
@@ -200,0 +202,5 @@
+      if rmlen > 0 then -- TODO: I think this is right...
+        for l=first.si, first.si + rmlen-1 do
+          push(rm, ef.lf:get(l))
+        end
+      end
@@ -204 +210 @@
-  else
+  else -- Gap
@@ -207 +213 @@
-      first:inset(fi, nil, rmfirst)
+      ds.extend(rm, first:inset(fi, nil, rmfirst) or {})
@@ -211,0 +218,8 @@
+  -- insert all removed dats in-between
+  for di=df+1,(dl or 1)-1 do
+    local dat = dats[di]
+    if getmt(dat) == Slc then
+      for l=dat.si, dat.ei do push(rm, ef.lf:get(l)) end
+    else ds.extend(rm, dat) end
+  end
+
@@ -217,0 +232,3 @@
+        for l=last.si, last.si + rmlen-1 do
+          push(rm, ef.lf:get(l))
+        end
@@ -221 +238 @@
-      last:inset(1, nil, rmlen); rmlen = 0
+      ds.extend(rm, last:inset(1, nil, rmlen)); rmlen = 0
@@ -237,0 +255 @@
+  -- TODO: I think the second check is implied?
@@ -246,0 +265 @@
+  return #rm > 0 and rm or nil

--- lib/lines/lines/Gap.lua
+++ lib/lines/lines/Gap.lua
@@ -71,4 +71,2 @@
---- see lines.inset
---- This has much better performance than lines.inset when operations
---- are performed close together.
-Gap.inset = function(g, i, values, rmlen)
+--- See lines.inset for documentation.
+Gap.inset = function(g, i, values, rmlen) --> rm?
@@ -76,0 +75 @@
+  local rm = rmlen > 0 and move(g.bot, i, i+rmlen-1, 1, {}) or nil
@@ -78 +77 @@
-  return g
+  return rm
@@ -87 +86 @@
---- set the gap to the line
+--- set the gap to the line number, making [$l == #g.bot].
@@ -96,2 +95 @@
-      local v = pop(bot)
-      if nil == v then break end
+      local v = pop(bot); if nil == v then break end
@@ -102,2 +100 @@
-      local v = pop(top)
-      if nil == v then break end
+      local v = pop(top); if nil == v then break end

--- lib/lines/test.lua
+++ lib/lines/test.lua
@@ -103,0 +104,3 @@
+  require'ds.testing'.testInset(Gap)
+
+  -- TODO: move relevant ones to ds.testing

--- lib/lines/test_buffer.lua
+++ lib/lines/test_buffer.lua
@@ -105,0 +106,6 @@
+  -- FIXME: this doesn't work
+  -- require'ds.testing'.testInset(
+  --   function(t) return Buffer.new(t) end,
+  --   function(a, b) T.eq(a.dat, b.dat) end
+  -- )
+
@@ -113,2 +119 @@
-  -- FIXME
-  -- T.eq({ch1, ch2}, chs)
+  T.eq({ch1, ch2}, chs)
@@ -115,0 +121 @@
+  -- FIXME

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -254,0 +255,5 @@
+
+T.EdFile_inset = function()
+  -- FIXME:
+  -- require'ds.testing'.testInset(newEdFile, edEq)
+end
