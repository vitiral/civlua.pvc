add File and EdFile get/set methods
--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -60,0 +61,10 @@
+--- Get line at index
+EdFile.get = function(ef, i) --> line
+  local di = ef:_datindex(i); if not di then return end
+  local dat = ef.dats[di]
+  i = i - (ef.lens[di-1] or 0) -- i is now index into dat
+  return (getmt(dat) == Slc) and ef.lf:get(dat.si + i - 1)
+      or dat[i]
+end
+
+-- FIXME: remove
@@ -66,5 +76 @@
-  local di = ef:_datindex(i); if not di then return end
-  local dat = ef.dats[di]
-  i = i - (ef.lens[di-1] or 0) -- i is now index into dat
-  return (getmt(dat) == Slc) and ef.lf[dat.si + i - 1]
-      or dat[i]
+  return ef:get(i)
@@ -85,0 +92,6 @@
+--- Set line at index.
+EdFile.set = function(ef, i, v)
+  ef:__inset(i, {v}, 1)
+end
+
+--- FIXME: remove
@@ -109 +121 @@
-      local sp, ep = efx[d.si], efx[d.si + 1]
+      local sp, ep = efx:get(d.si), efx:get(d.si + 1)

--- lib/lines/lines/File.lua
+++ lib/lines/lines/File.lua
@@ -114,6 +114,2 @@
-getmetatable(File).__index = nil
-File.__index = function(lf, i) --!!> string
-  if type(i) == 'string' then
-    local mt = getmt(lf)
-    return rawget(mt, i) or index(mt, i)
-  end
+--- Get line at index
+File.get = function(lf, i) --> line
@@ -135,2 +131,2 @@
-File.__newindex = function(lf, i, v)
-  if type(i) == 'string' then return newindex(lf, i, v) end
+--- Set line at index
+File.set = function(lf, i, v)
@@ -151,0 +148,14 @@
+-- FIXME: remove
+getmetatable(File).__index = nil
+File.__index = function(lf, i) --!!> string
+  if type(i) == 'string' then
+    local mt = getmt(lf)
+    return rawget(mt, i) or index(mt, i)
+  end
+  return lf:get(i)
+end
+File.__newindex = function(lf, i, v)
+  if type(i) == 'string' then return newindex(lf, i, v) end
+  return lf:set(i, v)
+end
+
