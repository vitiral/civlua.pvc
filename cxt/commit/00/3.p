need to remove cxt.Writer
working on removing cxt.Writer, making progress
fix cxt, would like to keep cleaning up

remove cxt.Writer.indent
adding snap

minor pvc fix
improve cxt.term and remove cxt.Writer.write
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

--- cmd/cxt/cxt.lua
+++ cmd/cxt/cxt.lua
@@ -11,4 +11,5 @@
-local add, sfmt, srep = table.insert, string.format, string.rep
-local pop = table.remove
-local max = math.max
-local update = table.update
+
+local sconcat, sfmt, srep = string.concat, string.format, string.rep
+local add, pop = table.insert, table.remove
+local update   = table.update
+local max      = math.max
@@ -459,2 +459,0 @@
-  'indent[int]',
-  'style [string]: see asciicolor.Style',
@@ -464 +463 @@
-  return ty_{src=p.dat, to=to or {}, indent=0}
+  return ty_{src=p.dat, to=to or fmt.Fmt{}}
@@ -468,0 +468,4 @@
+M.Writer.eqStr = function(w, t, str)
+  if type(t) == 'string' then return t == str end
+  return (mty.ty(t) == Token) and (w:tokenStr(t) == str)
+end
@@ -474 +477 @@
--- TODO: remove this
+
@@ -476,4 +479,2 @@
-  if type(l) ~= 'number' then return rawset(w, l, line) end
-  if w.style        then w.to:styled(w.style, line)
-  elseif w.to.write then w.to:write(line)
-  else                   w.to[l] = line end
+  if type(l) == 'string' then return rawset(w, l, line) end
+  error"don't set index"
@@ -481 +482 @@
-M.Writer.__len = function(w) return #w.to end
+M.Writer.__len = function(w) error'Writer.len not supported' end

