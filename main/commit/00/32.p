add save + dumpf
--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -372,0 +373,7 @@
+--- Do something to the current buffer, depending on ev [+
+--- * save=true: save the current buffer
+--- ]
+M.buf = function(ed, ev)
+  if ev.save then ed.edit:save(ed) end
+end
+

--- cmd/ele/ele/edit.lua
+++ cmd/ele/ele/edit.lua
@@ -10,0 +11 @@
+local Gap   = require'lines.Gap'
@@ -46,0 +48,19 @@
+
+M.Edit.save = function(e, ed)
+  local dat = e.buf.dat
+  local ro = dat.readonly; dat.readonly = true
+  local path = assert(dat.path, 'must set path')
+  local tpath = path..'.__ELE__'
+  -- TODO: schedule the rest as coroutine to not block.
+  dat:flush()
+  local tmp = assert(io.open(tpath, 'w'))
+  dat:dumpf(out); out:flush()
+  dat:close();    out:close()
+  ix.mv(tmp, path)
+  dat.readonly = ro -- in case the below fails
+  dat = assert(ed.newDat(path),
+               'CRITICAL: failed to load saved path')
+  dat.readonly = ro
+  e.buf.dat = dat
+end
+

--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -528,0 +529 @@
+  info('!! diff %q', diff)
@@ -529,0 +531 @@
+    info('!! no diff')

--- cmd/pvc/test.lua
+++ cmd/pvc/test.lua
@@ -5,0 +6 @@
+local info = require'ds.log'.info
@@ -36,0 +38,8 @@
+  local diff = pvc.diff(D)
+  info('!! empty diff: %q', diff)
+  T.eq(pvc.Diff{
+    dir1=D..'.pvc/main/commit/00/0.snap/', dir2=D,
+    equal={".pvcpaths"}, deleted={},
+    changed={}, created={},
+  }, diff)
+  T.eq(false, diff:hasDiff())

--- lib/lines/lines.lua
+++ lib/lines/lines.lua
@@ -267 +266,0 @@
-  local dat, len, chunk = {}, 0, chunk or M.CHUNK
@@ -271 +270,6 @@
-  for i, line in ipairs(t) do
+  if #t == 0 then
+    if close then f:close() end
+    return
+  end
+  local dat, len, chunk = {}, 0, chunk or M.CHUNK
+  for i=1,#t-1 do; local line = t[i]
@@ -274 +278,4 @@
-      assert(f:write(concat(dat, '\n'))); ds.clear(dat); len = 0
+      push(dat, '\n')
+      assert(f:write(concat(dat, '\n')))
+      ds.clear(dat)
+      len = 0
@@ -277 +284,2 @@
-  if #dat > 0 then assert(f:write(concat(dat, '\n'))) end
+  push(dat, t[#t])
+  assert(f:write(concat(dat, '\n')))

--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -100 +100 @@
---- To write all data to disk use :dump()
+--- To write all data to disk use :dumpf()
@@ -102,0 +103,3 @@
+--- Note: this does NOT necessarily flush what you expect.
+EdFile.close = function(ef) return ef.lf:close() end
+
@@ -111,0 +115 @@
+      -- TODO: use lines.dump instead?

--- lib/lines/lines/Gap.lua
+++ lib/lines/lines/Gap.lua
@@ -10 +10,3 @@
-local Gap = mty'Gap' { 'bot[table]', 'top[table]', 'path [string]' }
+local Gap = mty'Gap' {
+  'bot[table]', 'top[table]',
+  'path [string]', 'readonly [bool]' }
@@ -31,0 +34,3 @@
+Gap.flush = ds.noop
+Gap.close = ds.noop
+
@@ -65,0 +71 @@
+  assert(not g.readonly, 'attempt to write to readonly Gap')
@@ -72,0 +79 @@
+  assert(not g.readonly, 'attempt to write to readonly Gap')
@@ -78,0 +86 @@
+  assert(not g.readonly, 'attempt to write to readonly Gap')
@@ -104,0 +113 @@
+  assert(not g.readonly, 'attempt to write to readonly Gap')
@@ -113,0 +123,2 @@
+Gap.dumpf = lines.dump
+
