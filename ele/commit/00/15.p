about to switch to hardIndex
--- lib/lines/lines.lua
+++ lib/lines/lines.lua
@@ -16 +16,2 @@
-local inset = ds.inset
+
+local set, get, inset = ds.set, ds.get, ds.inset
@@ -49 +50 @@
-  inset(t, l, M(sinsert(t[l] or '', c or 1, s)), 1)
+  inset(t, l, M(sinsert(get(t, l) or '', c or 1, s)), 1)
@@ -79 +80 @@
-  for i=l,l2 do push(s, t[i]) end
+  for i=l,l2 do push(s, get(t, i)) end
@@ -111 +112 @@
-  return l, bound(c, 1, #(line or t[l]) + 1)
+  return l, bound(c, 1, #(line or get(t, l)) + 1)
@@ -118 +119 @@
-  l = bound(l, 1, len); c = bound(c - 1, 0, #t[l])
+  l = bound(l, 1, len); c = bound(c - 1, 0, #get(t,l))
@@ -120,2 +121,2 @@
-    line = t[l]
-    if nil == line then return len, #t[len] + 1 end
+    line = get(t, l)
+    if nil == line then return len, #get(t,len) + 1 end
@@ -127 +128 @@
-    if l > len then return len, #t[len] + 1 end
+    if l > len then return len, #get(t,len) + 1 end
@@ -130 +131 @@
-    line = t[l]
+    line = get(t,l)
@@ -140 +141 @@
-  return l, bound(c, 0, #t[l]) + 1
+  return l, bound(c, 0, #get(t,l)) + 1
@@ -149 +150 @@
-    llen = #t[l] + 1
+    llen = #get(t,l) + 1
@@ -155 +156 @@
-    llen = #t[l] + ((l==len and 0) or 1)
+    llen = #get(t,l) + ((l==len and 0) or 1)
@@ -160 +161 @@
-  llen = #t[l] + ((l==len and 0) or 1)
+  llen = #get(t,l) + ((l==len and 0) or 1)
@@ -171 +172 @@
-    local s = t[l]
+    local s = get(t,l)
@@ -193 +194 @@
-    local s = t[l]
+    local s = get(t,l)
@@ -205 +206 @@
-  if l2 > len then l2, c2 = len, #t[len] + 1 end
+  if l2 > len then l2, c2 = len, #get(t,len) + 1 end
@@ -211,3 +212,3 @@
-        if c2 <= #t[l] then -- no newline
-          new[1] = t[l]:sub(1, c-1)..t[l]:sub(c2+1)
-          rem[1]  = t[l]:sub(c, c2)
+        if c2 <= #get(t,l) then -- no newline
+          new[1] = get(t,l):sub(1, c-1)..get(t,l):sub(c2+1)
+          rem[1]  = get(t,l):sub(c, c2)
@@ -216,2 +217,2 @@
-          new[1]         = t[l]:sub(1, c-1)..(t[l2] or '')
-          rem[1], rem[2] = t[l]:sub(c, c2), ''
+          new[1]         = get(t,l):sub(1, c-1)..(get(t,l2) or '')
+          rem[1], rem[2] = get(t,l):sub(c, c2), ''
@@ -222,4 +223,4 @@
-      if c <= #t[l] then new[1] = t[l]:sub(1, c - 1)
-      else l1 = l+1;     new[1] = t[l]..(t[l1] or '') end
-      rem[1] = t[l]:sub(c)
-      for i=l1+1,l2-1 do push(rem, t[i]) end
+      if c <= #get(t,l) then new[1] = get(t,l):sub(1, c - 1)
+      else l1 = l+1;     new[1] = get(t,l)..(get(t,l1) or '') end
+      rem[1] = get(t,l):sub(c)
+      for i=l1+1,l2-1 do push(rem, get(t,i)) end
@@ -227 +228 @@
-        if c2 > #t[l2] then push(rem, t[l2]) -- include newline
+        if c2 > #get(t,l2) then push(rem, get(t,l2)) -- include newline
@@ -229 +230 @@
-          push(rem, t[l2]:sub(1, c2)); push(new, t[l2]:sub(c2 + 1))
+          push(rem, get(t,l2):sub(1, c2)); push(new, get(t,l2):sub(c2 + 1))
@@ -234 +235 @@
-    for i=l,l2 do push(rem, t[i]) end
+    for i=l,l2 do push(rem, get(t,i)) end
@@ -243 +244 @@
-    local line = t[l]
+    local line = get(t,l)
@@ -258 +259 @@
-  for line in f:lines() do t[i] = line; i = i + 1 end
+  for line in f:lines() do set(t,i, line); i = i + 1 end
@@ -287,2 +288,2 @@
-    if len == 0 then t[1] = first
-    else             t[len] = t[len]..first end
+    if len == 0 then set(t,1, first)
+    else             set(t,len, get(t,len)..first) end
@@ -290 +291 @@
-  for i=2,#w do t[len + i - 1] = w[i] end
+  for i=2,#w do set(t, len + i - 1, w[i]) end

--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -246,0 +247,2 @@
+EdFile.__icopy = ds.defaultICopy
+

--- lib/lines/lines/File.lua
+++ lib/lines/lines/File.lua
@@ -162,0 +163,3 @@
+File.__extend = ds.defaultExtend
+File.__icopy  = ds.defaultICopy
+

--- lib/lines/lines/Gap.lua
+++ lib/lines/lines/Gap.lua
@@ -41,2 +41 @@
-Gap.__index = function(g, l)
-  if type(l) ~= 'number' then return getmetatable(g)[l] end
+Gap.get = function(g, l)
@@ -46,0 +46,4 @@
+Gap.__index = function(g, l)
+  if type(l) ~= 'number' then return getmetatable(g)[l] end
+  return g:get(l)
+end
@@ -62 +65 @@
-Gap.__newindex = function(g, i, v)
+Gap.set = function(g, i, v)
@@ -65,0 +69 @@
+Gap.__newindex = Gap.set

--- lib/lines/lines/U3File.lua
+++ lib/lines/lines/U3File.lua
@@ -40 +40 @@
-U3File.__icopy = ds.defaultICopy
+U3File.__icopy  = ds.defaultICopy

--- lib/lines/lines/Writer.lua
+++ lib/lines/lines/Writer.lua
@@ -12,0 +13,4 @@
+-- FIXME: ???
+Writer.set = rawset
+Writer.get = rawget
+

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -90,2 +90,2 @@
-    T.eq('one',   f[1])
-    T.eq('three', f[3])
+    T.eq('one',   f:get(1))
+    T.eq('three', f:get(3))
@@ -94,2 +94,2 @@
-  T.eq('one', f[1])
-  push(f, 'four'); push(dat, 'four')
+  T.eq('one', f:get(1))
+  f:set(4, 'four'); push(dat, 'four')
@@ -97 +97 @@
-  T.eq(4, #f); T.eq('four', f[#f])
+  T.eq(4, #f); T.eq('four', f:get(#f))
@@ -100 +100 @@
-  T.eq('four: still in line four',          f[4])
+  T.eq('four: still in line four',          f:get(4))
@@ -102 +102 @@
-  T.eq('four: still in line four and this', f[4])
+  T.eq('four: still in line four and this', f:get(4))
@@ -107 +107 @@
-  T.eq('two', f[2])
+  T.eq('two', f:get(2))
@@ -152,3 +152,3 @@
-  T.eq('one',   ef[1]); T.eq({2},    ef.lens)
-  T.eq('three', ef[3]); T.eq({2, 6}, ef.lens)
-  T.eq('six',   ef[6])
+  T.eq('one',   ef:get(1)); T.eq({2},    ef.lens)
+  T.eq('three', ef:get(3)); T.eq({2, 6}, ef.lens)
+  T.eq('six',   ef:get(6))
@@ -164 +164 @@
-  push(ef, 'one')
+  ef:set(1, 'one')
@@ -167 +167 @@
-  T.eq('one', ef[1])
+  T.eq('one', ef:get(1))
@@ -169 +169 @@
-  push(ef, 'two')
+  ef:set(2, 'two')
@@ -172,2 +172,2 @@
-  T.eq('one', ef[1])
-  T.eq('two', ef[2])
+  T.eq('one', ef:get(1))
+  T.eq('two', ef:get(2))
@@ -175 +175 @@
-  ef[1] = 'one 1'
+  ef:set(1, 'one 1')
@@ -190 +190 @@
-  T.eq('five 5', ed[3])
+  T.eq('five 5', ed:get(3))
@@ -223 +223 @@
-  for i=1,100 do push(ed, 'line '..i) end
+  for i=1,100 do ed:set(#ed+1, 'line '..i) end
@@ -226 +226 @@
-  T.eq(ed[3], 'line 3')
+  T.eq(ed:get(3), 'line 3')
@@ -229,4 +229,4 @@
-  ed[3] = 'line 3.0'
-  T.eq(ed[2], 'line 2')
-  T.eq(ed[3], 'line 3.0')
-  T.eq(ed[4], 'line 4')
+  ed:set(3, 'line 3.0')
+  T.eq(ed:get(2), 'line 2')
+  T.eq(ed:get(3), 'line 3.0')
+  T.eq(ed:get(4), 'line 4')
@@ -235,3 +235,3 @@
-  T.eq(ed[6], 'line 6')
-  T.eq(ed[7], 'line 7.0')
-  T.eq(ed[10], 'line 8')
+  T.eq(ed:get(6), 'line 6')
+  T.eq(ed:get(7), 'line 7.0')
+  T.eq(ed:get(10), 'line 8')

--- lib/metaty/metaty.lua
+++ lib/metaty/metaty.lua
@@ -6,0 +7 @@
+local type = type
@@ -199,0 +201 @@
+
@@ -204,0 +207,3 @@
+M.hardIndex = function(R, k)
+  if not rawget(R, '__fields')[k] then M.indexError(R, k, 3) end
+end
@@ -210,0 +216,6 @@
+M.hardNewindex = function(r, k, v)
+  if type(k) ~= 'string' or not M.metaget(r, '__fields')[k] then
+    M.indexError(getmt(r), k, 3)
+  end
+  rawset(r, k, v)
+end
