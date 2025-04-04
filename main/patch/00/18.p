stop pushing to Fmt and improve docs
--- cmd/cxt/cxt.lua
+++ cmd/cxt/cxt.lua
@@ -473,0 +474 @@
+-- TODO: remove this
@@ -476,2 +477,3 @@
-  if w.style then w.to:styled(w.style, line)
-  else            w.to[l] = line end
+  if w.style        then w.to:styled(w.style, line)
+  elseif w.to.write then w.to:write(line)
+  else                   w.to[l] = line end

--- cmd/doc/doc.lua
+++ cmd/doc/doc.lua
@@ -33 +33 @@
-local sfmt, pushfmt = string.format, ds.pushfmt
+local sfmt = string.format
@@ -330 +330 @@
-    pushfmt(f, '%-16s | %s %s%s\n%s', name, ty, default, path, di.doc)
+    f:write(sfmt('%-16s | %s %s%s\n%s', name, ty, default, path, di.doc))
@@ -333 +333 @@
-    pushfmt(f, '%-16s | %s %s%s', name, ty, default, path)
+    f:write(sfmt('%-16s | %s %s%s', name, ty, default, path))
@@ -345 +345 @@
-    pushfmt(f, '\n[*%s: ] [{table}', name)
+    f:write(sfmt('\n[*%s: ] [{table}', name))
@@ -348 +348 @@
-      push(f, '\n+ ')
+      f:write'\n+ '
@@ -350 +350 @@
-      else pushfmt(f, '[*%s] | %s', k, cxt.code(fmt(v))) end
+      else f:write(sfmt('[*%s] | %s', k, cxt.code(fmt(v)))) end
@@ -352 +352 @@
-    push(f, '\n]')
+    f:write'\n]'
@@ -356 +356 @@
-      push(f, '\n'); M.fmtDoc(f, attr[k])
+      f:write'\n'; M.fmtDoc(f, attr[k])
@@ -368,6 +368,6 @@
-  pushfmt(f, '[{table}')
-  if m.summary then pushfmt(f, '\n+ [*summary] | %s', m.summary) end
-  pushfmt(f, '\n+ [*version] | [$%s]', m.version or '(no version)')
-  if m.homepage then pushfmt(f, '\n+ [*homepage] | [<%s>]', m.homepage) end
-  if m.repo     then pushfmt(f, '\n+ [*repo] | [<%s>]', m.repo) end
-  pushfmt(f, '\n]')
+  f:write'[{table}'
+  if m.summary then f:write(sfmt('\n+ [*summary] | %s', m.summary)) end
+  f:write(sfmt('\n+ [*version] | [$%s]', m.version or '(no version)'))
+  if m.homepage then f:write(sfmt('\n+ [*homepage] | [<%s>]', m.homepage)) end
+  if m.repo     then f:write(sfmt('\n+ [*repo] | [<%s>]', m.repo)) end
+  f:write'\n]'
@@ -381 +381 @@
-  pushfmt(f, '[{h%s}%s%s%s]',
+  f:write(sfmt('[{h%s}%s%s%s]',
@@ -385 +385 @@
-          path)
+          path))
@@ -388,3 +388 @@
-    for i, l in ipairs(d.comments) do
-      push(f, '\n'); push(f, l)
-    end
+    for i, l in ipairs(d.comments) do f:write('\n', l) end
@@ -397 +395 @@
-      push(f, cxt.codeblock('\n'..concat(d.code, '\n')..'\n', 'lua'))
+      f:write(cxt.codeblock('\n'..concat(d.code, '\n')..'\n', 'lua'))
@@ -403 +401 @@
-  if any or d.mods then push(f, '\n') end
+  if any or d.mods then f:write'\n' end
@@ -414 +412 @@
-    if any then push(f, '\n') end
+    if any then f:write'\n' end
@@ -416 +414 @@
-      push(f, '\n'); M.fmt(f, d.mods[m])
+      f:write'\n'; M.fmt(f, d.mods[m])

