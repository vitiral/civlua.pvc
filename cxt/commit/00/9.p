improve cxt.term and remove cxt.Writer.write
--- cmd/cxt/cxt.lua
+++ cmd/cxt/cxt.lua
@@ -460 +459,0 @@
-  'style [string]: see asciicolor.Style',
@@ -468,0 +468,4 @@
+M.Writer.eqStr = function(w, t, str)
+  if type(t) == 'string' then return t == str end
+  return (mty.ty(t) == Token) and (w:tokenStr(t) == str)
+end
@@ -474,4 +477 @@
-M.Writer.write = function(w, ...)
-  if w.style then w.to:styled(w.style, sconcat('', ...))
-  else            w.to:write(...) end
-end
+

--- cmd/cxt/cxt/html.lua
+++ cmd/cxt/cxt/html.lua
@@ -85 +85 @@
-  w:write(concat(line), noNl and '' or '\n')
+  w.to:write(concat(line), noNl and '' or '\n')

--- cmd/cxt/cxt/term.lua
+++ cmd/cxt/cxt/term.lua
@@ -55 +55 @@
-  w:level(1); if nl then w:write'\n' end
+  w:level(1); if nl then w.to:write'\n' end
@@ -58 +58 @@
-    if i ~= 1 then w:write'\t' end
+    if i ~= 1 then w.to:write'\t' end
@@ -66,2 +66,2 @@
-  token = function(w, node) w:write(w:tokenStr(node)) end,
-  br    = function(w, node) w:write'\n'               end,
+  token = function(w, node) w.to:write(w:tokenStr(node)) end,
+  br    = function(w, node) w.to:write'\n'               end,
@@ -72,2 +72 @@
-      w:write'\n+ '
-      -- if r == 1 then w:write'  + ' else w:write'\n+ ' end
+      w.to:write'\n+ '
@@ -75 +74 @@
-        if c ~= 1 then w:write'\t' end
+        if c ~= 1 then w.to:write'\t' end
@@ -84 +83 @@
-      w:write'\n* '
+      w.to:write'\n* '
@@ -90 +88,0 @@
-    local prevSty = w.style
@@ -100,0 +99,13 @@
+-- Handle a special type of node.
+local special = function(w, node, style, str)
+  -- If the text would be the same, simply write w/style.
+  if #node == 1 and w:eqStr(node[1], str) then
+    w.to:styled(style, str, '')
+  else -- else, write and include styled metadata
+    for _, n in ipairs(node) do M.serialize(w, n) end
+    w.to:styled('meta', '[')
+    w.to:styled(style, str)
+    w.to:styled('meta', ']', '')
+  end
+end
+
@@ -107 +117,0 @@
-  local prevSty = w.style
@@ -112 +122 @@
-    else w:write' ' end
+    else w.to:write' ' end
@@ -115,8 +125,2 @@
-  w.style = M.STYLES[kind] or node.style or prevSty
-  if #node == 0 then
-    local ps = w.style;
-    if node.path then
-      w.style = 'path'; M.serialize(w, node.path); w.style = ps
-    elseif node.href then
-      w.style = 'ref'; M.serialize(w, node.href);  w.style = ps
-    end
+  if     node.path then special(w, node, 'path', node.path)
+  elseif node.href then special(w, node, 'ref',  node.href)
@@ -126 +129,0 @@
-  w.style = prevSty
