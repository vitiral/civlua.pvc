starting to add bars
--- cmd/ele/ele/edit.lua
+++ cmd/ele/ele/edit.lua
@@ -15 +15 @@
-local span, lsub = lines.span, lines.sub
+local sfmt = string.format
@@ -16,0 +17 @@
+local span, lsub = lines.span, lines.sub
@@ -30,0 +32,24 @@
+  'drawBars [fn[Edit] -> botHeight,leftWidth]',
+  drawBars = function(e, d) --> botHeight, leftWidth
+    if e.tw <= 10 or e.th <= 3 then return 0, 0 end
+    -- draw relative line numbers above l
+    local dl = e.tl -- display line number
+    local tc = e.tc
+    for l=e.vl, e.l-1 do
+      d.text:insert(dl, tc, sfmt('% 2i', e.l - l))
+      dl = dl + 1
+    end
+    d.text:insert(dl, tc, ' *')
+    dl = dl + 1
+    for l=e.l+1, e.vl+e.th-2 do
+      d.text:insert(dl, tc, sfmt('% 2i', l - e.l))
+      dl = dl + 1
+    end
+    local info = ('  THIS IS INFO'):sub(1, e.tw)
+    assert(dl == e.tl + e.th - 1, sfmt('%s %s %s', dl, e.tl, e.th))
+    d.text:insert(dl, tc, info)
+    for c=tc+#info, tc+e.tw-1 do
+      d.text[dl][c] = ' '
+    end
+    return 1, 2
+  end
@@ -174,0 +200,4 @@
+  local bh, bw = e:drawBars(t)
+  e.th = e.th - bh
+  e.tw = e.tw - bw
+  e.tc = e.tc + bw

--- cmd/ele/tests/test_session.lua
+++ cmd/ele/tests/test_session.lua
@@ -115,0 +116,10 @@
+local SMALL_1 = [[
+ *-- a small lua file for test
+ 1local M = {}
+ 2
+ 3M.main = function()
+ 4  print'hello world'
+ 5end
+ 6
+ 7return M
+  THIS IS INFO                ]]
@@ -124 +134 @@
-    T.eq(pth.read(SMALL), fmt(ed.display))
+    T.eq(SMALL_1, fmt(ed.display))
@@ -142,2 +152,9 @@
--- a small lua file for tests -- a small lua file for tests
-local M = {}                  local M = {}]]
+ *-- a small lua file for te *-- a small lua file for test
+ 1local M = {}               1local M = {}
+ 2                           2
+  THIS IS INFO                THIS IS INFO                ]]
+local SPLIT_2 = [[
+ *-- a small lua file for te 1-- a small lua file for test
+ 1local M = {}               *local M = {}
+ 2                           1
+  THIS IS INFO                THIS IS INFO                ]]
@@ -145 +162,3 @@
-Test{'window', open=SMALL, th=2, tw=60, function(tst)
+
+
+Test{'window', open=SMALL, th=4, tw=60, function(tst)
@@ -161,0 +181 @@
+    T.eq(SPLIT_2, fmt(ed.display))

--- lib/ds/ds/Grid.lua
+++ lib/ds/ds/Grid.lua
@@ -3,0 +4 @@
+local fmt = require'fmt'
@@ -8,0 +10 @@
+local assertf = fmt.assertf
@@ -44 +46,2 @@
-      local lc = c + llen - 1; assert(lc <= g.w, 'line+c too long')
+      local lc = c + llen - 1
+      assertf(lc <= g.w, 'line+c (%i) longer than width %i', lc, g.w)
