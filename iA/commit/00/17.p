if syntax
--- lib/pegl/pegl.lua
+++ lib/pegl/pegl.lua
@@ -477 +477 @@
-      civtest.showDiff(io.fmt, eStr, rStr)
+      T.showDiff(io.fmt, eStr, rStr)

--- os/iA/iA.lua
+++ os/iA/iA.lua
@@ -288,0 +289,2 @@
+---
+--- Note: a normal block is just a list (no type)

--- os/iA/iA/parse.lua
+++ os/iA/iA/parse.lua
@@ -179,9 +179,4 @@
-  UNPIN, 'if', PIN, M.block,
-  Or{
-    M.goto_,
-    {'do', PIN, M.block,
-      Many {UNPIN, 'elif', PIN, M.block, 'do', M.block},
-      Maybe{UNPIN, 'else', PIN, M.block},
-      'end',
-    }
-  },
+  UNPIN,       'if',   PIN, M.block, 'do', M.block,
+  Many {UNPIN, 'elif', PIN, M.block, 'do', M.block},
+  Maybe{UNPIN, 'else', PIN, M.block},
+  'end',
@@ -189,7 +184,3 @@
-M.tableToIa['if'] = function(t)
-  local cond = M.toIa(t[2])
-  if t[3].kind == 'goto' then
-    local g = M.toIa(t[3]); g.cond = cond
-    return g
-  end
-  cond = iA.CondBlock {cond=cond}
+
+local condBlockToIa = function(t)
+  local cond = iA.CondBlock{cond=M.toIa(t[2])}
@@ -196,0 +188,7 @@
+  return cond
+end
+M.tableToIa['if'] = function(t)
+  local if_ = iA.If{condBlockToIa(t)}
+  for i=5,#t-2 do push(if_, condBlockToIa(t[i])) end
+  local elseTok = t[#t-1]
+  if notEmpty(elseTok) then if_.else_ = M.toIa(elseTok) end

--- os/iA/test.lua
+++ os/iA/test.lua
@@ -59 +59 @@
-T.IfGoto = function()
+T.If = function()
@@ -67,5 +67,8 @@
-  -- tok = assertParse{dat='if true goto loc', spec=piA.stmt,
-  --   expect={kind='if',
-  --     KW'if',
-  --   },
-  -- }
+  tok = assertParse{dat='if true do goto loc end', spec=piA.stmt,
+    expect={kind='if',
+      KW'if', {kind='block', KW'true'}, KW'do',
+      {kind='block',
+        {kind='goto', KW'goto', N'loc'},
+      }, EMPTY, KW'end'
+    },
+  }
