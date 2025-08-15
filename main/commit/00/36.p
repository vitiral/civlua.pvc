initial Split implemented
--- cmd/ele/ele/Editor.lua
+++ cmd/ele/ele/Editor.lua
@@ -122,0 +123,23 @@
+
+--- Replace the view/edit from with to.
+--- Since Editor supports only [$ed.view] this means
+--- it must be that value.
+Editor.replace = function(ed, from, to) --> from
+  assert(ed.view == from, 'view being replaced is not ed.view')
+  assert(from.container == ed)
+  assert(not to.container)
+  if ed.edit == to then ed.edit = to end
+  ed.view, to.container, from.container = to, ed, nil
+  return from
+end
+
+--- Remove a view and remove self as it's container.
+--- This does NOT close the view.
+Editor.remove = function(ed, v) --> v
+  assert(ed.view == v, 'view being removed is not ed.view')
+  assert(v.container == ed)
+  ed.view = nil; if ed.edit == v then ed.edit = nil end
+  v.container = nil
+  return v
+end
+

--- cmd/ele/ele/types.lua
+++ cmd/ele/ele/types.lua
@@ -4,0 +5 @@
+local log    = require'ds.log'
@@ -9,0 +11,60 @@
+--- A container with windows split vertically (i.e. tall windows)
+M.VSplit = mty'VSplit' {
+  'container [Editor|VSplit|HSplit]: parent container',
+  -- Set by parent before draw
+  'tl[int]', tl=-1, 'tc[int]', tc=-1, -- term line,col (top-left/right)
+  'th[int]', th=-1, 'tw[int]', tw=-1, -- term   height, width
+}
+M.VSplit.close = ds.noop
+M.VSplit.insert = function(sp, i, v)
+  assert(not v.container)
+  table.insert(sp, i, v); v.container = sp
+end
+
+M.VSplit.replace = function(sp, from, to) --> from
+  local i = assert(ds.indexOf(v), 'from not found in Split')
+  assert(from.container == sp)
+  assert(not to.container)
+  sp[i], to.container, from.container = to, sp, nil
+  return from
+end
+M.VSplit.remove = function(sp, v) --> v
+  local i = assert(ds.indexOf(v), 'from not found in Split')
+  table.remove(sp, i); v.container = nil
+  if #sp == 1 then -- only 1 item left, close it
+    sp.container:replace(sp, sp[1]); sp[1] = nil
+  elseif #sp == 0 then -- no items, this shouldn't happen
+    log.warning('zero items left in %s', mty.name(sp))
+    sp.container:remove(sp)
+  end
+  return v
+end
+M.VSplit.draw = function(sp, d, isRight)
+  local len = #sp; if len == 0 then return end
+  local l,c = sp.tl, sp.tc
+  local w,h = sp.tw // len, sp.th -- divide up the available width
+  -- First view gets any extra width, the rest are even
+  local v = sp[1]; v.l,v.c, v.w,v.h = l,c, w + (sp.tw % len), h
+  v:draw(d, isRight)
+  for i=2,len do
+    c = c + v.w -- increment the col# by previous width
+    v = sp[i];     v.l,v.c, v.w,v.h = l,c, w,h
+    v:draw(d, false) -- note: not right-most.
+  end
+end
+
+--- A container with windows split horizontally (i.e. wide windows)
+M.HSplit = mty.extend(M.VSplit, 'HSplit')
+M.HSplit.draw = function(sp, d, isRight)
+  local len = #sp; if len == 0 then return end
+  local l,c = sp.tl, sp.tc
+  local w,h = sp.tw, sp.th // len -- divide up the available height
+  -- First view gets any extra height, the rest are even
+  local v = sp[1]; v.l,v.c, v.w,v.h = l,c, w, h + (sp.th % len)
+  for i=2,len do
+    l = l + v.h -- increment the line# by previous height
+    v = sp[i];     v.l,v.c, v.w,v.h = l,c, w,h
+  end
+  for _, v in ipairs(sp) do v:draw(d, isRight) end
+end
+
