lots of changes regarding iA, parsing, formatting
--- lib/fmt/fmt.lua
+++ lib/fmt/fmt.lua
@@ -78,0 +79,9 @@
+Fmt.toPretty = function(f)
+  f.tableStart = rawget(f, 'tableStart') or '{\n'
+  f.tableEnd   = rawget(f, 'tableEnd')   or '\n}'
+  f.listEnd    = rawget(f, 'listEnd')    or '\n'
+  f.keyEnd     = rawget(f, 'keyEnd')     or ',\n'
+  f.indent     = rawget(f, 'indent')     or '  '
+  return f
+end
+
@@ -81,8 +90 @@
-Fmt.pretty = function(F, t)
-  t.tableStart = t.tableStart or '{\n'
-  t.tableEnd   = t.tableEnd   or '\n}'
-  t.listEnd    = t.listEnd    or '\n'
-  t.keyEnd     = t.keyEnd     or ',\n'
-  t.indent     = t.indent     or '  '
-  return F(t)
-end
+Fmt.pretty = function(F, t) return F(t):toPretty() end
@@ -183 +185 @@
-    if (i < len) or hasKeys then f:write(f.indexEnd) end
+    if (i < len) or hasKeys then f:styled('meta', f.indexEnd, '') end
@@ -185 +187 @@
-  if listEnd then f:write(listEnd) end
+  if listEnd then f:styled('meta', listEnd, '') end
@@ -217 +219 @@
-  f:write(multi and f.tableStart or '{')
+  f:styled('symbol', multi and f.tableStart or '{', '')
@@ -221 +223 @@
-  f:write(multi and f.tableEnd or '}')
+  f:styled('symbol', multi and f.tableEnd or '}', '')
@@ -261 +262,0 @@
-
@@ -292,0 +294,11 @@
+--- pretty print
+M.pprint = function(...)
+  local f; if io.fmt then
+    f = {}
+    for k,v in pairs(io.fmt) do f[k] = v end
+    setmetatable(f, getmetatable(io.fmt))
+    f:toPretty()
+  end
+  return M.fprint(f, ...)
+end
+

--- lib/fmt/test.lua
+++ lib/fmt/test.lua
@@ -5,0 +6 @@
+local sfmt = string.format
@@ -72,0 +74,11 @@
+
+T.metaty = function()
+  local A = mty'A'{'a1', 'a2'}
+  T.eq('A{a1=42, a2=nil}', M(A{a1=42}))
+  local a = A{a1=1, a2=2, 3, 4, 5}
+  local aFmt = 'A{3, 4, 5, a1=1, a2=2}'
+  T.eq(aFmt, M(a))
+  local B = mty'B'{'b1'}
+  local b = B{a, b1=a}
+  T.eq(sfmt('B{%s, b1=%s}', aFmt, aFmt), M(b))
+end

--- lib/metaty/metaty.lua
+++ lib/metaty/metaty.lua
@@ -145,2 +145,2 @@
-  local fields = rawget(mt, '__fields')
-  local multi = #fields > 1 -- use multiple lines
+  local len, fields = #self, rawget(mt, '__fields')
+  local multi = len + #fields > 1 -- use multiple lines
@@ -148,0 +149,2 @@
+  f:items(self, #fields > 0,
+          multi and (len>0) and (#fields>0) and f.listEnd)

--- os/iA/iA.lua
+++ os/iA/iA.lua
@@ -86,0 +87,3 @@
+M.Ty.__fmt = function(ty, f)
+  f:write(sfmt('Ty(%s.%s)', mod.name, ty.name))
+end
@@ -174,2 +176,0 @@
-
-
@@ -185,2 +186,2 @@
---- Cross-platofrm operations. Operations work on an l and r values which are
---- an iA.Reg.
+--- Cross-platform operations. Operations work on an l and r values
+--- which are an iA.Reg.

--- ui/asciicolor/asciicolor.lua
+++ ui/asciicolor/asciicolor.lua
@@ -82 +82 @@
-  symbol        = 't', -- = + . { } etc
+  symbol        = 'A', -- = + . { } etc
