ds.get -
--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -39 +39 @@
-    local emode = ds.get(ed, {'edit', 'modes', ed.mode, ki})
+    local emode = ds.getp(ed, {'edit', 'modes', ed.mode, ki})

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -15 +15 @@
-local get, set, dp = ds.get, ds.set, ds.dotpath
+local getp, dp = ds.getp, ds.dotpath
@@ -31 +31 @@
-    or get(k, {'event', 'action'})
+    or getp(k, {'event', 'action'})

--- cmd/ele/ele/types.lua
+++ cmd/ele/ele/types.lua
@@ -8 +8 @@
-local get = ds.get
+local getp = ds.getp
@@ -53 +53 @@
-  if not mty.callable(get(data, {'actions', action})) then
+  if not mty.callable(getp(data, {'actions', action})) then

--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -259,0 +260 @@
+
@@ -461 +462 @@
---- used with ds.get and ds.set. Example [{## lang=lua}
+--- used with ds.getp and ds.setp. Example [{## lang=lua}
@@ -463 +464 @@
----   ds.get(t, dp'a.b.c')
+---   ds.getp(t, dp'a.b.c')
@@ -476 +477 @@
-M.get = function(t, path) --> value? at path
+M.getp = function(t, path) --> value? at path
@@ -483,2 +484,2 @@
---- same as ds.get but uses [$rawget]
-M.rawget = function(t, path) --> value? at path
+--- same as ds.getp but uses [$rawget]
+M.rawgetp = function(t, path) --> value? at path
@@ -496 +497 @@
-M.set = function(d, path, value, newFn) --> nil
+M.setp = function(d, path, value, newFn) --> nil

--- lib/ds/test.lua
+++ lib/ds/test.lua
@@ -24 +24 @@
-local getOrSet, get, set
+local getOrSet, getp, setp
@@ -199,2 +199,2 @@
-  T.eq(7,   get({a={b=7}}, {'a', 'b'}))
-  T.eq(nil, get({}, {'a', 'b'}))
+  T.eq(7,   getp({a={b=7}}, {'a', 'b'}))
+  T.eq(nil, getp({}, {'a', 'b'}))
@@ -205,4 +205,4 @@
-  set(t, dp'a.b',   4);   T.eq(4, t.a.b)
-  set(t, dp'a.a.a', 5);   T.eq(5, t.a.a.a)
-  set(t, dp'a.a.a', nil); T.eq(nil, t.a.a.a)
-  set(t, dp'a.b',   4);   T.eq(4, t.a.b)
+  setp(t, dp'a.b',   4);   T.eq(4, t.a.b)
+  setp(t, dp'a.a.a', 5);   T.eq(5, t.a.a.a)
+  setp(t, dp'a.a.a', nil); T.eq(nil, t.a.a.a)
+  setp(t, dp'a.b',   4);   T.eq(4, t.a.b)

--- lib/fd/fd/IFile.lua
+++ lib/fd/fd/IFile.lua
@@ -1 +1 @@
--- FIXME: __index / etc cannot be support for async operations
+-- FIXME: __index / etc cannot be supported for async operations
@@ -5 +5 @@
---   somethinge else out.
+--   something else out.

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -263 +263 @@
--- FIXME:
+-- FIXME: __index doesn't work for async operations!

--- lib/pkg/pkglib.lua
+++ lib/pkg/pkglib.lua
@@ -177,16 +176,0 @@
---- get any path separated by '.' including both [$require'some'.thing] and
---- [$require'some.thing']
-M.getpath = function(dotpath) --> obj
-  if type(dotpath) == 'string' then -- split by '.'
-    local t = {}; for m in dotpath:gmatch'[^.]+' do push(t, m) end
-  end
-  local obj
-  for i=1,#dotpath do
-    local v = obj and ds.get(obj, ds.slice(dotpath, i))
-    if v then return v end
-    obj = pget(table.concat(dotpath, '.', 1, i))
-  end
-  return obj
-end
-
-
