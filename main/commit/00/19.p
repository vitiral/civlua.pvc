ds.inset is not working
--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -307 +307 @@
-    entries[i] = sconcat('', srep(' ',ind+2), '* ', e, '\n')
+    entries[i] = sconcat('', srep(' ',ind+2), '* ', e)
@@ -309 +309 @@
-  b:inset(l+1, table.concat(entries))
+  b:inset(l+1, entries)
@@ -325,0 +326,2 @@
+  op = op - 1; if op == 0 then return l end
+  error'todo: expand children until op == 1'

--- lib/ds/test.lua
+++ lib/ds/test.lua
@@ -307,0 +308,5 @@
+
+  t = {'123', '456', '789', 'abc'}
+  local rm = M.inset(t, 2, {'444', '555'}, 2)
+  T.eq({'123', '444', '555', 'abc'}, t)
+  T.eq({'456', '789'}, rm)

--- lib/lines/lines/buffer.lua
+++ lib/lines/lines/buffer.lua
@@ -9,0 +10 @@
+local concat = table.concat
@@ -70 +71 @@
-  push(fmt, ('Buffer{%sid=%s, path=%q}'):format(
+  fmt:write(('Buffer{%s, id=%s, path=%q}'):format(
@@ -166,2 +167,14 @@
-Buffer.inset = function(b, i, lines, rmlen) --> removed?
-  return b.dat:inset(i, lines, rmlen)
+Buffer.inset = function(b, l, lines, rmlen) --> removed?
+  return b.dat:inset(l, lines, rmlen)
+end
+
+Buffer.insetTracked = function(b, l, lines, rmlen) --> changes
+  local chs, rm = {}, b:inset(l, lines, rmlen)
+  log.info('!! rm %q', rm)
+  if rm then
+    push(chs, b:changeRm(concat(rm, '\n'), l,1))
+  end
+  if lines and #lines > 0 then
+    push(chs, b:changeIns(concat(lines, '\n'), l,1))
+  end
+  return chs

--- lib/lines/test_buffer.lua
+++ lib/lines/test_buffer.lua
@@ -91 +91 @@
-  b:changeStart(0, 0)
+  b:changeStart(0,0)
@@ -94 +94 @@
-  b:changeStart(0, 0)
+  b:changeStart(0,0)
@@ -103,0 +104,15 @@
+
+T.undoInset = function() -- undo/redo inset
+  local START = '123\n456\n789\nabc'
+  local b = Buffer.new(START); local g, ch = b.dat
+  T.eq(START, fmt(g))
+  b:changeStart(0,0)
+  local ch1 = C{k='rm',  s='456\n789', l=2,c=1}
+  local ch2 = C{k='ins', s='444\n555', l=2,c=1}
+  local chs = b:insetTracked(2, {'444', '555'}, 2)
+  T.eq({ch1, ch2}, chs)
+
+  T.eq('123\n444\n555\nabc', fmt(g))
+  b:undo()
+  T.eq(START, fmt(g))
+end