--- cmd/doc/test.lua
+++ cmd/doc/test.lua
@@ -118,0 +119 @@
++ [$doc_test.Example.__fmt] | \\[function\\] ([{path=lib/metaty/metaty.lua:000}src])\
@@ -119,0 +121 @@
++ [$doc_test.Example.__tostring] | \\[function\\] ([{path=lib/metaty/metaty.lua:000}src])\

--- cmd/doc/test/docfake.cxt
+++ cmd/doc/test/docfake.cxt
@@ -23,0 +24,2 @@
+[{h4}Function [:metaty.fmt] ([{i path=lib/metaty/metaty.lua:000}src])]
+The default __fmt method.
@@ -24,0 +27,2 @@
+[{h4}Function [:metaty.tostring] ([{i path=lib/metaty/metaty.lua:000}src])]
+The default __tostring method.

--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -240,6 +239,0 @@
---- push the [$fmt:format(...)] to the table
----
---- Example: [$pushfmt(t, 'a=%s b=%s', a, b)]
-M.pushfmt = function(t, fmt, ...) push(t, sfmt(fmt, ...)) end
-local pushfmt = M.pushfmt
-
@@ -659,2 +653,2 @@
-M.Slc.__tostring = function(s) --> string
-  return sfmt('Slc[%s:%s]', s.si, s.ei)
+M.Slc.__fmt = function(s, fmt) --> string
+  fmt:write(sfmt('Slc[%s:%s]', s.si, s.ei))
@@ -825 +819 @@
-  push(f, 'Set'); push(f, f.tableStart);
+  f:write('Set', f.tableStart)
@@ -830,2 +824,2 @@
-    f:fmt(k)
-    if i < #keys then push(f, f.indexEnd) end
+    f(k)
+    if i < #keys then f:write(f.indexEnd) end
@@ -834 +828 @@
-  push(f, f.tableEnd)
+  f:write(f.tableEnd)
@@ -961,0 +956,3 @@
+M.BiMap.__fields   = nil
+M.BiMap.__fmt      = nil
+M.BiMap.__tostring = nil
@@ -968 +964,0 @@
-M.BiMap.__fields = nil
@@ -973 +968,0 @@
-M.BiMap.__fmt = nil
@@ -1077,2 +1072,2 @@
-M.Error.__fmt = function(e, fmt)
-  push(fmt, 'ERROR: '); push(fmt, e.msg)
+M.Error.__fmt = function(e, f)
+  f:write('ERROR: ', e.msg)
@@ -1080 +1075 @@
-    push(fmt, '\ntraceback:\n')
+    f:write'\ntraceback:\n'
@@ -1082 +1077 @@
-      push(fmt, '  '); push(fmt, l); push(fmt, '\n')
+      f:write('  ', l, '\n')
@@ -1086,2 +1081,2 @@
-    push(fmt, '\nCaused by: ');
-    fmt(e.cause); push(fmt, '\n')
+    f:write'\nCaused by: '
+    f(e.cause); f:write'\n'

--- lib/ds/ds/Grid.lua
+++ lib/ds/ds/Grid.lua
@@ -52,5 +52,3 @@
-G.__fmt = function(g, fmt)
-  local h = g.h; for l=1,h-1 do
-    push(fmt, concat(g[l])); push(fmt, '\n')
-  end
-  push(fmt, concat(g[h]))
+G.__fmt = function(g, f)
+  local h = g.h; for l=1,h-1 do f:write(concat(g[l]), '\n') end
+  f:write(concat(g[h]))

--- lib/ds/ds/LL.lua
+++ lib/ds/ds/LL.lua
@@ -116,2 +116,2 @@
-LL.__fmt = function(ll, fmt)
-  push(fmt, 'LL{')
+LL.__fmt = function(ll, f)
+  f:write'LL{'
@@ -119,2 +119,2 @@
-    fmt(ll.v); ll = ll.r
-    if ll then push(fmt, ' -> ') else break end
+    f(ll.v); ll = ll.r
+    if ll then f:write' -> ' else break end
@@ -122 +122 @@
-  push(fmt, '}')
+  f:write'}'

