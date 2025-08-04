update default methods
--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -8,0 +9 @@
+local getmt = getmetatable
@@ -32 +33 @@
-  local mt = getmetatable(t)
+  local mt = getmt(t)
@@ -71 +72 @@
-    local mt = getmetatable(v)
+    local mt = getmt(v)
@@ -263 +264 @@
-  local mt = getmetatable(t); if mt then return mt.get(t, k) end
+  if getmt(t) then return t:get(k) end
@@ -272,2 +273,2 @@
-  local mt = getmetatable(t)
-  if mt then mt.set(t, k, v) else t[k] = v end
+  if getmt(t) then return t:set(k, v) end
+  t[k] = v
@@ -379,2 +380 @@
-  local meth = getmethod(t, '__extend')
-  if meth then return meth(t, l) end
+  if getmt(t) then return t:extend(l) end
@@ -384,4 +384,6 @@
-M.defaultExtend = function(obj, l) --> obj
-  local i = #obj + 1
-  for _, v in ipairs(l) do obj:set(i, v); i = i + 1 end
-  return obj
+M.defaultExtend = function(r, l) --> r
+  local rset = getmt(r) and assert(r.set) or rawset
+  local lget = getmt(l) and assert(l.get) or rawget
+  local i = #r + 1
+  for k=1,#l do rset(r,i, lget(l,k)); i = i + 1 end
+  return r
@@ -575,2 +577,2 @@
-getmetatable(M.TypoSafe).__call = mty.constructUnchecked
-getmetatable(M.TypoSafe).__index = mty.index
+getmt(M.TypoSafe).__call = mty.constructUnchecked
+getmt(M.TypoSafe).__index = mty.index
@@ -585,2 +587 @@
-  local meth = getmethod(t, '__icopy')
-  if meth then return meth(t) end
+  if getmt(t) then return t:icopy() end
@@ -590,2 +591,2 @@
-M.defaultICopy = function(obj)
-  local t = {}; for i=1,#obj do t[i] = obj:get(i) end
+M.defaultICopy = function(r)
+  local t = {}; for i=1,#r do t[i] = r:get(i) end
@@ -600 +601 @@
-    , getmetatable(t))
+    , getmt(t))
@@ -608 +609 @@
-  return setmetatable(out, getmetatable(t))
+  return setmetatable(out, getmt(t))
@@ -756 +757 @@
-getmetatable(M.Imm).__call = function(T, t)
+getmt(M.Imm).__call = function(T, t)
@@ -806 +807 @@
-getmetatable(M.Duration).__call = timeNew
+getmt(M.Duration).__call = timeNew
@@ -836 +837 @@
-getmetatable(M.Epoch).__call = timeNew
+getmt(M.Epoch).__call = timeNew
@@ -861,2 +862,2 @@
-getmetatable(M.Set).__index = nil
-getmetatable(M.Set).__call = function(T, t)
+getmt(M.Set).__index = nil
+getmt(M.Set).__call = function(T, t)
@@ -1010 +1011 @@
-getmetatable(M.BiMap).__call = function(ty_, t)
+getmt(M.BiMap).__call = function(ty_, t)
@@ -1018 +1019 @@
-getmetatable(M.BiMap).__index = nil
+getmt(M.BiMap).__index = nil
@@ -1038 +1039 @@
-getmetatable(M.Deq).__call = function(T)
+getmt(M.Deq).__call = function(T)

--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -120 +120 @@
-EdFile.__extend = function(ef, values)
+EdFile.extend = function(ef, values)
@@ -175 +175 @@
-    return ef:__extend(values)
+    return ef:extend(values)
@@ -227 +227 @@
-    if first then first:__extend(last) -- join first+last
+    if first then first:extend(last) -- join first+last
@@ -240 +240 @@
-    first:__extend(rdats[1]); rdats[1], df = first, df - 1
+    first:extend(rdats[1]); rdats[1], df = first, df - 1
@@ -244 +244 @@
-    last:__extend(dats[dl+1]); dl = dl + 1
+    last:extend(dats[dl+1]); dl = dl + 1
@@ -250 +250 @@
-EdFile.__icopy = ds.defaultICopy
+EdFile.icopy = ds.defaultICopy

--- lib/lines/lines/File.lua
+++ lib/lines/lines/File.lua
@@ -165,2 +165,2 @@
-File.__extend = ds.defaultExtend
-File.__icopy  = ds.defaultICopy
+File.extend = ds.defaultExtend
+File.icopy  = ds.defaultICopy

--- lib/lines/lines/Gap.lua
+++ lib/lines/lines/Gap.lua
@@ -81 +81 @@
-Gap.__extend = function(g, l)
+Gap.extend = function(g, l)

--- lib/lines/lines/U3File.lua
+++ lib/lines/lines/U3File.lua
@@ -42,2 +42,2 @@
-U3File.__extend = ds.defaultExtend
-U3File.__icopy  = ds.defaultICopy
+U3File.extend = ds.defaultExtend
+U3File.icopy  = ds.defaultICopy

--- lib/lines/lines/Writer.lua
+++ lib/lines/lines/Writer.lua
@@ -18,0 +19,2 @@
+Writer.extend = ds.defaultExtend
+Writer.icopy  = ds.defaultICopy

--- lib/lines/test.lua
+++ lib/lines/test.lua
@@ -189 +189 @@
-  T.eq(W{'hi there'}, w)
+  T.eq({'hi there'}, ds.icopy(w))
@@ -191 +191 @@
-  T.eq(W{'hi there bob'}, w)
+  T.eq({'hi there bob'}, ds.icopy(w))
@@ -193 +193 @@
-  T.eq(W{'hi there bob', 'and jane'}, w)
+  T.eq({'hi there bob', 'and jane'}, ds.icopy(w))
@@ -195,2 +195,2 @@
-  T.eq(W{'hi there bob', 'and jane and sue',
-             'and zebe', ''}, w)
+  T.eq({'hi there bob', 'and jane and sue',
+             'and zebe', ''}, ds.icopy(w))

--- lib/pegl/pegl.lua
+++ lib/pegl/pegl.lua
@@ -137 +137,4 @@
-  return mty(name){'kind [string]', 'name [string]', __fmt=M.fmtSpec}
+  local s = mty(name){'kind [string]', 'name [string]', __fmt=M.fmtSpec}
+  s.get, s.set = rawget, rawset
+  s.extend = ds.defaultExtend
+  return s
