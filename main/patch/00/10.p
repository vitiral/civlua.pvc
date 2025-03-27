ported netbsd
--- .pvcpaths
+++ .pvcpaths
@@ -65,5 +64,0 @@
-lib/civdb/PKG.lua
-lib/civdb/README.cxt
-lib/civdb/civdb.lua
-lib/civdb/civdb/HashIdx.lua
-lib/civdb/test.lua

--- Makefile
+++ Makefile
@@ -3 +3,2 @@
-LUA = lua -e "require'pkglib'()"
+LUA_EX = $(LUA_VERSION)
+LUA = $(LUA_EX) -e "require'pkglib'()"
@@ -9,0 +11 @@
+	which $(LUA_EX)
@@ -17 +19 @@
-	# $(PRETEST) $(LUA) cmd/ele/demo_term.lua
+	# $(PRETEST) $(LUA) cmd/ele/tests/test_term.lua
@@ -34 +35,0 @@
-	cd lib/smol && make test  LUA_VERSION=$(LUA_VERSION)
@@ -35,0 +37 @@
+	# cd lib/smol && make test  LUA_VERSION=$(LUA_VERSION)

--- PKG.lua
+++ PKG.lua
@@ -28 +27,0 @@
-  'lib/civdb',   -- minimalist CRUD database

--- README.cxt
+++ README.cxt
@@ -18 +18,2 @@
-make build LUA_VERSION=lua5.3  # or your lua version
+
+make build LUA_VERSION=lua5.3

--- cmd/cxt/cxt.lua
+++ cmd/cxt/cxt.lua
@@ -10 +10 @@
-local civtest = require'civtest'
+local T = require'civtest'
@@ -439 +439 @@
-  civtest.assertEq(expected, node)
+  T.eq(expected, node)

--- cmd/cxt/cxt/html.lua
+++ cmd/cxt/cxt/html.lua
@@ -11 +11 @@
-local civtest = require'civtest'
+local T = require'civtest'
@@ -226 +226 @@
-  civtest.assertEq(expectedHtml, w.to)
+  T.eq(expectedHtml, w.to)

--- cmd/cxt/test.lua
+++ cmd/cxt/test.lua
@@ -18,2 +18 @@
-
-local test, assertEq; ds.auto'civtest'
+local T = require'civtest'
@@ -27,3 +26,3 @@
-test('escape', function()
-  assertEq('foo \\[bar\\] \\\\ baz', M.escape'foo [bar] \\ baz')
-end)
+T.escape = function()
+  T.eq('foo \\[bar\\] \\\\ baz', M.escape'foo [bar] \\ baz')
+end
@@ -31 +30 @@
-test('code', function()
+T.code = function()
@@ -33,4 +32,4 @@
-  assertEq(false, hub'abc')
-  assertEq(false, hub'[[a]b]')
-  assertEq(true, hub'['); assertEq(true, hub']')
-  assertEq(true, hub'[]]')
+  T.eq(false, hub'abc')
+  T.eq(false, hub'[[a]b]')
+  T.eq(true, hub'['); T.eq(true, hub']')
+  T.eq(true, hub'[]]')
@@ -39,7 +38,7 @@
-  assertEq(nil, hashes'foo bar')
-  assertEq(0,   hashes'foo]bar')
-  assertEq(1,   hashes'[###foo]#bar')
-
-  assertEq('[$some [code]]', M.code'some [code]')
-  assertEq('[#some [code]#', M.code'some [code')
-end)
+  T.eq(nil, hashes'foo bar')
+  T.eq(0,   hashes'foo]bar')
+  T.eq(1,   hashes'[###foo]#bar')
+
+  T.eq('[$some [code]]', M.code'some [code]')
+  T.eq('[#some [code]#', M.code'some [code')
+end
@@ -47 +46 @@
-test('simple', function()
+T.simple = function()
@@ -80 +79 @@
-end)
+end
@@ -82 +81 @@
-test('block', function()
+T.block = function()
@@ -95 +94 @@
-end)
+end
@@ -97 +96 @@
-test('attrs', function()
+T.attrs = function()
@@ -116 +115 @@
-end)
+end
@@ -118 +117 @@
-test('quote', function()
+T.quote = function()
@@ -136 +135 @@
-end)
+end
@@ -138 +137 @@
-test('list', function()
+T.list = function()
@@ -164 +163 @@
-end)
+end
@@ -166 +165 @@
-test('nested', function()
+T.nested = function()
@@ -188 +187 @@
-end)
+end
@@ -191 +190 @@
-test('table', function()
+T.table = function()
@@ -228 +227 @@
-end)
+end
@@ -230 +229 @@
-test('named', function()
+T.named = function()
@@ -253 +252 @@
-end)
+end
@@ -255 +254 @@
-test('html', function()
+T.html = function()
@@ -315 +314 @@
-end)
+end
@@ -317 +316 @@
-test('term', function()
+T.term = function()
@@ -323 +322 @@
-  assertEq(W{'code not code', ''}, w)
+  T.eq(W{'code not code', ''}, w)
@@ -357 +356 @@
-  assertEq(expect, table.concat(w, '\n'))
+  T.eq(expect, table.concat(w, '\n'))
@@ -375,2 +374,2 @@
-  assertEq(expect, table.concat(w, '\n'))
-end)
+  T.eq(expect, table.concat(w, '\n'))
+end
@@ -379 +378 @@
-test('doc', function()
+T.doc = function()
@@ -382 +381 @@
-end)
+end

--- cmd/doc/lua.lua
+++ cmd/doc/lua.lua
@@ -127,2 +127,2 @@
---- assertEq({2, 4},       {find('%w+', ' bob is nice')})
---- assertEq({2, 7, 'is'}, {find(' bob is nice', '%w+ (%w+)')})
+--- T.eq({2, 4},       {find('%w+', ' bob is nice')})
+--- T.eq({2, 7, 'is'}, {find(' bob is nice', '%w+ (%w+)')})
@@ -217,4 +217,4 @@
----   assertEq('age: 42',    sfmt('%s: %i',   'age', 42))
----   assertEq('age:    42', sfmt('%s: %5i',  'age', 42))
----   assertEq('age: 42,     sfmt('%s: %-5i', 'age', 42))
----   assertEq('age: 00042', sfmt('%s: %05i', 'age', 42)
+---   T.eq('age: 42',    sfmt('%s: %i',   'age', 42))
+---   T.eq('age:    42', sfmt('%s: %5i',  'age', 42))
+---   T.eq('age: 42,     sfmt('%s: %-5i', 'age', 42))
+---   T.eq('age: 00042', sfmt('%s: %05i', 'age', 42)
@@ -226 +226 @@
---- Example: [$assertEq({98, 99}, {string.byte('abcd', 2, 3)})]
+--- Example: [$T.eq({98, 99}, {string.byte('abcd', 2, 3)})]
@@ -254 +254 @@
---- assertEq(string.pack('>i2i2', 0x1234, 0x5678) == '\x12\x34\x56\x78')]
+--- T.eq(string.pack('>i2i2', 0x1234, 0x5678) == '\x12\x34\x56\x78')]
@@ -279,4 +279,4 @@
---- assertEq('first', t[1])
---- assertEq('third', t[3])
---- assertEq('hi',    t.key)
---- assertEq(#t, 3) -- the length of the "list" part
+--- T.eq('first', t[1])
+--- T.eq('third', t[3])
+--- T.eq('hi',    t.key)
+--- T.eq(#t, 3) -- the length of the "list" part
@@ -300,2 +300,2 @@
---- assertEq(1..' = '..3, concat{1, ' = ', 3})
---- assertEq('1, 2, 3',   concat({1, 2, 3}, ', ')
+--- T.eq(1..' = '..3, concat{1, ' = ', 3})
+--- T.eq('1, 2, 3',   concat({1, 2, 3}, ', ')
@@ -326 +326 @@
----   assertEq({'b', 'c', 'd', 'e'}, t)
+---   T.eq({'b', 'c', 'd', 'e'}, t)

--- cmd/doc/test.lua
+++ cmd/doc/test.lua
@@ -23,3 +23,3 @@
-T.assertEq(mod.__newindex, getmetatable(M.Example).__newindex)
-T.assertEq('doc_test.Example',    PKG_NAMES[M.Example])
-T.assertEq('cmd/doc/test.lua:11', PKG_LOC[M.Example])
+T.eq(mod.__newindex, getmetatable(M.Example).__newindex)
+T.eq('doc_test.Example',    PKG_NAMES[M.Example])
+T.eq('cmd/doc/test.lua:11', PKG_LOC[M.Example])
@@ -28 +28 @@
-T.assertEq('blah blah foo/bar.baz:000 blah blah',
+T.eq('blah blah foo/bar.baz:000 blah blah',
@@ -30 +30 @@
-T.assertEq('a b c/cmd/doc/test.lua:000 def',
+T.eq('a b c/cmd/doc/test.lua:000 def',
@@ -41 +41 @@
-T.test('pairs', function()
+T.pairs = function()
@@ -62 +62 @@
-end)
+end
@@ -64 +64 @@
-T.test('findcode', function()
+T.findcode = function()
@@ -66,2 +66,2 @@
-  T.assertEq({"--- document a fn", "--- another line"}, com)
-  T.assertEq({"M.exampleFn = function() return end"}, code)
+  T.eq({"--- document a fn", "--- another line"}, com)
+  T.eq({"M.exampleFn = function() return end"}, code)
@@ -70,6 +70,6 @@
-  T.assertEq('--- document a metaty', com[1])
-  T.assertEq('--- another line',      com[2])
-  T.assertEq([[M.Example  = require'metaty''Example'{]], code[1])
-  T.assertEq([[  'a [int]', a=4,]], code[2])
-  T.assertEq('}', code[3])
-end)
+  T.eq('--- document a metaty', com[1])
+  T.eq('--- another line',      com[2])
+  T.eq([[M.Example  = require'metaty''Example'{]], code[1])
+  T.eq([[  'a [int]', a=4,]], code[2])
+  T.eq('}', code[3])
+end
@@ -78 +78 @@
-T.test('doc fn', function()
+T.doc_fn = function()
@@ -80 +80 @@
-  T.assertEq(
+  T.eq(
@@ -85,2 +85,2 @@
-  T.assertEq('Function', res.docTy)
-  T.assertEq(
+  T.eq('Function', res.docTy)
+  T.eq(
@@ -91 +91 @@
-end)
+end
@@ -94 +94 @@
-T.test('doc ty', function()
+T.doc_ty = function()
@@ -96 +96 @@
-  T.assertEq(
+  T.eq(
@@ -101 +101 @@
-  T.assertEq(
+  T.eq(
@@ -123 +123 @@
-end)
+end
@@ -125 +125 @@
-T.test('doc module', function()
+T.doc_module = function()
@@ -130 +130 @@
-  T.assertEq({
+  T.eq({
@@ -140,2 +140,2 @@
-  T.assertEq(cxt, res)
-end)
+  T.eq(cxt, res)
+end

--- cmd/ele/tests/test_actions.lua
+++ cmd/ele/tests/test_actions.lua
@@ -22 +22 @@
-T.test('move', function()
+T.move = function()
@@ -26 +26 @@
-    T.assertEq({l, c}, {e.l, e.c})
+    T.eq({l, c}, {e.l, e.c})
@@ -29 +29 @@
-  T.assertEq({1, 1}, {e.l, e.c})
+  T.eq({1, 1}, {e.l, e.c})
@@ -50 +50 @@
-end)
+end
@@ -52 +52 @@
-T.test('remove', function()
+T.remove = function()
@@ -56 +56 @@
-    T.assertEq({l, c}, {e.l, e.c})
+    T.eq({l, c}, {e.l, e.c})
@@ -59 +59 @@
-  T.assertEq({1, 1}, {e.l, e.c})
+  T.eq({1, 1}, {e.l, e.c})
@@ -61,2 +61,2 @@
-    T.assertEq('3 5 7 9', b[1])
-    T.assertEq('  3 5', b[2])
+    T.eq('3 5 7 9', b[1])
+    T.eq('  3 5', b[2])
@@ -64 +64 @@
-    T.assertEq('7 9', b[1])
+    T.eq('7 9', b[1])
@@ -66 +66 @@
-    T.assertEq('1 3 5 7 9\n', fmt(b.dat))
+    T.eq('1 3 5 7 9\n', fmt(b.dat))
@@ -68 +68 @@
-    T.assertEq('1  5 7 9\n', fmt(b.dat))
+    T.eq('1  5 7 9\n', fmt(b.dat))
@@ -70,2 +70,2 @@
-    T.assertEq('1  7 9\n', fmt(b.dat))
-end)
+    T.eq('1  7 9\n', fmt(b.dat))
+end
@@ -73 +73 @@
-T.test('insert', function()
+T.insert = function()
@@ -77 +77 @@
-    T.assertEq({l, c}, {e.l, e.c})
+    T.eq({l, c}, {e.l, e.c})
@@ -79 +79 @@
-  T.assertEq({1, 1}, {e.l, e.c})
+  T.eq({1, 1}, {e.l, e.c})
@@ -81,2 +81,2 @@
-    T.assertEq('4 5 1 2 3', b[1])
-    T.assertEq('4 5 6',     b[2])
+    T.eq('4 5 1 2 3', b[1])
+    T.eq('4 5 6',     b[2])
@@ -84,2 +84,2 @@
-    T.assertEq('4 5 6 7\n1 2 3\n4 5 6', fmt(b.dat))
-end)
+    T.eq('4 5 6 7\n1 2 3\n4 5 6', fmt(b.dat))
+end

--- cmd/ele/tests/test_bindings.lua
+++ cmd/ele/tests/test_bindings.lua
@@ -21,2 +21,2 @@
-T.test('chords', function()
-  T.assertEq({'space', 'a', 'b'}, M.chord'space a b')
+T.chords = function()
+  T.eq({'space', 'a', 'b'}, M.chord'space a b')
@@ -24,3 +24,3 @@
-  T.assertEq('a b', M.chordstr{'a', 'space', 'b'})
-  T.assertEq('x',   M.chordstr{'x'})
-end)
+  T.eq('a b', M.chordstr{'a', 'space', 'b'})
+  T.eq('x',   M.chordstr{'x'})
+end
@@ -36 +36 @@
-T.test('bindings', function()
+T.bindings = function()
@@ -40 +40 @@
-end)
+end
@@ -49,3 +49,3 @@
-  if expectKeys == false then T.assertEq(nil, data.ext.keys.keep)
-  elseif expectKeys then T.assertEq(expectKeys, data.ext.keys) end
-  T.assertEq(expectEvents or {}, events:drain())
+  if expectKeys == false then T.eq(nil, data.ext.keys.keep)
+  elseif expectKeys then T.eq(expectKeys, data.ext.keys) end
+  T.eq(expectEvents or {}, events:drain())
@@ -55 +55 @@
-T.test('action', function()
+T.action = function()
@@ -60,2 +60,2 @@
-    T.assertEq('command', d.mode)
-    T.assertEq({'esc'},   d.ext.keys.chord)
+    T.eq('command', d.mode)
+    T.eq({'esc'},   d.ext.keys.chord)
@@ -63,2 +63,2 @@
-    T.assertEq('insert', d.mode)
-    T.assertEq({'i'},    d.ext.keys.chord)
+    T.eq('insert', d.mode)
+    T.eq({'i'},    d.ext.keys.chord)
@@ -67,2 +67,2 @@
-    T.assertEq('insert',  d.mode)
-    T.assertEq({'i'},     d.ext.keys.chord)
+    T.eq('insert',  d.mode)
+    T.eq({'i'},     d.ext.keys.chord)
@@ -73 +73 @@
-    T.assertEq({'a'}, d.ext.keys.chord)
+    T.eq({'a'}, d.ext.keys.chord)
@@ -76 +76 @@
-    T.assertEq({'a'}, d.ext.keys.chord)
+    T.eq({'a'}, d.ext.keys.chord)
@@ -92 +92 @@
-    T.assertEq('insert', d.mode)
+    T.eq('insert', d.mode)
@@ -94 +94 @@
-    T.assertEq('insert', d.mode)
+    T.eq('insert', d.mode)
@@ -106 +106 @@
-end)
+end

--- cmd/ele/tests/test_session.lua
+++ cmd/ele/tests/test_session.lua
@@ -3,0 +4 @@
+local CT = require'civtest'
@@ -15,2 +16 @@
-
-local aeq = T.assertEq
+local ixt = require'civix.testing'
@@ -39,0 +40 @@
+  local path = ds.srcloc(1)
@@ -43 +44,3 @@
-  T.asyncTest(assert(t[1], 'need name'), function()
+  local name = assert(t[1], 'need name')
+  print('## test_session.Test', name)
+  local testFn = function()
@@ -49 +52 @@
-    aeq(log.LogTable{}, ed.error)
+    T.eq(log.LogTable{}, ed.error)
@@ -51 +54,2 @@
-  end)
+  end
+  ixt.runAsyncTest(function() T.runTest(name, testFn, path) end)
@@ -57,2 +61,2 @@
-  aeq('command', ed.mode)
-  aeq('\n\n', fmt(t))
+  T.eq('command', ed.mode)
+  T.eq('\n\n', fmt(t))
@@ -61,2 +65,2 @@
-    aeq(1, #ed.error)
-    T.assertMatch('unbound chord: Z', fmt(ed.error[1]))
+    T.eq(1, #ed.error)
+    T.matches('unbound chord: Z', fmt(ed.error[1]))
@@ -66,3 +70,3 @@
-    aeq('insert', ed.mode) -- next mode
-    aeq(nil, ed.ext.keys.next) -- selected in keyinput
-  aeq(log.LogTable{}, ed.error)
+    T.eq('insert', ed.mode) -- next mode
+    T.eq(nil, ed.ext.keys.next) -- selected in keyinput
+  T.eq(log.LogTable{}, ed.error)
@@ -71,3 +75,3 @@
-    aeq('9 8', b.dat[1])
-    aeq('9 8\n\n', fmt(t))
-  aeq(log.LogTable{}, ed.error)
+    T.eq('9 8', b.dat[1])
+    T.eq('9 8\n\n', fmt(t))
+  T.eq(log.LogTable{}, ed.error)
@@ -76 +80 @@
-    aeq('9 8 7\n6\n', fmt(t))
+    T.eq('9 8 7\n6\n', fmt(t))
@@ -81,3 +85,3 @@
-  aeq(3, #e.buf)
-  aeq('command', ed.mode)
-  aeq('\n\n', fmt(ed.display))
+  T.eq(3, #e.buf)
+  T.eq('command', ed.mode)
+  T.eq('\n\n', fmt(ed.display))
@@ -86 +90 @@
-    aeq('1 3 5 7 9\n 2 4 6\n', fmt(ed.display))
+    T.eq('1 3 5 7 9\n 2 4 6\n', fmt(ed.display))
@@ -88,11 +92,11 @@
-  s:play'j';   aeq({2, 1}, {e.l, e.c})
-    aeq(LINES3, fmt(ed.display))
-  s:play'2 k'; aeq({1, 1}, {e.l, e.c})
-  s:play'$';   aeq({1, 9}, {e.l, e.c})
-  s:play'j';   aeq({2, 7}, {e.l, e.c})
-    aeq(LINES3, fmt(ed.display))
-
-  s:play'0';   aeq({2, 1}, {e.l, e.c})
-  s:play'2 w'; aeq({2, 4}, {e.l, e.c})
-  s:play'b';   aeq({2, 2}, {e.l, e.c})
-  s:play'l ^'; aeq({2, 2}, {e.l, e.c})
+  s:play'j';   T.eq({2, 1}, {e.l, e.c})
+    T.eq(LINES3, fmt(ed.display))
+  s:play'2 k'; T.eq({1, 1}, {e.l, e.c})
+  s:play'$';   T.eq({1, 9}, {e.l, e.c})
+  s:play'j';   T.eq({2, 7}, {e.l, e.c})
+    T.eq(LINES3, fmt(ed.display))
+
+  s:play'0';   T.eq({2, 1}, {e.l, e.c})
+  s:play'2 w'; T.eq({2, 4}, {e.l, e.c})
+  s:play'b';   T.eq({2, 2}, {e.l, e.c})
+  s:play'l ^'; T.eq({2, 2}, {e.l, e.c})
@@ -104,4 +108,4 @@
-  s:play'l l';    aeq({1, 3}, {e.l, e.c})
-  s:play'i back'; aeq({1, 2}, {e.l, e.c})
-    aeq('13 5 7 9', b[1])
-  aeq('13 5 7 9\n 2 4 6\n', fmt(ed.display))
+  s:play'l l';    T.eq({1, 3}, {e.l, e.c})
+  s:play'i back'; T.eq({1, 2}, {e.l, e.c})
+    T.eq('13 5 7 9', b[1])
+  T.eq('13 5 7 9\n 2 4 6\n', fmt(ed.display))
@@ -113,3 +117,3 @@
-  aeq(b.id, BID)
-  aeq(0, #ed.buffers[1].tmp) -- was temporary and was closed
-  aeq(SMALL, b.dat.path)
+  T.eq(b.id, BID)
+  T.eq(0, #ed.buffers[1].tmp) -- was temporary and was closed
+  T.eq(SMALL, b.dat.path)
@@ -117,2 +121,2 @@
-    aeq('-- a small lua file for tests', b[1])
-    aeq(pth.read(SMALL), fmt(ed.display))
+    T.eq('-- a small lua file for tests', b[1])
+    T.eq(pth.read(SMALL), fmt(ed.display))
@@ -120 +124 @@
-    aeq('a small lua file for tests', b[1])
+    T.eq('a small lua file for tests', b[1])
@@ -122 +126 @@
-    aeq(b.id, BID)
+    T.eq(b.id, BID)
@@ -124 +128 @@
-    aeq('a small lua file for tests', b[1]) -- no change to contents
+    T.eq('a small lua file for tests', b[1]) -- no change to contents
@@ -127,6 +131,6 @@
-Test{'nav', dat='', function(tst)
-  -- local s, ed, e = tst.s, tst.s.ed, tst.s.ed.edit
-  -- local b, BID = e.buf, 2
-  -- s:play'space f space' -- listCWD
-  --   aeq(BID, b.id) -- opened new buffer
-end}
+-- Test{'nav', dat='', function(tst)
+--   local s, ed, e = tst.s, tst.s.ed, tst.s.ed.edit
+--   local b, BID = e.buf, 2
+--   s:play'space f space' -- listCWD
+--     T.eq(BID, b.id) -- opened new buffer
+-- end}

--- cmd/ele/tests/test_term.lua
+++ cmd/ele/tests/test_term.lua
@@ -25 +25 @@
-T.test('edit', function()
+T.edit = function()
@@ -27,3 +27,3 @@
-  T.assertEq(3, #e.buf.dat)
-  T.assertEq(3, #e.buf)
-  T.assertEq(3, #e)
+  T.eq(3, #e.buf.dat)
+  T.eq(3, #e.buf)
+  T.eq(3, #e)
@@ -33 +33 @@
-  T.assertEq(lines3, fmt(ft))
+  T.eq(lines3, fmt(ft))
@@ -37 +37 @@
-  T.assertEq(L_2h5w, fmt(ft))
+  T.eq(L_2h5w, fmt(ft))
@@ -41,2 +41,3 @@
-  T.assertEq(L_2l3c2h5w, fmt(ft))
-end)
+  T.eq(L_2l3c2h5w, fmt(ft))
+end
+

--- cmd/ff/ff.lua
+++ cmd/ff/ff.lua
@@ -64 +64 @@
-  for line in io.lines(path) do
+  for line in io.lines(path, 'L') do
@@ -82,0 +83 @@
+  log.trace('!! replace %s %q %q', path, pats, sub)
@@ -84,0 +86 @@
+    log.trace('!! finding %q: %s', pats, line)
@@ -85,0 +88,3 @@
+    if ms then
+      print('!! replacing:', line)
+    end
@@ -138,0 +144 @@
+    print'!! performing replacements'
@@ -146,0 +153 @@
+        print('!! writing sub:', subPath)
@@ -148 +155,2 @@
-        to:flush(); to:close(); civix.mv(subPath, p)
+        to:flush(); to:close();
+        civix.mv(subPath, p)
@@ -192,0 +201,12 @@
+
+local splitMatch = function(str, ms, me) --> beg, mat, end_
+  local beg, mat = str:sub(1,ms-1), str:sub(ms,me)
+  local end_     = str:sub(me+1)
+  local hasNL = str:sub(-1) == '\n'
+  if hasNL then
+    if end_ == '' then mat = mat:sub(1,-2)
+    else end_ = end_:sub(1,-2) end
+  else end_ = end_..'[EOL]' end
+  return beg, mat, end_
+end
+
@@ -193,0 +214 @@
+  local beg, mat, end_ = splitMatch(str, ms, me)
@@ -195,3 +216,3 @@
-  f:styled(nil,     str:sub(1, ms-1))
-  f:styled('match', str:sub(ms, me))
-  f:styled(nil,     str:sub(me+1), '\n')
+  f:styled(nil,     beg)
+  f:styled('match', mat)
+  f:styled(nil,     end_, '\n')
@@ -204,6 +225,6 @@
-  if ei ~= 0 then
-    f:styled('meta', AFTER)
-    f:styled('meta', after:sub(1, si-1))
-    f:styled(nil,    after:sub(si, ei))
-    f:styled('meta', after:sub(ei+1), '\n')
-  end
+  if ei == 0 then return end
+  local beg, mat, end_ = splitMatch(after, si, ei)
+  f:styled('meta', AFTER)
+  f:styled('meta', beg)
+  f:styled(nil,    mat)
+  f:styled('meta', end_, '\n')

--- cmd/ff/test.lua
+++ cmd/ff/test.lua
@@ -11,2 +11 @@
-local T = require'civtest'.Test
-local test, assertEq; ds.auto'civtest'
+local T = require'civtest'
@@ -51 +50 @@
-test('ff.Main', function()
+T.ff_Main = function()
@@ -67 +66 @@
-end)
+end
@@ -95 +94 @@
-test('ff_find', function()
+T.ff_find = function()
@@ -109 +108 @@
-end)
+end
@@ -111 +110 @@
-test('ff_sub', function()
+T.ff_sub = function()
@@ -136 +135 @@
-end)
+end

--- cmd/pkgrock/pkgrock.lua
+++ cmd/pkgrock/pkgrock.lua
@@ -14 +14 @@
-M.Args = mty'pkgrock' {
+M.Main = mty'pkgrock' {
@@ -84 +84 @@
-  t = M.Args(shim.parseStr(t))
+  t = M.Main(shim.parseStr(t))

--- cmd/pvc/README.cxt
+++ cmd/pvc/README.cxt
@@ -15,2 +15,3 @@
-pvc is a version control system similar to git or mercurial, but is ultra simple:
-branches are simply a [$base] followed by a set of unix patches with
+[{:h2 name=pvc-about}About]
+[*pvc] is a version control system similar to git or mercurial, but is ultra
+simple: branches are simply a [$base] followed by a set of unix patches with
@@ -97 +98 @@
-First install [@Package_civ], then run pvc in bash with [$civ.lua pvc <cmd>].
+First install [<#Package_civ>], then run pvc in bash with [$civ.lua pvc <cmd>].
@@ -104 +105 @@
-  with appropriate entries (see [@pvcignore]) to ignore paths you don't
+  with appropriate entries (see [<#pvcignore>]) to ignore paths you don't
@@ -115,3 +116,3 @@
-The [$.pvcignore] file should contain a line-separated list of lua patterns
-([@lua.find]) that should be ignored. Items ending in [$/] will apply to
-whole directories. A common pvc ignore file might look like:
+The [$.pvcignore] file should contain a line-separated list of [<#string.find>]
+patterns that should be ignored. Items ending in [$/] will apply to whole
+directories. A common pvc ignore file might look like:
@@ -127,2 +128,2 @@
-# specific files
-%./path/to/some_file
+# binary files
+%./path/to/some_binary

--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -12 +12 @@
-local T = require'civtest'.Test
+local T = require'civtest'
@@ -57,2 +57,2 @@
-  local paths = lines.load(P..M.PVCPATHS)
-  push(paths, '.pvcpaths')
+  local paths = ds.BiMap(lines.load(P..M.PVCPATHS))
+  if not paths[M.PVCPATHS] then push(paths, M.PVCPATHS) end
@@ -87,5 +87,3 @@
-  local paths1, paths2 = {}, {}
-  for p in io.lines(dir1..M.PVCPATHS) do paths1[p] = 1 end
-  for p in io.lines(dir2..M.PVCPATHS) do paths2[p] = 1 end
-  for p1 in pairs(paths1) do fn(p1, paths2[p1] and p1 or nil) end
-  for p2 in pairs(paths2) do
+  local paths1, paths2 = loadPaths(dir1), loadPaths(dir2)
+  for _, p1 in ipairs(paths1) do fn(p1, paths2[p1] and p1 or nil) end
+  for _, p2 in ipairs(paths2) do
@@ -281,0 +280,5 @@
+local function initSnap0(snap)
+  ix.forceWrite(snap..M.PVCPATHS, M.INIT_PVCPATHS)
+  ix.forceWrite(snap..'PVC_DONE', '')
+end
+
@@ -292,2 +295 @@
-  ix.forceWrite(ppath..'.snap/.pvcpaths', M.INIT_PVCPATHS)
-  ix.forceWrite(ppath..'.snap/PVC_DONE', '')
+  initSnap0(ppath..'.snap/')
@@ -303,0 +306 @@
+  if id == 0 then return initSnap0(snap) end
@@ -382 +385 @@
-  local npaths = loadLineSet(nsnap..M.PVCPATHS)
+  local npaths = loadPaths(nsnap)
@@ -385 +388 @@
-  for path in pairs(npaths) do
+  for _, path in ipairs(npaths) do
@@ -735,0 +739 @@
+  print('!! getting desc', ppath)
@@ -737,0 +742 @@
+    print('!! line', line)
@@ -776 +781 @@
-  f:write(patch); f:flush(); f:close()
+  f:write(patch); f:close()
@@ -945,0 +951 @@
+  -- Write new description
@@ -948 +954 @@
-  for _, line in ipairs(desc) do n:write(line, '\n') end
+  for _, line in ipairs(desc) do n:write(line, '\n') end -- new desc
@@ -950 +956 @@
-  for line in o:lines() do
+  for line in o:lines() do -- skip old desc
@@ -953,0 +960 @@
+  n:close(); o:close()

--- cmd/pvc/pvc/unix.lua
+++ cmd/pvc/pvc/unix.lua
@@ -25 +25,4 @@
-  if ix.stat(p):size() == 0 then error(
+  local st = ix.stat(p); if not st then
+    error(p..' is in .pvcpaths but does not exist')
+  end
+  if st:size() == 0 then error(
@@ -42 +45,3 @@
-  if sh:rc() > 1 then error('diff failed:\n'..e) end
+  if sh:rc() > 1 then
+    error('diff failed:\n'..(e or o or '(no std err or out)'))
+  end
@@ -55 +60 @@
-  return {'patch', '-p0', '--binary', '-fu', input=pth.abs(path), CWD=cwd}
+  return {'patch', '-p0', '-fu', input=pth.abs(path), CWD=cwd}

--- cmd/pvc/test.lua
+++ cmd/pvc/test.lua
@@ -2 +2 @@
-local T = require'civtest'.Test
+local T = require'civtest'
@@ -6,0 +7 @@
+local fd = require'fd'
@@ -12,0 +14,2 @@
+fd.ioStd()
+
@@ -43,0 +47 @@
+-- binary not supported
@@ -53,0 +58,9 @@
+-- missing path is an error
+T.missingPath = function()
+  local P = initPvc()
+  pth.append(P..'.pvcpaths', 'file.dne')
+  T.throws('but does not exist', function()
+    pvc.commit(P, 'commit path dne')
+  end)
+end
+

--- lib/civix/Makefile
+++ lib/civix/Makefile
@@ -12 +12 @@
-UNAME := $(shell uname)
+UNAME != uname
@@ -13,0 +14 @@
+NetBSD: $(OUT).so
@@ -20,0 +22,3 @@
+BuildNetBSD:
+	$(CC) -DBSD $(FILES) -fPIC -llua -I/usr/pkg/include/$(LUA_VERSION) -shared -o $(OUT).so
+

--- lib/civix/PKG.lua
+++ lib/civix/PKG.lua
@@ -10,0 +11 @@
+  'civix/testing.lua',

--- lib/civix/civix.lua
+++ lib/civix/civix.lua
@@ -421 +421 @@
-  sh._sh = ex
+  sh._sh = assert(ex, 'INTERNAL: lib.sh returned nil')

--- lib/civix/civix/lib.c
+++ lib/civix/civix/lib.c
@@ -5,0 +6 @@
+#include <assert.h>
@@ -18,0 +20,5 @@
+#ifdef BSD
+extern char** environ;
+static void clearenv() { *environ = NULL; }
+#endif
+
@@ -206 +212 @@
-  int rc;
+  int rc; // return code of wait
@@ -257,0 +264 @@
+  int topi = lua_gettop(L); // FIXME: remove
@@ -259 +266,2 @@
-  sh->pid = 0; sh->env = env;
+  assert(!lua_isnil(L, -1));
+  *sh = (struct sh) { .env = env };
@@ -296 +304,4 @@
-    return execvp(command, argv);
+    execvp(command, argv);
+    if(errno) fprintf(stderr, "execvp\"%s\"(%s [%i])\n",
+          command, SERR, errno);
+    return 1;

--- lib/civix/test.lua
+++ lib/civix/test.lua
@@ -7,3 +7 @@
-local Tm = require'civtest'
-local T = Tm.Test
-local assertEq, assertErrorPat; ds.auto'civtest'
+local T = require'civtest'
@@ -10,0 +9 @@
+local ixt = require'civix.testing'
@@ -17,0 +17,2 @@
+local fin
+local tests = function()
@@ -23 +24 @@
-    sh{'/usr/bin/sh', '-c', 'echo $PWD $FOO',
+    sh{'sh', '-c', 'echo $PWD $FOO',
@@ -32 +33,2 @@
-Tm.lapTest('sh', function()
+-- FIXME: re-enable async test
+T.testSh = function()
@@ -41,6 +42,0 @@
-  assertErrorPat('Command failed with rc=1', function() sh'false' end)
-  assertErrorPat('Command failed with rc=', function()
-    sh{'commandNotExist', 'blah'}
-  end)
-  -- error'FIXME: the above actually FAILED but test doesn't fail...'
-
@@ -63 +59,11 @@
-end)
+end
+
+
+T.sh_fail = function()
+  T.throws('Command failed with rc=1', function()
+    M.sh'false'
+  end)
+  T.throws('Command failed with rc=1', function()
+    M.sh{'commandNotExist', 'blah'}
+  end)
+end
@@ -65 +71 @@
-Tm.lapTest('time', function()
+T.time = function()
@@ -75 +81 @@
-end)
+end
@@ -98,26 +104 @@
-Tm.test('fd-perf', function()
-  local Kib = string.rep('123456789ABCDEF\n', 64)
-  local data = string.rep(Kib, 500)
-  local count, run = 0, true
-  local res
-  local O = '.out/'
-  M.Lap{
-    -- make sleep insta-ready instead (open/close use it)
-    sleepFn = function(cor) LAP_READY[cor] = 'sleep' end,
-  }:run{
-    function() while run do
-      count = count + 1; coroutine.yield(true)
-    end end,
-    function()
-      local f = fd.openFDT(O..'perf.bin', 'w+')
-      f:write(data); f:seek'set'; res = f:read'a'
-      f:close()
-      run = false
-    end,
-  }
-
-  assert(data == res)
-  -- assert(count > 50, tostring(count))
-end)
-
-Tm.test('walk', function()
+T.walk = function()
@@ -151 +132 @@
-end)
+end
@@ -178,0 +160,37 @@
+fin = true; end ---------------- end tests()
+
+fd.ioSync();
+fin = false; tests(); assert(fin)
+
+T.SUBNAME = '[ioAsync]'
+fin=false; ixt.runAsyncTest(tests); assert(fin)
+
+T.SUBNAME = ''
+
+-- FIXME: consider re-working and enabling
+-- T.fd_perf = function()
+--   local Kib = string.rep('123456789ABCDEF\n', 64)
+--   local data = string.rep(Kib, 500)
+--   local count, run = 0, true
+--   local res
+--   local O = '.out/'
+--   M.Lap{
+--     -- make sleep insta-ready instead (open/close use it)
+--     sleepFn = function(cor) LAP_READY[cor] = 'sleep' end,
+--   }:run{
+--     function() while run do
+--       count = count + 1; coroutine.yield(true)
+--     end end,
+--     function()
+--       local f = fd.openFDT(O..'perf.bin', 'w+')
+--       f:write(data); f:seek'set'; res = f:read'a'
+--       f:close()
+--       run = false
+--     end,
+--   }
+-- 
+--   assert(data == res)
+--   -- assert(count > 50, tostring(count))
+-- end
+
+fd.ioStd()

--- lib/civtest/civtest.lua
+++ lib/civtest/civtest.lua
@@ -4 +4,2 @@
-local M = G.mod and G.mod'civtest' or {}
+local M = G.mod and G.mod'civtest' or setmetatable({}, {})
+M.SUBNAME = ''
@@ -13,0 +15 @@
+local getmt = getmetatable
@@ -29,2 +31,19 @@
-local showDiff = function(a, b)
-  local f = io.fmt
+--- Run the test, printing information to the terminal.
+---
+--- This function computes name=[$name..civtest.SUBNAME]
+--- and sets civtest.NAME to the new name, which can be
+--- used in the test.
+---
+--- ["Note: normally this is called when the user sets
+---   a key to the civtest module, which has __newindex()
+---   overriden to call this function.
+--- ]
+M.runTest = function(name, fn, path)
+  name = name..M.SUBNAME
+  rawset(M, 'NAME', name);
+  io.fmt:styled('h2', sfmt('## Test %-32s', name), ' ')
+  io.fmt:styled('path', pth.nice(path), '\n')
+  return fn()
+end
+
+M.showDiff = function(f, a, b)
@@ -43,0 +63 @@
+local showDiff = M.showDiff
@@ -45,2 +65,2 @@
-M.Test = (mty'Test'{})
-M.Test.eq = function(a, b)
+--- Assert that [$a] equals [$b] (according to [<#metaty.eq>].
+M.eq = function(a, b)
@@ -48,32 +68 @@
-  showDiff(a, b); fail("Test.eq")
-end
-
-M.Test.exists = function(p)
-  if not require'civix'.exists(p) then error(
-    'does not exist: '..p
-  )end
-end
-
---- Assert the contents at the two paths are equal
-M.Test.pathEq = function(a, b)
-  local at, bt = pth.read(a), pth.read(b)
-  if at == bt then return end
-  showDiff(at, bt);
-  io.fmt:styled('error', sfmt('Path expected: %s\n       result: %s',
-    a, b), '\n')
-  fail'Test.pathEq'
-end
-
---- Assert that path matches expect. Expect can be of type:
---- * string: asserts the file contents match.
---- * table: recursively assert the subtree contents exist.
-M.Test.path = function(path, expect)
-  M.Test.exists(path)
-  if type(expect) == 'string' then
-    local txt = pth.read(path)
-    if expect == txt then return end
-    io.fmt:styled('error', '!! Path '..path, '\n')
-    showDiff(expect, txt); fail'Test.tree'
-  end
-  if ix.pathtype(path) ~= ix.DIR then error(path..' is not a dir') end
-  for k, v in pairs(expect) do M.Test.path(pth.concat{path, k}, v) end
+  showDiff(io.fmt, a, b); fail'Test.eq'
@@ -83 +72 @@
-M.Test.binEq = function(e, r)
+M.binEq = function(e, r)
@@ -91 +80 @@
-  fail("Test.binEq")
+  fail'Test.binEq'
@@ -95 +84 @@
-M.Test.matches = function(pat, subj) --> !?error
+M.matches = function(pat, subj) --> !?error
@@ -97 +86,2 @@
-  f:styled('error', '\n!! RESULT:', '\n');   f(b)
+  local f = io.fmt
+  f:styled('error', '\n!! RESULT:', '\n');   f(subj)
@@ -101 +91 @@
-  exit(1)
+  fail'matches'
@@ -102,0 +93 @@
+
@@ -104 +95 @@
-M.Test.contains = function(plain, subj) --> !?error
+M.contains = function(plain, subj) --> !?error
@@ -110 +101 @@
-  exit(1)
+  fail'contains'
@@ -111,0 +103 @@
+
@@ -113 +105 @@
-M.Test.throws = function(contains, fn) --> ds.Error
+M.throws = function(contains, fn) --> ds.Error
@@ -115 +107,5 @@
-  if not ok and err.msg:find(contains, 1, true) then return err end
+  if ok then
+    f:styled('error', '!! Unexpected: did not receive an error')
+    fail'Test.throws (no error)'
+  end
+  if err.msg:find(contains, 1, true) then return err end
@@ -118,12 +114,5 @@
-  if ok then f:styled('notice', '<no error>') else f(err) end
-  f:styled('error', '\n!! Expected error to contain:',
-           sfmt(' %q\n', contains))
-  f:styled('error', '!! Failed Test.throws:', ' ')
-  f:styled('path', pth.nice(ds.srcloc(1)), '\n')
-  exit(1)
-end
-getmetatable(M.Test).__newindex = function(s, name, fn)
-  assert(not rawget(M.Test, name), name..' is a Test method')
-  io.fmt:styled('h2', sfmt('## Test %-32s', name), ' ')
-  io.fmt:styled('path', pth.nice(ds.srcloc(1)), '\n')
-  fn(s)
+  f:styled('error', 'Actual error:', '\n')
+  f:write(err.msg)
+  f:styled('error', '\n# end actual error', '\n')
+  showDiff(io.fmt, contains, err.msg)
+  fail'Test.throws (not expected)'
@@ -131,0 +121,6 @@
+--- Assert that the path exists.
+M.exists = function(path)
+  if not require'civix'.exists(path) then error(
+    'does not exist: '..path
+  )end
+end
@@ -133,2 +128,9 @@
------------------------
--- DEPRECATED
+--- Assert the contents at the two paths are equal
+M.pathEq = function(a, b)
+  local at, bt = pth.read(a), pth.read(b)
+  if at == bt then return end
+  showDiff(io.fmt, at, bt);
+  io.fmt:styled('error', sfmt('Path expected: %s\n       result: %s',
+    a, b), '\n')
+  fail'Test.pathEq'
+end
@@ -136,26 +138,10 @@
---- simplest assertEq
-M.assertEq = function(expect, result)
-  if mty.eq(expect, result) then return end
-  io.stderr:write('\n!! EXPECTED:\n', fmt(expect), '\n')
-  io.stderr:write('\n!! RESULT:\n',   fmt(result), '\n')
-  io.stderr:write('!! Failed assertEq: '..pth.nice(ds.srcloc(1)), '\n')
-  exit(1)
-end
-
-M.assertErrorPat = function(errPat, fn, plain)
-  local ok, err = pcall(fn)
-  if ok then error(sfmt(
-    'Did not recieve expected error.\n'
-  ..'! Expected errPat %q\n! Got result[1]: %s',
-    errPat, fmt(err)
-  ))end
-  if not err:find(errPat, 1, plain) then error(sfmt(
-    '! Did not recieve expected error.\n'
-  ..'! Expected errPat %q\n!### Got error:\n%q', errPat, err
-  ))end
-end
-
-M.assertMatch = function(expectPat, result)
-  if not result:match(expectPat) then
-    fmt.errorf('Does not match pattern:\nPattern: %q\n Result:  %s',
-           expectPat, result)
+--- Assert that path matches expect. Expect can be of type:
+--- * string: asserts the file contents match.
+--- * table: recursively assert the subtree contents exist.
+M.path = function(path, expect)
+  M.exists(path)
+  if type(expect) == 'string' then
+    local txt = pth.read(path)
+    if expect == txt then return end
+    io.fmt:styled('error', '!! Path '..path, '\n')
+    showDiff(io.fmt, expect, txt); fail'Test.tree'
@@ -162,0 +149,2 @@
+  if ix.pathtype(path) ~= ix.DIR then error(path..' is not a dir') end
+  for k, v in pairs(expect) do M.path(pth.concat{path, k}, v) end
@@ -165,20 +153,2 @@
-M.test = function(name, fn)
-  print('# Test', name)
-  fn()
-  collectgarbage()
-end
-
---- Runs until yields non-truthy. See lib/lap/README.md
-M.asyncTest = function(name, fn)
-  local lap = require'lap'
-  local civix = require'civix'
-  local Lap = civix.Lap()
-  print('# Test', name, "(async)")
-  local _, errors = Lap:run{fn}
-  collectgarbage()
-  if errors then error(fmt(errors)) end
-end
-
-M.lapTest = function(name, fn)
-  M.test(name, fn)
-  M.asyncTest(name, fn)
+getmetatable(M).__newindex = function(m, name, fn)
+  return m.runTest(name, fn, select(2, mty.fninfo(fn)))
@@ -186 +155,0 @@
-

--- lib/civtest/test.lua
+++ lib/civtest/test.lua
@@ -4,2 +4 @@
-local CT = require'civtest'
-local T = CT.Test
+local T = require'civtest'
@@ -22,4 +20,0 @@
-
-CT.asyncTest('foo', function()
-  assert(true)
-end)

--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -218 +218 @@
---- assertEq('this is\n  a string.', mystr)
+--- T.eq('this is\n  a string.', mystr)
@@ -545 +545,5 @@
-M.icopy = function(t) return move(t, 1, #t, 1, {}) end --> list
+M.icopy = function(t) --> list
+  local meth = getmethod(t, '__icopy')
+  if meth then return meth(t) end
+  return move(t, 1, #t, 1, {})
+end

--- lib/ds/ds/Iter.lua
+++ lib/ds/ds/Iter.lua
@@ -7 +7 @@
---- assertEq(
+--- T.eq(
@@ -291 +291 @@
-  local i, T = 0, require'civtest'.Test
+  local i, T = 0, require'civtest'
@@ -298 +298 @@
-      T.eq(r1, r2); error'unreachable'
+      assertEq(r1, r2); error'unreachable'

--- lib/ds/test.lua
+++ lib/ds/test.lua
@@ -18,2 +18 @@
-local test, assertEq, assertMatch, assertErrorPat; M.auto'civtest'
-local T = require'civtest'.Test
+local T = require'civtest'
@@ -40,2 +39,2 @@
-  assertEq('lib/ds/test.lua:4', loc1)
-  assertEq('ds/test.lua:4', loc2)
+  T.eq('lib/ds/test.lua:4', loc1)
+  T.eq('ds/test.lua:4', loc2)
@@ -43,2 +42 @@
-  assertEq(   'lib/ds/',          M.srcdir())
-  assertMatch('.*/lib/civtest/$', M.srcdir(1))
+  T.eq(   'lib/ds/',          M.srcdir())
@@ -46,3 +44,2 @@
-     assertEq(   'lib/ds/',          M.srcdir())
-     assertEq(   'lib/ds/',          M.srcdir(1))
-     assertMatch('.*/lib/civtest/$', M.srcdir(2))
+     T.eq(   'lib/ds/',          M.srcdir())
+     T.eq(   'lib/ds/',          M.srcdir(1))
@@ -53 +50 @@
-  assertEq('a', [[
+  T.eq('a', [[
@@ -74,7 +71,7 @@
-  assertEq(false, M.bool())
-  assertEq(false, M.bool(false))
-  assertEq(false, M.bool(none))
-  assertEq(true, M.bool(true))
-  assertEq(true, M.bool(''))
-  assertEq(true, M.bool(0))
-  assertEq(true, M.bool({}))
+  T.eq(false, M.bool())
+  T.eq(false, M.bool(false))
+  T.eq(false, M.bool(none))
+  T.eq(true, M.bool(true))
+  T.eq(true, M.bool(''))
+  T.eq(true, M.bool(0))
+  T.eq(true, M.bool({}))
@@ -84 +81 @@
-  assertEq(none, none)
+  T.eq(none, none)
@@ -87,3 +84,3 @@
-  assertEq('none', getmetatable(none))
-  assertEq('none', mty.ty(none))
-  assertEq('none', fmt(none))
+  T.eq('none', getmetatable(none))
+  T.eq('none', mty.ty(none))
+  T.eq('none', fmt(none))
@@ -91,2 +88,2 @@
-  assertErrorPat(err, function() none.foo = 3 end)
-  assertErrorPat(err, function() return #none end)
+  T.throws(err, function() none.foo = 3 end)
+  T.throws(err, function() return #none end)
@@ -96,4 +93,4 @@
-  assertEq({}, M.empty)
-  assertEq(nil, next(M.empty))
-  assertEq(0,  #M.empty)
-  assertEq('table', getmetatable(M.empty))
+  T.eq({}, M.empty)
+  T.eq(nil, next(M.empty))
+  T.eq(0,  #M.empty)
+  T.eq('table', getmetatable(M.empty))
@@ -102,3 +99,3 @@
-  assertEq(1, t[1])
-  assertEq(3, t.v)
-  assertEq('table', getmetatable(t))
+  T.eq(1, t[1])
+  T.eq(3, t.v)
+  T.eq('table', getmetatable(t))
@@ -106,4 +103,4 @@
-  assertEq('table', mty.ty(t))
-  assertErrorPat('cannot modify Imm', function() t.b = 8 end)
-  assertErrorPat('cannot modify Imm', function() t.v = 8 end)
-  assertEq('<!imm data!>', next(t))
+  T.eq('table', mty.ty(t))
+  T.throws('cannot modify Imm', function() t.b = 8 end)
+  T.throws('cannot modify Imm', function() t.v = 8 end)
+  T.eq('<!imm data!>', next(t))
@@ -113,2 +110,2 @@
-  assertEq(t, t)
-  assertEq(t, j)
+  T.eq(t, t)
+  T.eq(t, j)
@@ -117,2 +114,2 @@
-  assertEq('{1, k=5}', fmt(M.Imm{1, k=5}))
-  assertEq('table', mty.tyName(M.Imm{}))
+  T.eq('{1, k=5}', fmt(M.Imm{1, k=5}))
+  T.eq('table', mty.tyName(M.Imm{}))
@@ -120 +117 @@
-  assertEq({1, 2, v=3}, j) -- table vs Imm
+  T.eq({1, 2, v=3}, j) -- table vs Imm
@@ -123 +120 @@
-  assertEq({kind='Empty'}, M.Imm{kind='Empty'})
+  T.eq({kind='Empty'}, M.Imm{kind='Empty'})
@@ -145,2 +142,2 @@
-  assertEq('hi there', trim('  hi there\n '))
-  assertEq('hi there', trim('hi there'))
+  T.eq('hi there', trim('  hi there\n '))
+  T.eq('hi there', trim('hi there'))
@@ -153,2 +150,2 @@
-  assertEq('  one\n\nthree\nfour\n\n', multi)
-  assertEq('one\n\nthree\nfour', trim(multi))
+  T.eq('  one\n\nthree\nfour\n\n', multi)
+  T.eq('one\n\nthree\nfour', trim(multi))
@@ -156,2 +153,2 @@
-  assertEq('  a b c', M.trimEnd'  a b c')
-  assertEq('  a b c', M.trimEnd'  a b c\n  ')
+  T.eq('  a b c', M.trimEnd'  a b c')
+  T.eq('  a b c', M.trimEnd'  a b c\n  ')
@@ -159 +156 @@
-  assertEq(' a bc d e ', M.squash'  a   bc \td\te ')
+  T.eq(' a bc d e ', M.squash'  a   bc \td\te ')
@@ -164,12 +161,12 @@
-  assertEq(4, off(u8, 4))
-  assertEq(5, off(u8, 5)) -- start of 🫸
-  assertEq(9, off(u8, 6));     assertEq(' five 🫷!', u8:sub(9))
-  assertEq(9, off(u8, 1, 9))
-  assertEq(19, off(u8, 8, 9)); assertEq('!', u8:sub(19))
-  assertEq(2, off('a', 2))
-
-  assertEq("high", M.usub(u8, 1, 4))
-  assertEq("🫸 f", M.usub(u8, 5, 7))
-  assertEq("🫷!",  M.usub(u8, -2))
-  assertEq("e 🫷", M.usub(u8, -4, -2))
-  assertEq('',     M.usub(u8, 100))
+  T.eq(4, off(u8, 4))
+  T.eq(5, off(u8, 5)) -- start of 🫸
+  T.eq(9, off(u8, 6));     T.eq(' five 🫷!', u8:sub(9))
+  T.eq(9, off(u8, 1, 9))
+  T.eq(19, off(u8, 8, 9)); T.eq('!', u8:sub(19))
+  T.eq(2, off('a', 2))
+
+  T.eq("high", M.usub(u8, 1, 4))
+  T.eq("🫸 f", M.usub(u8, 5, 7))
+  T.eq("🫷!",  M.usub(u8, -2))
+  T.eq("e 🫷", M.usub(u8, -4, -2))
+  T.eq('',     M.usub(u8, 100))
@@ -193,4 +190,4 @@
-  assertEq(5,   getOrSet({a=5}, 'a', function() return 7 end))
-  assertEq(7,   getOrSet({b=5}, 'a', function() return 7 end))
-  assertEq(7,   get({a={b=7}}, {'a', 'b'}))
-  assertEq(nil, get({}, {'a', 'b'}))
+  T.eq(5,   getOrSet({a=5}, 'a', function() return 7 end))
+  T.eq(7,   getOrSet({b=5}, 'a', function() return 7 end))
+  T.eq(7,   get({a={b=7}}, {'a', 'b'}))
+  T.eq(nil, get({}, {'a', 'b'}))
@@ -199,4 +196,4 @@
-  set(t, dp'a.b',   4);   assertEq(4, t.a.b)
-  set(t, dp'a.a.a', 5);   assertEq(5, t.a.a.a)
-  set(t, dp'a.a.a', nil); assertEq(nil, t.a.a.a)
-  set(t, dp'a.b',   4);   assertEq(4, t.a.b)
+  set(t, dp'a.b',   4);   T.eq(4, t.a.b)
+  set(t, dp'a.a.a', 5);   T.eq(5, t.a.a.a)
+  set(t, dp'a.a.a', nil); T.eq(nil, t.a.a.a)
+  set(t, dp'a.b',   4);   T.eq(4, t.a.b)
@@ -205 +202 @@
-  assertEq({4, 5, 8}, t)
+  T.eq({4, 5, 8}, t)
@@ -207 +204 @@
-  assertEq({4, 5, 8}, t)
+  T.eq({4, 5, 8}, t)
@@ -209 +206 @@
-  assertEq({4, 5, 8}, t)
+  T.eq({4, 5, 8}, t)
@@ -212 +209 @@
-  assertEq({6, 7, 8}, t)
+  T.eq({6, 7, 8}, t)
@@ -219 +216 @@
-  assertEq({1, 2, a=3, b=9, c='hi', inner=true}, t)
+  T.eq({1, 2, a=3, b=9, c='hi', inner=true}, t)
@@ -222 +219 @@
-  assertEq({3, 4, 5}, t)
+  T.eq({3, 4, 5}, t)
@@ -224 +221 @@
-  assertEq({3, 4}, t)
+  T.eq({3, 4}, t)
@@ -226 +223 @@
-  assertEq({4}, t)
+  T.eq({4}, t)
@@ -228 +225 @@
-  assertEq({4, 5}, t)
+  T.eq({4, 5}, t)
@@ -231 +228 @@
-  assertEq(4, t.a)
+  T.eq(4, t.a)
@@ -233 +230 @@
-  assertEq(nil, t.b); assertEq(nil, t[1])
+  T.eq(nil, t.b); T.eq(nil, t[1])
@@ -236 +233 @@
-  assertEq({4, 5, 6, 7, 8}, M.add(t, 7, 8))
+  T.eq({4, 5, 6, 7, 8}, M.add(t, 7, 8))
@@ -239 +236 @@
-  assertEq({2, a=4, b={4, 7, 6, b1=3, b2=4}, c=3}, merge(t, {
+  T.eq({2, a=4, b={4, 7, 6, b1=3, b2=4}, c=3}, merge(t, {
@@ -243,2 +240,2 @@
-  assertEq(2, M.pairlen{1, 2})
-  assertEq(3, M.pairlen{1, 2, z=4})
+  T.eq(2, M.pairlen{1, 2})
+  T.eq(3, M.pairlen{1, 2, z=4})
@@ -246 +243 @@
-  assertEq({4, 2, 3}, M.icopy{4, 2, 3, a=4})
+  T.eq({4, 2, 3}, M.icopy{4, 2, 3, a=4})
@@ -248,2 +245,2 @@
-  assertEq({'a', 'b', 'c'}, M.orderedKeys{a=1, b=2, c=3})
-  assertEq({'a', 'b', 'c', a=1, b=2, c=3}, M.pushSortedKeys{a=1, b=2, c=3})
+  T.eq({'a', 'b', 'c'}, M.orderedKeys{a=1, b=2, c=3})
+  T.eq({'a', 'b', 'c', a=1, b=2, c=3}, M.pushSortedKeys{a=1, b=2, c=3})
@@ -251,4 +248,4 @@
-  assertEq({1}, M.sortUnique{1})
-  assertEq({'a', 'b', 'c'}, M.sortUnique{'c', 'b', 'a'})
-  assertEq({'a', 'b', 'c'}, M.sortUnique{'a', 'c', 'b', 'a'})
-  assertEq({'.', 'h', 's'}, M.sortUnique{'h', '.', 's', 'h'})
+  T.eq({1}, M.sortUnique{1})
+  T.eq({'a', 'b', 'c'}, M.sortUnique{'c', 'b', 'a'})
+  T.eq({'a', 'b', 'c'}, M.sortUnique{'a', 'c', 'b', 'a'})
+  T.eq({'.', 'h', 's'}, M.sortUnique{'h', '.', 's', 'h'})
@@ -260,2 +257,2 @@
-  assertEq(9, #a); assertEq('Slc[2:10]', fmt(a))
-  assertEq({Slc{si=2, ei=14}}, {a:merge(Slc{si=4, ei=14})})
+  T.eq(9, #a); T.eq('Slc[2:10]', fmt(a))
+  T.eq({Slc{si=2, ei=14}}, {a:merge(Slc{si=4, ei=14})})
@@ -264,2 +261,2 @@
-  assertEq(expect, {a:merge(Slc{si=12, ei=13})})
-  assertEq(expect, {Slc{si=12, ei=13}:merge(a)})
+  T.eq(expect, {a:merge(Slc{si=12, ei=13})})
+  T.eq(expect, {Slc{si=12, ei=13}:merge(a)})
@@ -270,3 +267,3 @@
-  assertEq(4, M.geti(t, 1))
-  assertEq(6, M.geti(t, -1))
-  assertEq(5, M.geti(t, -2))
+  T.eq(4, M.geti(t, 1))
+  T.eq(6, M.geti(t, -1))
+  T.eq(5, M.geti(t, -2))
@@ -274 +271 @@
-  assertEq({1, 2, 3}, extend({1}, {2, 3}))
+  T.eq({1, 2, 3}, extend({1}, {2, 3}))
@@ -276,4 +273,4 @@
-  assertEq({4, 5, 1, 2}, t)
-  assertEq({}, clear{1, 2, 3})
-  assertEq({1, 2}, replace({4, 5, 6}, {1, 2}))
-  assertEq({1, 2}, replace({3}, {1, 2}))
+  T.eq({4, 5, 1, 2}, t)
+  T.eq({}, clear{1, 2, 3})
+  T.eq({1, 2}, replace({4, 5, 6}, {1, 2}))
+  T.eq({1, 2}, replace({3}, {1, 2}))
@@ -281 +278 @@
-  assertEq({1,2,5,7}, M.flatten({1,2},{5},{7}))
+  T.eq({1,2,5,7}, M.flatten({1,2},{5},{7}))
@@ -284,8 +281,8 @@
-  assertEq({1, 2, 3}, drain(l, 3))
-  assertEq({'a', 'b', 'c'}, l)
-  assertEq({}, drain(l, 0))
-  assertEq({'a', 'b', 'c'}, l)
-  assertEq({'c'}, drain(l, 1))
-  assertEq({'a', 'b'}, l)
-  assertEq({'a', 'b'}, drain(l, 7))
-  assertEq({}, l)
+  T.eq({1, 2, 3}, drain(l, 3))
+  T.eq({'a', 'b', 'c'}, l)
+  T.eq({}, drain(l, 0))
+  T.eq({'a', 'b', 'c'}, l)
+  T.eq({'c'}, drain(l, 1))
+  T.eq({'a', 'b'}, l)
+  T.eq({'a', 'b'}, drain(l, 7))
+  T.eq({}, l)
@@ -293,2 +290,2 @@
-  assertEq({2, 1},    reverse({1, 2}))
-  assertEq({3, 2, 1}, reverse({1, 2, 3}))
+  T.eq({2, 1},    reverse({1, 2}))
+  T.eq({3, 2, 1}, reverse({1, 2, 3}))
@@ -296 +293 @@
-  assertEq({}, M.inset({}, 1, {}))
+  T.eq({}, M.inset({}, 1, {}))
@@ -298,4 +295,4 @@
-  assertEq({}, t) -- remove
-  assertEq({1, 2, 3}, M.inset({1, 3}, 2, {2}))
-  assertEq({1, 2, 3}, M.inset({1, 4, 3}, 2, {2}, 1))
-  assertEq({"ab", "d"}, M.inset({"ab", "c", "", "d"}, 2, {}, 2))
+  T.eq({}, t) -- remove
+  T.eq({1, 2, 3}, M.inset({1, 3}, 2, {2}))
+  T.eq({1, 2, 3}, M.inset({1, 4, 3}, 2, {2}, 1))
+  T.eq({"ab", "d"}, M.inset({"ab", "c", "", "d"}, 2, {}, 2))
@@ -309,2 +306,2 @@
-  assert(ok); assertEq({}, env)
-  assertEq(3, three)
+  assert(ok); T.eq({}, env)
+  T.eq(3, three)
@@ -312 +309 @@
-  assert(ok); assertEq({seven=7}, env)
+  assert(ok); T.eq({seven=7}, env)
@@ -318,3 +315,3 @@
-  assertEq(Set{'a', 'c', 'b'}, s)
-  assertEq(Set{'a', 'b'}, s:union(Set{'a', 'b', 'z'}))
-  assertEq(Set{'a'}, s:diff(Set{'b', 'c', 'z'}))
+  T.eq(Set{'a', 'c', 'b'}, s)
+  T.eq(Set{'a', 'b'}, s:union(Set{'a', 'b', 'z'}))
+  T.eq(Set{'a'}, s:diff(Set{'b', 'c', 'z'}))
@@ -325 +322 @@
-  assertEq({2}, h:tolist())
+  T.eq({2}, h:tolist())
@@ -328 +325 @@
-  local res = h - LL(4)      assertEq({2, 4}, h:tolist())
+  local res = h - LL(4)      T.eq({2, 4}, h:tolist())
@@ -330 +327 @@
-  _= h - (LL(5) + 6);        assertEq({2, 4, 5, 6}, h:tolist())
+  _= h - (LL(5) + 6);        T.eq({2, 4, 5, 6}, h:tolist())
@@ -333 +330 @@
-  h = LL:from{1, 2, 3, 4};   assertEq({1, 2, 3, 4}, h:tolist())
+  h = LL:from{1, 2, 3, 4};   T.eq({1, 2, 3, 4}, h:tolist())
@@ -340,2 +337,2 @@
-  assertEq(nil, n2:rm())
-    assertEq({1, 3, 4}, h:tolist())
+  T.eq(nil, n2:rm())
+    T.eq({1, 3, 4}, h:tolist())
@@ -348 +345 @@
-  h:insert(2);        assertEq({1, 2, 3, 4},    h:tolist())
+  h:insert(2);        T.eq({1, 2, 3, 4},    h:tolist())
@@ -350,2 +347,2 @@
-  h:tail():insert(5); assertEq({1, 2, 3, 4, 5}, h:tolist())
-    assertEq(4, h:tail().l.v)
+  h:tail():insert(5); T.eq({1, 2, 3, 4, 5}, h:tolist())
+    T.eq(4, h:tail().l.v)
@@ -353 +350 @@
-  assertEq('LL{1 -> 3 -> 5}', fmt((LL:from{1, 3, 5})))
+  T.eq('LL{1 -> 3 -> 5}', fmt((LL:from{1, 3, 5})))
@@ -359,5 +356,5 @@
-  assertEq(0,   bs(t, -1))
-  assertEq(1,   bs(t, 1))  assertEq(1,   bs(t, 4))
-  assertEq(2,   bs(t, 5))  assertEq(2,   bs(t, 7))
-  assertEq(5,   bs(t, 12)) assertEq(5,   bs(t, 32))
-  assertEq(6,   bs(t, 33)) assertEq(6,   bs(t, 1024))
+  T.eq(0,   bs(t, -1))
+  T.eq(1,   bs(t, 1))  T.eq(1,   bs(t, 4))
+  T.eq(2,   bs(t, 5))  T.eq(2,   bs(t, 7))
+  T.eq(5,   bs(t, 12)) T.eq(5,   bs(t, 32))
+  T.eq(6,   bs(t, 33)) T.eq(6,   bs(t, 1024))
@@ -369,4 +366,4 @@
-  assertEq(Duration(2, 500),     Duration(3, 500) - Duration(1))
-  assertEq(Duration(2, N - 900), Duration(3, 0)   - Duration(0, 900))
-  assertEq(Duration(2, N - 800), Duration(3, 100) - Duration(0, 900))
-  assertEq(Duration(2), Duration:fromMs(2000))
+  T.eq(Duration(2, 500),     Duration(3, 500) - Duration(1))
+  T.eq(Duration(2, N - 900), Duration(3, 0)   - Duration(0, 900))
+  T.eq(Duration(2, N - 800), Duration(3, 100) - Duration(0, 900))
+  T.eq(Duration(2), Duration:fromMs(2000))
@@ -376,2 +373,2 @@
-  assertEq(Duration(1.5), Duration(1, N * 0.5))
-  assertEq('1.5s', tostring(Duration(1.5)))
+  T.eq(Duration(1.5), Duration(1, N * 0.5))
+  T.eq('1.5s', tostring(Duration(1.5)))
@@ -379,2 +376,2 @@
-  assertEq(Epoch(1) - Duration(1), Epoch(0))
-  assertEq(Epoch(1) - Epoch(0), Duration(1))
+  T.eq(Epoch(1) - Duration(1), Epoch(0))
+  T.eq(Epoch(1) - Epoch(0), Duration(1))
@@ -382,2 +379,2 @@
-  assertEq(e - Epoch(1000000, 12342), Duration(1))
-  assertEq('Epoch(1.5s)', tostring(Epoch(1.5)))
+  T.eq(e - Epoch(1000000, 12342), Duration(1))
+  T.eq('Epoch(1.5s)', tostring(Epoch(1.5)))
@@ -388,2 +385,2 @@
-  assertEq(expect, fn(p))       -- pass in string
-  assertEq(expect, fn(path(p))) -- pass in table
+  T.eq(expect, fn(p))       -- pass in string
+  T.eq(expect, fn(path(p))) -- pass in table
@@ -392,5 +389,5 @@
-  assertEq({'a', 'b', 'c'},  path('a/b/c'))
-  assertEq({'/', 'b', 'c'},  path('/b/c'))
-  assertEq({'a', 'b', 'c/'}, path('a/b/c/'))
-  assertEq({'a', 'b', 'c'},  path{'a', 'b', 'c'})
-  assertEq({'/', 'b', 'c'},  path{'/', 'b', 'c'})
+  T.eq({'a', 'b', 'c'},  path('a/b/c'))
+  T.eq({'/', 'b', 'c'},  path('/b/c'))
+  T.eq({'a', 'b', 'c/'}, path('a/b/c/'))
+  T.eq({'a', 'b', 'c'},  path{'a', 'b', 'c'})
+  T.eq({'/', 'b', 'c'},  path{'/', 'b', 'c'})
@@ -399,6 +396,6 @@
-  assertEq('foo/bar',   pc{'foo/', 'bar'})
-  assertEq('/foo/bar',  pc{'/foo/', 'bar'})
-  assertEq('/foo/bar/', pc{'/foo/', 'bar/'})
-  assertEq('',          pc{''})
-  assertEq('a/b',       pc{'a', '', 'b'})
-  assertEq('a/b',       pc{'a/', '', 'b'})
+  T.eq('foo/bar',   pc{'foo/', 'bar'})
+  T.eq('/foo/bar',  pc{'/foo/', 'bar'})
+  T.eq('/foo/bar/', pc{'/foo/', 'bar/'})
+  T.eq('',          pc{''})
+  T.eq('a/b',       pc{'a', '', 'b'})
+  T.eq('a/b',       pc{'a/', '', 'b'})
@@ -407,16 +404,16 @@
-  assertEq({'/', '.a'},      pr('/.a'))
-  assertEq({'/', '..a'},     pr('/..a'))
-  assertEq({'/', 'a.'},      pr('/a.'))
-  assertEq({'/', 'a..'},     pr('/a..'))
-  assertEq({'a/'},           pr'a/b/..')
-  assertEq({'b'},            pr'a/../b')
-  assertEq({'b/'},           pr'a/../b/')
-  assertEq({'/', 'a', 'b/'}, pr('..',       '/a/b/c/'))
-  assertEq({'/', 'a', 'd/'}, pr('../../d/', '/a/b/c/'))
-  assertEq({'/'},            pr('/a/..'))
-  assertEq({},               pr('a/..'))
-  assertErrorPat('before root', function() pr('/..')    end)
-  assertErrorPat('before root', function() pr('/../..') end)
-  assertErrorPat('before root', function() pr('/../../a') end)
-  assertErrorPat('before root', function() pr('/a/../..') end)
-  assertErrorPat('before root', function() pr('/a/../../') end)
+  T.eq({'/', '.a'},      pr('/.a'))
+  T.eq({'/', '..a'},     pr('/..a'))
+  T.eq({'/', 'a.'},      pr('/a.'))
+  T.eq({'/', 'a..'},     pr('/a..'))
+  T.eq({'a/'},           pr'a/b/..')
+  T.eq({'b'},            pr'a/../b')
+  T.eq({'b/'},           pr'a/../b/')
+  T.eq({'/', 'a', 'b/'}, pr('..',       '/a/b/c/'))
+  T.eq({'/', 'a', 'd/'}, pr('../../d/', '/a/b/c/'))
+  T.eq({'/'},            pr('/a/..'))
+  T.eq({},               pr('a/..'))
+  T.throws('before root', function() pr('/..')    end)
+  T.throws('before root', function() pr('/../..') end)
+  T.throws('before root', function() pr('/../../a') end)
+  T.throws('before root', function() pr('/a/../..') end)
+  T.throws('before root', function() pr('/a/../../') end)
@@ -425,5 +422,5 @@
-  assertEq('./',        pn('a/..'))
-  assertEq('/a/b/',     pn('..', '/a/b/c/'))
-  assertEq('d/e',       pn('/a/b/c/d/e',  '/a/b/c'))
-  assertEq('d/e/',      pn('/a/b/c/d/e/', '/a/b/c'))
-  assertEq('a',         pn('./a'))
+  T.eq('./',        pn('a/..'))
+  T.eq('/a/b/',     pn('..', '/a/b/c/'))
+  T.eq('d/e',       pn('/a/b/c/d/e',  '/a/b/c'))
+  T.eq('d/e/',      pn('/a/b/c/d/e/', '/a/b/c'))
+  T.eq('a',         pn('./a'))
@@ -437,8 +434,8 @@
-  assertEq({'/',  'a/b/c/'}, {pf'/a/b/c/'})
-  assertEq({'a',  'b/c/'},   {pf'a/b/c/'})
-  assertEq({'/',  'a/b/'},   {pf'/a/b/'})
-  assertEq({'/',  'a/b'},    {pf'/a/b'})
-  assertEq({'/',  'b'},      {pf'/b'})
-  assertEq({'b',  ''},       {pf'b'})
-  assertEq({'/',  'b/'},     {pf'/b/'})
-  assertEq({'/',  ''},       {pf'/'})
+  T.eq({'/',  'a/b/c/'}, {pf'/a/b/c/'})
+  T.eq({'a',  'b/c/'},   {pf'a/b/c/'})
+  T.eq({'/',  'a/b/'},   {pf'/a/b/'})
+  T.eq({'/',  'a/b'},    {pf'/a/b'})
+  T.eq({'/',  'b'},      {pf'/b'})
+  T.eq({'b',  ''},       {pf'b'})
+  T.eq({'/',  'b/'},     {pf'/b/'})
+  T.eq({'/',  ''},       {pf'/'})
@@ -447,14 +444,14 @@
-  assertEq({'/a/b/', 'c/'}, {pl'/a/b/c/'})
-  assertEq({'a/b/', 'c/'},  {pl'a/b/c/'})
-  assertEq({'/a/', 'b/'},   {pl'/a/b/'})
-  assertEq({'/a/', 'b'},    {pl'/a/b'})
-  assertEq({'', '/b'},      {pl'/b'})
-  assertEq({'', 'b'},       {pl'b'})
-  assertEq({'', '/b/'},     {pl'/b/'})
-  assertEq({'', '/'},       {pl'/'})
-
-  assertEq(true, path.isDir('/'))
-  assertEq('/',  path.toDir('/'))
-  assertEq('a/', path.toDir('a'))
-  assertEq('a',  path.toNonDir('a'))
-  assertEq('a',  path.toNonDir('a/'))
+  T.eq({'/a/b/', 'c/'}, {pl'/a/b/c/'})
+  T.eq({'a/b/', 'c/'},  {pl'a/b/c/'})
+  T.eq({'/a/', 'b/'},   {pl'/a/b/'})
+  T.eq({'/a/', 'b'},    {pl'/a/b'})
+  T.eq({'', '/b'},      {pl'/b'})
+  T.eq({'', 'b'},       {pl'b'})
+  T.eq({'', '/b/'},     {pl'/b/'})
+  T.eq({'', '/'},       {pl'/'})
+
+  T.eq(true, path.isDir('/'))
+  T.eq('/',  path.toDir('/'))
+  T.eq('a/', path.toDir('a'))
+  T.eq('a',  path.toNonDir('a'))
+  T.eq('a',  path.toNonDir('a/'))
@@ -462 +459 @@
-  assertEq({'y', 'z/z', 'a/', 'a/b/'},
+  T.eq({'y', 'z/z', 'a/', 'a/b/'},
@@ -476 +473 @@
-  assertEq(expect, t)
+  T.eq(expect, t)
@@ -481 +478 @@
-  assertEq(0, #h)
+  T.eq(0, #h)
@@ -483 +480 @@
-  assertEq(heap.Heap{-1, 42, 8, 333, 111}, h)
+  T.eq(heap.Heap{-1, 42, 8, 333, 111}, h)
@@ -501 +498 @@
-  assertEq({
+  T.eq({
@@ -508 +505 @@
-  assertEq(childrenMap, result)
+  T.eq(childrenMap, result)
@@ -510 +507 @@
-  assertEq({'d', 'c', 'b', 'a'}, M.dag.sort(childrenMap))
+  T.eq({'d', 'c', 'b', 'a'}, M.dag.sort(childrenMap))
@@ -515,2 +512,2 @@
-  assertEq(bm[1], 'one');   assertEq(bm.one, 1)
-  assertEq(bm[2], 'two');   assertEq(bm.two, 2)
+  T.eq(bm[1], 'one');   T.eq(bm.one, 1)
+  T.eq(bm[2], 'two');   T.eq(bm.two, 2)
@@ -518,2 +515,2 @@
-  assertEq(bm[3], 'three'); assertEq(bm.three, 3)
-  assertEq('BiMap{"one", "two", "three", one=1, three=3, two=2}',
+  T.eq(bm[3], 'three'); T.eq(bm.three, 3)
+  T.eq('BiMap{"one", "two", "three", one=1, three=3, two=2}',
@@ -523 +520 @@
-  assertEq(bm.a, 'A'); assertEq(bm.A, 'a')
+  T.eq(bm.a, 'A'); T.eq(bm.A, 'a')
@@ -525,2 +522,2 @@
-  assertEq(bm.b, 'B'); assertEq(bm.B, 'b')
-  assertEq('BiMap{A="a", B="b", a="A", b="B"}'
+  T.eq(bm.b, 'B'); T.eq(bm.B, 'b')
+  T.eq('BiMap{A="a", B="b", a="A", b="B"}'
@@ -532,6 +529,6 @@
-  d:pushRight(4); assertEq(1, #d)
-  d:pushRight(5); assertEq(2, #d)
-  d:pushLeft(3);  assertEq(3, #d)
-  assertEq(3, d());          assertEq(2, #d)
-  assertEq(5, d:popRight()); assertEq(1, #d)
-  assertEq(4, d());          assertEq(0, #d)
+  d:pushRight(4); T.eq(1, #d)
+  d:pushRight(5); T.eq(2, #d)
+  d:pushLeft(3);  T.eq(3, #d)
+  T.eq(3, d());          T.eq(2, #d)
+  T.eq(5, d:popRight()); T.eq(1, #d)
+  T.eq(4, d());          T.eq(0, #d)
@@ -542 +539 @@
-  assertEq({[-1]=4, [0]=5, 1, 2, 6, 7, left=-1, right=4},
+  T.eq({[-1]=4, [0]=5, 1, 2, 6, 7, left=-1, right=4},
@@ -544,2 +541,2 @@
-  assertEq({4, 5, 1, 2, 6, 7}, setmetatable(d, M.Deq):drain())
-  assertEq({left=1, right=0}, setmetatable(d, nil))
+  T.eq({4, 5, 1, 2, 6, 7}, setmetatable(d, M.Deq):drain())
+  T.eq({left=1, right=0}, setmetatable(d, nil))
@@ -560 +557 @@
-  assertEq({
+  T.eq({
@@ -566 +563 @@
-  local ok, err = M.try(c); assertEq(false, ok)
+  local ok, err = M.try(c); T.eq(false, ok)
@@ -576 +573 @@
-  assertEq(expect, err)
+  T.eq(expect, err)
@@ -581 +578 @@
-  assertEq(expect, M.Error.from(msg, cor))
+  T.eq(expect, M.Error.from(msg, cor))
@@ -595,8 +592,8 @@
-  assertEq(t, It:ofList(t):to())
-  assertEq(t, It:of(t):to())
-  assertEq(t, It:ofList(t):valsTo())
-  assertEq({1, 2, 3, 4}, It:ofList(t):keysTo())
-
-  assertEq({4, 5, [4]=7}, It:ofList(t):filter(numberVals):to())
-  assertEq({1, 2, 4}, It:ofList(t):filter(numberVals):keysTo())
-  assertEq({4, 5, 7}, It:ofList(t):filter(numberVals):valsTo())
+  T.eq(t, It:ofList(t):to())
+  T.eq(t, It:of(t):to())
+  T.eq(t, It:ofList(t):valsTo())
+  T.eq({1, 2, 3, 4}, It:ofList(t):keysTo())
+
+  T.eq({4, 5, [4]=7}, It:ofList(t):filter(numberVals):to())
+  T.eq({1, 2, 4}, It:ofList(t):filter(numberVals):keysTo())
+  T.eq({4, 5, 7}, It:ofList(t):filter(numberVals):valsTo())
@@ -604,2 +601,2 @@
-  assertEq({4, 5, 7}, It:ofList(t):filterV(isNumber):valsTo())
-  assertEq({6, 7, 9},
+  T.eq({4, 5, 7}, It:ofList(t):filterV(isNumber):valsTo())
+  T.eq({6, 7, 9},
@@ -609,3 +606,3 @@
-  assertEq(strs, It:ofList(t):map(vToString):to())
-  assertEq(strs, It:ofList(t):mapV(tostring):to())
-  assertEq({1, 2, 3, 4}, It:ofList(t):mapV(tostring):keysTo())
+  T.eq(strs, It:ofList(t):map(vToString):to())
+  T.eq(strs, It:ofList(t):mapV(tostring):to())
+  T.eq({1, 2, 3, 4}, It:ofList(t):mapV(tostring):keysTo())
@@ -613 +610 @@
-  assertEq({['1'] = 4, ['2'] = 5, ['3'] = 'six', ['4'] = 7},
+  T.eq({['1'] = 4, ['2'] = 5, ['3'] = 'six', ['4'] = 7},
@@ -617,2 +614,2 @@
-  assertEq({11, 22, 33,  44}, It:ofList(t):lookupK(lk):keysTo())
-  assertEq({44, 55, 666, 77}, It:of(t):lookupV(lk):to())
+  T.eq({11, 22, 33,  44}, It:ofList(t):lookupK(lk):keysTo())
+  T.eq({44, 55, 666, 77}, It:of(t):lookupV(lk):to())
@@ -623 +620 @@
-  assertEq({11, 22, 33,  44}, res)
+  T.eq({11, 22, 33,  44}, res)
@@ -627 +624 @@
-  -- assertEq({11, 22, 33,  44}, res)
+  -- T.eq({11, 22, 33,  44}, res)
@@ -631 +628 @@
-  -- assertEq({44, 55, 666, 77}, res)
+  -- T.eq({44, 55, 666, 77}, res)
@@ -635 +632 @@
-  assertEq(t['001'], 1); assertEq(t['100'], 100);
+  T.eq(t['001'], 1); T.eq(t['100'], 100);
@@ -637,2 +634,2 @@
-  assertEq(expect, It:ofOrdMap(t):valsTo())
-  assertEq(expect, It:ofOrdMap(t):index():to())
+  T.eq(expect, It:ofOrdMap(t):valsTo())
+  T.eq(expect, It:ofOrdMap(t):index():to())
@@ -640 +637 @@
-  assertEq({a=1, b=2, c=3}, It:of{'a', 'b', 'c'}:swap():to())
+  T.eq({a=1, b=2, c=3}, It:of{'a', 'b', 'c'}:swap():to())
@@ -643,2 +640,2 @@
-  assertEq({40, 50, 60},             It:ofSlc(t, 4):valsTo())
-  assertEq({[4]=40, [5]=50, [6]=60}, It:ofSlc(t, 4):to())
+  T.eq({40, 50, 60},             It:ofSlc(t, 4):valsTo())
+  T.eq({[4]=40, [5]=50, [6]=60}, It:ofSlc(t, 4):to())
@@ -646,2 +643,2 @@
-  assertEq({[2]=20, [4]=40}, It:of(t):keyIn{[2]=1,  [4]=1}:to())
-  assertEq({[2]=20, [4]=40}, It:of(t):valIn{[20]=1, [40]=1}:to())
+  T.eq({[2]=20, [4]=40}, It:of(t):keyIn{[2]=1,  [4]=1}:to())
+  T.eq({[2]=20, [4]=40}, It:of(t):valIn{[20]=1, [40]=1}:to())
@@ -649,4 +646,4 @@
-  assertEq(true,  It:of{true, true, true}:all())
-  assertEq(false, It:of{true, false, true}:all())
-  assertEq(true,  It:of{false, false, true, false}:any())
-  assertEq(false, It:of{false, false, false, false}:any())
+  T.eq(true,  It:of{true, true, true}:all())
+  T.eq(false, It:of{true, false, true}:all())
+  T.eq(true,  It:of{false, false, true, false}:any())
+  T.eq(false, It:of{false, false, false, false}:any())
@@ -674 +671 @@
-  assertEq(#chrs, len)
+  T.eq(#chrs, len)
@@ -676 +673 @@
-  assertEq(expect, utf8.char(c))
+  T.eq(expect, utf8.char(c))
@@ -716 +713 @@
-  L.info'test info';              assertEq({4, 'test info'}, pop(logs))
+  L.info'test info';              T.eq({4, 'test info'}, pop(logs))
@@ -718 +715 @@
-    assertEq({4, 'test %s', 'fmt'}, pop(logs))
+    T.eq({4, 'test %s', 'fmt'}, pop(logs))
@@ -721 +718 @@
-    assertEq({4, 'test %s', 'data', {1}}, pop(logs))
+    T.eq({4, 'test %s', 'data', {1}}, pop(logs))
@@ -724,3 +721,3 @@
-  L.info'test no log'; assertEq(0, #logs)
-  L.warn'test warn';   assertEq({3, 'test warn'}, pop(logs))
-  assertEq(0, #logs)
+  L.info'test no log'; T.eq(0, #logs)
+  L.warn'test warn';   T.eq({3, 'test warn'}, pop(logs))
+  T.eq(0, #logs)
@@ -738,2 +735,2 @@
-    local m = lvl..cxt; assertMatch(m, res)
-    assertEq(expect, res:sub(#res:match(m) + 1))
+    local m = lvl..cxt; T.matches(m, res)
+    T.eq(expect, res:sub(#res:match(m) + 1))
@@ -754 +751 @@
-    assertEq('\n\n', fmt(g))
+    T.eq('\n\n', fmt(g))
@@ -756 +753 @@
-    assertEq('\n hello\n', fmt(g))
+    T.eq('\n hello\n', fmt(g))
@@ -758 +755 @@
-    assertEq('\n he is my friend\n', fmt(g))
+    T.eq('\n he is my friend\n', fmt(g))
@@ -760 +757 @@
-  g:clear(); assertEq('\n\n', fmt(g))
+  g:clear(); T.eq('\n\n', fmt(g))
@@ -762 +759 @@
-    assertEq('  hi\n'
+    T.eq('  hi\n'
@@ -767 +764 @@
-    assertEq('  hi     there\n'
+    T.eq('  hi     there\n'
@@ -773 +770 @@
-    assertEq('13 5 7 9\n 2 4 6\n', fmt(g))
+    T.eq('13 5 7 9\n 2 4 6\n', fmt(g))
@@ -777 +774 @@
-    assertEq('\n  hi\n', fmt(g))
+    T.eq('\n  hi\n', fmt(g))
@@ -779 +776 @@
-    assertEq(
+    T.eq(

--- lib/fd/Makefile
+++ lib/fd/Makefile
@@ -9 +9 @@
-UNAME := $(shell uname)
+UNAME != uname
@@ -10,0 +11 @@
+NetBSD: $(OUT).so
@@ -19,0 +21,4 @@
+BuildNetBSD:
+	echo "building NetBSD"
+	$(CC) $(FILES) -fPIC -O0 -g -llua -lpthread -I/usr/pkg/include/$(LUA_VERSION) -shared -o $(OUT).so
+

--- lib/fd/fd.c
+++ lib/fd/fd.c
@@ -112 +112,3 @@
-  else if (pthread_create(&fdt->th, NULL, FDT_run, (void*)fdt)) {
+  if (pthread_create(
+        &fdt->th, /*attr=*/ NULL,
+      /*start_routine=*/FDT_run, /*arg=*/(void*)fdt)) {

--- lib/fd/fd.lua
+++ lib/fd/fd.lua
@@ -281,0 +282 @@
+M.tmpfile = M._sync.tmpfile
@@ -347 +348 @@
-local IO_KEYS = [[
+local IO_KEYS = {}; for k in ([[
@@ -353 +354,2 @@
-]]
+]]):gmatch'%w+' do push(IO_KEYS, k) end
+
@@ -355 +357 @@
-  for k in keys:gmatch'%w+' do
+  for _, k in ipairs(keys) do
@@ -360,0 +363,3 @@
+M.ioStd = function()
+  assert(not LAP_ASYNC); copyKeysM(IO_KEYS, M.io,    io)
+end

--- lib/fd/fd/IFile.lua
+++ lib/fd/fd/IFile.lua
@@ -0,0 +1,5 @@
+-- FIXME: __index / etc cannot be support for async operations
+--   since they can cause yielding across a C-boundary for
+--   things like table.move. Therefore, don't do them for
+--   these types. Instead, manually support the methods or figure
+--   somethinge else out.
@@ -1,0 +7,2 @@
+local ds = require'ds'
+
@@ -9,0 +17 @@
+
@@ -12,0 +21 @@
+local trace = require'ds.log'.trace
@@ -16,0 +26 @@
+-- FIXME: only seek when pos is different OR switching between reading / writing
@@ -18 +28 @@
-  if fi._i == i then return end
+  -- if fi._i == i then return end
@@ -84,0 +95 @@
+

--- lib/fd/test.lua
+++ lib/fd/test.lua
@@ -3,2 +3 @@
-local T   = require'civtest'.Test
-local CT = require'civtest'
+local T   = require'civtest'
@@ -6,0 +6,4 @@
+local ix = require'civix'
+local ixt = require'civix.testing'
+local info = require'ds.log'.info
+
@@ -8 +11,4 @@
-local aeq = T.eq
+
+local io_open = io.open
+T.eq(M.io.open, io_open)
+
@@ -9,0 +16 @@
+assert(io.open ~= io_open)
@@ -12,0 +20,3 @@
+---------------------
+-- non-general tests
+
@@ -14,2 +24,2 @@
-  aeq(0xFF00, 0xFFFF & (~0x00FF))
-  aeq(0xF0F0, 0xFFFF & (~0x0F0F))
+  T.eq(0xFF00, 0xFFFF & (~0x00FF))
+  T.eq(0xF0F0, 0xFFFF & (~0x0F0F))
@@ -19,9 +29,29 @@
-  local f = M.open(p, 'w'); aeq(0, f:code())
-  aeq(0, f:_write'line 1\nline 2\n')
-  f:close()
-  f = M.open(p, 'r'); aeq(0, f:code())
-  aeq(S.FD_EOF, f:_read())
-  aeq('line 1\nline 2\n', f:_pop())
-  aeq('file', M.type(f))
-  f:flush()
-  f:close(); aeq('closed file', M.type(f))
+  local f = M.open(p, 'w'); T.eq(0, f:code())
+  print'opened'
+  T.eq(0, f:_write'line 1\nline 2\n'); print'wrote lines'
+  f:close(); print'closed'
+  f = M.open(p, 'r'); T.eq(0, f:code()) print'opened'
+  T.eq(S.FD_EOF, f:_read()) print'read EOF'
+  T.eq('line 1\nline 2\n', f:_pop())
+  T.eq('file', M.type(f)); print'got type'
+  f:flush();              print'flushed'
+  f:close(); T.eq('closed file', M.type(f))
+end
+
+--------------------
+-- General tests (sync or async with any io impl)
+local fin = false
+
+local generalTest = function()
+T.openWriteRead = function()
+  local f = assert(io.open(p, 'w'))
+  assert(f:write'line 1\nline 2\n'); f:close()
+
+  f = assert(io.open(p, 'r'))
+  T.eq('line 1\nline 2\n', f:read'a')
+  T.eq('file', M.type(f))
+  f:close();
+  for _=1,10 do
+    if M.type(f) ~= 'closed file' then ix.sleep(0.001) end
+  end
+  T.eq('closed file', M.type(f))
@@ -30,14 +59,0 @@
-CT.lapTest('read', function()
-  local f = M.open(p, 'r'); aeq(0, f:code())
-  aeq('line 1\nline 2\n', f:read'a'); aeq(14, f:pos())
-  f:close()
-end)
-
-CT.lapTest('read line', function()
-  local f = M.open(p, 'r')
-  aeq('line 1',   f:read'l')
-  aeq('line 2\n', f:read'L')
-  aeq(nil,        f:read'l')
-  f:close()
-end)
-
@@ -45,47 +61,3 @@
-  local f = M.open(p, 'a'); aeq(0, f:code())
-  aeq(14, f:pos())
-  f:write'line 3\n'; aeq(21, f:pos())
-end
-CT.asyncTest('append', function()
-  local f = M.open(p, 'a'); aeq(0, f:code())
-  aeq(21, f:pos())
-  f:write'line 4\n'; aeq(28, f:pos())
-end)
-
-local text = 'line 1\nline 2\nline 3\nline 4\n'
-CT.asyncTest('openFDT -> _read', function()
-  local f = M.openFDT(p); aeq(M.FDT, getmetatable(f))
-  aeq(0, f:code())
-  f:_read(); while f:code() == S.FD_RUNNING do end
-  aeq(S.FD_EOF, f:code())
-  aeq(text, f:_pop())
-  f:close()
-end)
-
-CT.asyncTest('FDT:read', function()
-  local f = M.openFDT(p); aeq(text, f:read'a'); f:close()
-end)
-
-CT.asyncTest('FDT:lines', function()
-  local f = M.openFDT(p)
-  aeq('line 1',   f:read'l')
-  aeq('line 2\n', f:read'L')
-  aeq('line 3\n', f:read'L')
-  aeq('line 4\n', f:read'L')
-  aeq(nil,        f:read'l')
-end)
-
-T['fileno and friends'] = function()
-  aeq(type(io.stderr), 'userdata')
-  assert(iotype(io.stderr))
-  aeq(0, M.fileno(io.stdin))
-  aeq(2, M.fileno(io.stderr))
-  aeq(false, M.isatty(io.tmpfile()))
-  aeq(false, M.isatty(M.tmpfile()))
-  aeq(true,  M.isatty(io.stderr))
-  aeq(true,  M.isatty(2))
-
-  aeq('chr', M.ftype(io.stdin))
-  aeq('chr', M.ftype(io.stdout))
-  aeq('file', M.ftype(io.tmpfile()))
-  aeq('file', M.ftype( M.tmpfile()))
+  local f = assert(io.open(p, 'a'))
+  T.eq(14, f:seek'cur')
+  f:write'line 3\n'; T.eq(21, f:seek'cur')
@@ -94,3 +66,5 @@
-local pipeTest = function(r, w)
-  w:write'hi there'
-  aeq('hi', r:read(2)); aeq(' there', r:read(6))
+T.read = function()
+  local f = assert(io.open(p, 'r'))
+  T.eq('line 1\nline 2\nline 3\n', f:read'a')
+  T.eq(21, f:seek'cur')
+  f:close()
@@ -98,8 +71,0 @@
-T.pip = function() pipeTest(S.pipe()) end
-CT.asyncTest('pipe', function()
-  local r, w = S.pipe()
-  pipeTest(r:toNonblock(), w:toNonblock())
-  aeq(S.EWOULDBLOCK, r:_read(1))
-  w:write'bye'
-  aeq('b', r:read(1)); aeq('ye', r:read(2))
-end)
@@ -107,4 +73,7 @@
---- testFn(openFn) is called with both file types.
-local allFileTest = function(testFn)
-  testFn(M.io.open)
-  testFn(M.open)
+T.readLine = function()
+  local f = io.open(p, 'r')
+  T.eq('line 1',   f:read'l')
+  T.eq('line 2',   f:read'l')
+  T.eq('line 3\n', f:read'L')
+  T.eq(nil,        f:read'L')
+  f:close()
@@ -114,2 +83,2 @@
-T.checkBoth = function() allFileTest(function(open)
-  local f = open(p, 'w+')
+T.generalFile = function()
+  local f = io.open(p, 'w+')
@@ -136 +105 @@
-end) end
+end
@@ -137,0 +107,15 @@
+T.fileno_and_friends = function()
+  T.eq(type(io.stderr), 'userdata')
+  assert(iotype(io.stderr))
+  T.eq(0, M.fileno(io.stdin))
+  T.eq(2, M.fileno(io.stderr))
+  T.eq(false, M.isatty(io.tmpfile()))
+  T.eq(false, M.isatty(M.tmpfile()))
+  T.eq(true,  M.isatty(io.stderr))
+  T.eq(true,  M.isatty(2))
+
+  T.eq('chr', M.ftype(io.stdin))
+  T.eq('chr', M.ftype(io.stdout))
+  -- FIXME:
+  -- T.eq('file', M.ftype(io.tmpfile()))
+end
@@ -141,0 +126 @@
+  if G.LAP_ASYNC then return 'FIXME: IFile async' end
@@ -153,0 +139,63 @@
+fin=true; end ----------------- end generalTest
+
+T.SUBNAME = '[ioStd]'; M.ioStd()
+fin=false; generalTest(); assert(fin)
+
+T.SUBNAME = '[ioSync]'; M.ioSync()
+fin=false; generalTest(); assert(fin)
+
+T.SUBNAME = ''
+
+---------------------
+-- Targeted tests (async)
+local pipeTest = function(r, w)
+  w:write'hi there'
+  T.eq('hi', r:read(2)); T.eq(' there', r:read(6))
+end
+
+T.pipe = function() pipeTest(S.pipe()) end
+
+fin = 0
+ixt.runAsyncTest(function()
+T.pipe_async = function()
+  local r, w = S.pipe()
+  pipeTest(r:toNonblock(), w:toNonblock())
+  T.eq(S.EWOULDBLOCK, r:_read(1))
+  w:write'bye'
+  T.eq('b', r:read(1)); T.eq('ye', r:read(2))
+  fin = fin + 1
+end
+
+local text = 'line 1\nline 2\nline 3\nline 4\n'
+T.FDT_write = function()
+  local f = assert(M.openFDT(p, 'w')); info'opened'
+  T.eq(M.FDT, getmetatable(f))
+  T.eq(0, f:code())
+  assert(f:write(text))
+  f:close()
+  fin = fin + 1
+end
+
+T.FDT_read = function()
+  info'started test'
+  local f = assert(M.openFDT(p)); info'opened'
+  T.eq(M.FDT, getmetatable(f))
+  T.eq(0, f:code())
+  f:_read(); info'started read'
+  while f:code() == S.FD_RUNNING do end
+  T.eq(S.FD_EOF, f:code())
+  T.eq(text, f:_pop())
+  f:close()
+  fin = fin + 1
+end
+end) -------------- runAsyncTest
+T.eq(3, fin)
+
+--- Now run the general test in async mode
+T.SUBNAME = '[ioAsync]'
+fin=false
+ixt.runAsyncTest(generalTest)
+assert(fin)
+
+T.SUBNAME = ''
+M.ioStd()

--- lib/fmt/test.lua
+++ lib/fmt/test.lua
@@ -2,2 +2 @@
-local T = require'civtest'.Test
-local CT = require'civtest'
+local T = require'civtest'
@@ -7 +5,0 @@
-local assertEq, assertMatch = T.eq, CT.assertMatch
@@ -10,9 +8,9 @@
-  assertEq('"a123"',    fmt("a123"))
-  assertEq('"123"',     fmt("123"))
-  assertEq('"abc def"', fmt("abc def"))
-  assertEq('423',       fmt(423))
-  assertEq('1A',        M.tostring(26, M.Fmt{numfmt='%X'}))
-  assertEq('true',      fmt(true))
-  assertMatch('fn"fmt.errorf"%[.*/fmt%.lua:%d+%]', fmt(M.errorf))
-  assertMatch('{hi=4}', fmt{hi=4})
-  assertMatch('{hi=4}',
+  T.eq('"a123"',    fmt("a123"))
+  T.eq('"123"',     fmt("123"))
+  T.eq('"abc def"', fmt("abc def"))
+  T.eq('423',       fmt(423))
+  T.eq('1A',        M.tostring(26, M.Fmt{numfmt='%X'}))
+  T.eq('true',      fmt(true))
+  T.matches('fn"fmt.errorf"%[.*/fmt%.lua:%d+%]', fmt(M.errorf))
+  T.matches('{hi=4}', fmt{hi=4})
+  T.matches('{hi=4}',
@@ -24 +22 @@
-  assertEq("{1, 2, 3}", M.tostring{1, 2, 3})
+  T.eq("{1, 2, 3}", M.tostring{1, 2, 3})
@@ -27 +25 @@
-  assertMatch('{!max depth reached!}',    M.tostring(t))
+  T.matches('{!max depth reached!}',    M.tostring(t))
@@ -29 +27 @@
-  assertEq( [[{baz="boo", foo="bar"}]],
+  T.eq( [[{baz="boo", foo="bar"}]],
@@ -32,4 +30,4 @@
-  assertEq('{\n  a=1,\n  b=2,\n  c=3\n}', result)
-  assertEq('{1, 2, a=12}', M.tostring{1, 2, a=12})
-  assertEq('{["a b"]=5}', M.tostring{['a b'] = 5})
-  assertEq('{\n  1, 2, \n  a=12\n}',
+  T.eq('{\n  a=1,\n  b=2,\n  c=3\n}', result)
+  T.eq('{1, 2, a=12}', M.tostring{1, 2, a=12})
+  T.eq('{["a b"]=5}', M.tostring{['a b'] = 5})
+  T.eq('{\n  1, 2, \n  a=12\n}',
@@ -40 +38 @@
-  assertEq('hi "Bob"! Goodbye',
+  T.eq('hi "Bob"! Goodbye',
@@ -42 +40 @@
-  assertEq('running point: {x=3, y=7}...',
+  T.eq('running point: {x=3, y=7}...',
@@ -52,2 +50,2 @@
-  assertEq('A{a2=5, a1="hi"}', fmt(A{a1='hi', a2=5}))
-  assertEq('B{b1=5, b2=7, a=A{a2=4, a1="hi"}}', fmt(B{
+  T.eq('A{a2=5, a1="hi"}', fmt(A{a1='hi', a2=5}))
+  T.eq('B{b1=5, b2=7, a=A{a2=4, a1="hi"}}', fmt(B{

--- lib/lap/lap.lua
+++ lib/lap/lap.lua
@@ -29,0 +30,6 @@
+M.reset = function()
+  assert(not LAP_ASYNC, "don't clear while still running")
+  G.LAP_READY, G.LAP_TRACE = {}, {}
+  G.LAP_CORS = ds.WeakKV{}
+end
+

--- lib/lap/test.lua
+++ lib/lap/test.lua
@@ -3,2 +3 @@
-local CT = require'civtest'
-local T = CT.Test
+local T = require'civtest'
@@ -12 +11,28 @@
-CT.asyncTest('schedule', function()
+T.execute = function()
+  local l = M.Lap{}
+  local v = 0
+  local res = l:execute(co.create(
+    function() v = 3; yield'forget' end
+  ))
+  T.eq(3, v)
+  T.eq(nil, res)
+  local res = l:execute(co.create(
+    function() yield'foo' end
+  ))
+  T.eq('unknown kind: foo', res)
+
+  local errFn = function() error'bar' end
+  local res = l:execute(co.create(errFn))
+  T.matches(': bar', res)
+end
+
+local finished = 0
+local slept, mono = 0, 0
+local l = M.Lap {
+  sleepFn=function() slept = slept + 1 end,
+  monoFn=function() mono = mono + 1; return mono end,
+  pollList=ds.nosupport,
+}
+
+local _, errors = l:run{function()
+T.schedule =  function()
@@ -25 +51,2 @@
-end)
+  finished = finished + 1
+end
@@ -27 +54 @@
-CT.asyncTest('ch', function()
+T.ch = function()
@@ -46,18 +73 @@
-end)
-
-T.execute = function()
-  local l = M.Lap{}
-  local v = 0
-  local res = l:execute(co.create(
-    function() v = 3; yield'forget' end
-  ))
-  T.eq(3, v)
-  T.eq(nil, res)
-  local res = l:execute(co.create(
-    function() yield'foo' end
-  ))
-  T.eq('unknown kind: foo', res)
-
-  local errFn = function() error'bar' end
-  local res = l:execute(co.create(errFn))
-  CT.assertMatch(': bar', res)
+  finished = finished + 1
@@ -64,0 +75,6 @@
+end} -- end l:run
+
+if errors then error('lap found errors:\n'..fmt(errors)) end
+assert(l:isDone())
+T.eq(2, finished)
+M.reset()
@@ -65,0 +82,2 @@
+-- note: update when necessary. These just prove determinism
+T.eq(9, slept); T.eq(9, mono)

--- lib/lines/lines/testing.lua
+++ lib/lines/lines/testing.lua
@@ -7 +6,0 @@
-local assertEq = T.assertEq
@@ -15 +14 @@
-  T.assertEq(expect, {l2, c2})
+  T.eq(expect, {l2, c2})
@@ -17 +16 @@
-  T.assertEq(expectOff or off, res)
+  T.eq(expectOff or off, res)
@@ -26 +25 @@
-  T.assertEq({1, 1}, {lines.offset(t, -1, 1, 1)})
+  T.eq({1, 1}, {lines.offset(t, -1, 1, 1)})
@@ -60,2 +59,2 @@
-  local assertEqR = assertEqRemove or T.assertEq
-  local assertEq = assertEq or T.assertEq
+  local assertEqR = assertEqRemove or T.eq
+  local assertEq = assertEq or T.eq

--- lib/lines/test.lua
+++ lib/lines/test.lua
@@ -7 +7 @@
-local T = require'civtest'.Test
+local T = require'civtest'

--- lib/lines/test_buffer.lua
+++ lib/lines/test_buffer.lua
@@ -5 +5 @@
-local test, assertEq; require'ds'.auto'civtest'
+local T = require'civtest'
@@ -12 +12 @@
-test('undoIns', function()
+T.undoIns = function()
@@ -19,2 +19,2 @@
-  assertEq(ch1, ch)
-  assertEq('hello ', fmt(g))
+  T.eq(ch1, ch)
+  T.eq('hello ', fmt(g))
@@ -24,2 +24,2 @@
-  assertEq(ch2, ch)
-  assertEq('hello world!', fmt(g))
+  T.eq(ch2, ch)
+  T.eq('hello world!', fmt(g))
@@ -29,2 +29,2 @@
-  assertEq({CS{l1=0, c1=1}, ch2}, chs)
-  assertEq('hello ', fmt(g))
+  T.eq({CS{l1=0, c1=1}, ch2}, chs)
+  T.eq('hello ', fmt(g))
@@ -33,2 +33,2 @@
-  assertEq({CS{l1=0, c1=1}, ch2}, chs)
-  assertEq('hello world!', fmt(g))
+  T.eq({CS{l1=0, c1=1}, ch2}, chs)
+  T.eq('hello world!', fmt(g))
@@ -37,2 +37,2 @@
-  assertEq({CS{l1=0, c1=1}, ch2}, chs)
-  assertEq('hello ', fmt(g))
+  T.eq({CS{l1=0, c1=1}, ch2}, chs)
+  T.eq('hello ', fmt(g))
@@ -42,2 +42,2 @@
-  assertEq({CS{l1=0, c1=0}, ch1}, chs)
-  assertEq('', fmt(g))
+  T.eq({CS{l1=0, c1=0}, ch1}, chs)
+  T.eq('', fmt(g))
@@ -45,3 +45,3 @@
-  assertEq({CS{l1=0, c1=1}, ch2}, chs)
-  assertEq('hello world!', fmt(g))
-end)
+  T.eq({CS{l1=0, c1=1}, ch2}, chs)
+  T.eq('hello world!', fmt(g))
+end
@@ -49 +49 @@
-test('undoInsRm', function()
+T.undoInsRm = function()
@@ -54 +54 @@
-  ch = b:insert('12345\n', 1, 2); assertEq(ch1, ch)
+  ch = b:insert('12345\n', 1, 2); T.eq(ch1, ch)
@@ -57,2 +57,2 @@
-  ch = b:remove(1, 1, 1, 2);      assertEq(ch2, ch)
-  assertEq('345\n', fmt(g))
+  ch = b:remove(1, 1, 1, 2);      T.eq(ch2, ch)
+  T.eq('345\n', fmt(g))
@@ -60,2 +60,2 @@
-  ch = b:undo()[2]                assertEq(ch2, ch)
-  assertEq('12345\n', fmt(g))
+  ch = b:undo()[2]                T.eq(ch2, ch)
+  T.eq('12345\n', fmt(g))
@@ -63,3 +63,3 @@
-  ch = b:redo()[2]                assertEq(ch2, ch)
-  assertEq('345\n', fmt(g))
-end)
+  ch = b:redo()[2]                T.eq(ch2, ch)
+  T.eq('345\n', fmt(g))
+end
@@ -67 +67 @@
-test('undoReal', function() -- undo/redo word deleting
+T.undoReal = function() -- undo/redo word deleting
@@ -74,10 +74,10 @@
-  ch = b:remove(1, 7, 1, 8); assertEq(ch1, ch)
-  assertEq("4     's nice to have some real data", fmt(g))
-  ch = b:remove(1, 7, 1, 7); assertEq(ch2, ch)
-  assertEq("4     s nice to have some real data", fmt(g))
-
-  local chs = b:undo();      assertEq({CS{l1=0, c1=0}, ch1, ch2}, chs)
-  assertEq("4     It's nice to have some real data", fmt(g))
-  ch = b:redo();             assertEq({CS{l1=0, c1=0}, ch1, ch2}, chs)
-  assertEq("4     s nice to have some real data", fmt(g))
-end)
+  ch = b:remove(1, 7, 1, 8); T.eq(ch1, ch)
+  T.eq("4     's nice to have some real data", fmt(g))
+  ch = b:remove(1, 7, 1, 7); T.eq(ch2, ch)
+  T.eq("4     s nice to have some real data", fmt(g))
+
+  local chs = b:undo();      T.eq({CS{l1=0, c1=0}, ch1, ch2}, chs)
+  T.eq("4     It's nice to have some real data", fmt(g))
+  ch = b:redo();             T.eq({CS{l1=0, c1=0}, ch1, ch2}, chs)
+  T.eq("4     s nice to have some real data", fmt(g))
+end
@@ -85 +85 @@
-test('undoMulti', function() -- undo/redo across multi lines
+T.undoMulti = function() -- undo/redo across multi lines
@@ -88 +88 @@
-  assertEq(START, fmt(g))
+  T.eq(START, fmt(g))
@@ -92,2 +92,2 @@
-  ch = b:remove(1, 4, 1, 4); assertEq(ch1, ch)
-  assertEq('123456\n789\nabc', fmt(g))
+  ch = b:remove(1, 4, 1, 4); T.eq(ch1, ch)
+  T.eq('123456\n789\nabc', fmt(g))
@@ -95,2 +95,2 @@
-  ch = b:remove(1, 7, 1, 7); assertEq(ch2, ch)
-  assertEq('123456789\nabc', fmt(g))
+  ch = b:remove(1, 7, 1, 7); T.eq(ch2, ch)
+  T.eq('123456789\nabc', fmt(g))
@@ -98,2 +98,2 @@
-  ch = b:undo()[2]                assertEq(ch2, ch)
-  assertEq('123456\n789\nabc', fmt(g))
+  ch = b:undo()[2]                T.eq(ch2, ch)
+  T.eq('123456\n789\nabc', fmt(g))
@@ -101,3 +101,3 @@
-  ch = b:undo()[2]                assertEq(ch1, ch)
-  assertEq(START, fmt(g))
-end)
+  ch = b:undo()[2]                T.eq(ch1, ch)
+  T.eq(START, fmt(g))
+end

--- lib/lines/test_diff.lua
+++ lib/lines/test_diff.lua
@@ -6 +6 @@
-local T = require'civtest'.Test
+local T = require'civtest'

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -5 +5,2 @@
-local test, assertEq, assertMatch, assertErrorPat; ds.auto'civtest'
+
+local T = require'civtest'
@@ -27 +28 @@
-test('U3File', function()
+T.U3File = function()
@@ -31,10 +32,10 @@
-  assertEq(11, u[1])
-  assertEq(22, u[2])
-  assertEq(33, u[3]); assertEq(nil, rawget(u, 3))
-  assertEq({11, 22, 33}, loadu3s(u.f))
-  assertEq(11, u[1]) -- testing loadu3s
-  assertEq(3, #u)
-
-  u[2] = 20; assertEq({11, 20, 33}, loadu3s(u.f))
-  assertEq(20, u[2])
-  assertEq(33, u[3])
+  T.eq(11, u[1])
+  T.eq(22, u[2])
+  T.eq(33, u[3]); T.eq(nil, rawget(u, 3))
+  T.eq({11, 22, 33}, loadu3s(u.f))
+  T.eq(11, u[1]) -- testing loadu3s
+  T.eq(3, #u)
+
+  u[2] = 20; T.eq({11, 20, 33}, loadu3s(u.f))
+  T.eq(20, u[2])
+  T.eq(33, u[3])
@@ -43,3 +44,3 @@
-  assertEq({10, 20, 33, 44, 55}, loadu3s(u.f))
-  assertEq(10, u[1])
-  assertEq(55, u[5])
+  T.eq({10, 20, 33, 44, 55}, loadu3s(u.f))
+  T.eq(10, u[1])
+  T.eq(55, u[5])
@@ -48,2 +49,2 @@
-  assertEq({10, 20, 33, 44, 55}, l)
-  assertEq(5, #u)
+  T.eq({10, 20, 33, 44, 55}, l)
+  T.eq(5, #u)
@@ -53,3 +54,3 @@
-  assertEq(0, u[1])
-  assertEq(7, u[4])
-end)
+  T.eq(0, u[1])
+  T.eq(7, u[4])
+end
@@ -57 +58 @@
-test('reindex', function()
+T.reindex = function()
@@ -62,2 +63,2 @@
-  assertEq(#txt, reindex(f, idx))
-    assertEq({0, 3, 9}, idx)
+  T.eq(#txt, reindex(f, idx))
+    T.eq({0, 3, 9}, idx)
@@ -66,2 +67,2 @@
-  assertEq(#txt + 1, reindex(f, idx))
-    assertEq({0, 3, 9, 15}, idx)
+  T.eq(#txt + 1, reindex(f, idx))
+    T.eq({0, 3, 9, 15}, idx)
@@ -71,3 +72,3 @@
-  assertEq(#txt + 1, reindex(f, idx, 3, 9))
-    assertEq({0, 3, 9, 15}, idx)
-end)
+  T.eq(#txt + 1, reindex(f, idx, 3, 9))
+    T.eq({0, 3, 9, 15}, idx)
+end
@@ -75 +76 @@
-test('File', function()
+T.File = function()
@@ -77,2 +78,2 @@
-  assertEq('lines.File()', fmt(f))
-  assertEq(0, #f); assertEq({}, ds.icopy(f))
+  T.eq('lines.File()', fmt(f))
+  T.eq(0, #f); T.eq({}, ds.icopy(f))
@@ -82,4 +83,4 @@
-    assertEq({0, 4, 8}, ds.icopy(f.idx))
-    assertEq('one',   f[1])
-    assertEq('three', f[3])
-    assertEq(dat, ds.icopy(f))
+    T.eq({0, 4, 8}, ds.icopy(f.idx))
+    T.eq('one',   f[1])
+    T.eq('three', f[3])
+    T.eq(dat, ds.icopy(f))
@@ -87 +88 @@
-  assertEq('one', f[1])
+  T.eq('one', f[1])
@@ -89,2 +90,2 @@
-    assertEq(dat, ds.icopy(f))
-  assertEq(4, #f); assertEq('four', f[#f])
+    T.eq(dat, ds.icopy(f))
+  T.eq(4, #f); T.eq('four', f[#f])
@@ -93 +94 @@
-  assertEq('four: still in line four',          f[4])
+  T.eq('four: still in line four',          f[4])
@@ -95 +96 @@
-  assertEq('four: still in line four and this', f[4])
+  T.eq('four: still in line four and this', f[4])
@@ -97 +98 @@
-  assertEq('one\ntwo\nthree\n', pth.read(SMALL))
+  T.eq('one\ntwo\nthree\n', pth.read(SMALL))
@@ -99,2 +100,2 @@
-  assertEq({'one', 'two', 'three', ''}, ds.icopy(f))
-  assertEq('two', f[2])
+  T.eq({'one', 'two', 'three', ''}, ds.icopy(f))
+  T.eq('two', f[2])
@@ -104,2 +105,2 @@
-  assertEq({0, 7, 14}, ds.icopy(f.idx))
-  assertEq({'line 1', 'line 2', 'line 3'}, ds.icopy(f))
+  T.eq({0, 7, 14}, ds.icopy(f.idx))
+  T.eq({'line 1', 'line 2', 'line 3'}, ds.icopy(f))
@@ -109,2 +110,2 @@
-  assertEq({'line 1', 'line 2', 'line 3'}, ds.icopy(r))
-end)
+  T.eq({'line 1', 'line 2', 'line 3'}, ds.icopy(r))
+end
@@ -113,3 +114,3 @@
-  assertEq(EdFile, getmetatable(a))
-  assertEq(EdFile, getmetatable(b))
-  assertEq(ds.icopy(a), ds.icopy(b))
+  T.eq(EdFile, getmetatable(a))
+  T.eq(EdFile, getmetatable(b))
+  T.eq(ds.icopy(a), ds.icopy(b))
@@ -118 +119 @@
-test('EdFile.index', function()
+T.EdFile_index = function()
@@ -125,8 +126,8 @@
-  assertEq(1, ef:_datindex(1))
-  assertEq(1, ef:_datindex(2))
-  assertEq({2}, ef.lens)
-
-  assertEq(2, ef:_datindex(3))
-  assertEq({2, 6}, ef.lens)
-  assertEq(2, ef:_datindex(6))
-  assertEq(6, #ef)
+  T.eq(1, ef:_datindex(1))
+  T.eq(1, ef:_datindex(2))
+  T.eq({2}, ef.lens)
+
+  T.eq(2, ef:_datindex(3))
+  T.eq({2, 6}, ef.lens)
+  T.eq(2, ef:_datindex(6))
+  T.eq(6, #ef)
@@ -135,3 +136,3 @@
-  assertEq(nil, ef:_datindex(7))
-  assertEq({2, 6}, ef.lens)
-  assertEq(nil, ef:_datindex(0))
+  T.eq(nil, ef:_datindex(7))
+  T.eq({2, 6}, ef.lens)
+  T.eq(nil, ef:_datindex(0))
@@ -145,5 +146,5 @@
-  assertEq('one',   ef[1]); assertEq({2},    ef.lens)
-  assertEq('three', ef[3]); assertEq({2, 6}, ef.lens)
-  assertEq('six',   ef[6])
-  assertEq(6, #ef)
-end)
+  T.eq('one',   ef[1]); T.eq({2},    ef.lens)
+  T.eq('three', ef[3]); T.eq({2, 6}, ef.lens)
+  T.eq('six',   ef[6])
+  T.eq(6, #ef)
+end
@@ -151 +152 @@
-test('EdFile.newindex', function()
+T.EdFile_newindex = function()
@@ -154,2 +155,2 @@
-  assertEq(0, #ef)
-  assertEq({S(1, 0)},    ef.dats)
+  T.eq(0, #ef)
+  T.eq({S(1, 0)},    ef.dats)
@@ -158,3 +159,3 @@
-  assertEq({S(1,1)}, ef.dats)
-  assertEq({1},      ef.lens)
-  assertEq('one', ef[1])
+  T.eq({S(1,1)}, ef.dats)
+  T.eq({1},      ef.lens)
+  T.eq('one', ef[1])
@@ -163,4 +164,4 @@
-  assertEq({S(1,2)}, ef.dats)
-  assertEq({2}, ef.lens)
-  assertEq('one', ef[1])
-  assertEq('two', ef[2])
+  T.eq({S(1,2)}, ef.dats)
+  T.eq({2}, ef.lens)
+  T.eq('one', ef[1])
+  T.eq('two', ef[2])
@@ -169,5 +170,5 @@
-  assertEq({Gap'one 1', S(2,2)}, ef.dats)
-  assertEq({}, ef.lens)
-  assertEq({'one 1', 'two'}, icopy(ef))
-  assertEq({1, 2}, ef.lens); assertEq(2, #ef)
-end)
+  T.eq({Gap'one 1', S(2,2)}, ef.dats)
+  T.eq({}, ef.lens)
+  T.eq({'one 1', 'two'}, icopy(ef))
+  T.eq({1, 2}, ef.lens); T.eq(2, #ef)
+end
@@ -175 +176 @@
-test('EdIter', function()
+T.EdIter = function()
@@ -178 +179 @@
-  assertEq(small, ds.icopy(ed))
+  T.eq(small, ds.icopy(ed))
@@ -182,3 +183,3 @@
-  assertEq({1, 2, 3, 4}, ln)
-  assertEq(small, t)
-end)
+  T.eq({1, 2, 3, 4}, ln)
+  T.eq(small, t)
+end
@@ -186 +187 @@
-test('EdFile.write', function()
+T.EdFile_write = function()
@@ -190,3 +191,3 @@
-  assertEq(3, #ed)
-  assertEq('one\nthree\nfive', pth.read(TXT))
-  assertEq({ds.Slc{si=1, ei=3}}, ed.dats)
+  T.eq(3, #ed)
+  T.eq('one\nthree\nfive', pth.read(TXT))
+  T.eq({ds.Slc{si=1, ei=3}}, ed.dats)
@@ -194 +195 @@
-  assertEq('five 5', ed[3])
+  T.eq('five 5', ed[3])
@@ -198 +199 @@
-  assertEq(expect, ds.icopy(ed))
+  T.eq(expect, ds.icopy(ed))
@@ -200 +201 @@
-  assertEq({
+  T.eq({
@@ -203 +204 @@
-  assertEq({
+  T.eq({
@@ -215,2 +216,2 @@
-  assertEq(expect, ds.icopy(ed))
-  assertEq({
+  T.eq(expect, ds.icopy(ed))
+  T.eq({
@@ -220 +221 @@
-  assertEq(5, #ed)
+  T.eq(5, #ed)
@@ -222,2 +223,2 @@
-  assertEq(expect, ds.icopy(ed))
-end)
+  T.eq(expect, ds.icopy(ed))
+end
@@ -225 +226 @@
-test('EdFile.big', function()
+T.EdFile_big = function()
@@ -228 +229 @@
-  assertEq(100, #ed)
+  T.eq(100, #ed)
@@ -230,2 +231,2 @@
-  assertEq(ed[3], 'line 3')
-  assertEq({ds.Slc{si=1, ei=100}}, ed.dats)
+  T.eq(ed[3], 'line 3')
+  T.eq({ds.Slc{si=1, ei=100}}, ed.dats)
@@ -234,3 +235,3 @@
-  assertEq(ed[2], 'line 2')
-  assertEq(ed[3], 'line 3.0')
-  assertEq(ed[4], 'line 4')
+  T.eq(ed[2], 'line 2')
+  T.eq(ed[3], 'line 3.0')
+  T.eq(ed[4], 'line 4')
@@ -239,5 +240,5 @@
-  assertEq(ed[6], 'line 6')
-  assertEq(ed[7], 'line 7.0')
-  assertEq(ed[10], 'line 8')
-  assertEq(102, #ed)
-end)
+  T.eq(ed[6], 'line 6')
+  T.eq(ed[7], 'line 7.0')
+  T.eq(ed[10], 'line 8')
+  T.eq(102, #ed)
+end
@@ -253 +254 @@
-test('EdFile.linesOffset', function()
+T.EdFile_linesOffset = function()
@@ -255 +256 @@
-end)
+end
@@ -257 +258 @@
-test('EdFile.linesRemove', function()
+T.EdFile_linesRemove = function()
@@ -259 +260 @@
-end)
+end

--- lib/lines/test_motion.lua
+++ lib/lines/test_motion.lua
@@ -5 +5 @@
-local test, assertEq; ds.auto'civtest'
+local T = require'civtest'
@@ -12,5 +12,5 @@
-test('distance', function()
-  assertEq(3, decDistance(1, 4))
-  assertEq(2, decDistance(5, 1))
-  assertEq(5, decDistance(5, 5))
-end)
+T.distance = function()
+  T.eq(3, decDistance(1, 4))
+  T.eq(2, decDistance(5, 1))
+  T.eq(5, decDistance(5, 5))
+end
@@ -18 +18 @@
-test('lc', function()
+T.lc = function()
@@ -44 +44 @@
-end)
+end
@@ -46,26 +46,26 @@
-test('wordKind', function()
-  assertEq('let', wordKind('a'))
-  assertEq('()',  wordKind('('))
-  assertEq('()',  wordKind(')'))
-  assertEq('sym', wordKind('+'))
-end)
-
-test('forword', function()
-  assertEq(3, forword('a bcd'))
-  assertEq(3, forword('  bcd'))
-  assertEq(2, forword(' bcd'))
-  assertEq(3, forword('--bcd'))
-  assertEq(2, forword('a+ bcd'))
-  assertEq(5, forword('+12 +de', 2))
-end)
-
-test('backword', function()
-  assertEq(3,   backword('a bcd', 4))
-  assertEq(3,   backword('  bcd', 4))
-  assertEq(nil, backword('  bcd', 3))
-end)
-
-test('findBack', function()
-  assertEq({7, 8},   {findBack('12 45 12 ', '12')})
-  assertEq({1, 2},   {findBack('12 45 12 ', '12', 6)})
-end)
+T.wordKind = function()
+  T.eq('let', wordKind('a'))
+  T.eq('()',  wordKind('('))
+  T.eq('()',  wordKind(')'))
+  T.eq('sym', wordKind('+'))
+end
+
+T.forword = function()
+  T.eq(3, forword('a bcd'))
+  T.eq(3, forword('  bcd'))
+  T.eq(2, forword(' bcd'))
+  T.eq(3, forword('--bcd'))
+  T.eq(2, forword('a+ bcd'))
+  T.eq(5, forword('+12 +de', 2))
+end
+
+T.backword = function()
+  T.eq(3,   backword('a bcd', 4))
+  T.eq(3,   backword('  bcd', 4))
+  T.eq(nil, backword('  bcd', 3))
+end
+
+T.findBack = function()
+  T.eq({7, 8},   {findBack('12 45 12 ', '12')})
+  T.eq({1, 2},   {findBack('12 45 12 ', '12', 6)})
+end

--- lib/lson/test.lua
+++ lib/lson/test.lua
@@ -13 +13 @@
-  T.assertEq(decoded, M.deString(de))
+  T.eq(decoded, M.deString(de))
@@ -15 +15 @@
-T.test('string', function()
+T.string = function()
@@ -18 +18 @@
-end)
+end
@@ -20 +20 @@
-T.test('skipWs', function()
+T.skipWs = function()
@@ -22 +22 @@
-  de:skipWs(); T.assertEq('a', de.line:sub(de.c,de.c))
+  de:skipWs(); T.eq('a', de.line:sub(de.c,de.c))
@@ -24,2 +24,2 @@
-  de:skipWs(); T.assertEq('b', de.line:sub(de.c,de.c))
-end)
+  de:skipWs(); T.eq('b', de.line:sub(de.c,de.c))
+end
@@ -32 +32 @@
-    T.assertEq(expectEncoding, encoded)
+    T.eq(expectEncoding, encoded)
@@ -37 +37 @@
-  T.assertEq(t, decoded)
+  T.eq(t, decoded)
@@ -41,4 +41,4 @@
-T.test('lax', function()
-  T.assertEq({1, 2},   M.decode'[1 2]')
-  T.assertEq({a=2, 1}, M.decode'{1:1 "a":2}')
-  T.assertErrorPat('1%.4: missing pattern ":"',
+T.lax = function()
+  T.eq({1, 2},   M.decode'[1 2]')
+  T.eq({a=2, 1}, M.decode'{1:1 "a":2}')
+  T.throws('1.4: missing pattern ":"',
@@ -46 +46 @@
-end)
+end
@@ -48,6 +48,6 @@
-T.test('bytes', function()
-  T.assertEq('abc',     M.decode '|abc|')
-  T.assertEq('a\nc',    M.decode '|a\\nc|')
-  T.assertEq('a\\nc',   M.decode[[|a\\nc|]])
-  T.assertEq('a\\nc |', M.decode[[|a\\nc \||  ]])
-end)
+T.bytes = function()
+  T.eq('abc',     M.decode '|abc|')
+  T.eq('a\nc',    M.decode '|a\\nc|')
+  T.eq('a\\nc',   M.decode[[|a\\nc|]])
+  T.eq('a\\nc |', M.decode[[|a\\nc \||  ]])
+end
@@ -55 +55 @@
-T.test('round', function()
+T.round = function()
@@ -85 +85 @@
-end)
+end
@@ -87 +87 @@
-T.test('lson.pod', function()
+T.lson_pod = function()
@@ -99 +99 @@
-end)
+end
@@ -101 +101 @@
-T.test('lson run testing_pod', function()
+T.lson_run_testing_pod = function()
@@ -107 +107 @@
-end)
+end

--- lib/luck/test.lua
+++ lib/luck/test.lua
@@ -4 +4 @@
-local test, assertEq, assertErrorPat; ds.auto'civtest'
+local T = require'civtest'
@@ -9 +9 @@
-test("meta", function()
+T.meta = function()
@@ -13 +13 @@
-  assertEq({'small'}, meta)
+  T.eq({'small'}, meta)
@@ -19 +19 @@
-  assertEq({
+  T.eq({
@@ -27 +27 @@
-end)
+end
@@ -29 +29 @@
-test("load", function()
+T.load = function()
@@ -34 +34 @@
-  assertEq(small, res)
+  T.eq(small, res)
@@ -37 +37 @@
-  assertEq({small=small}, res)
+  T.eq({small=small}, res)
@@ -41 +41 @@
-  assertEq(vals, resVals)
+  T.eq(vals, resVals)
@@ -47 +47 @@
-  assertEq({
+  T.eq({
@@ -57 +57 @@
-end)
+end

--- lib/metaty/Makefile
+++ lib/metaty/Makefile
@@ -9 +9 @@
-UNAME := $(shell uname)
+UNAME != uname
@@ -10,0 +11 @@
+NetBSD: $(OUT).so
@@ -16,0 +18,4 @@
+debug:
+	echo uname=$(UNAME)
+	echo out=$(OUT)
+
@@ -20,3 +25,2 @@
-# test: $(FILES)
-# 	$(CC) ds_test.c -l$(LUA_VERSION) -I/usr/include/$(LUA_VERSION) -o smol_test
-# 	./ds_test
+BuildNetBSD:
+	$(CC) $(FILES) -fPIC -llua -I/usr/pkg/include/$(LUA_VERSION) -shared -o $(OUT).so
@@ -24 +28 @@
-BuildLinux: $(FILES)
+BuildLinux:

--- lib/metaty/metaty.c
+++ lib/metaty/metaty.c
@@ -3,0 +4 @@
+#include <string.h>
@@ -7,0 +9,3 @@
+#define ASSERT(L, OK, ...) \
+  if(!(OK)) { luaL_error(L, __VA_ARGS__); }
+
@@ -14,7 +18,6 @@
-  // require space for all arguments to be converted to strings + result.
-  if (!lua_checkstack(L, (lasti - 1) * 2 + 1)) {
-    luaL_error(L, "string.concat stack overflow");
-  }
-  int size = slen * (lasti - 2);  // size of all separators
-  for(int i=2; i <= lasti; i++) { // convert tostring and calc bufsize
-    luaL_tolstring(L, i, NULL); size += lua_rawlen(L, -1);
+  size_t vlen;
+  // First compute the size and allocate the exact space we need
+  size_t size = slen * (lasti - 2);  // size of all separators
+  for(int i=2; i <= lasti; i++) {
+    ASSERT(L, lua_tolstring(L, i, &vlen), "arg[%I] is not a string or number", i)
+    size += vlen;
@@ -22,6 +25,8 @@
-  luaL_Buffer lb; luaL_buffinitsize(L, &lb, size);
-  size_t alen; uint8_t const* arg;
-  arg = lua_tolstring(L, lasti+1, &alen); luaL_addlstring(&lb, arg, alen);
-  for(int i = lasti+2; i <= lasti + (lasti - 1); i++) {
-    luaL_addlstring(&lb, sep, slen);
-    arg = lua_tolstring(L, i, &alen); luaL_addlstring(&lb, arg, alen);
+  luaL_Buffer lb;
+  char* b = luaL_buffinitsize(L, &lb, size); ASSERT(L, b, "OOM");
+  const char* v = lua_tolstring(L, 2, &vlen);
+  memcpy(b, v, vlen); b += vlen;
+  for(int i = 3; i <= lasti; i++) {
+    memcpy(b, sep, slen); b += slen;
+    v = lua_tolstring(L, i, &vlen);
+    memcpy(b, v, vlen); b += vlen;
@@ -29 +34 @@
-  luaL_pushresult(&lb);
+  luaL_pushresultsize(&lb, size);

--- lib/metaty/metaty.lua
+++ lib/metaty/metaty.lua
@@ -4,0 +5 @@
+local concat = table.concat
@@ -23 +23,0 @@
-local concat = table.concat

--- lib/metaty/test.lua
+++ lib/metaty/test.lua
@@ -47 +47 @@
-  assertEq('one-two-true', sc('-', 'one', 'two', true))
+  assertEq('one-two-true', sc('-', 'one', 'two', 'true'))

--- lib/pegl/pegl.lua
+++ lib/pegl/pegl.lua
@@ -10 +10 @@
-local civtest = require'civtest'
+local T       = require'civtest'
@@ -475,2 +475 @@
-      local b = {}; civtest.diffFmt(b, eStr, rStr)
-      print(table.concat(b))
+      civtest.showDiff(io.fmt, eStr, rStr)
@@ -480 +479 @@
-      civtest.assertEq(t.expect, result)
+      T.eq(t.expect, result)
@@ -504 +503 @@
-  civtest.assertErrorPat(
+  T.throws(
@@ -528,2 +527,2 @@
-  local T = ty(spec)
-  local specFn = SPEC_TY[T]
+  local Ty = ty(spec)
+  local specFn = SPEC_TY[Ty]
@@ -615 +614 @@
-  return table.concat(b, ' -> ')
+  return table.concat(b, '\n  ')
@@ -628 +627 @@
-  fmt.errorf("ERROR %s\n%s%s\n%s\nCause: %s\nParse stack: %s",
+  fmt.errorf("ERROR %s\n%s%s\n%s\nCause: %s\nParse stack:\n  %s",

--- lib/pegl/tests/test_lua.lua
+++ lib/pegl/tests/test_lua.lua
@@ -20 +20 @@
-T.test('easy', function()
+T.easy = function()
@@ -31 +31 @@
-end)
+end
@@ -33 +33 @@
-T.test('str', function()
+T.str = function()
@@ -53 +53 @@
-end)
+end
@@ -55 +55 @@
-T.test('decimal', function()
+T.decimal = function()
@@ -59 +59 @@
-end)
+end
@@ -62 +62 @@
-T.test('field', function()
+T.field = function()
@@ -79 +79 @@
-end)
+end
@@ -81 +81 @@
-T.test('table', function()
+T.table = function()
@@ -106 +106 @@
-end)
+end
@@ -108 +108 @@
-T.test('fnValue', function()
+T.fnValue = function()
@@ -116 +116 @@
-end)
+end
@@ -118 +118 @@
-T.test('expression', function()
+T.expression = function()
@@ -129 +129 @@
-end)
+end
@@ -131 +131 @@
-T.test('require', function()
+T.require = function()
@@ -144 +144 @@
-end)
+end
@@ -146 +146 @@
-T.test('varset', function()
+T.varset = function()
@@ -151 +151 @@
-end)
+end
@@ -153 +153 @@
-T.test('comment', function()
+T.comment = function()
@@ -169 +169 @@
-end)
+end
@@ -171 +171 @@
-T.test('function', function()
+T.function_ = function()
@@ -180 +180 @@
-end)
+end
@@ -182 +182 @@
-T.test('fncall', function()
+T.fncall = function()
@@ -199 +199 @@
-  T.assertEq(expect, table.concat(root.newFmt()(r)))
+  T.eq(expect, table.concat(root.newFmt()(r)))
@@ -228 +228 @@
-end)
+end
@@ -230 +230 @@
-T.test('if elseif else', function()
+T.if_elseif_else = function()
@@ -244 +244 @@
-end)
+end
@@ -246 +246 @@
-T.test('fnChain', function()
+T.fnChain = function()
@@ -262 +262 @@
-end)
+end
@@ -264 +264 @@
-T.test('src1', function()
+T.src1 = function()
@@ -284 +284 @@
-end)
+end
@@ -287,3 +287,3 @@
-  T.assertEq(EOF, table.remove(expect))
-  T.assertEq(EMPTY, table.remove(expect))
-  T.assertEq(EMPTY, table.remove(expect))
+  T.eq(EOF, table.remove(expect))
+  T.eq(EMPTY, table.remove(expect))
+  T.eq(EMPTY, table.remove(expect))
@@ -297 +297 @@
-T.test('src2', function()
+T.src2 = function()
@@ -326 +326 @@
-end)
+end
@@ -328,21 +328,29 @@
-local ERR_EXPECT =
-"[LINE 2.22]          x = 1 + {2 3} -- '2 3' is invalid\
-                               ^\
-Cause: parser expected: \"}\"\
-Got: 3} -- '2 3' is invalid\
-Parse stack: src(1.9) -> block(1.9) -> stmt(1.9) -> fnlocal(1.9) -> fnbody(1.25) -> block(2.11)"
-.." -> stmt(2.11) -> varset(2.11) -> exp(2.15) -> op2exp(2.17) -> exp(2.19) -> exp1(2.19) -> table(2.19)"
-
-T.test('error', function()
-  T.assertErrorPat(
-    ERR_EXPECT,
-    function()
-      pegl.parse([[
-        local function x()
-          x = 1 + {2 3} -- '2 3' is invalid
-        end
-      ]], src, RootSpec{dbg=false})
-    end,
-    true -- plain
-  )
-end)
+local ERR_EXPECT = [===[
+[LINE 2.20]        x = 1 + {2 3} -- '2 3' is invalid
+                             ^
+Cause: parser expected: "}"
+Got: 3} -- '2 3' is invalid
+Parse stack:
+  src(1.7)
+  block(1.7)
+  stmt(1.7)
+  fnlocal(1.7)
+  fnbody(1.23)
+  block(2.9)
+  stmt(2.9)
+  varset(2.9)
+  exp(2.13)
+  op2exp(2.15)
+  exp(2.17)
+  exp1(2.17)
+  table(2.17)]===]
+
+T.error = function()
+  T.throws(ERR_EXPECT, function()
+    pegl.parse([[
+      local function x()
+        x = 1 + {2 3} -- '2 3' is invalid
+      end
+    ]], src, RootSpec{dbg=false})
+  end)
+end
@@ -355 +363 @@
-T.test('parseSrc', function()
+T.parseSrc = function()
@@ -359 +367 @@
-end)
+end

--- lib/pegl/tests/test_pegl.lua
+++ lib/pegl/tests/test_pegl.lua
@@ -17 +17 @@
-  T.assertEq({...}, {d(e(...))})
+  T.eq({...}, {d(e(...))})
@@ -20 +20 @@
-T.test('lc encode', function()
+T.lc_encode = function()
@@ -25 +25 @@
-end)
+end
@@ -27 +27 @@
-T.test('keywords', function()
+T.keywords = function()
@@ -46 +46 @@
-end)
+end
@@ -48 +48 @@
-T.test('key', function()
+T.key = function()
@@ -59 +59 @@
-end)
+end
@@ -61 +61 @@
-T.test('pat', function()
+T.pat = function()
@@ -67 +67 @@
-end)
+end
@@ -69 +69 @@
-T.test('or', function()
+T.or_ = function()
@@ -75 +75 @@
-end)
+end
@@ -77 +77 @@
-T.test('many', function()
+T.many = function()
@@ -83 +83 @@
-end)
+end
@@ -85 +85 @@
-T.test('pin', function()
+T.pin = function()
@@ -107 +107 @@
-end)
+end

--- lib/pod/Makefile
+++ lib/pod/Makefile
@@ -9 +9 @@
-UNAME := $(shell uname)
+UNAME != uname
@@ -10,0 +11 @@
+NetBSD: $(OUT).so
@@ -21 +22 @@
-# 	$(CC) ds_test.c -l$(LUA_VERSION) -I/usr/include/$(LUA_VERSION) -o smol_test
+# 	$(CC) ds_test.c -l$(LUA_VERSION) -I/usr/pkg/include/$(LUA_VERSION) -o smol_test
@@ -24 +25,4 @@
-BuildLinux: $(FILES)
+BuildNetBSD:
+	$(CC) $(FILES) -fPIC -llua -I/usr/pkg/include/$(LUA_VERSION) -shared -o $(OUT).so
+
+BuildLinux:

--- lib/pod/pod.c
+++ lib/pod/pod.c
@@ -83 +82,0 @@
-  printf("!! encoded pre len=%i\n", b-bs);
@@ -89 +88 @@
-void serTable(LS* L) {
+void serTable(LS* L) { // (table) -> encoded
@@ -119 +118,2 @@
-    lua_pushvalue(L, tablei+1); if(!lua_next(L, tablei)) break;
+    lua_pushvalue(L, tablei+1);
+    if(!lua_next(L, tablei)) break; // else: (key, value)
@@ -123 +123,3 @@
-      if((0 < i) && (i <= llen)) { lua_pop(L, 2); continue; } // skip list item
+      if((0 < i) && (i <= llen)) {
+        lua_pop(L, 2); continue; // skip list item
+      }
@@ -127 +128,0 @@
-    ASSERT(tablei+3 == lua_gettop(L), "tablei=%I i=%I", tablei, lua_gettop(L));
@@ -131 +131,0 @@
-    ASSERT(tablei+2 == lua_gettop(L), "tablei=%I i=%I", tablei, lua_gettop(L));
@@ -133,2 +132,0 @@
-    printf("!! encoded key: %.*s\n",   len2, s2);
-    printf("!! encoded value: %.*s\n", len,  s);
@@ -203 +200,0 @@
-  printf("!! decoding LuaB\n");
@@ -205 +201,0 @@
-  printf("!!   ty=0x%X v=%li\n", ty, v);
@@ -219 +215 @@
-      default: // fallthrough
+      default: /*fallthrough*/;

--- lib/pod/pod/testing.lua
+++ lib/pod/pod/testing.lua
@@ -4 +4 @@
-local T  = require'civtest'.Test
+local T  = require'civtest'
@@ -14 +13,0 @@
-  print('!! round', fmt(P))
@@ -27 +26 @@
-      fmt.errorf('for value:\n%q\ngot: %s', v, err)
+      fmt.errorf('for value:\n%q\n  got: %s', v, err)

--- lib/pod/test.lua
+++ lib/pod/test.lua
@@ -7 +7 @@
-local T = require'civtest'.Test
+local T = require'civtest'

--- lib/shim/test.lua
+++ lib/shim/test.lua
@@ -6,4 +6,4 @@
-T.test('parse', function()
-  T.assertEq({'a', 'b', c='42'},  ps'a --c=42 b')
-  T.assertEq({c={'1', '2'}},      ps'--c=1 --c=2')
-  T.assertEq({c={'1', '2', '3'}}, ps'--c=1 --c=2 --c=3')
+T.parse = function()
+  T.eq({'a', 'b', c='42'},  ps'a --c=42 b')
+  T.eq({c={'1', '2'}},      ps'--c=1 --c=2')
+  T.eq({c={'1', '2', '3'}}, ps'--c=1 --c=2 --c=3')
@@ -11,2 +11,2 @@
-  T.assertEq({'-ab', c='foo'}, p{'-ab', '--c=foo'})
-  T.assertEq({'ab', '--', '--bob=1', c='foo'},
+  T.eq({'-ab', c='foo'}, p{'-ab', '--c=foo'})
+  T.eq({'ab', '--', '--bob=1', c='foo'},
@@ -14 +14 @@
-end)
+end
@@ -16,17 +16,17 @@
-T.test('parseStr', function()
-  T.assertEq({'a', 'b', c='42'}, ps'a   b --c=42')
-  T.assertEq({c={'1', '2'}},     ps'--c=1   --c=2')
-  T.assertEq({'-ab', c='foo'},   ps'-ab --c=foo')
-end)
-
-T.test('expand', function()
-  T.assertEq({'a', 'b', '--c=42'},           e{'a', 'b', c=42})
-  T.assertEq({'a', 'b', '--c=42', '--d=hi'}, e(ps'a b --d=hi --c=42'))
-end)
-
-T.test('list', function()
-  T.assertEq({'12'},       M.list('12'))
-  T.assertEq({'12', '34'}, M.list{'12', '34'})
-  T.assertEq({'12 34'},    M.listSplit{'12 34'})
-  T.assertEq({'12', '34'}, M.listSplit'12  \n  34')
-  T.assertEq({'12', '34', '56', '78'},
+T.parseStr = function()
+  T.eq({'a', 'b', c='42'}, ps'a   b --c=42')
+  T.eq({c={'1', '2'}},     ps'--c=1   --c=2')
+  T.eq({'-ab', c='foo'},   ps'-ab --c=foo')
+end
+
+T.expand = function()
+  T.eq({'a', 'b', '--c=42'},           e{'a', 'b', c=42})
+  T.eq({'a', 'b', '--c=42', '--d=hi'}, e(ps'a b --d=hi --c=42'))
+end
+
+T.list = function()
+  T.eq({'12'},       M.list('12'))
+  T.eq({'12', '34'}, M.list{'12', '34'})
+  T.eq({'12 34'},    M.listSplit{'12 34'})
+  T.eq({'12', '34'}, M.listSplit'12  \n  34')
+  T.eq({'12', '34', '56', '78'},
@@ -34 +34 @@
-end)
+end
@@ -36,9 +36,9 @@
-T.test('duck', function()
-  T.assertEq(true, M.boolean(true))
-  T.assertEq(true, M.boolean'true')
-  T.assertEq(true, M.boolean'yes')
-
-  T.assertEq(false, M.boolean(false))
-  T.assertEq(false, M.boolean'false')
-  T.assertEq(nil, M.boolean(nil))
-end)
+T.duck = function()
+  T.eq(true, M.boolean(true))
+  T.eq(true, M.boolean'true')
+  T.eq(true, M.boolean'yes')
+
+  T.eq(false, M.boolean(false))
+  T.eq(false, M.boolean'false')
+  T.eq(nil, M.boolean(nil))
+end

--- lib/smol/Makefile
+++ lib/smol/Makefile
@@ -9 +9 @@
-UNAME := $(shell uname)
+UNAME != uname
@@ -10,0 +11 @@
+NetBSD: $(OUT).so
@@ -21 +22 @@
-	$(CC) smol_test.c -l$(LUA_VERSION) -I/usr/include/$(LUA_VERSION) -o smol_test
+	$(CC) smol_test.c -l$(LUA_VERSION) -I/usr/pkg/include/$(LUA_VERSION) -o smol_test
@@ -24 +25,4 @@
-BuildLinux: $(FILES)
+BuildNetBSD:
+	$(CC) $(FILES) -fPIC -llua -I/usr/pkg/include/$(LUA_VERSION) -shared -o $(OUT).so
+
+BuildLinux:

--- lib/smol/smol.lua
+++ lib/smol/smol.lua
@@ -20,2 +20,2 @@
-local assertEq = require'civtest'.Test.eq
-local assertBinEq = require'civtest'.Test.binEq
+local assertEq = require'civtest'.eq
+local assertBinEq = require'civtest'.binEq

--- lib/smol/test.lua
+++ lib/smol/test.lua
@@ -2 +2 @@
-local T = require'civtest'.Test
+local T = require'civtest'

--- lib/vcds/test.lua
+++ lib/vcds/test.lua
@@ -4 +4 @@
-local test, assertEq; ds.auto'civtest'
+local T = require'civtest'
@@ -8 +8 @@
-test('create anchor', function()
+T.create_anchor = function()
@@ -10,3 +10,3 @@
-  assertEq({}, M.createAnchorTop(base, 0, 2))
-  assertEq({Diff(1, '@', '1')}, M.createAnchorTop(base, 1, 2))
-  assertEq({
+  T.eq({}, M.createAnchorTop(base, 0, 2))
+  T.eq({Diff(1, '@', '1')}, M.createAnchorTop(base, 1, 2))
+  T.eq({
@@ -16 +16 @@
-  assertEq({
+  T.eq({
@@ -22,3 +22,3 @@
-  assertEq({},  M.createAnchorBot(base, 10, 2))
-  assertEq({Diff(9, '@', '2')}, M.createAnchorBot(base, 9, 2))
-  assertEq({
+  T.eq({},  M.createAnchorBot(base, 10, 2))
+  T.eq({Diff(9, '@', '2')}, M.createAnchorBot(base, 9, 2))
+  T.eq({
@@ -28 +28 @@
-  assertEq({
+  T.eq({
@@ -33 +33 @@
-end)
+end
@@ -35 +35 @@
-test('patch', function()
+T.patch = function()
@@ -60 +60 @@
-  assertEq({
+  T.eq({
@@ -68 +68 @@
-  assertEq(diffs, M.toDiffs(base, changes))
+  T.eq(diffs, M.toDiffs(base, changes))
@@ -71 +71 @@
-  assertEq({
+  T.eq({
@@ -82 +82 @@
-  assertEq(diffs, M.toDiffs(base, changesB))
+  T.eq(diffs, M.toDiffs(base, changesB))
@@ -85,3 +85,3 @@
-  assertEq({1, 1}, {p:groupChanges(1)})
-  assertEq({3, 5}, {p:groupChanges(2)})
-  assertEq({
+  T.eq({1, 1}, {p:groupChanges(1)})
+  T.eq({3, 5}, {p:groupChanges(2)})
+  T.eq({
@@ -99,2 +99,2 @@
-  assertEq(patch, p())
-end)
+  T.eq(patch, p())
+end
@@ -107 +107 @@
-  assertEq({expectBl, expectLines}, {M.findAnchor(base, baseMap, aDiffs, above)})
+  T.eq({expectBl, expectLines}, {M.findAnchor(base, baseMap, aDiffs, above)})
@@ -110 +110 @@
-test('find anchor', function()
+T.find_anchor = function()
@@ -130 +130 @@
-end)
+end
@@ -132 +132 @@
-test('create patch', function()
+T.create_patch = function()
@@ -135 +135 @@
-   assertEq(M.Patch{bl=0,
+   T.eq(M.Patch{bl=0,
@@ -140 +140 @@
-end)
+end

--- test.lua
+++ test.lua
@@ -50 +49,0 @@
-  dofile(dir..'lib/civdb/test.lua')
@@ -64,0 +64 @@
+io.fmt:styled('notify', '\nSuccess! All tests passed', '\n')

--- ui/asciicolor/test.lua
+++ ui/asciicolor/test.lua
@@ -3,2 +3 @@
-local CT = require'civtest'
-local T = require'civtest'.Test
+local T = require'civtest'
@@ -43 +42 @@
-  CT.assertErrorPat('invalid ascii color: "O"', function() c'O' end)
+  T.throws('invalid ascii color: "O"', function() c'O' end)

--- ui/vt100/test.lua
+++ ui/vt100/test.lua
@@ -7 +6,0 @@
-local assertEq = T.assertEq
@@ -15 +14 @@
-T.test('color', function()
+T.color = function()
@@ -18 +17 @@
-end)
+end
@@ -20 +19 @@
-T.test('literal', function()
+T.literal = function()
@@ -22,4 +21,4 @@
-  assertEq('a',  l'a')
-  assertEq('\n', l'return')
-  assertEq(nil,  l'invalid')
-end)
+  T.eq('a',  l'a')
+  T.eq('\n', l'return')
+  T.eq(nil,  l'invalid')
+end
@@ -27 +26 @@
-T.test('keyError', function()
+T.keyError = function()
@@ -29,7 +28,7 @@
-  assertEq(nil, ke'a')
-  assertEq(nil, ke'esc')
-  assertEq(nil, ke'^a')
-  assertEq(nil, ke'😜')
-  assertEq('invalid key: "escape"', ke'escape')
-  assertEq([[key "\8" not a printable character]], ke'\x08')
-end)
+  T.eq(nil, ke'a')
+  T.eq(nil, ke'esc')
+  T.eq(nil, ke'^a')
+  T.eq(nil, ke'😜')
+  T.eq('invalid key: "escape"', ke'escape')
+  T.eq([[key "\8" not a printable character]], ke'\x08')
+end
@@ -37 +36 @@
-T.test('keynice', function()
+T.keynice = function()
@@ -39,8 +38,8 @@
-  assertEq('a',      key(b'a'))
-  assertEq('^a',     key(1))
-  assertEq('tab',    key(9))
-  assertEq('^j',     key(10))
-  assertEq('return', key(13))
-  assertEq('space',  key(32))
-  assertEq('^z',     key(26))
-end)
+  T.eq('a',      key(b'a'))
+  T.eq('^a',     key(1))
+  T.eq('tab',    key(9))
+  T.eq('^j',     key(10))
+  T.eq('return', key(13))
+  T.eq('space',  key(32))
+  T.eq('^z',     key(26))
+end

--- ui/vt100/vt100/testing.lua
+++ ui/vt100/vt100/testing.lua
@@ -49,2 +49,2 @@
-    T.assertEq({true, 'forget'}, {ds.resume(szTh)})
-    T.assertEq(szTh, t._waiting)
+    T.eq({true, 'forget'}, {ds.resume(szTh)})
+    T.eq(szTh, t._waiting)
@@ -53 +53 @@
-      T.assertEq({true, 'poll', 0, fd.sys.POLLIN}, {ds.resume(inTh)})
+      T.eq({true, 'poll', 0, fd.sys.POLLIN}, {ds.resume(inTh)})
@@ -55,4 +55,4 @@
-    T.assertEq(nil, t._waiting)
-    T.assertEq(nil, r())
-    T.assertEq({true}, {ds.resume(szTh)})
-    T.assertEq('dead', coroutine.status(szTh))
+    T.eq(nil, t._waiting)
+    T.eq(nil, r())
+    T.eq({true}, {ds.resume(szTh)})
+    T.eq('dead', coroutine.status(szTh))

--- lib/civdb/PKG.lua
+++ /dev/null
@@ -1,15 +0,0 @@
-name     = 'civdb'
-summary  = "minimalistic CRUD database"
-homepage = "https://lua.civboot.org#Package_civdb"
-license  = "UNLICENSE"
-version  = '0.1-0'
-url      = 'git+http://github.com/civboot/civlua'
-doc = 'README.cxt'
-srcs = {
-  'civdb.lua',
-  'civdb/HashIdx.lua',
-}
-deps = {
-  "lua ~> 5.3",
-}
-

--- lib/civdb/README.cxt
+++ /dev/null
@@ -1,59 +0,0 @@
-[{h1}civdb: minimalistic CRUD database]
-
-CivDB's basic requirements are: [+
-* "Single file" database: all data is stored in a single file
-  * indexes can be added which are separate files but all indexes can always be
-    rebuilt from the single file.
-
-* CRUD database: you can create rows, read rows, update rows and delete rows
-  using an integer row id.
-
-* Fast O(1) row creation and updates which can hold arbitrary Lua values
-  (but typically hold the value referenced by the schema).
-
-* Can hold metadata, especially the schema (auto type conversion)
-]
-
-[{h2}Design]
-The basic design is: [+
-* The "database" is a folder, i.e. [$path/to/mydata.civdb/]
-
-* Within the folder is a single file called `data` which contains entries
-  which contain the operation and row data encoded using `civdb.encode`
-  (binary encoding format) [+
-  * The data file starts with the magic bytes `civdb\0`
-  * The size of the entry is 7bit encoded, followed by the entry data
-  ]
-
-* Values are de/serialized by first calling [$ds.pod.(from/to)Pod] and then
-  de/serializing them using [$pod.[de]ser].
-  ["If the type of fromPod matches the schema then it is first stripped to
-    save on binary space.
-  ]
-
-* Also within the folder is the [$rows] file, which contains 3-byte positions
-  into the [$data] file (the start of that row's entry), or `0` if that row
-  was deleted. [+
-  * The rows file is updated as the data file is written to. On flush their
-    timestamps are set to the same value (indicating a reindex is not necessary)
-  * The [$rows] file is the most basic index as it points to a specific position.
-    All other indexes operate similarily but instead of pointing to a position
-    they point to a row.
-  ]
-
-* "Transactions" are written into the [$data] file one at a time. A transaction
-  is encoded as an "operation" ([$create], [$update(row)], [$delete(row)],
-  [$metadata]) and a value (except for delete). [+
-  * When the transaction is written the [$rows] table is updated, and then
-    other indexes are updated.
-  ]
-
-* Other indexes are stored based on the schema, but are basically just a list of
-  functions to call every time a row is created or modified (with some sane
-  defaults for the schema). [+
-  * These typically modify BOTH a [$field.rhood] and [$field.ll].
-    The [$field.rhood] contains a 3-byte robin hood hash table which point to
-    entries in [$field.ll], which is a linked-list file containing the rows
-    containing that field value.
-  ]
-]

--- lib/civdb/civdb.lua
+++ /dev/null
@@ -1,371 +0,0 @@
-local G = G or _G
---- civdb: minimalistic CRUD database
----
---- This module exports the encode/decode functions which
---- can be used for encoding and decoding plain-old-data.
-local M = G.mod and mod'civdb' or setmetatable({}, {})
-
-local mty = require'metaty'
-local pkg = require'pkglib'
-local ds = require'ds'
-local pth = require'ds.path'
-local pod = require'pod'
-local LFile = require'lines.File'
-local U3File = require'lines.U3File'
-local fmt = require'fmt'
-local fbin = require'fmt.binary'
-local ix = require'civix'
-
-local trace = require'ds.log'.trace
-local encv = require'pod.native'.enci
-
-local getmt = getmetatable
-local byte = string.byte
-local mtype = math.type
-local construct = mty.construct
-local index, newindex = mty.index, mty.newindex
-local ty = mty.ty
-local ser, deser = pod.ser, pod.deser
-local WeakV = ds.WeakV
-
-local fileInit = getmetatable(LFile).__call
-
-M.DB = mty'DB' {
-  'path [string]', 'datPath [string]', 'metaPath [string]',
-  'f [File]', 'mode [string]',
-  'idxs {str: civdb.Idx}: indexers for a specific key.'
-  ..' These will be used instead of a full table scan if available.',
-  '_schema [pod.Podder]: the type to deserialize each row',
-  '_rows [lines.U3File]: row -> pos',
-  'cache [ds.WeakV]: cache of rows',
-  '_eofpos [nil|int]: nil or pos at eof',
-  '_meta [table]',
-}
-getmetatable(M.DB).__call = function(T, t)
-  error'use :new{} or :load{}'
-end
-local DB = M.DB
-DB.MAGIC = 'civdb\0'
-DB.IDX_DIR = pth.concat{pth.home(), '.data/rows'}
-
-DB.__len = function(db) return #db._rows end
-
----------------------
---- Op Type: this specifies what the entry is doing
-M.Op = mty'Op' {
-  'kind [civdb.Op.Kind]',
-  'row  [int]: the row index being modified',
-  'other [table]',
-}
-
-M.Op.Kind = mty.enum'Op.Kind' {
-  CREATE = 1, DELETE = 2, UPDATE = 3, OTHER  = 4,
-}
-local Op, OpKind = M.Op, M.Op.Kind
-
-local CREATE_OP = assert(ser(true))
-local updateOp = function(row)  return ser( row) end
-local deleteOp = function(row)  return ser(-row) end
-local otherOp  = ser
-
---- Op:decode(val) - decode the operation from lua value.
-Op.decode = function(T, v) --> Op
-  if v == true then return T{kind=OpKind.CREATE} end
-  if type(v) == 'table' then return T{kind=OpKind.OTHER, other=v} end
-  assert(mtype(v) == 'integer', 'invalid op')
-  if v >= 0    then return T{kind=OpKind.UPDATE, row= v}
-               else return T{kind=OpKind.DELETE, row=-v} end
-end
-
-----------------------------
--- Entry functions: how data is written/read from the file
-
---- read the raw bytes of the next counted entry from a file
-local readEntryRaw = function(f) --> (string?, lensz|error)
-  local len, sh, s = 0, 0
-  while true do
-    s = f:read(1); if not s then return nil end
-    local b = byte(s); len = ((0x7F & b) << sh) | len
-    if (0x80 & b) ~= 0 then sh = sh + 7 else break end
-  end
-  trace('readEntry len=%i', len)
-  s = f:read(len); if not s then return nil, 'readEntry len' end
-  if not s or len ~= #s then
-    return nil, sfmt('did not read full len: %i ~= %i', len, #s)
-  end
-  return s, (sh + 7) // 7
-end
-
---- read the Op, oplen and (whole) rawdat of of the next entry from a file
---- if the rawdat are decoded they must be offset by oplen+1
-local readEntryOp = function(f) -- op, oplen, rawdat, lensz
-  local dat, lensz = readEntryRaw(f)
-  if not dat then return nil, nil, lensz end
-  local op, oplen = deser(dat)
-  trace('readTx: op=%q vlen=%i', op, #dat - oplen)
-  return Op:decode(op), oplen, dat, lensz
-end
-
---- write the raw operation and raw data, return bytes written
---- Note: the rawop are created with the *Op() functions.
-local writeEntry = function(f, pos, rawop, dat) --> writelen
-  local len = #rawop + #dat
-  assert(pos);
-  assert(pos == f:seek('set', pos))
-  local elenstr = encv(len)
-  assert(f:write(elenstr))
-  assert(f:write(rawop)); assert(f:write(dat))
-  trace('pushvalue pos=%i enclen=%i len=%i', pos, #elenstr, len)
-  return #elenstr + len
-end
-
-
------------------------
--- READ
-
-local opDeser = function(db, oplen, rawdat)
-  return deser(rawdat, db._schema, oplen + 1)
-end
-local opRead = Op.Kind:matcher{
-  CREATE = opDeser, UPDATE = opDeser, DELETE = ds.noop,
-  OTHER = function() error'unreachable' end,
-}
-
---- Read the row, returning its value
---- Note: does not attempt to convert to the schema type.
-DB.readRaw = function(db, row) --> Op, oplen, rawdat
-  local pos = db._rows[row]
-  trace('readRaw row=%i from pos=%s', row, pos)
-  if not pos or pos == 0 then return end
-  assert(pos == db.f:seek('set', pos))
-  return readEntryOp(db.f)
-end
-
-DB.__index = function(db, row)
-  if type(row) == 'string' then
-    local mt = getmt(db)
-    return rawget(mt, row) or index(mt, row)
-  end
-  trace('__index row=%i', row)
-  assert(row >= 1, 'row must be >= 1')
-  local op, oplen, rawdat = db:readRaw(row, db._schema)
-  if not op then return end
-  return opRead[op.kind](db, oplen, rawdat)
-end
-
------------------------
--- CREATE / UPDATE / DELETE
-
-DB.__newindex = function(db, row, v)
-  if type(row) == 'string' then return newindex(db, row, v) end
-  assert(row >= 1, 'row must be >= 1')
-  local len = #db._rows
-  local f, rows, pos, epos = db.f, db._rows, db._eofpos, nil
-  if row > len then -----: CREATE
-    assert(row == len + 1, "can only set from [1,len+1]")
-    epos = pos + writeEntry(f, pos, CREATE_OP, ser(v, db._schema))
-    for _, idx in pairs(db.idxs) do idx:create(row, v) end
-  elseif v == nil then --: DELETE
-    epos = pos + writeEntry(f, pos, deleteOp(row), '')
-    for _, idx in pairs(db.idxs) do idx:delete(row) end
-  else ------------------: UPDATE
-    epos = pos + writeEntry(f, pos, updateOp(row), ser(v, db._schema))
-    for _, idx in pairs(db.idxs) do idx:update(row, v) end
-  end
-  rows[row], db._eofpos = pos, epos
-end
-
------------------------
--- META
-
---- [$db:meta()] get's the metadata and [$db:meta(new)] updates it. The
---- schema is overriden with the current schema [$PKG_NAME].
----
---- Note: this updates the metadata inside a [$db] file as well as the
---- [$db.meta] file. Do not modify the result of [$:meta()] directly unless you
---- are immediately passing it back.
-DB.meta = function(db, meta)
-  if not meta then return db._meta end
-  local pos = db._eofpos
-  meta.schema = G.PKG_NAMES[db._schema]
-  db._eofpos = pos + writeEntry(db.f, pos, otherOp{meta=meta}, '')
-  db._meta = meta
-end
-
---- [+ * [$db:schema()] returns the current schema
----    * [$db:schema(newSchema)] sets a new schema]
----
---- ["WARNING: the new schema must be byte-compatible with the old one, else
----   existing data will break on read. You may need to reindex the table after
----   setting a new schema.]
-DB.schema = function(db, schema) --> current schema
-  if schema then
-    local ok, err = pod.isPodder(schema)
-    if not ok then fmt.errorf('schema %s is not Podder: %s', schema, err) end
-    db._schema = schema; db:meta(db._meta)
-  end
-  return db._schema
-end
-
------------------------
--- Creating / Loading Database
-
---- Do basic argument checking and initializaiton
-local dbInit = function(t) --> t
-  t.idxs = t.idxs or {}
-  t.path = (not ix.exists(assert(t.path, 'must provide path'))
-            or ix.isDir(t.path)) and pth.concat{t.path, 'db'}
-           or t.path
-  return t
-end
-
-DB.new = function(T, t)
-  trace('civdb.DB new %q', t)
-  local schema = assert(ds.popk(t, 'schema'), 'must set schema')
-  t = dbInit(t); t._meta = ds.popk(t, 'meta') or {}
-  t = construct(T, t)
-  local f, err, rows
-  ix.mkDirs((pth.last(t.path)))
-  f,    err = io.open(t.path, 'w+'); if not f then return nil, err end
-  rows, err = U3File:create(t.path..'.rows')
-  if not rows then return nil, err end
-  assert(f:write(T.MAGIC)); t._eofpos = #T.MAGIC
-  t.f, t._rows, t.cache = f, rows, ds.WeakV{}
-  t:schema(schema)
-  return t
-end
-
-local opRow = function(_rows, row, pos) rows[row] = pos end
-local opReindex = Op.Kind:matcher{
-  CREATE = function(rows,  _,   pos) rows[#rows+1] = pos end,
-  UPDATE = function(rows, row, pos)  rows[row]     = pos end,
-  DELETE = function(rows, row, _)    rows[row]     = 0   end,
-  OTHER  = function() error'unreachable' end,
-}
-
-local reindex = function(f, path) --> endpos, rows, meta
-  local rowsPath = path..'.rows'
-  local rows, err = assert(U3File:create(rowsPath))
-  local pos = #DB.MAGIC; local len = f:seek'end'
-  trace('reindex pos=%i len=%s', pos, len)
-  f:seek'set'; assert(DB.MAGIC == f:read(#DB.MAGIC))
-  local meta
-  while pos < len do
-    local op, _, rawdat, lensz = readEntryOp(f)
-    if not op then break end -- incomplete entry, treat as EOF
-    if op.other then
-      if op.other.meta then meta = op.other.meta end
-    else
-      opReindex[op.kind](rows, op.row, pos)
-    end
-    pos = pos + lensz + #rawdat
-  end
-  assert(meta, 'OTHER.meta was never set')
-  return pos, rows, meta
-end
-
-local tryLoad = function(f, path) --> pos?, rows?, meta?
-  local rowsPath, metaPath = path..'.rows', path..'.meta'
-  if not ix.exists(rowsPath)              then return end
-  if not ix.modifiedEq(f, rowsPath) then return end
-  if not ix.modifiedEq(f, metaPath) then return end
-  local rows = assert(U3File:load(rowsPath))
-  local meta = assert(pod.deser(pth.read(metaPath), pod.table))
-
-  local pos; if #rows == 0 then pos = #DB.MAGIC
-  else                          pos = rows[#rows] end
-  f:seek('set', pos);
-  local str, lensz = readEntryRaw(f); assert(str, lensz)
-  return pos + lensz + #str, rows, meta
-end
-
-DB.load = function(T, t)
-  trace('civdb.DB load %q', t)
-  local t = dbInit(t)
-  if not ix.exists(t.path) then error('path not found: '..t.path) end
-  local err;
-  t.f, err = io.open(t.path, 'a+'); if not t.f then return nil, err end
-  local pos, rows, meta = tryLoad(t.f, t.path)
-  if not rows then pos, rows, meta = reindex(t.f, t.path) end
-  if not rows then error("couldn't reload "..t.path..'.rows') end
-
-  t._schema = PKG_LOOKUP[assert(meta.schema, 'no schema in meta')]
-  t._eofpos, t._rows, t._meta = pos, rows, meta
-  return construct(T, t)
-end
-
-DB.flush = function(db)
-  local ok, err = db._rows:flush(); if not ok then return nil, err end
-  ok, err = db.f:flush()           if not ok then return nil, err end
-  local fs, err = ix.stat(db.f);   if not fs then return nil, err end
-  ix.setModified(db._rows.f,       fs:modified())
-  ix.setModified(db.path..'.meta', fs:modified())
-end
-
-DB.close = function(db) db:flush(); db._rows:close(); db.f:close(); end
-DB.nocache = function(db) db.cache = ds.Forget{} end
-
------------------------
--- Query API
-
---- Return a iterator (row, val) of rows where
---- [$filterFn(fieldValue) == true]
-DB.filterField = function(db, field, filterFn) --> iter (row, val)
-  if not db._schema.__podders[field] then error('field not found: '..f) end
-  local r, len = 0, #db
-  return function()
-    while r <= len do
-      r = r + 1
-      local v = db[r]; if v ~= nil then
-        if filterFn(v[field]) then return r, v end
-      end
-    end
-  end
-end
-
-M.QOp = mty.enum'QOp' {
-  EQ = 1,
-}
-local qopName = M.QOp.name
-
---- A basic query request on a field, For example:
---- [{# lang=lua}
---- Query{field='name', op=QOp.Eq, 'rett'}]
---- ]#
----
---- ["Note: this is just data, to actually execute the query
----  call DB:query.]
-M.Query = mty'Query' {
-  'key [string]: field name (or defined key index) to query',
-  'op [QOp]', kind=M.QOp.EQ,
-}
-local Query = M.Query
-getmetatable(M.Query).__call = function(T, t)
-  assert(type(t.key) == 'string' or type(t.key) == 'number',
-         'must set field = str|int')
-  t.op = qopName(t.op or 'EQ')
-  return construct(T, t)
-end
-
-local qMatcher = M.QOp:matcher {
-  EQ = function(db, field, query)
-    local eqv = query[1]
-    return db:filterField(field, function(v) return v == eqv end)
-  end,
-}
-
---- Query: return an iterator of (rowId, value) that matches the query.
----
---- [{h2}Why this is better than a [$for] loop]
---- Some fields (or keys composed of multiple fields) are indexed. If the query
---- is looking for a key with a relatively rare value, then it can be found in
---- O(1) time (for a hash index) instead of requiring a complete table scan.
-DB.query = function(db, q) --> iter (rowId, value)
-  if not getmt(q) then q = Query(q) end
-  local k = q.key;
-  local idx = db.idxs[k]; if idx then return idx(q) end
-  if not db._schema.__podders[k] then error('db key not found: '..k) end
-  return qMatcher[q.op](db, k, q)
-end
-
-return M

--- lib/civdb/civdb/HashIdx.lua
+++ /dev/null
@@ -1,26 +0,0 @@
-local mty = require'metaty'
-
---- Robinhood hashing index for field (column)
-local HashIdx = mty'civdb.HashIdx' {
-  'db [civdb.DB]',
-  'field [str]: the hashed field (key)',
-}
-
---- Return an iterator for [$civdb.Query], using hash index for [$op=EQ]
-HashIdx.__call = function(idx, q) --> iter (row, val)
-end
-
---- handle a newly created value at row
-HashIdx.create = function(idx, row, val)
-end
-
---- handle an updated value at row
-HashIdx.update = function(idx, row, val)
-end
-
---- handle an deleted value at row
-HashIdx.delete = function(idx, row)
-end
-
-
-return HashIdx

--- lib/civdb/test.lua
+++ /dev/null
@@ -1,69 +0,0 @@
-
-local mty = require'metaty'
-local T = require'civtest'.Test
-local M = require'civdb'
-local ds = require'ds'
-local It = require'ds.Iter'
-local pod = require'pod'
-
-local char = string.char
-
-local DBF, IDX = '.out/file.civdb', '.out/rowfile.idx'
-
--- test module
-local Tm = mod'civdb.Tm'
-Tm.V = pod(mty'V' {
-  'i [int] #1: a int field',
-  's [str] #2: a string field',
-})
-local V = Tm.V
-
-T.dbRaw = function()
-  local db = assert(M.DB:new{path=DBF, schema=pod.builtin})
-  db:nocache()
-  T.eq(0, #db); db[1] = 'test1'
-  db.f:seek('set', 0)
-  T.binEq('test1', db[1])
-  T.eq(db.path, DBF..'/db')
-  T.eq({schema='pod.builtin'}, db._meta)
-  T.eq({schema='pod.builtin'}, pod.load(DBF..'/db.meta'))
-
-  T.eq(1, #db); db[2] = 22
-  T.eq({'test1', 22}, ds.icopy(db)); T.eq(nil, db[3])
-  db:close()
-
-  -- reload
-  local db = M.DB:load{path=DBF}; db:nocache()
-  T.eq(pod.builtin, db._schema)
-  T.eq({'test1', 22}, ds.icopy(db)); T.eq(nil, db[3])
-  db[3] = 33
-  T.eq({'test1', 22, 33}, ds.icopy(db)); T.eq(nil, db[4])
-
-  db[2] = 23
-  T.eq({'test1', 23, 33}, ds.icopy(db)); T.eq(nil, db[4])
-
-  db[1] = nil
-  T.eq({nil    , 23, 33}, ds.icopy(db)); T.eq(nil, db[4])
-  db:close()
-
-  local db = M.DB:load{path=DBF}; db:nocache()
-  T.eq({nil    , 23, 33}, ds.icopy(db)); T.eq(nil, db[4])
-  db:close()
-end
-
--- test query using non-indexed fields
-T.queryScan = function()
-  local db = assert(M.DB:new{path=DBF, schema=V})
-  local rows = {V{i=11}, V{i=22}, V{i=33, s='third'}, V{i=-1}, V{s='last'}}
-  ds.extend(db, ds.deepcopy(rows))
-  It:ofList(rows):assertEq(It:ofList(db))
-
-  It:ofUnpacked{ {2, V{i=22}}, }
-    :assertEq(It{db:query{key='i', 22}})
-
-  It:ofUnpacked{ {5, V{s='last'}}, }
-    :assertEq(It{db:query{key='i', nil}})
-
-  It:ofUnpacked{ {1, V{i=11}}, {2, V{i=22}}, {4, V{i=-1}}, }
-    :assertEq(It{db:query{key='s', nil}})
-end
