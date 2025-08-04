add File and EdFile get/set methods
--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -70,9 +69,0 @@
--- FIXME: remove
-EdFile.__index = function(ef, i) --!!> string
-  if type(i) == 'string' then
-    local mt = getmt(ef)
-    return rawget(mt, i) or index(mt, i)
-  end
-  return ef:get(i)
-end
-
@@ -97,6 +87,0 @@
---- FIXME: remove
-EdFile.__newindex = function(ef, i, v) --!!> nil
-  if type(i) == 'string' then return newindex(ef, i, v) end
-  ef:__inset(i, {v}, 1)
-end
-

--- lib/lines/lines/File.lua
+++ lib/lines/lines/File.lua
@@ -148,14 +147,0 @@
--- FIXME: remove
-getmetatable(File).__index = nil
-File.__index = function(lf, i) --!!> string
-  if type(i) == 'string' then
-    local mt = getmt(lf)
-    return rawget(mt, i) or index(mt, i)
-  end
-  return lf:get(i)
-end
-File.__newindex = function(lf, i, v)
-  if type(i) == 'string' then return newindex(lf, i, v) end
-  return lf:set(i, v)
-end
-