--- cmd/cxt/cxt/html.lua
+++ cmd/cxt/cxt/html.lua
@@ -16,0 +17,3 @@
+local concat = table.concat
+local split = ds.split
+
@@ -81,2 +84,2 @@
-local function addLine(w, line)
-  ds.extend(w, lines(table.concat(line)))
+local function addLine(w, line, noNl)
+  w.to:write(concat(line), noNl and '' or '\n')
@@ -154 +157 @@
-    addLine(w, line); w.indent = w.indent + 2
+    w.to:level(1); addLine(w, line)
@@ -156,2 +159,2 @@
-      addLine(w, {'<tr>'})
-      for _, col in ipairs(row) do
+      w.to:level(1); addLine(w, {'<tr>'})
+      for ci, col in ipairs(row) do
@@ -162 +165 @@
-        addLine(w, line)
+        addLine(w, line, ci == #row)
@@ -164 +167,2 @@
-      addLine(w, {'</tr>'})
+      w.to:level(-1)
+      w.to:write('\n</tr>', ri == #node and '' or '\n')
@@ -166 +170 @@
-    line = {}; w.indent = w.indent - 2
+    line = {}; w.to:level(-1); w.to:write'\n'
@@ -168,2 +172,2 @@
-    addLine(w, line); w.indent = w.indent + 2
-    for _, item in ipairs(node) do
+    w.to:level(1); addLine(w, line)
+    for i, item in ipairs(node) do
@@ -173 +177 @@
-      addLine(w, line)
+      addLine(w, line, i == #node)
@@ -175 +179 @@
-    line = {}; w.indent = w.indent - 2
+    line = {}; w.to:level(-1); w.to:write'\n'
@@ -178 +182 @@
-    s = table.concat(s)
+    s = concat(s)
@@ -222 +226 @@
-M.assertHtml = function(cxtDat, expectedHtml, dbg)
+M.assertHtml = function(expectedHtml, cxtDat, dbg)
@@ -226 +230,2 @@
-  T.eq(expectedHtml, w.to)
+  require'ds.log'.trace('!! w.to:', setmetatable(w.to, nil))
+  T.eq(expectedHtml, concat(w.to))
@@ -237 +242 @@
-  local to  = LFile{path=args[2], mode='w+'}
+  local to  = fmt.Fmt{to=assert(io.open(args[2], 'w'))}

--- cmd/cxt/cxt/term.lua
+++ cmd/cxt/cxt/term.lua
@@ -55 +55 @@
-  w:level(1); if nl then push(w, '\n') end
+  w:level(1); if nl then w.to:write'\n' end
@@ -58 +58 @@
-    if i ~= 1 then push(w, '\t') end
+    if i ~= 1 then w.to:write'\t' end
@@ -66,2 +66,2 @@
-  token = function(w, node) push(w, w:tokenStr(node)) end,
-  br    = function(w, node) return push(w, '\n')      end,
+  token = function(w, node) w.to:write(w:tokenStr(node)) end,
+  br    = function(w, node) w.to:write'\n'               end,
@@ -72,2 +72 @@
-      push(w, '\n+ ')
-      -- if r == 1 then push(w, '  + ') else push(w, '\n+ ') end
+      w.to:write'\n+ '
@@ -75 +74 @@
-        if c ~= 1 then push(w, '\t') end
+        if c ~= 1 then w.to:write'\t' end
@@ -84 +83 @@
-      push(w, '\n* ');
+      w.to:write'\n* '
@@ -90 +88,0 @@
-    local prevSty = w.style
@@ -96 +94 @@
-    w.style = 'code'; push(w, s); w.style = prevSty
+    w.to:styled('code', s, '')
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
@@ -109,2 +119,4 @@
-    w.style = 'meta'; push(w, string.rep('#', header))
-    if header > 4 then push(w, '\n# ') else push(w, ' ') end
+    w.to:styled('meta', string.rep('#', header))
+    if header > 4 then
+      w.to:styled('meta', '\n#', ' ')
+    else w.to:write' ' end
@@ -113,8 +125,2 @@
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
@@ -124 +129,0 @@
-  w.style = prevSty

--- cmd/cxt/test.lua
+++ cmd/cxt/test.lua
@@ -255,5 +255,16 @@
-  html.assertHtml('hi [*there] bob', {'hi <b>there</b> bob'})
-  html.assertHtml('hi [*there]\n  newline', {
-    'hi <b>there</b>', 'newline'
-  })
-  html.assertHtml([[
+  html.assertHtml('hi <b>there</b> bob\n', 'hi [*there] bob')
+  html.assertHtml(
+    'hi <b>there</b>\n'
+  ..'newline\n',
+    'hi [*there]\n  newline')
+  html.assertHtml(
+[[
+listing:<ul>
+  <li>one</li>
+  <li>two<ul>
+    <li>three</li>
+    <li>four</li>
+  </ul></li>
+</ul>
+]],
+[[
@@ -267,9 +278,2 @@
-]],{
-    "listing:<ul>",
-      "<li>one</li>",
-      "<li>two<ul>",
-        "<li>three</li>",
-        "<li>four</li>",
-      "</ul></li>",
-    "</ul>",
-  })
+]]
+)
@@ -277 +281,21 @@
-  html.assertHtml([[
+  html.assertHtml(
+[[
+<table>
+  <tr>
+    <th><b>h</b>1</th>
+    <th>h2</th>
+    <th>h3</th>
+  </tr>
+  <tr>
+    <td>r1.1</td>
+    <td>r1.2</td>
+    <td>r1.3</td>
+  </tr>
+  <tr>
+    <td>r2.1</td>
+    <td>r2.2</td>
+    <td>r2.3</td>
+  </tr>
+</table>
+]],
+[[
@@ -283,19 +307 @@
-]], {
-  "<table>",
-    "<tr>",
-      "<th><b>h</b>1</th>",
-      "<th>h2</th>",
-      "<th>h3</th>",
-    "</tr>",
-    "<tr>",
-      "<td>r1.1</td>",
-      "<td>r1.2</td>",
-      "<td>r1.3</td>",
-    "</tr>",
-    "<tr>",
-      "<td>r2.1</td>",
-      "<td>r2.2</td>",
-      "<td>r2.3</td>",
-    "</tr>",
-  "</table>",
-  })
+]])
@@ -303 +309,7 @@
-  html.assertHtml([[
+  html.assertHtml(
+[[
+Some <code>inline code</code> and: <code class="block">code 1
+code 2</code>
+next line.
+]],
+[[
@@ -309,5 +321,15 @@
-]], {
-  "Some <code>inline code</code> and: <code class=\"block\">code 1",
-  "code 2</code>",
-  "next line."
-})
+]])
+
+  html.assertHtml(
+[[
+Code block: <code class="block">echo "foo bar"  # does baz
+echo "blah blah"</code>
+end of code block.
+]],
+[[
+Code block: [{## lang=sh}
+echo "foo bar"  # does baz
+echo "blah blah"
+]##
+end of code block.
+]])
@@ -317,6 +339,3 @@
-  local W = Writer; local w = W{}
-  local sty = term{
-    '[$code] not code',
-    out=fmt.Fmt{to=w}
-  }
-  T.eq(W{'code not code', ''}, w)
+  local f = fmt.Fmt{}
+  term{'[$code] not code', out=f}
+  T.eq('code not code\n', tostring(f))
@@ -324 +343 @@
-  ds.clear(w)
+  f = fmt.Fmt{}
@@ -340,2 +359,2 @@
-]], sty)
-local expect =
+]], f)
+  T.eq(
@@ -355,2 +374 @@
-"
-  T.eq(expect, table.concat(w, '\n'))
+", tostring(f))
@@ -358 +376 @@
-  ds.clear(w)
+  f = fmt.Fmt{}
@@ -366 +384 @@
-]", sty)
+]", f)
@@ -374 +392 @@
-  T.eq(expect, table.concat(w, '\n'))
+  T.eq(expect, tostring(f))

