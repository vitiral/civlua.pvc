working on removing cxt.Writer, making progress
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
@@ -464 +465 @@
-  return ty_{src=p.dat, to=to or {}, indent=0}
+  return ty_{src=p.dat, to=to or fmt.Fmt{}, indent=0}
@@ -474 +475,4 @@
--- TODO: remove this, it's awful
+M.Writer.write = function(w, ...)
+  if w.style then w.to:styled(w.style, sconcat('', ...))
+  else            w.to:write(...) end
+end
@@ -476,4 +480,2 @@
-  if type(l) ~= 'number' then return rawset(w, l, line) end
-  if w.style        then w.to:styled(w.style, line)
-  elseif w.to.write then w.to:write(line, '\n')
-  else                   w.to[l] = line end
+  if type(l) == 'string' then return rawset(w, l, line) end
+  error"don't set index"
@@ -481 +483 @@
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
+  w:write(concat(line), noNl and '' or '\n')
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
+Some <code>inline code</code> and: <code class=\"block\">code 1
+code 2</code>
+next line
+]],
+[[
@@ -309,5 +321 @@
-]], {
-  "Some <code>inline code</code> and: <code class=\"block\">code 1",
-  "code 2</code>",
-  "next line."
-})
+]])
@@ -315 +323,7 @@
-  html.assertHtml([[
+  html.assertHtml(
+[[
+Code block: <code class=\"block\">echo \"foo bar\"  # does baz
+echo \"blah blah\"</code>
+end of code block.
+]],
+[[
@@ -321,7 +335 @@
-]],
-  {
-    "Code block: <code class=\"block\">echo \"foo bar\"  # does baz",
-    "echo \"blah blah\"</code>",
-    "end of code block."
-  }
-)
+]])

--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -1031,0 +1032,9 @@
+---------------------
+-- TWriter: table writer
+-- This is a table pretending to be a write-only file.
+
+M.TWriter = mty'TWriter' {}
+M.TWriter.write = function(tw, ...) push(tw, sconcat('', ...)) end
+M.TWriter.flush = M.noop
+M.TWriter.close = M.noop
+
