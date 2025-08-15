Edit:save works
--- cmd/ele/ele/Ed.lua
+++ cmd/ele/ele/Ed.lua
@@ -88,9 +87,0 @@
---- Switch to edit (default from current edit)
-Ed.editSwap = function(ed, to, from)
-  from = from or ed.edit
-  if mty.ty(to) ~= Edit then to = Edit(ed, to) end
-  if ed.view then ed.view:editSwap(to, from)
-  else from.container = nil; from:close() end
-  if rawequal(from, ed.edit) then ed.edit = to end
-end
-
@@ -104,4 +95,2 @@
-  if ed.view then
-    ed.view.container = nil; ed.view:close(ed)
-  end
-  ed.edit, ed.view = e, e
+  assert(not ed.view, 'TODO')
+  ed.edit = e
@@ -117 +106 @@
-  local v, d, e = ed.view, ed.display, ed.edit
+  local v, d, e = ed.view or ed.edit, ed.display, ed.edit

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -347 +347 @@
-    return ed:editSwap(ed:buffer(p))
+    return ed:focus(ed:buffer(p))

--- cmd/ele/ele/edit.lua
+++ cmd/ele/ele/edit.lua
@@ -9 +9 @@
-local types = require'ele.types'
+local ix = require'civix'
@@ -11,0 +12 @@
+local types = require'ele.types'
@@ -50,2 +51,2 @@
-  local dat = e.buf.dat
-  local ro = dat.readonly; dat.readonly = true
+  local b = e.buf; local dat = b.dat
+  local ro = b.readonly; b.readonly = true
@@ -57,5 +58,5 @@
-  dat:dumpf(out); out:flush()
-  dat:close();    out:close()
-  -- TODO: I should re-index first and mv with index
-  ix.mv(tmp, path)
-  dat.readonly = ro -- in case the below fails
+  dat:dumpf(tmp); tmp:flush()
+  dat:close();    tmp:close()
+  -- TODO: I should move with :move (need to implement)
+  ix.mv(tpath, path)
+  b.readonly = ro -- in case the below fails
@@ -64,2 +65,2 @@
-  dat.readonly = ro
-  e.buf.dat = dat
+  b.readonly = ro
+  b.dat = dat

--- cmd/ele/tests/test_actions.lua
+++ cmd/ele/tests/test_actions.lua
@@ -143 +142,0 @@
-
@@ -145 +144,7 @@
-  T.eq(pth.abs(pth.resolve(test_txt)), d.edit.buf.dat.path)
+  local e = d.edit
+  T.eq(pth.abs(pth.resolve(test_txt)), e.buf.dat.path)
+  T.eq({1,1}, {e.l, e.c})
+  e:changeStart()
+  local content = 'some text\ninserted from actions'
+  e:insert(content); e:save(d)
+  T.path(test_txt, content)

--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -8 +7,0 @@
-  'readonly [bool]',
@@ -73 +71,0 @@
-  assert(not ef.readonly, 'attempt to modify readonly file')
@@ -95 +93 @@
-    dats=ef.dats, lens=ef.lens, readonly=true,
+    dats=ef.dats, lens=ef.lens
@@ -166 +163,0 @@
-  assert(not ef.readonly, 'attempt to modify readonly file')

--- lib/lines/lines/buffer.lua
+++ lib/lines/lines/buffer.lua
@@ -27,0 +28 @@
+  'readonly [bool]', -- TODO: actually implement readonly
