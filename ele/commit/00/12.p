fixed coroutine issue w/ __index, now async is actually broken
--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -258 +257,0 @@
-M.isEmpty = function(t) return t == nil or next(t) == nil end
@@ -259,0 +259,17 @@
+--- [$t[k]] if t is a raw table, else [$getmetatable(t).get(t, k)]
+---
+--- This lets many types be substitutable for raw-tables in some APIs (i.e. lines).
+M.get = function(t, k) --> value
+  local mt = getmetatable(t); if mt then return mt.get(t, k) end
+  return t[k]
+end
+
+--- [$t[k] = v] if t is a raw table, else [$getmetatable(t).set(t, k, v)]
+---
+--- This lets many types be substitutable for raw-tables in some APIs (i.e. lines).
+M.set = function(t, k, v)
+  local mt = getmetatable(t)
+  if mt then mt.set(t, k, v) else t[k] = v end
+end
+
+M.isEmpty = function(t) return t == nil or next(t) == nil end
@@ -366,0 +383,5 @@
+M.defaultExtend = function(obj, l) --> obj
+  local i = #obj + 1
+  for _, v in ipairs(l) do obj:set(i, v); i = i + 1 end
+  return obj
+end
@@ -567,0 +589,5 @@
+M.defaultICopy = function(obj)
+  local t = {}; for i=1,#obj do t[i] = obj:get(i) end
+  return t
+end
+

--- lib/fd/fd/IFile.lua
+++ lib/fd/fd/IFile.lua
@@ -1,5 +0,0 @@
--- FIXME: __index / etc cannot be supported for async operations
---   since they can cause yielding across a C-boundary for
---   things like table.move. Therefore, don't do them for
---   these types. Instead, manually support the methods or figure
---   something else out.
@@ -17 +11,0 @@
-
@@ -30 +23,0 @@
-  info('!! iseek i=%s (pos=%i)', i, to)
@@ -80,7 +73 @@
-IFile.__index = function(fi, i)
-  if type(i) == 'string' then
-    local mt = getmetatable(fi)
-    return rawget(mt, i) or index(mt, i)
-  end
-  return fi:getbytes(i)
-end
+IFile.get = IFile.getbytes
@@ -89 +75,0 @@
-  info('!! setbytes[%s]=%q', i, v)
@@ -97,5 +83 @@
-
-IFile.__newindex = function(fi, i, v)
-  if type(i) == 'string' then return newindex(fi, i, v) end
-  return fi:setbytes(i, v)
-end
+IFile.set = IFile.setbytes

--- lib/fd/test.lua
+++ lib/fd/test.lua
@@ -129,8 +129,6 @@
-  ds.extend(fi, {'a', 'b', 'c'})
-  T.eq({'a', 'b', 'c'}, ds.icopy(fi))
-  fi[2] = 'B'
-  T.eq({'a', 'B', 'c'}, ds.icopy(fi))
-
-  local fi = IFile:create(2)
-  ds.extend(fi, {'a1', 'b2', 'c3'})
-  T.eq({'a1', 'b2', 'c3'}, ds.icopy(fi))
+  fi:set(1, 'a'); fi:set(2, 'b'); fi:set(3, 'c')
+  T.eq(3, #fi)
+  T.eq('a', fi:get(1))
+  T.eq('b', fi:get(2))
+  T.eq('c', fi:get(3))
+  T.eq(nil, fi:get(4))

--- lib/lines/lines/File.lua
+++ lib/lines/lines/File.lua
@@ -31,0 +32 @@
+local get, set = ds.get, ds.set
@@ -44 +45 @@
-    idx[l] = pos; l = l + 1
+    set(idx, l, pos); l = l + 1
@@ -50 +51 @@
-    idx[l] = pos
+    set(idx, l, pos)
@@ -100 +101 @@
-  if len == 0 then len = 1; idx[1] = 0 end
+  if len == 0 then len = 1; idx:set(1, 0) end
@@ -105 +106 @@
-    len = len + 1; idx[len] = pos + 1
+    len = len + 1; idx:set(len, pos + 1)
@@ -124 +125 @@
-    pos = assert(lf.idx[i])
+    pos = assert(lf.idx:get(i))
@@ -148 +149 @@
-  idx[i], cache[i] = pos, v
+  idx:set(i, pos); cache[i] = v

--- lib/lines/lines/U3File.lua
+++ lib/lines/lines/U3File.lua
@@ -1,0 +2 @@
+local ds  = require'ds'
@@ -20,6 +21,4 @@
-U3File.__index = function(u3, k)
-  if type(k) == 'string' then
-    local mt = getmetatable(u3)
-    return rawget(mt, k) or index(mt, k)
-  end
-  local str = getbytes(u3, k)
+
+--- get value at index
+U3File.get = function(u3, i)
+  local str = getbytes(u3, i)
@@ -29,3 +28,3 @@
-U3File.__newindex = function(u3, k, v)
-  if type(k) == 'string' then return newindex(u3, k, v) end
-  return setbytes(u3, k, pack('>I3', v))
+--- set value at index
+U3File.set = function(u3, i, v)
+  return setbytes(u3, i, pack('>I3', v))
@@ -39,0 +39,3 @@
+U3File.__extend = ds.defaultExtend
+U3File.__icopy = ds.defaultICopy
+

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -19,0 +20,2 @@
+local get, set = ds.get, ds.set
+
@@ -35,4 +37,4 @@
-  u[1] = 11; u[2] = 22; u[3] = 33
-  T.eq(11, u[1])
-  T.eq(22, u[2])
-  T.eq(33, u[3]); T.eq(nil, rawget(u, 3))
+  u:set(1, 11); u:set(2, 22); u:set(3, 33)
+  T.eq(11, u:get(1))
+  T.eq(22, u:get(2))
+  T.eq(33, u:get(3)); T.eq(nil, rawget(u, 3))
@@ -40 +42 @@
-  T.eq(11, u[1]) -- testing loadu3s
+  T.eq(11, u:get(1)) -- testing loadu3s
@@ -43 +45 @@
-  u[2] = 20; T.eq(3, #u)
+  u:set(2, 20); T.eq(3, #u)
@@ -45 +47 @@
-    T.eq(11, u[1]); T.eq(20, u[2]); T.eq(33, u[3])
+    T.eq(11, u:get(1)); T.eq(20, u:get(2)); T.eq(33, u:get(3))
@@ -47 +49 @@
-  u[1] = 10; u[4] = 44; u[5] = 55
+  u:set(1, 10); u:set(4, 44); u:set(5, 55)
@@ -49,2 +51,2 @@
-  T.eq(10, u[1])
-  T.eq(55, u[5])
+  T.eq(10, u:get(1))
+  T.eq(55, u:get(5))
@@ -52 +54 @@
-  local l = {}; for i, v in ipairs(u) do l[i] = v end
+  local l = {}; for i=1,#u do l[i] = u:get(i) end
@@ -58,2 +60,2 @@
-  T.eq(0, u[1])
-  T.eq(7, u[4])
+  T.eq(0, u:get(1))
+  T.eq(7, u:get(4))
@@ -263 +265 @@
--- FIXME: __index doesn't work for async operations!
+-- FIXME:
