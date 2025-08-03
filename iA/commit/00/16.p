flush out parser
--- os/iA/iA.lua
+++ os/iA/iA.lua
@@ -279,2 +279,2 @@
---- a, b, c = myfn()
---- * to is the right side of the fn.
+--- [$a, b, c = myfn()] where: [+
+--- * [$to] is the right side of the fn.
@@ -281,0 +282 @@
+--- ]
@@ -283 +284 @@
-  'to: expr1',
+  'eq: expr1',
@@ -307 +308 @@
-  'to   [Loc]',
+  'to   [str]',

--- os/iA/iA/parse.lua
+++ os/iA/iA/parse.lua
@@ -95 +94,0 @@
---- An expr1 value
@@ -121 +120 @@
-M.eq = {kind='eq', M.lvalue, M.eqOp, M.rvalue}
+M.eq = {kind='eq', UNPIN, M.lvalue, M.eqOp, PIN, M.rvalue}
@@ -133,2 +132,2 @@
---- eXecute a function, using only first return value.
-M.fn1    = {UNPIN, M.name, M.fnArgs}
+--- eXecute a function
+M.fncall    = {UNPIN, M.name, M.fnArgs}
@@ -140 +139 @@
-  M.fn1, M.eq,
+  M.fncall, M.eq,
@@ -150,0 +150,5 @@
+M.tableToIa['block'] = function(t)
+  local b = {}
+  for i, stmt in ipairs(t) do b[i] = M.toIa(stmt) end
+  return b
+end
@@ -159 +163,9 @@
-M.fnMulti = {M.lvalue, Many{min=1, ',', PIN, M.lvalue}, '=', M.fn1}
+M.assign = {kind='assign',
+  UNPIN, M.lvalue, Many{',', M.lvalue}, '=', M.rvalue,
+}
+M.tableToIa['assign'] = function(t)
+  local a = iA.Assign{eq=M.toIa(t[#t])}
+  a[1] = M.toIa(t[1])
+  for i=2,#t-2 do a[i] = M.toIa(t[i][2]) end
+  return a
+end
@@ -161,5 +173,7 @@
-M.loc    = Pat{common.nameStr, kind='loc'}
-M.setloc = {'::', PIN, M.loc, '::'}
-M.goto_  = {'goto', PIN, M.loc}
-M.if_ = {
-  'if', PIN, M.block,
+M.goto_  = {kind='goto', UNPIN, 'goto', PIN, M.name}
+M.tableToIa['goto'] = function(t)
+  return iA.IfGoto{to=assert(t[2][1])}
+end
+
+M.if_ = {kind='if',
+  UNPIN, 'if', PIN, M.block,
@@ -167,4 +181,5 @@
-    M.goto_, {
-    Many {'elif', PIN, M.block},
-    Maybe{'else', PIN, M.block},
-    'end',
+    M.goto_,
+    {'do', PIN, M.block,
+      Many {UNPIN, 'elif', PIN, M.block, 'do', M.block},
+      Maybe{UNPIN, 'else', PIN, M.block},
+      'end',
@@ -173,0 +189,9 @@
+M.tableToIa['if'] = function(t)
+  local cond = M.toIa(t[2])
+  if t[3].kind == 'goto' then
+    local g = M.toIa(t[3]); g.cond = cond
+    return g
+  end
+  cond = iA.CondBlock {cond=cond}
+  for i, stmt in ipairs(t[4]) do cond[i] = M.toIa(stmt) end
+end
@@ -176,2 +200,2 @@
-  M.loc, M.goto_, M.if_,
-  M.fnMulti, M.lvalue,
+  M.goto_, M.if_,
+  M.assign, M.eq, M.lvalue,
@@ -180 +203,0 @@
-

--- os/iA/test.lua
+++ os/iA/test.lua
@@ -16 +16 @@
-T.parseSmall = function()
+T.expr1 = function()
@@ -43,0 +44,30 @@
+T.Block = function()
+  local tok = assertParse{dat='true false a=2',
+    spec=piA.block, expect={kind='block',
+      KW'true', KW'false', {kind='assign',
+        N'a', KW'=', NUM{2}
+      }
+    },
+  }
+  T.eq({
+    iA.literal(1),
+    iA.literal(0),
+    iA.Assign{iA.Var{name='a'}, eq=iA.literal(2)},
+  }, piA.toIa(tok))
+end
+
+T.IfGoto = function()
+  local tok = assertParse{dat='goto loc', spec=piA.stmt,
+    expect={kind='goto',
+      KW'goto', N'loc',
+    },
+  }
+  T.eq(iA.IfGoto{to='loc'}, piA.toIa(tok))
+
+  -- tok = assertParse{dat='if true goto loc', spec=piA.stmt,
+  --   expect={kind='if',
+  --     KW'if',
+  --   },
+  -- }
+  -- T.eq(iA.IfGoto{to='loc'}, piA.toIa(tok))
+end
