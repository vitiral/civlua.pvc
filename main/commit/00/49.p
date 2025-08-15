almost works
--- cmd/ele/ele/edit.lua
+++ cmd/ele/ele/edit.lua
@@ -6,0 +7 @@
+local pth    = require'ds.path'
@@ -14,2 +15,2 @@
-local push = table.insert
-local sfmt = string.format
+local push, concat = table.insert, table.concat
+local sfmt = string.format, string.concat
@@ -33,23 +33,0 @@
-  drawBars = function(e, d) --> botHeight, leftWidth
-    if e.tw <= 10 or e.th <= 3 then return 0, 0 end
-    -- draw relative line numbers above l
-    local dl = e.tl -- display line number
-    local tc = e.tc
-    for l=e.vl, e.l-1 do
-      d.text:insert(dl, tc, sfmt('% 2i', e.l - l))
-      dl = dl + 1
-    end
-    d.text:insert(dl, tc, ' *')
-    dl = dl + 1
-    for l=e.l+1, e.vl+e.th-2 do
-      d.text:insert(dl, tc, sfmt('% 2i', l - e.l))
-      dl = dl + 1
-    end
-    local info = ('  THIS IS INFO'):sub(1, e.tw)
-    assert(dl == e.tl + e.th - 1, sfmt('%s %s %s', dl, e.tl, e.th))
-    d.text:insert(dl, tc, info)
-    for c=tc+#info, tc+e.tw-1 do
-      d.text[dl][c] = ' '
-    end
-    return 1, 2
-  end
@@ -57,0 +36 @@
+
@@ -128 +106,0 @@
-  if l < e.vl            then e.vl = l end
@@ -199,0 +178 @@
+  assert(t); e:viewCursor()
@@ -204 +182,0 @@
-  assert(t); e:viewCursor()
@@ -210,0 +189,26 @@
+M.Edit.drawBars = function(e, d) --> botHeight, leftWidth
+  if e.tw <= 10 or e.th <= 3 then return 0, 0 end
+  -- draw relative line numbers above l
+  local dl = e.tl -- display line number
+  local tc = e.tc
+  for l=e.vl, e.l-1 do
+    d.text:insert(dl, tc, sfmt('% 2i', e.l - l))
+    dl = dl + 1
+  end
+  d.text:insert(dl, tc, ' *')
+  dl = dl + 1; local len = #e.buf
+  for l=e.l+1, e.vl+e.th-2 do
+    if l > len then d.text:insert(dl, tc, '  ')
+    else d.text:insert(dl, tc, sfmt('% 2i', l - e.l)) end
+    dl = dl + 1
+  end
+  local id, info = assert(e.buf.id)
+  local p = e.buf.dat.path; if p then
+    info = sfmt('| %s:%i.%i (b#%i)', pth.nice(p), e.l, e.c, id)
+  else info = sfmt('| b#%i %i.%i', id, e.l, e.c) end
+  info = info:sub(1, e.tw - 1)..' '
+  d.text:insert(dl, tc, info)
+  for c=tc+#info, tc+e.tw-1 do d.text[dl][c] = '=' end
+  return 1, 2
+end
+

--- cmd/ele/tests/test_session.lua
+++ cmd/ele/tests/test_session.lua
@@ -125 +125 @@
-  THIS IS INFO                ]]
+| small.lua:1.1 (b#3) --------]]
@@ -155 +155 @@
-  THIS IS INFO                THIS IS INFO                ]]
+| small.lua:1.1 (b#3) ------| small.lua:1.1 (b#3) --------]]
@@ -160 +160 @@
-  THIS IS INFO                THIS IS INFO                ]]
+| small.lua:1.1 (b#3) ------| small.lua:2.7 (b#3) --------]]
