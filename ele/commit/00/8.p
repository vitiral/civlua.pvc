working on ele, found EdFile bug
--- cmd/ele/README.cxt
+++ cmd/ele/README.cxt
@@ -23,0 +24,113 @@
+
+Ele is architected using the MVI (model-view-intent) architecture, also
+known as the "React architecture" from the web library of the same
+name.
+
+
+[##
+   ,_____________________________________________
+   | intent(): keyboard, timer, executor, etc    |
+   `~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
+   /\                                    || Data + events
+   || Data + scheduled                   \/
+  ,__________________   Data + scheduled ,____________________________
+  | view(): paint    | <================ | model(): keybind, actions  |
+  `~~~~~~~~~~~~~~~~~~'                   `~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
+]##
+
+The update loop (displayed above) is as follows: [+
+* Receive a single intent: this can be a keyboard input, a timer firing or an
+  operation function (async function) completing.
+* Execute the model action tied to that event: aka the keybinding or a
+  registered action. This will mutate Data depending on the event. It may also
+  spawn some async opfns (operation functions)
+* Paint the view/s (user-visible) and await the next intent
+]
+
+[{h2}Data]
+Data holds almost all the "state" for the application, as well as helper
+methods. This includes: [+
+* The [$bufs] which has all open buffers
+* The [$root] View (and by extension all Views)
+* The [$keys] keybinding "plugin" (builtin)
+* utility methods like [$log()]
+]
+
+It does NOT include: [+
+* [$events] fifo buffer
+]
+
+[{h2}Actions]
+Actions are functions or [$__call]-able tables which must be registered in
+[$ele.Actions] and must have signature:
+
+[{# lang=lua}
+function action(self, data, ev, evsend)
+]#
+
+The action body is free to mutate both [$data] and [$ev] as well as call
+[$evsend(newEvent)]. It is also free to call [$lap.schedule(...)] to
+schedule coroutines which themselves call [$evsend(newEvent)] asynchronously
+in order ot update the main loop.
+
+Any events scheduled directly by the action will be handled immediately (the LAP
+executor will not be run). The actual implementation of [$model()] is:
+
+[{## lang=lua}
+Ele.model = function(ele)
+  local ev = ele.events:pop()
+  while ev do
+    Actions[ev.action or 'noaction'](ele.data, ev, ele.events)
+    ev = ele.events:pop()
+  end
+end
+]##
+
+The actual implementation of [$intent()] is basically a specialized LAP executor
+that calls [$model()] when any [$events] are present.
+
+[{h2}Event Records]
+Event records MUST be ds.isPod (plain old data). This is asserted on by
+[$evsend()].
+
+Events are a table with some fields defined, mainly: [+
+* action: the action name that should be executed. This must be
+  registered in [$ele.Actions]. See [*Action] section above.
+* cause: (debugging only) a list of keys/etc that led to this action.
+* other data: used by the action function (this object is its second argument)
+]
+
+[{h2}Plugin Architecture]
+It is extremely simple to add plugins: [+
+* register relevant `Actions` fields for your plugin. When an event with
+  [$action] is emitted then that action will be called by [$model()].
+* (optional) initialize your plugin in [$data]
+* (optional) for listening to editor changes register with [$ele.changes], i.e.
+  [$push(ele.changes.fileOpened, myPluginFunction)]. It will be called like it
+  is an action for such events.
+* (optional) for listening to real events, schedule your plugin using
+  [$lap.schedule(...)] (i.e. the builtin [$Keys] plugin does this).
+]
+
+[{h2 name=ele-keys}Keys Builtin Plugin]
+Keys is a builtin plugin which handles actions associated with modal or chorded
+(aka vim or emacs style) keyboard input sequences. Users assign keybinding
+functions to [$Data.bindings] and add binding chains (nested tables) to one of
+the [$Data.bindings.modes] tables.
+
+Keybinding functions receive [$Data.keys]  as their ONLY argument . [$keys] POD,
+see ele/keys.lua for the fields.
+
+The basic operation is that the [$keyinput] action walks the bindings in the
+mode, updating [$Data.keys.next] until it gets to an action to perform. It then
+calls the binding function, scheduling an event if one is returned.
+
+The binding functions can directly mutate Keys, or they can emit an event which
+calls an action to mutate data or schedule coroutines. Core data is never
+modified by the keybinding itself, which makes logging (and replaying) user
+actions trivial (see [$Data.bindings.listen]) which permits recording macros/etc.
+
+The event can have the following special fields: [+
+* [*mode]: if set then [$keys.mode] is set to this after the event is emitted.
+  Makes [$change]-like commands much simpler.
+]

--- cmd/ele/ele.lua
+++ cmd/ele/ele.lua
@@ -42 +42 @@
-  function() lap.async() -- setup (async())
+  function() lap.async() -- setup: change to async()
@@ -46 +46 @@
-  function() lap.sync() -- teardown (sync())
+  function() lap.sync() -- teardown: change to sync()

--- cmd/ele/ele/Session.lua
+++ cmd/ele/ele/Session.lua
@@ -2,3 +2,4 @@
--- Session: holds the main objects of an ed session.
---   This are not directly available to actions/etc
---   This also makes it easier to setup tests/etc.
+-- Session: the root object of Ele, holds the editor
+-- object and events.
+--
+-- This are not directly available to actions/etc
@@ -30 +31 @@
-  s.events = lap.Recv(); s.evsend = s.events:sender()
+  s.events = lap.Recv(); s.evsend  = s.events:sender()

--- lib/civix/test.lua
+++ lib/civix/test.lua
@@ -160 +160,2 @@
-fin = true; end ---------------- end tests()
+fin = true;
+end ---------------- end tests()
@@ -162 +163,4 @@
-fd.ioSync();
+fd.ioStd(); T.SUBNAME = '[ioStd]'
+fin = false; tests(); assert(fin)
+
+fd.ioSync(); T.SUBNAME = '[ioSync]'
@@ -168 +172 @@
-T.SUBNAME = ''
+fd.ioSync(); T.SUBNAME = ''

--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -91,15 +91,7 @@
-local EdIter = mty'EdIter' {
-  'dats',
-  'i [int]: (next) index into EdFile',
-  'dati [int]',
-  'di [int]: index of dat[dati]',
-  'lf [lines.File]: reader of file',
-}
-getmetatable(EdIter).__call = function(T, ef, si)
-  si = si or 1
-  local dati = ef:_datindex(si)
-  if not dati then return construct(T, {}) end -- empty
-  local di = si - (ef.lens[si-1] or 0)
-  return construct(T, {
-    dats=ef.dats, i=si, dati=dati, di=di, lf=ef.lf:reader(),
-  })
+--- Return a read-only view of the EdFile which shares the
+--- associated data structures.
+EdFile.reader = function(ef)
+  return EdFile {
+    lf=ef.lf:reader(),
+    dats=ef.dats, lens=ef.lens, readonly=true,
+  }
@@ -107,19 +98,0 @@
-EdIter.close = function(ei)
-  ei.i, ei.di, ei.dati = false
-  if ei.lf then ei.lf:close(); ei.lf = nil end
-end
-EdIter.__call = function(ei) --> iterate
-  local i = ei.i; if not i then return end
-  local di, dati, dats = ei.di, ei.dati, ei.dats
-  local d = dats[dati]
-  local r = (getmt(d) == Slc) and ei.lf[d.si + di - 1]
-         or d[di]
-  assert(r)
-  if di < #d          then di       = di + 1
-  elseif dati < #dats then di, dati = 1     , dati + 1, 1
-  else ei:close(); return i, r end
-  ei.i, ei.dati, ei.di = i + 1, dati, di
-  return i, r
-end
-
-EdFile.iter = function(ef)   return EdIter(ef) end

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -2,0 +3 @@
+local fd = require'fd'
@@ -5 +5,0 @@
-
@@ -12,0 +13 @@
+local ixt     = require'civix.testing'
@@ -27,0 +29,2 @@
+local fin = false
+local tests = function()
@@ -176,11 +178,0 @@
-T.EdIter = function()
-  local ed = EdFile(SMALL)
-  local small = {'one', 'two', 'three', ''}
-  T.eq(small, ds.icopy(ed))
-
-  local ln, t = {}, {};
-  for i, line in ed:iter() do push(ln, i); push(t, line) end
-  T.eq({1, 2, 3, 4}, ln)
-  T.eq(small, t)
-end
-
@@ -260,0 +253,15 @@
+fin = true
+end -- tests()
+
+fd.ioStd(); T.SUBNAME = '[ioStd]'
+fin = false; tests(); assert(fin)
+
+fd.ioSync(); T.SUBNAME = '[ioSync]'
+fin = false; tests(); assert(fin)
+
+T.SUBNAME = '[ioAsync]'
+fin=false; ixt.runAsyncTest(tests); assert(fin)
+
+fd.ioSync(); T.SUBNAME = ''
+
+error'ok'

--- os/iA/iA.lua
+++ os/iA/iA.lua
@@ -318 +318 @@
---- if cond goto to
+--- [$if cond goto to]
@@ -323,2 +323,2 @@
---- switch of do case 0 do ... default ... end
---- Type is map[int, list[stmt]]
+--- [$switch of do case 0 do ... default ... end]
+--- Type is [$ map[int, list[stmt]] ]
@@ -328 +328 @@
-  'default list[stmt]',
+  'default [list[stmt]]',
@@ -331 +331 @@
---- while cond [atend] do block end
+--- [$while cond [atend] do block end]
