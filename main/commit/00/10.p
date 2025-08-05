fix vt100 bugs
--- cmd/ff/ff.lua
+++ cmd/ff/ff.lua
@@ -5 +5 @@
-MAIN = G.MAIN or M
+G.MAIN = G.MAIN or M

--- ui/vt100/vt100.lua
+++ ui/vt100/vt100.lua
@@ -9 +9,2 @@
-local M = G.mod and mod'vt100' or {}
+local M = G.mod and mod'vt100' or setmetatable({}, {})
+G.MAIN = G.MAIN or M
@@ -97 +98 @@
-  ['OP'] = 'f1', ['OQ'] = 'f2', ['OR'] = 'f3', ['OS'] = 'f4',
+  P = 'f1', Q = 'f2', R = 'f3', S = 'f4',
@@ -99 +100 @@
-  ['OH'] = 'home', ['OF'] = 'end',
+  H = 'home', F = 'end',
@@ -353,3 +354,3 @@
-    b = getb()
-    if INP_SEQO[b] then send(INP_SEQO[b]); goto continue
-    else goto restart end
+    b = nice(getb()); local s = INP_SEQO[b]
+    if s then send(s);            goto continue
+    else      send'esc'; send(b); goto restart end
@@ -357 +358 @@
-  if b ~= LBR then goto restart end
+  if b ~= LBR then send'esc'; goto restart end
@@ -381,3 +382,2 @@
-  for _, d in ipairs(dat) do
-    send(nice(dat[i]))
-  end
+  send'esc'; send'['
+  for _, d in ipairs(dat) do send(nice(d)) end
@@ -428,0 +429,18 @@
+--- Listens to keyboard inputs and echoes them.
+M.main = function(args)
+  local epath = '/tmp/vt100.err'
+  print('vt100 echo, use ^c (cntrl+c) to quit. stderr at', epath)
+  M.start(assert(io.open(epath, 'a')))
+  local te = {
+    run=true,
+    _ready=function() print'term resized\r' end,
+  }
+  local send = function(b)
+    print(('received %q\r'):format(b))
+    if b == '^c' then te.run = false end
+  end
+  M.Term.input(te, send)
+  M.stop()
+  print'^c stopped, done'
+end
+
