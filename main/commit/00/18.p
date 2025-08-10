improve inset
--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -9,0 +10 @@
+local ix     = require'civix'
@@ -14,0 +16 @@
+local srep, sconcat = string.rep, string.concat
@@ -241 +243 @@
-    if not getEntry(line) then return l, line end
+    if not getEntry(line) then return l - 1 end
@@ -254,3 +256,3 @@
-  local focus = getFocus(line); if focus then return focus end
-  local ind = getEntry(line);   if not ind then return end
-  local path, ind = {}, #ind
+  local focus = getFocus(line);     if focus then return focus end
+  local i, _, e = getEntry(line); if not i then return end
+  local path, ind = {e}, #i
@@ -259 +261 @@
-  for l = l, 1, -1 do
+  for l = l-1, 1, -1 do
@@ -265 +267 @@
-    local i, _, e = getEntry(line)
+    i, _, e = getEntry(line)
@@ -279,3 +281,4 @@
-nav.collapseEntry = function(b, l)
-  local el = nav.findEntryEnd(b, l); if not el then return end
-  if el > l then b:remove(l+1, el) end
+nav.collapseFocus = function(b, l)
+  local fl,fe = nav.findView(b, l)
+  if not fl then return end
+  if fe > fl then b:remove(fl+1, fe) end
@@ -284,4 +287,39 @@
-local doCollapse = function(e, l)
-  local fl,fe = nav.findView(e.buf, l or e.l)
-  if not fl then return end
-  if fe > fl then e.buf:remove(fl+1, fe) end
+--- Collapse the entry, returning the new line
+nav.collapseEntry = function(b, l) --> ln
+  ::start::
+  local le = nav.findEntryEnd(b, l)
+  if not le then
+    nav.collapseFocus(b, l)
+    return l
+  end
+  if l == le then
+    l = nav.findParent(b, l)
+    goto start
+  end
+  if le > l then b:remove(l+1, le) end
+  return l
+end
+
+nav.expandEntry = function(b, l, ls)
+  local entries = ls(nav.getPath(b, l))
+  local ind = #getEntry(b:get(l))
+  for i, e in ipairs(entries) do
+    entries[i] = sconcat('', srep(' ',ind+2), '* ', e, '\n')
+  end
+  b:inset(l+1, table.concat(entries))
+end
+
+--- perform the entry operation
+nav.doEntry = function(b, l, op, ls)
+  if op == 'focus' then return nav.collapseFocus(b, l) end
+  assert(type(op) == 'number', 'entry op must be focus or number')
+  if op < 0 then -- negative op: collapse
+    for _=op,0 do
+      local nl = nav.collapseEntry(b, l); if l == nl then break end
+      l = nl
+    end
+    return l
+  end
+  -- positive op: expand
+  ls = ls or ix.dir
+  nav.expandEntry(b, l, ls)
@@ -290 +328,5 @@
-local doPathChange = function(e, ch, l)
+nav.doPath = function(e, ev)
+  local b, l = e.buf, e.l
+  
+  if ev.collapse then nav.doCollapse(b, l, ev.collapse) end
+
@@ -300,3 +342,3 @@
-local doPath = function(e, ev)
-  if ev.collapse then doCollapse(e) end
-  if ev.path     then doPathChange(e, ev.path) end
+nav.doPath = function(e, ev)
+  if ev.collapse then nav.collapseFocus(e.buf, e.l) end
+  if ev.path     then nav.doPathChange(e, ev.path)  end
@@ -308 +350 @@
-  for _=1,ev.times or 1 do doPath(e, ev) end
+  for _=1,ev.times or 1 do nav.doPath(e, ev) end
@@ -312,7 +353,0 @@
--- M.nav = function(ed, ev, evsend)
---   local to = assert(ev[1], 'nav: must provide index 1 for to')
---   to = fmt.assertf(ed.ext.nav[to], 'nav: invalid to=%q', to)
---   to(ed, ev, evsend)
---   ed:handleStandard(ev)
--- end
-

--- cmd/ele/tests/test_actions.lua
+++ cmd/ele/tests/test_actions.lua
@@ -103,0 +104,21 @@
+  T.eq(1, nav.findFocus(b, 1))
+  T.eq(1, nav.findFocus(b, 2))
+  T.eq(1, nav.findFocus(b, 5))
+  T.eq(5, nav.findEnd(b, 1))
+  T.eq(5, nav.findEnd(b, 4))
+  T.eq(5, nav.findEnd(b, 5))
+
+  T.eq('/focus/path/',     nav.getPath(b, 1))
+  T.eq('/focus/path/f',    nav.getPath(b, 2))
+  T.eq('/focus/path/d/',   nav.getPath(b, 3))
+  T.eq('/focus/path/d/d/', nav.getPath(b, 4))
+  T.eq('/focus/path/d/f',  nav.getPath(b, 5))
+
+  T.eq(nil, nav.findEntryEnd(b, 1))
+  T.eq(2,   nav.findEntryEnd(b, 2))
+  T.eq(5,   nav.findEntryEnd(b, 3))
+  T.eq(4,   nav.findEntryEnd(b, 4))
+  T.eq(5,   nav.findEntryEnd(b, 5))
+
+  nav.collapseEntry(b, 4)
+  T.eq('/focus/path/\n  + f\n  + d/\n', fmt(b.dat))
@@ -106 +127 @@
-  -- T.eq('/focus/path/\n  + f\n  +d/\n', fmt(b.dat))
+  T.eq('/focus/path/\n', fmt(b.dat))

--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -36,2 +36,2 @@
---- insert values into list at i.
---- Uses [$__inset] metamethod if available.
+--- insert values into list at index i.
+--- Uses [$inset] method if available.
@@ -38,0 +39,3 @@
+---
+--- inset is like an extend but the items are insert at any place in the array.
+--- The rmlen will also remove a certain number of items.
@@ -40,2 +43 @@
-  local meth = getmethod(t, '__inset')
-  if meth then return meth(t, i, values, rmlen) end
+  if getmt(t) then return t:inset(i, values, rmlen) end

--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -87 +87 @@
-  ef:__inset(i, {v}, 1)
+  ef:inset(i, {v}, 1)
@@ -135 +135 @@
--- EdFile.__inset
+-- EdFile.inset
@@ -161 +161 @@
-EdFile.__inset = function(ef, i, values, rmlen)
+EdFile.inset = function(ef, i, values, rmlen)
@@ -207 +207 @@
-      first:__inset(fi, nil, rmfirst)
+      first:inset(fi, nil, rmfirst)
@@ -221 +221 @@
-      last:__inset(1, nil, rmlen); rmlen = 0
+      last:inset(1, nil, rmlen); rmlen = 0
@@ -231 +231 @@
-    first:__inset(fi, values, 0)
+    first:inset(fi, values, 0)

--- lib/lines/lines/Gap.lua
+++ lib/lines/lines/Gap.lua
@@ -74 +74 @@
-Gap.__inset = function(g, i, values, rmlen)
+Gap.inset = function(g, i, values, rmlen)

--- lib/lines/lines/buffer.lua
+++ lib/lines/lines/buffer.lua
@@ -165,0 +166,4 @@
+Buffer.inset = function(b, i, lines, rmlen) --> removed?
+  return b.dat:inset(i, lines, rmlen)
+end
+
