better Edit:buffer
--- cmd/ele/ele/Editor.lua
+++ cmd/ele/ele/Editor.lua
@@ -23 +23,2 @@
-  'buffers [list[Buffer]]', 'namedBuffers [map[string,Buffer]]',
+  'buffers [list[Buffer]]', 'bufferId[map[Buffer, id]]',
+  'namedBuffers [map[string,Buffer]]',
@@ -41,2 +42,2 @@
-    -- buffers=ds.BiMap{}, namedBuffers=ds.WeakV{},
-    buffers={}, namedBuffers=ds.WeakV{},
+    buffers={}, bufferId={},
+    namedBuffers=ds.WeakV{},
@@ -61 +62,3 @@
---- Get an existing buffer if it exists
+--- Get an existing buffer if it exists.
+--- Else return false if the buffer is path-like and should be
+--- created, else nil.
@@ -64 +67 @@
-    -- assert(ed.buffers[v], 'must create buffer with Editor:buffer')
+    assert(ed.bufferId[v], 'must create buffer with Editor:buffer')
@@ -77,0 +81 @@
+    return false
@@ -83,6 +87,9 @@
--- if v is nil the buffer will be an empty tmp buffer
---
--- If v is a string this will first check if a buffer exists at the path.
-Editor.buffer = function(ed, v) --> Buffer
-  local b = ed:getBuffer(v); if b then return b end
-  log.info('creating buffer %q', v)
+-- idOrPath can be a buffer id, b#123 string or path/to/file.txt.
+-- It will look for an existing buffer first, then create a
+-- new one if not.
+Editor.buffer = function(ed, idOrPath) --> Buffer
+  local b = ed:getBuffer(idOrPath)
+  if b == nil            then return end
+  if mty.ty(b) == Buffer then return b end
+  log.info('creating buffer %q', idOrPath)
+  local dat = ed.newDat(idOrPath) -- first so it can yield
@@ -90,3 +97,3 @@
-  ed.buffers[id] = Buffer{
-    id=id, dat=ed.newDat(v), tmp=not v and {} or nil
-  }
+  b = Buffer{id=id, dat=dat, tmp=not idOrPath and {} or nil}
+  ed.buffers[id] = b
+  ed.bufferId[b] = id
