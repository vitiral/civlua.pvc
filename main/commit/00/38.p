better focus
--- cmd/ele/ele/Editor.lua
+++ cmd/ele/ele/Editor.lua
@@ -2,0 +3 @@
+local fmt    = require'fmt'
@@ -11,0 +13,2 @@
+local assertf = fmt.assertf
+
@@ -37,0 +41 @@
+    -- buffers=ds.BiMap{}, namedBuffers=ds.WeakV{},
@@ -58,0 +63,4 @@
+  if mty.ty(v) == Buffer then
+    -- assert(ed.buffers[v], 'must create buffer with Editor:buffer')
+    return v
+  end
@@ -61,2 +69 @@
-  end
-  if type(v) == 'string' then
+  elseif type(v) == 'string' then
@@ -71 +78,2 @@
-  end
+  elseif type(v) == 'nil' then -- create buffer
+  else error('Cannot convert '..type(v)..' to buffer') end
@@ -88,12 +95,0 @@
--- enter focus mode on a single edit view
-Editor.focus = function(ed, e)
-  if type(e) == 'number' then -- buffer index
-    e = ed.buffers[e] or error('invalid buffer index: '..e)
-  end
-  if mty.ty(e) == Buffer then e = Edit(ed, e)
-  else assert(mty.ty(e) == Edit) end
-  assert(not ed.view, 'TODO')
-  ed.edit = e
-  return e
-end
-
@@ -128 +124,2 @@
-  assert(ed.view == from, 'view being replaced is not ed.view')
+  assert(ed.view or ed.edit == from,
+    'view being replaced is not ed.view')
@@ -131,2 +128,3 @@
-  if ed.edit == to then ed.edit = to end
-  ed.view, to.container, from.container = to, ed, nil
+  if ed.edit == from then ed.edit = to
+  elseif ed.view     then ed.view = to end
+  to.container, from.container = ed, nil
@@ -145,0 +144,16 @@
+--- Focus on the buffer.
+--- Calls ed:buffer(b) for convieinece.
+--- Return the new edit view being focused.
+Editor.focus = function(ed, b) --> Edit
+  b = ed:buffer(b)
+  local e = Edit{buf=b}
+  if ed.edit then
+    ed.edit.container:replace(ed.edit, e)
+  else
+    assert(not ed.view, 'internal error')
+    e.container = ed
+  end
+  ed.edit = e
+  return e
+end
+

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -11,0 +12 @@
+local Edit = require'ele.edit'.Edit
@@ -96,9 +96,0 @@
--- TODO: decide how I want to do replace mode
---   probably need an ed:switchMode() function and use
---   ed.ext.mode table which is cleared on each switch.
---   Then insert.default just checks ext.mode.replace
---   to decide to replace instead of insert.
--- M.replacemode = function(ed)
---   ed.mode = 'insert'; ed.replace = true
--- end
-
@@ -347 +339,2 @@
-    return ed:focus(ed:buffer(p))
+    ed:replace(ed.edit, Edit{buf=ed:buffer(p)})
+    return
@@ -383 +376 @@
-  v = et.VSplit, verticle=et.VSplit,
+  v = et.VSplit, vertical=et.VSplit,
@@ -386 +379 @@
-M.window = function(d, ev)
+M.window = function(ed, ev)
@@ -388,2 +381,10 @@
-    local sp = assert(SPLIT[ev.split], ev.split)
-
+    local S = assert(SPLIT[ev.split], ev.split)
+    ed.edit:split(S)
+  end
+  if ev.close then
+    local e = ed.edit
+    e.container:remove(e)
+    e:close()
+    if ed.edit.view == nil then
+      ed.edit = Edit{buf=ed:buffer'scratch'}
+    end

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -120,0 +121,4 @@
+M.splitV = {action='window', split='vertical'}
+M.splitH = {action='window', split='horizontal'}
+M.close  = {action='window', close=true}
+
@@ -130 +133,0 @@
-M.close       = {action='close'} -- close current focus

--- cmd/ele/ele/edit.lua
+++ cmd/ele/ele/edit.lua
@@ -33,4 +33,5 @@
-getmetatable(M.Edit).__call = function(T, container, buf)
-  return mty.construct(T, {
-    id=types.uniqueId(), container=container, buf=assert(buf),
-  })
+getmetatable(M.Edit).__call = function(T, t)
+  local b = assert(t.buf, 'must set buf')
+  t.l, t.c = t.l or b.l, t.c or b.c
+  t.id = types.uniqueId()
+  return mty.construct(T, t)
@@ -191,0 +193 @@
+  e2.parent = nil
@@ -198,4 +200,3 @@
-  local p = e.parent; e.parent = nil
-  local e2 = e:copy()
-  local sp = S{}; sp:insert(1, e); sp:insert(2, e2)
-  p:replace(e, sp)
+  local p = e.parent
+  local sp = S{};  p:replace(e, sp)
+  sp:insert(1, e); sp:insert(2, e:copy())

--- cmd/ele/ele/testing.lua
+++ cmd/ele/ele/testing.lua
@@ -16 +16 @@
-  ed.edit = edit.Edit(nil, ed.buffers[1])
+  ed.edit = edit.Edit{buf=ed.buffers[1]}

--- cmd/ele/tests/test_actions.lua
+++ cmd/ele/tests/test_actions.lua
@@ -8 +8 @@
-local edit = require'ele.edit'
+local Edit = require'ele.edit'.Edit
@@ -10,0 +11 @@
+local Gap = require'lines.Gap'
@@ -18,3 +19,4 @@
-  return Editor{
-    edit = edit.Edit(nil, Buffer.new(lines)),
-  }
+  local ed = Editor{}
+  local e = ed:focus()
+  e.buf:insert(lines, 1)
+  return ed
@@ -101,0 +104 @@
+  assert(d.edit.container == d)
@@ -137 +140 @@
-  T.eq(0, #d.buffers)
+  T.eq(1, #d.buffers)
@@ -143 +146 @@
-  T.eq(1, #d.buffers)
+  T.eq(2, #d.buffers)

--- cmd/ele/tests/test_term.lua
+++ cmd/ele/tests/test_term.lua
@@ -26 +26 @@
-  local e = edit.Edit(nil, Buffer.new(lines3))
+  local e = edit.Edit{buf=Buffer.new(lines3)}

--- lib/lines/lines/buffer.lua
+++ lib/lines/lines/buffer.lua
@@ -28,0 +29 @@
+  'l [int]', 'c [int]', -- used by clients
@@ -43 +44 @@
-  assert(t.dat)
+  assert(t.dat, 'must set dat')
@@ -66,0 +68 @@
+-- TODO: remove this
@@ -76 +78 @@
-Buffer.__len = function(b) return #b.dat end
+Buffer.__len = function(b)    return #b.dat end
