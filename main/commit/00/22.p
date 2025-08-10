minor fixes, bug still there
--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -393,2 +393,2 @@
-  local i = #r + 1
-  for k=1,#l do rset(r,i, lget(l,k)); i = i + 1 end
+  local rlen = #r
+  for k=1,#l do rset(r, rlen+k, lget(l,k)) end

--- lib/lines/test_buffer.lua
+++ lib/lines/test_buffer.lua
@@ -106,6 +105,0 @@
-  -- FIXME: this doesn't work
-  -- require'ds.testing'.testInset(
-  --   function(t) return Buffer.new(t) end,
-  --   function(a, b) T.eq(a.dat, b.dat) end
-  -- )
-
