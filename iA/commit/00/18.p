going to work on ele instead of iA for now
--- cmd/ele/ARCH.md
+++ cmd/ele/ARCH.md
@@ -47 +47,2 @@
-schedule coroutines which call `evsend(newEvent)` asynchronously.
+schedule coroutines which themselves call `evsend(newEvent)` asynchronously
+in order ot update the main loop.

--- cmd/ele/README.cxt
+++ cmd/ele/README.cxt
@@ -1 +1 @@
-Ele: Extendable Lua Editor
+[{h1}Ele: Extendable Lua Editor]
@@ -9 +9 @@
-* Enjoyable and extendable for developers to fit their workflow
+* Enjoyable and extendable for developers to fit their workflow [+
@@ -11,0 +12 @@
+]
@@ -17 +18,3 @@
-* focusing on performance against the other goals
+* Focusing on performance against the other goals. It should be fast enough
+  to be an editor and should not choke on large files -- otherwise performance
+  is not important.
@@ -20 +23 @@
-See [/ARCH.md] for the current architecture.
+[{h1}Architecture]

--- cmd/ele/ele.lua
+++ cmd/ele/ele.lua
@@ -5,0 +6 @@
+local shim = require'shim'
@@ -7 +7,0 @@
-local log = require'ds.log'
@@ -8,0 +9 @@
+local log = require'ds.log'

--- os/iA/iA.lua
+++ os/iA/iA.lua
@@ -286,0 +287,11 @@
+M.CmpOp = mty.enum'CmpOp' {
+  ['=='] = 1, ['~='] = 2,
+  ['<'] = 3,  ['<='] = 4,
+  ['>'] = 5,  ['>='] = 6,
+}
+
+--- Cmp operation between left and right
+M.Cmp = mty'Cmp' {
+  'op [CmpOp]', 'l: left expr', 'r: right expr',
+}
+
@@ -299 +310 @@
-  'else [list[expr1]]'
+  'else_ [list[expr1]]'
@@ -308,2 +319 @@
-M.IfGoto = mty'IfGoto' {
-  'cond [list[expr1]]',
+M.Goto = mty'Goto' {

--- os/iA/iA/parse.lua
+++ os/iA/iA/parse.lua
@@ -107,0 +108,10 @@
+M.cmpOp = pegl.Key{{
+  ['='] = {['=']=true}, ['~'] = {['='] = true}, -- == and ~=
+  ['<']={true, ['=']=true},                     -- <  and <=
+  ['>']={true, ['=']=true},                     -- >  and >=
+}}
+M.cmp = {kind='cmp', UNPIN, M.rvalue, M.cmpOp, PIN, M.rvalue}
+M.tableToIa.eq = function(tok)
+  return iA.Cmp{l=M.toIa(tok[1]), op=tok[2][1], r=M.toIa(tok[3])}
+end
+
@@ -120 +130,4 @@
-M.eq = {kind='eq', UNPIN, M.lvalue, M.eqOp, PIN, M.rvalue}
+M.eq = {kind='eq',
+  UNPIN, M.lvalue, Not{M.cmpOp},
+  M.eqOp, PIN, M.rvalue
+}
@@ -156,7 +168,0 @@
-M.cmpOp = pegl.Key{{
-  '==', '~=',
-  '<',  '<=',
-  '>',  '>=',
-}}
-M.cmp = {UNPIN, M.lvalue, M.cmpOp, PIN, M.lvalue}
-
@@ -164 +170,2 @@
-  UNPIN, M.lvalue, Many{',', M.lvalue}, '=', M.rvalue,
+  UNPIN, M.lvalue, Not{M.cmpOp}, Many{',', M.lvalue},
+  '=', PIN, M.rvalue,
@@ -175 +182 @@
-  return iA.IfGoto{to=assert(t[2][1])}
+  return iA.Goto{to=assert(t[2][1])}
@@ -194,0 +202 @@
+  return if_
@@ -199 +207,2 @@
-  M.assign, M.eq, M.lvalue,
+  M.cmp, M.assign, M.eq,
+  M.lvalue,

--- os/iA/test.lua
+++ os/iA/test.lua
@@ -43,0 +44,7 @@
+T.Cmp = function()
+  local tok = assertParse{dat='a==3', spec=piA.stmt,
+    expect={kind='cmp', N'a', KW'==', NUM{3},
+    },
+  }
+end
+
@@ -65 +72 @@
-  T.eq(iA.IfGoto{to='loc'}, piA.toIa(tok))
+  T.eq(iA.Goto{to='loc'}, piA.toIa(tok))
@@ -75 +82,11 @@
-  -- T.eq(iA.IfGoto{to='loc'}, piA.toIa(tok))
+  T.eq(iA.If{
+    iA.CondBlock{cond={iA.literal(1)}, iA.Goto{to="loc"}},
+  }, piA.toIa(tok))
+
+  -- tok = assertParse{parseOnly=true, spec=piA.stmt,
+  --   dat=[[
+  --     if false    do goto loc
+  --     elif a == 3 do a += 3
+  --     else           a = 0  end
+  --   ]]
+  -- }
