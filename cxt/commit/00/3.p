need to remove cxt.Writer
--- cmd/cxt/cxt.lua
+++ cmd/cxt/cxt.lua
@@ -474 +474 @@
--- TODO: remove this
+-- TODO: remove this, it's awful
@@ -478 +478 @@
-  elseif w.to.write then w.to:write(line)
+  elseif w.to.write then w.to:write(line, '\n')

--- cmd/cxt/test.lua
+++ cmd/cxt/test.lua
@@ -313,0 +314,14 @@
+
+  html.assertHtml([[
+Code block: [{## lang=sh}
+echo "foo bar"  # does baz
+echo "blah blah"
+]##
+end of code block.
+]],
+  {
+    "Code block: <code class=\"block\">echo \"foo bar\"  # does baz",
+    "echo \"blah blah\"</code>",
+    "end of code block."
+  }
+)
@@ -322 +336,3 @@
-  T.eq(W{'code not code', ''}, w)
+  T.eq(
+    setmetatable(W{'code not code', '', ''}, nil),
+    setmetatable(w, nil))
@@ -324 +340 @@
-  ds.clear(w)
+  local w = W{}
