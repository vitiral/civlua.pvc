don't support inset in buffer
--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -42 +42 @@
-M.inset = function(t, i, values, rmlen) --> removed?
+M.inset = function(t, i, values, rmlen) --> nil
@@ -49 +48,0 @@
-  local rm = rmlen > 0 and move(t, i, i+rmlen-1, 1, {}) or nil
@@ -54 +53 @@
-    return rm
+    return
@@ -58 +56,0 @@
-  return rm

--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -163 +163 @@
-  rmlen = rmlen or 0; local rm = {}
+  rmlen = rmlen or 0
@@ -188,2 +188,2 @@
-  local dats, rdats, ldat = ef.dats, {}, nil
-  local first, fi, ei = dats[df], i - (lens[df-1] or 0)
+  local dats, rdats, ldat = ef.dats , {}                 , nil
+  local first,   fi, ei   = dats[df], i - (lens[df-1] or 0)
@@ -202,5 +201,0 @@
-      if rmlen > 0 then -- TODO: I think this is right...
-        for l=first.si, first.si + rmlen-1 do
-          push(rm, ef.lf:get(l))
-        end
-      end
@@ -213 +208 @@
-      ds.extend(rm, first:inset(fi, nil, rmfirst) or {})
+      first:inset(fi, nil, rmfirst)
@@ -218,8 +212,0 @@
-  -- insert all removed dats in-between
-  for di=df+1,(dl or 1)-1 do
-    local dat = dats[di]
-    if getmt(dat) == Slc then
-      for l=dat.si, dat.ei do push(rm, ef.lf:get(l)) end
-    else ds.extend(rm, dat) end
-  end
-
@@ -232,3 +218,0 @@
-        for l=last.si, last.si + rmlen-1 do
-          push(rm, ef.lf:get(l))
-        end
@@ -238 +222 @@
-      ds.extend(rm, last:inset(1, nil, rmlen)); rmlen = 0
+      last:inset(1, nil, rmlen); rmlen = 0
@@ -265 +248,0 @@
-  return #rm > 0 and rm or nil

--- lib/lines/lines/Gap.lua
+++ lib/lines/lines/Gap.lua
@@ -75 +74,0 @@
-  local rm = rmlen > 0 and move(g.bot, i, i+rmlen-1, 1, {}) or nil
@@ -77 +75,0 @@
-  return rm

--- lib/lines/lines/buffer.lua
+++ lib/lines/lines/buffer.lua
@@ -41 +41 @@
-getmetatable(M.Buffer).__call=function(T, t)
+getmetatable(M.Buffer).__call = function(T, t)
@@ -78 +78 @@
-Buffer.addChange=function(b, ch)
+Buffer.addChange = function(b, ch)
@@ -83 +83 @@
-Buffer.discardUnusedStart=function(b)
+Buffer.discardUnusedStart = function(b)
@@ -92 +92 @@
-Buffer.changeStart=function(b, l, c)
+Buffer.changeStart = function(b, l, c)
@@ -98 +98 @@
-Buffer.getStart=function(b)
+Buffer.getStart = function(b)
@@ -103 +103 @@
-Buffer.printChanges=function(b)
+Buffer.printChanges = function(b)
@@ -109 +109 @@
-Buffer.changeIns=function(b, s, l, c)
+Buffer.changeIns = function(b, s, l, c)
@@ -112 +112 @@
-Buffer.changeRm=function(b, s, l, c)
+Buffer.changeRm = function(b, s, l, c)
@@ -116 +116 @@
-Buffer.canUndo=function(b) return b.changeI >= 1 end
+Buffer.canUndo = function(b) return b.changeI >= 1 end
@@ -118 +118 @@
-Buffer.canRedo=function(b) return b.changeI < b.changeMax end
+Buffer.canRedo = function(b) return b.changeI < b.changeMax end
@@ -120 +120 @@
-Buffer.undoTop=function(b)
+Buffer.undoTop = function(b)
@@ -123 +123 @@
-Buffer.redoTop=function(b)
+Buffer.redoTop = function(b)
@@ -127 +127 @@
-Buffer.undo=function(b)
+Buffer.undo = function(b)
@@ -146 +146 @@
-Buffer.redo=function(b)
+Buffer.redo = function(b)
@@ -161 +161 @@
-Buffer.append=function(b, s)
+Buffer.append = function(b, s)
@@ -167,4 +166,0 @@
-Buffer.inset = function(b, l, lines, rmlen) --> removed?
-  return b.dat:inset(l, lines, rmlen)
-end
-
@@ -183 +179 @@
-Buffer.insert=function(b, s, l, c)
+Buffer.insert = function(b, s, l, c)
@@ -190 +186 @@
-Buffer.remove=function(b, ...)
+Buffer.remove = function(b, ...)

--- lib/lines/test_buffer.lua
+++ lib/lines/test_buffer.lua
@@ -104,16 +103,0 @@
-
-T.undoInset = function() -- undo/redo inset
-  local START = '123\n456\n789\nabc'
-  local b = Buffer.new(START); local g, ch = b.dat
-  T.eq(START, fmt(g))
-  b:changeStart(0,0)
-  local ch1 = C{k='rm',  s='456\n789', l=2,c=1}
-  local ch2 = C{k='ins', s='444\n555', l=2,c=1}
-  local chs = b:insetTracked(2, {'444', '555'}, 2)
-  T.eq({ch1, ch2}, chs)
-
-  -- FIXME
-  -- T.eq('123\n444\n555\nabc', fmt(g))
-  -- b:undo()
-  -- T.eq(START, fmt(g))
-end

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -257 +256,0 @@
-  -- FIXME:
