flush out expresion types
--- os/iA/iA.lua
+++ os/iA/iA.lua
@@ -278,11 +278,6 @@
-M.StmtKind = mty'StmtKind' {
-  --- expression with single return
-  EXPR1 = 1,
-  --- Multi-assignment function call
-  MULTI = 2,
-  --- if/elif/else statement
-  IF = 3,
-  --- switch/case
-  SWITCH = 4,
-  --- loop
-  LOOP = 5,
+--- Multi assignment statement.
+--- a, b, c = myfn()
+--- * to is the right side of the fn.
+--- * values are stored in assign list.
+M.Assign = mty'Assign' {
+  'to: expr1',
@@ -290,0 +286,38 @@
+--- A block of statements gated by a condition,
+--- used in If and Loop.
+M.CondBlock = mty'CondBlock' {
+  'cond [list[expr1]]: the final must be cmp',
+}
+
+--- if-elif-else statement (not if-goto)
+--- The list is a series of CondBlocks with an optional
+--- else block.
+M.If = mty'If' {
+  'else [list[expr1]]'
+}
+
+--- A local #loc location statement.
+M.Loc = mty'Loc' {
+  'name [string]',
+}
+
+--- if cond goto to
+M.IfGoto = mty'IfGoto' {
+  'cond [list[expr1]]',
+  'to   [Loc]',
+}
+
+--- switch of do case 0 do ... default ... end
+--- Type is map[int, list[stmt]]
+--- 0 - highest MUST be filled out.
+M.Switch = mty'Switch' {
+  'of [list[expr1]]: last expr1 is jmp',
+  'default list[stmt]',
+}
+
+--- while cond [atend] do block end
+--- The block is stored in the While list.
+M.While = mty'While' {
+  'cond [list[expr1]]',
+  'atend [list[expr1]]',
+}

--- os/iA/iA/parse.lua
+++ os/iA/iA/parse.lua
@@ -157 +157 @@
-M.cmp = {M.lvalue, M.cmpOp, PIN, M.lvalue}
+M.cmp = {UNPIN, M.lvalue, M.cmpOp, PIN, M.lvalue}
