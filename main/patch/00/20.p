add color to lua types
--- .pvcpaths
+++ .pvcpaths
@@ -102,0 +103 @@
+lib/fmt/show.lua

--- lib/fmt/fmt.lua
+++ lib/fmt/fmt.lua
@@ -142,4 +142,5 @@
-    f:write'['
-    if type(k) == 'string' then f:write(sfmt('%q', k)) else f(k) end
-    f:write']'
-  else f:write(k) end
+    f:styled('meta', '[')
+    if type(k) == 'string' then f:styled('string', sfmt('%q', k))
+    else                        f(k) end
+    f:styled('meta', ']', '')
+  else f:styled('key', k, '') end
@@ -149 +150,3 @@
-Fmt['nil']      = function(f)     f:write'nil'              end
+Fmt['nil']      = function(f)
+  f:styled('literal', 'nil', '')
+end
@@ -151 +154,3 @@
-Fmt.boolean     = function(f, b)  f:write(tostring(b))      end
+Fmt.boolean     = function(f, b)
+  f:styled('literal', tostring(b), '')
+end
@@ -153 +158,3 @@
-Fmt.number      = function(f, n)  f:write(sfmt(f.numfmt, n)) end
+Fmt.number      = function(f, n)
+  f:styled('number', sfmt(f.numfmt, n), '')
+end
@@ -155 +162,3 @@
-Fmt.string      = function(f, s)  f:write(sfmt(f.strfmt, s)) end
+Fmt.string      = function(f, s)
+  f:styled('string', sfmt(f.strfmt, s), '')
+end
@@ -157 +166,3 @@
-Fmt.thread      = function(f, th) f:write(tostring(th))      end
+Fmt.thread      = function(f, th)
+  f:styled('literal', tostring(th), '')
+end
@@ -159 +170,3 @@
-Fmt.userdata    = function(f, ud) f:write(tostring(ud))      end
+Fmt.userdata    = function(f, ud)
+  f:styled('literal', tostring(ud), '')
+end
@@ -161 +174,3 @@
-Fmt['function'] = function(f, fn) f:write(sfmt('fn%q[%s]', mty.fninfo(fn))) end
+Fmt['function'] = function(f, fn)
+  f:styled('path', sfmt('fn%q[%s]', mty.fninfo(fn)), '')
+end
@@ -176 +191 @@
-    f:tableKey(k); f:write(kset);
+    f:tableKey(k); f:write(kset)
@@ -178 +193 @@
-    if rawequal(t, v) then f:write'self'
+    if rawequal(t, v) then f:styled('keyword', 'self', '')
@@ -180 +195 @@
-    if i < klen then f:write(kend) end
+    if i < klen then f:styled('meta', kend, '') end

--- ui/asciicolor/asciicolor/style.lua
+++ ui/asciicolor/asciicolor/style.lua
@@ -43 +43 @@
-  var           = 'g', -- variable name
+  var           = 'G', -- variable name
@@ -45 +45 @@
-  symbol        = 'r', -- = + . etc
+  symbol        = 't', -- = + . { } etc
@@ -50,4 +50,5 @@
-  string        = 'm', -- content of string inside quotes
-  char          = 'm', -- single character: 'c'
-  number        = 'm', -- float or integer: 0 1.0 0xFF etc
-  literal       = 'm', -- other literal: null, bool, date, regex, etc
+  string        = 'g', -- content of string inside quotes
+  key           = 'T', -- key in map/struct/etc
+  char          = 'g', -- single character: 'c'
+  number        = 'N', -- float or integer: 0 1.0 0xFF etc
+  literal       = 'h', -- other literal: null, bool, date, regex, etc
@@ -55 +56 @@
-  dispatch      = 'c', -- object.method called: obj.foo(), obj:foo()
+  dispatch      = 'C', -- object.method called: obj.foo(), obj:foo()

--- /dev/null
+++ lib/fmt/show.lua
@@ -0,0 +1,9 @@
+MAIN={}; require'civ'.setupFmt()
+
+io.fmt {
+  string='this is a string',
+  int = 442,
+  bool=true,
+  fn=function() end,
+  [42]='the answer',
+}