--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -389,3 +389,4 @@
-    if ix.pathEq(P..path, nsnap..path) then goto cont end -- local==next
-    if ix.pathEq(P..path, csnap..path) then -- local didn't change
-      if not ix.pathEq(csnap..path, nsnap..path) then -- next did change
+    local lpath, npath = P..path, nsnap..path
+    if ix.pathEq(lpath, npath) then goto cont end -- local==next
+    if ix.pathEq(lpath, csnap..path) then -- local didn't change
+      if not ix.pathEq(csnap..path, npath) then -- next did change
@@ -397 +398 @@
-    if ix.pathEq(csnap..path, nsnap..path) then
+    if ix.pathEq(csnap..path, npath) then
@@ -1071,0 +1073,13 @@
+--- [$snap [branch#id]] get the snapshot directory of branch#id
+--- (default=at).
+--- 
+--- The snapshot contains a copy of files at that commit and
+--- should not be modified.
+M.main.snap = function(args) --> snap/
+  local P = popdir(args)
+  local br, id = M.resolve(P, args[1] or 'at')
+  local snap = M.snapshot(P, br, id)
+  io.stdout:write(snap, '\n')
+  return pth.nice(snap)
+end
+

--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -347 +347,3 @@
--- clear(t, startindex=1, len=#t) -> t: set t[si:si+len-1] = nil
+-- Clear list-like elements of table.
+-- default is all of it, but you can also specify a specific
+-- start index and length.
@@ -427 +429 @@
-  eq = eq or ds.eq
+  eq = eq or M.eq
@@ -434 +436 @@
-  move(t,     rl + 1, l,  1) -- move to start
+  move(t,     rl + 1, l,  1, t) -- move to start
@@ -1031,0 +1034,9 @@
+---------------------
+-- TWriter: table writer
+-- This is a table pretending to be a write-only file.
+
+M.TWriter = mty'TWriter' {}
+M.TWriter.write = function(tw, ...) push(tw, sconcat('', ...)) end
+M.TWriter.flush = M.noop
+M.TWriter.close = M.noop
+
@@ -1137,0 +1149,6 @@
+--- like require but returns nil
+M.want = function(mod) --> module?
+  local ok, m = pcall(function() return require(mod) end)
+  if ok then return m end
+end
+

--- lib/ds/ds/path.lua
+++ lib/ds/ds/path.lua
@@ -14 +14 @@
-local clear, ds_rmleft  = ds.clear, ds.rmleft
+local clear             = ds.clear
@@ -146 +146 @@
-  return ds_rmleft(path, rm, M.itemeq)
+  return ds.rmleft(path, rm, M.itemeq)

--- lib/ds/test.lua
+++ lib/ds/test.lua
@@ -194,0 +195,2 @@
+  T.eq({'d', 'e'},
+    M.rmleft({'a', 'b', 'c', 'd', 'e'}, {'a', 'b', 'c'}))

--- lib/fmt/fmt.lua
+++ lib/fmt/fmt.lua
@@ -101,0 +102 @@
+Fmt.close = function(f) if f.to then f.to:close() end end