--- lib/ds/ds/log.lua
+++ lib/ds/ds/log.lua
@@ -58 +58 @@
-  push(f, sfmt('%s %s %s: ', SHORT[lvl], M.time(), loc)); f:flush()
+  f:write(sfmt('%s %s %s: ', SHORT[lvl], M.time(), loc)); f:flush()
@@ -61 +61 @@
-  if i == (nargs - 1) then push(f, ' '); f(args[i + 1]) -- data
+  if i == (nargs - 1) then f:write' '; f(args[i + 1]) -- data

--- lib/ds/test.lua
+++ lib/ds/test.lua
@@ -524 +524 @@
-         , fmt(bm))
+       , fmt(bm))

--- lib/fmt/PKG.lua
+++ lib/fmt/PKG.lua
@@ -4 +4 @@
-summary  = "format lua types"
+summary  = "format and style anything"

--- lib/fmt/README.cxt
+++ lib/fmt/README.cxt
@@ -1 +1 @@
-[{h1}fmt module: format and style lua types]
+[{h1}fmt module: format and style anything]
@@ -3,15 +3,36 @@
-API / Architecture: [+
-* [$metaty] (or any other type library) defines types and sets [$__fields] on
-  the metatable.
-* [$fmt.Fmt] defines the formatter which has methods/settings: [+
-  * [$to [file|Styler]]: where to write to. Default is to push to self,
-    treating Fmt as a list of strings.
-  * [$style [boolean]] to enable/disable styling. Set to [$true] if [$to=styler]
-    AND you want color/etc.
-  * [$__call(f, v)]: call with any value to use [$__fmt] method or default.
-  * [$__newindex(k, v)]: [$push(f, str)] like a normal table of strings.
-  * [$write(...)]: write like a normal file
-  * [$styled(style, text, ...)]: style [$text] and [$write(...)] using a
-    provided styler (i.e. [$asciicolor.style.Styler])
-  * [$level(add)] to increase/decrease the indentation level.
-  ]
+The fmt module is a small (~200 lines of code) module which formats arbitrary
+lua types as well as enables users to define formatting for their own
+[<#Package_metaty>metatypes] via the [$function __fmt(self, fmter)] method.
+
+It also provides several helper methods such as [$print], [$assertf] and
+[$errorf], making it more convienent to print or format types. In addition, it
+sets [$io.fmt = io.fmt or Fmt{to=io.stderr}], providing a default hook for
+[<#ds.log>] and command line utilities to write formatted text to.
+
+The [<#fmt.Fmt>] interface (which is passed to a metaty's [$__fmt] method if
+present) accepts both [$write] (like a file) and
+[$styled("style", "styled text", ..."non-styled text")], enabling the
+[<$Package_asciicolor>asciicolor] library (or your own library!) to provide
+user-configurable colors for specific styles which integrate with the
+[<#Package_vt100>vt100] library and the [<#Package_cxt>cxt] libraries. This
+is used throughout civlua to provide user-configurable (and optional) color
+to the terminal, web-pages and the civlua editor.
+
+[{h2}API / Architecture]
+
+[<#fmt.Fmt>] defines the formatter which has methods/settings: [+
+* [$to [file|Styler]] (argument): where to write to. Default is to push to
+  self, treating Fmt as a list of strings (which you can call [$table.concat]
+  on).
+
+* [$style [boolean]] to enable/disable styling. Set to [$true] if [$to=styler]
+  AND you want color/etc.
+
+* [$__call(f, v)]: call with any value to use [$__fmt] method or default.
+
+* [$write(...)]: write like a normal file
+
+* [$styled(style, text, ...)]: style [$text] and [$write(...)] using a
+  provided styler (i.e. [<#asciicolor.style.Styler])
+
+* [$level(add)] to increase/decrease the indentation level.
@@ -18,0 +40,2 @@
+
+See the documentation of each function for more details.

--- lib/fmt/fmt.lua
+++ lib/fmt/fmt.lua
@@ -7,0 +8 @@
+local getmt = getmetatable
@@ -9 +10 @@
-local add, concat = table.insert, table.concat
+local push, concat = table.insert, table.concat
@@ -12,0 +14,2 @@
+local split = mty.split
+
@@ -16,2 +19,3 @@
---- for comparing two (possibly) different types
---- [$nil < bool < number < string < table]
+--- Compares two values of any type.
+---
+--- Note: [$nil < bool < number < string < table]
@@ -34,5 +38,2 @@
-
--- TODO: move this over here
-local split = mty.split
-
-M.sortKeys = function(t)
+--- Return a list of the table's keys sorted using [$cmpDuck]
+M.sortKeys = function(t) --> list
@@ -42 +43 @@
-      add(keys, k)
+      push(keys, k)
@@ -47,0 +49,8 @@
+--- The Fmt formatter object.
+---
+--- This is the main API of this module. It enables formatting any
+--- type by simply calling it's instance, appending the result to [$f] (i.e.
+--- self) or (if present) writing the result to [$f.to].
+---
+--- If [$f.to] is not provided, you can get the resulting string by calling
+--- [$tostring(f)]
@@ -69,0 +79,2 @@
+--- Create a new Formatter object with default "pretty" settings.
+--- Generally, this means line-separated and indented tables.
@@ -79 +90 @@
---- add to the indent level and get the new value
+--- Add to the indent level and get the new value
@@ -93,0 +105 @@
+--- Same as [$file:write].
@@ -101,0 +114,4 @@
+
+--- Call [$to:styled(...)] if it is enabled, else simply [$f:write(text, ...)].
+--- This allows for configurable styling of output, both for objects as well
+--- as command-line utilities/etc.
@@ -115,6 +131,4 @@
-Fmt.__newindex = function(f, i, v)
-  if type(i) ~= 'number' then; assert(f.__fields[i], i)
-    return rawset(f, i, v)
-  end
-  assert(i == #f + 1, 'can only append to Fmt')
-  f:write(v)
+
+Fmt.__newindex = function(f, k, v)
+  assert(type(k) == 'string', 'cannot set Fmt index')
+  return rawset(f, k, v)
@@ -122,0 +137,2 @@
+--- Format like a table key. This can be overriden by type extensions to
+--- provide other behavior.
@@ -126,13 +142,20 @@
-    add(f, '[');
-    if type(k) == 'string' then add(f, sfmt('%q', k)) else f(k) end
-    add(f, ']')
-  else add(f, k) end
-end
-
-Fmt['nil']      = function(f)     add(f, 'nil')             end
-Fmt.boolean     = function(f, b)  add(f, tostring(b))       end
-Fmt.number      = function(f, n)  add(f, sfmt(f.numfmt, n)) end
-Fmt.string      = function(f, s)  add(f, sfmt(f.strfmt, s)) end
-Fmt.thread      = function(f, th) add(f, tostring(th))      end
-Fmt.userdata    = function(f, ud) add(f, tostring(ud))      end
-Fmt['function'] = function(f, fn) add(f, sfmt('fn%q[%s]', mty.fninfo(fn))) end
+    f:write'['
+    if type(k) == 'string' then f:write(sfmt('%q', k)) else f(k) end
+    f:write']'
+  else f:write(k) end
+end
+
+--- format a nil value.
+Fmt['nil']      = function(f)     f:write'nil'              end
+--- format a boolean value.
+Fmt.boolean     = function(f, b)  f:write(tostring(b))      end
+--- format a number value.
+Fmt.number      = function(f, n)  f:write(sfmt(f.numfmt, n)) end
+--- format a string value.
+Fmt.string      = function(f, s)  f:write(sfmt(f.strfmt, s)) end
+--- format a thread value.
+Fmt.thread      = function(f, th) f:write(tostring(th))      end
+--- format a userdata value.
+Fmt.userdata    = function(f, ud) f:write(tostring(ud))      end
+--- format a function value.
+Fmt['function'] = function(f, fn) f:write(sfmt('fn%q[%s]', mty.fninfo(fn))) end
@@ -144 +167 @@
-    if (i < len) or hasKeys then add(f, f.indexEnd) end
+    if (i < len) or hasKeys then f:write(f.indexEnd) end
@@ -146 +169 @@
-  if listEnd then add(f, listEnd) end
+  if listEnd then f:write(listEnd) end
@@ -153 +176 @@
-    f:tableKey(k); add(f, kset);
+    f:tableKey(k); f:write(kset);
@@ -155 +178 @@
-    if rawequal(t, v) then add(f, 'self')
+    if rawequal(t, v) then f:write'self'
@@ -157 +180 @@
-    if i < klen then add(f, kend) end
+    if i < klen then f:write(kend) end
@@ -165,2 +188,2 @@
-  if f._level >= f.maxIndent then return add(f, DEPTH_ERROR) end
-  local mt, keys = getmetatable(t), nil
+  if f._level >= f.maxIndent then return f:write(DEPTH_ERROR) end
+  local mt = getmt(t)
@@ -168 +191 @@
-    return add(f, tostring(t))
+    return f:write(tostring(t))
@@ -172,3 +195,2 @@
-    fn = rawget(mt, '__tostring');  if fn then return add(f, fn(t)) end
-    local n = rawget(mt, '__name'); if n  then add(f, n)       end
-    keys = rawget(mt, '__fields')
+    fn = rawget(mt, '__tostring');  if fn then return f:write(fn(t)) end
+    local name = rawget(mt, '__name'); if name then f:write(name) end
@@ -176 +198 @@
-  keys = keys or M.sortKeys(t)
+  local keys = M.sortKeys(t)
@@ -179 +201 @@
-  if multi then add(f, f.tableStart) else add(f, '{') end
+  f:write(multi and f.tableStart or '{')
@@ -183 +205 @@
-  if multi then add(f, f.tableEnd) else add(f, '}') end
+  f:write(multi and f.tableEnd or '}')
@@ -207 +229 @@
-    add(f, sep); f(select(i, ...))
+    f:write(sep); f(select(i, ...))
@@ -259 +281 @@
-getmetatable(M).__call = function(_, v) return concat(Fmt{}(v)) end
+getmt(M).__call = function(_, v) return concat(Fmt{}(v)) end

--- lib/lap/lap.lua
+++ lib/lap/lap.lua
@@ -39,2 +39,2 @@
-    push(f, sfmt('Coroutine Error #%s:\n', i))
-    f(ce); push(f, '\n')
+    f:write(sfmt('Coroutine Error #%s:\n', i))
+    f(ce); f:write'\n'
@@ -138,2 +138,2 @@
-M.Recv.__fmt = function(r, fmt)
-  push(fmt, ('Recv{%s len=%s hasSender=%s}'):format(
+M.Recv.__fmt = function(r, f)
+  f:write(sfmt('Recv{%s len=%s hasSender=%s}',
@@ -189 +189 @@
-  push(f, ('Send{active=%s}'):format(send:isClosed() and 'no' or 'yes'))
+  f:write('Send{active=%s}', send:isClosed() and 'no' or 'yes')

--- lib/lines/lines/File.lua
+++ lib/lines/lines/File.lua
@@ -151,4 +151,4 @@
-File.__fmt = function(lf, fmt)
-  push(fmt, 'lines.File(')
-  if lf.path then push(fmt, lf.path) end
-  push(fmt, ')')
+File.__fmt = function(lf, f)
+  f:write'lines.File('
+  if lf.path then f:write(lf.path) end
+  f:write')'

--- lib/lines/lines/Gap.lua
+++ lib/lines/lines/Gap.lua
@@ -51,2 +51 @@
-    push(f, l);
-    if i < len then push(f, '\n') end
+    f:write(l); if i < len then f:write'\n' end
@@ -55,2 +54 @@
-    push(f, g.top[i]);
-    if i > 1 then push(f, '\n') end
+    f:write(g.top[i]); if i > 1 then f:write'\n' end

--- lib/lson/lson.lua
+++ lib/lson/lson.lua
@@ -67 +67 @@
-  push(enc, (sfmt('%q', s):gsub('\\?[\n9]', CTRL_SUB)))
+  enc:write( (sfmt('%q', s):gsub('\\?[\n9]', CTRL_SUB)) )
@@ -70 +70 @@
-  if rawequal(t, f.null) then return push(f, 'null') end
+  if rawequal(t, f.null) then return f:write'null' end
@@ -75 +75 @@
-    if #t > 1 then push(f, f.listStart) else push(f, '[') end
+    f:write((#t > 1) and f.listStart or '[')
@@ -77 +77 @@
-    if #t > 1 then push(f, f.listEnd)   else push(f, ']') end
+    f:write((#t > 1) and f.listEnd   or ']')
@@ -80 +80 @@
-    if #keys > 1 then push(f, f.tableStart) else push(f, '{') end
+    f:write((#keys > 1) and f.tableStart or '{')
@@ -82 +82 @@
-    if #keys > 1 then push(f, f.tableEnd)   else push(f, '}') end
+    f:write((#keys > 1) and f.tableEnd or '}')
@@ -110 +110 @@
-  push(f, '|'); push(f, (s:gsub('(\\*)([\\\n|n])', mbytes))); push(f, '|')
+  f:write('|', s:gsub('(\\*)([\\\n|n])', mbytes), '|')

--- lib/metaty/metaty.lua
+++ lib/metaty/metaty.lua
@@ -5,0 +6 @@
+local getmt = getmetatable
@@ -50 +51 @@
-  return rawget(t, method) or rawget(getmetatable(t) or EMPTY, method)
+  return rawget(t, method) or rawget(getmt(t) or EMPTY, method)
@@ -59 +60 @@
-  return t == 'table' and getmetatable(o) or t
+  return t == 'table' and getmt(o) or t
@@ -76 +77 @@
-      or ty == 'userdata' and M.tyName(getmetatable(o), 'userdata')
+      or ty == 'userdata' and M.tyName(getmt(o), 'userdata')
@@ -82 +83 @@
-  local m = getmetatable(obj)
+  local m = getmt(obj)
@@ -85 +86 @@
-M.metaget = function(t, k)   return rawget(getmetatable(t), k) end
+M.metaget = function(t, k)   return rawget(getmt(t), k) end
@@ -140,0 +142,17 @@
+--- The default __fmt method.
+M.fmt = function(self, f)
+  local mt = getmt(self)
+  local fields = rawget(mt, '__fields')
+  local multi = #fields > 1 -- use multiple lines
+  f:write(rawget(mt, '__name'));
+  f:level(1);  f:write(multi and f.tableStart or '{')
+  f:keyvals(self, fields)
+  f:level(-1); f:write(multi and f.tableEnd or '}')
+end
+
+--- The default __tostring method.
+M.tostring = function(self)
+  local mt = getmt(self)
+  return sfmt('%s@%p', rawget(mt, '__name'), self)
+end
+
@@ -150 +168 @@
-    local mt = getmetatable(a)
+    local mt = getmt(a)
@@ -187 +205 @@
-    M.indexError(getmetatable(r), k, 3)
+    M.indexError(getmt(r), k, 3)
@@ -243 +261,3 @@
-  R.__index  = rawget(R, '__index') or R
+  R.__fmt      = rawget(R, '__fmt')      or M.fmt
+  R.__tostring = rawget(R, '__tostring') or M.tostring
+  R.__index    = rawget(R, '__index')    or R
@@ -245,3 +265,3 @@
-    __name='Ty<'..R.__name..'>',
-    __newindex=mod and mod.__newindex,
-    __tostring=function() return R.__name end,
+    __name     = 'Ty<'..R.__name..'>',
+    __newindex = mod and mod.__newindex,
+    __tostring = function() return R.__name end,
@@ -268 +288 @@
-  local mt = getmetatable(t)
+  local mt = getmt(t)
@@ -272 +291,0 @@
-
@@ -276 +295 @@
-  local E, mt = update({}, Type), update({}, getmetatable(Type))
+  local E, mt = update({}, Type), update({}, getmt(Type))
@@ -407 +426 @@
-getmetatable(M).__call = function(T, name) return M.record(name) end
+getmt(M).__call = function(T, name) return M.record(name) end

--- lib/pegl/pegl.lua
+++ lib/pegl/pegl.lua
@@ -12,0 +13 @@
+local concat, unpack = table.concat, table.unpack
@@ -15 +15,0 @@
-local pushfmt = ds.pushfmt
@@ -38,2 +38,2 @@
-  push(f, 'Tkn'); if t.kind then pushfmt(f, '<%s>', t.kind) end
-  pushfmt(f, '(%s.%s %s.%s)', t:span())
+  f:write'Tkn'; if t.kind then f:write(sfmt('<%s>', t.kind)) end
+  f:write(sfmt('(%s.%s %s.%s)', t:span()))
@@ -114,2 +114,2 @@
-  if type(s) == 'string'   then return pushfmt(f, "%q", s) end
-  if type(s) == 'function' then return push(f, fmt(s)) end
+  if type(s) == 'string'   then return f(s) end
+  if type(s) == 'function' then return f(s) end
@@ -117,2 +117 @@
-    push(f, '<'); push(f, s.name or s.kind); push(f, '>')
-    return
+    return f:write('<', s.name or s.kind, '>')
@@ -120 +119 @@
-  if ty(s) ~= 'table' then push(f, mty.tyName(ty(s))) end
+  if ty(s) ~= 'table' then f:write(mty.tyName(ty(s))) end
@@ -122 +121 @@
-  f:level(1); push(f, f.tableStart)
+  f:level(1); f:write(f.tableStart)
@@ -124 +123 @@
-    f(sub); if i < #s then push(f, ' ') end
+    f(sub); if i < #s then f:write' ' end
@@ -126 +125 @@
-  f:level(-1); push(f, f.tableEnd)
+  f:level(-1); f:write(f.tableEnd)
@@ -131 +130 @@
-  return table.concat(fmt)
+  return concat(fmt)
@@ -469,2 +468,2 @@
-    local eStr = table.concat(p.root.newFmt()(expect))
-    local rStr = table.concat(p.root.newFmt()(result))
+    local eStr = concat(p.root.newFmt()(expect))
+    local rStr = concat(p.root.newFmt()(result))
@@ -613,2 +612,2 @@
-  pushfmt(b, '%s(%s.%s)', table.unpack(p.stackLast))
-  return table.concat(b, '\n  ')
+  push(b, sfmt('%s(%s.%s)', unpack(p.stackLast)))
+  return concat(b, '\n  ')
@@ -701 +700 @@
-  push(f, name..sfmt('{%s%s%s}',
+  f:write(name..sfmt('{%s%s%s}',
@@ -704 +703,2 @@
-))end
+  ))
+end
@@ -706,3 +706,3 @@
-  EOF   = function(f, t) push(f, 'EOF')   end,
-  EMPTY = function(f, t) push(f, 'EMPTY') end,
-  name  = function(f, t) pushfmt(f, 'N%q', t[1]) end,
+  EOF   = function(f, t) f:write'EOF'   end,
+  EMPTY = function(f, t) f:write'EMPTY' end,
+  name  = function(f, t) f:write(sfmt('N%q', t[1])) end,
@@ -717 +717 @@
-  if M.isKeyword(t) then pushfmt(f, 'KW%q', t[1]); return end
+  if M.isKeyword(t) then f:write(sfmt('KW%q', t[1])); return end
