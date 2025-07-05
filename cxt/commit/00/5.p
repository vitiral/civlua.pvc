fix cxt, would like to keep cleaning up

--- README.cxt
+++ README.cxt
@@ -57,2 +57,2 @@
-Civlua is an entire "Developer Tech Stack" from scratch, written in 100% Lua (or
-small C-extensions). First of all, what is a "Developer Tech Stack"?
+Civlua is an entire "Developer Tech Stack" from scratch, written in Lua
+(and a few small C-extensions). First of all, what is a "Developer Tech Stack"?

--- civ.lua
+++ civ.lua
@@ -8,0 +9 @@
+local ds  = require'ds'
@@ -12,0 +14 @@
+
@@ -29,0 +32,6 @@
+    local mod = ds.want(cmd)
+    if not mod then
+      io.fmt:styled('error', ('module %q not found.'):format(cmd), '\n')
+      io.fmt:styled('notify', 'Did you mean "doc" instead of "help"?', '\n')
+      return 1
+    end
@@ -31 +38,0 @@
-    local mod = require(cmd)

--- cmd/cxt/cxt/html.lua
+++ cmd/cxt/cxt/html.lua
@@ -242 +242 @@
-  local to  = LFile{path=args[2], mode='w+'}
+  local to  = fmt.Fmt{to=assert(io.open(args[2], 'w'))}

--- cmd/cxt/cxt/term.lua
+++ cmd/cxt/cxt/term.lua
@@ -55 +55 @@
-  w:level(1); if nl then push(w, '\n') end
+  w:level(1); if nl then w:write'\n' end
@@ -58 +58 @@
-    if i ~= 1 then push(w, '\t') end
+    if i ~= 1 then w:write'\t' end
@@ -66,2 +66,2 @@
-  token = function(w, node) push(w, w:tokenStr(node)) end,
-  br    = function(w, node) return push(w, '\n')      end,
+  token = function(w, node) w:write(w:tokenStr(node)) end,
+  br    = function(w, node) w:write'\n'               end,
@@ -72,2 +72,2 @@
-      push(w, '\n+ ')
-      -- if r == 1 then push(w, '  + ') else push(w, '\n+ ') end
+      w:write'\n+ '
+      -- if r == 1 then w:write'  + ' else w:write'\n+ ' end
@@ -75 +75 @@
-        if c ~= 1 then push(w, '\t') end
+        if c ~= 1 then w:write'\t' end
@@ -84 +84 @@
-      push(w, '\n* ');
+      w:write'\n* '
@@ -96 +96 @@
-    w.style = 'code'; push(w, s); w.style = prevSty
+    w.to:styled('code', s, '')
@@ -109,2 +109,4 @@
-    w.style = 'meta'; push(w, string.rep('#', header))
-    if header > 4 then push(w, '\n# ') else push(w, ' ') end
+    w.to:styled('meta', string.rep('#', header))
+    if header > 4 then
+      w.to:styled('meta', '\n#', ' ')
+    else w:write' ' end

--- cmd/cxt/test.lua
+++ cmd/cxt/test.lua
@@ -311 +311 @@
-Some <code>inline code</code> and: <code class=\"block\">code 1
+Some <code>inline code</code> and: <code class="block">code 1
@@ -313 +313 @@
-next line
+next line.
@@ -325,2 +325,2 @@
-Code block: <code class=\"block\">echo \"foo bar\"  # does baz
-echo \"blah blah\"</code>
+Code block: <code class="block">echo "foo bar"  # does baz
+echo "blah blah"</code>
@@ -339,8 +339,3 @@
-  local W = Writer; local w = W{}
-  local sty = term{
-    '[$code] not code',
-    out=fmt.Fmt{to=w}
-  }
-  T.eq(
-    setmetatable(W{'code not code', '', ''}, nil),
-    setmetatable(w, nil))
+  local f = fmt.Fmt{}
+  term{'[$code] not code', out=f}
+  T.eq('code not code\n', tostring(f))
@@ -348 +343 @@
-  local w = W{}
+  f = fmt.Fmt{}
@@ -364,2 +359,2 @@
-]], sty)
-local expect =
+]], f)
+  T.eq(
@@ -379,2 +374 @@
-"
-  T.eq(expect, table.concat(w, '\n'))
+", tostring(f))
@@ -382 +376 @@
-  ds.clear(w)
+  f = fmt.Fmt{}
@@ -390 +384 @@
-]", sty)
+]", f)
@@ -398 +392 @@
-  T.eq(expect, table.concat(w, '\n'))
+  T.eq(expect, tostring(f))

--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -347 +347,3 @@
--- clear(t, startindex=1, len=#t) -> t: set t[si:si+len-1] = nil
+-- Clear list-like elements of table.
+-- default is all of it, but you can also specify a specific
+-- start index and length.
@@ -1146,0 +1149,6 @@
+--- like require but returns nil
+M.want = function(mod) --> module?
+  local ok, m = pcall(function() return require(mod) end)
+  if ok then return m end
+end
+

--- lib/fmt/fmt.lua
+++ lib/fmt/fmt.lua
@@ -101,0 +102 @@
+Fmt.close = function(f) if f.to then f.to:close() end end
