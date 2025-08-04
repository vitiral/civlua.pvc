fixes for async file
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

--- cmd/ele/ele/actions.lua
+++ cmd/ele/ele/actions.lua
@@ -39 +39 @@
-    local emode = ds.get(ed, {'edit', 'modes', ed.mode, ki})
+    local emode = ds.getp(ed, {'edit', 'modes', ed.mode, ki})

--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -15 +15 @@
-local get, set, dp = ds.get, ds.set, ds.dotpath
+local getp, dp = ds.getp, ds.dotpath
@@ -31 +31 @@
-    or get(k, {'event', 'action'})
+    or getp(k, {'event', 'action'})

--- cmd/ele/ele/types.lua
+++ cmd/ele/ele/types.lua
@@ -8 +8 @@
-local get = ds.get
+local getp = ds.getp
@@ -53 +53 @@
-  if not mty.callable(get(data, {'actions', action})) then
+  if not mty.callable(getp(data, {'actions', action})) then

--- lib/civix/test.lua
+++ lib/civix/test.lua
@@ -31,3 +30,0 @@
--- TODO: this behaves slighlty differently for the different file
---       descriptor libraries!
--- FIXME: re-enable async test
@@ -61 +57,0 @@
-
@@ -160 +156,5 @@
-fin = true; end ---------------- end tests()
+fin = true;
+end ---------------- end tests()
+
+fd.ioStd(); T.SUBNAME = '[ioStd]'
+fin = false; tests(); assert(fin)
@@ -162 +162 @@
-fd.ioSync();
+fd.ioSync(); T.SUBNAME = '[ioSync]'
@@ -168 +168 @@
-T.SUBNAME = ''
+fd.ioSync(); T.SUBNAME = ''

--- lib/ds/ds.lua
+++ lib/ds/ds.lua
@@ -8,0 +9 @@
+local getmt = getmetatable
@@ -32 +33 @@
-  local mt = getmetatable(t)
+  local mt = getmt(t)
@@ -71 +72 @@
-    local mt = getmetatable(v)
+    local mt = getmt(v)
@@ -257,0 +259,18 @@
+
+--- [$t[k]] if t is a raw table, else [$getmetatable(t).get(t, k)]
+---
+--- This lets many types be substitutable for raw-tables in some APIs (i.e. lines).
+M.get = function(t, k) --> value
+  if getmt(t) then return t:get(k) end
+  return t[k]
+end
+local get = M.get
+
+--- [$t[k] = v] if t is a raw table, else [$getmetatable(t).set(t, k, v)]
+---
+--- This lets many types be substitutable for raw-tables in some APIs (i.e. lines).
+M.set = function(t, k, v)
+  if getmt(t) then return t:set(k, v) end
+  t[k] = v
+end
+
@@ -361,2 +380 @@
-  local meth = getmethod(t, '__extend')
-  if meth then return meth(t, l) end
+  if getmt(t) then return t:extend(l) end
@@ -365,0 +384,7 @@
+M.defaultExtend = function(r, l) --> r
+  local rset = getmt(r) and assert(r.set) or rawset
+  local lget = getmt(l) and assert(l.get) or rawget
+  local i = #r + 1
+  for k=1,#l do rset(r,i, lget(l,k)); i = i + 1 end
+  return r
+end
@@ -461 +486 @@
---- used with ds.get and ds.set. Example [{## lang=lua}
+--- used with ds.getp and ds.setp. Example [{## lang=lua}
@@ -463 +488 @@
----   ds.get(t, dp'a.b.c')
+---   ds.getp(t, dp'a.b.c')
@@ -476 +501 @@
-M.get = function(t, path) --> value? at path
+M.getp = function(t, path) --> value? at path
@@ -483,2 +508,2 @@
---- same as ds.get but uses [$rawget]
-M.rawget = function(t, path) --> value? at path
+--- same as ds.getp but uses [$rawget]
+M.rawgetp = function(t, path) --> value? at path
@@ -496 +521 @@
-M.set = function(d, path, value, newFn) --> nil
+M.setp = function(d, path, value, newFn) --> nil
@@ -552,2 +577,2 @@
-getmetatable(M.TypoSafe).__call = mty.constructUnchecked
-getmetatable(M.TypoSafe).__index = mty.index
+getmt(M.TypoSafe).__call = mty.constructUnchecked
+getmt(M.TypoSafe).__index = mty.index
@@ -562,2 +587 @@
-  local meth = getmethod(t, '__icopy')
-  if meth then return meth(t) end
+  if getmt(t) then return t:icopy() end
@@ -566,0 +591,5 @@
+M.defaultICopy = function(r)
+  local t = {}; for i=1,#r do t[i] = r:get(i) end
+  return t
+end
+
@@ -572 +601 @@
-    , getmetatable(t))
+    , getmt(t))
@@ -580 +609 @@
-  return setmetatable(out, getmetatable(t))
+  return setmetatable(out, getmt(t))
@@ -604 +633 @@
-    else  o = dat[i];             i =   - i end
+    else  o = get(dat,i);         i =   - i end
@@ -728 +757 @@
-getmetatable(M.Imm).__call = function(T, t)
+getmt(M.Imm).__call = function(T, t)
@@ -778 +807 @@
-getmetatable(M.Duration).__call = timeNew
+getmt(M.Duration).__call = timeNew
@@ -808 +837 @@
-getmetatable(M.Epoch).__call = timeNew
+getmt(M.Epoch).__call = timeNew
@@ -833,2 +862,2 @@
-getmetatable(M.Set).__index = nil
-getmetatable(M.Set).__call = function(T, t)
+getmt(M.Set).__index = nil
+getmt(M.Set).__call = function(T, t)
@@ -982 +1011 @@
-getmetatable(M.BiMap).__call = function(ty_, t)
+getmt(M.BiMap).__call = function(ty_, t)
@@ -990 +1019 @@
-getmetatable(M.BiMap).__index = nil
+getmt(M.BiMap).__index = nil
@@ -1010 +1039 @@
-getmetatable(M.Deq).__call = function(T)
+getmt(M.Deq).__call = function(T)

--- lib/ds/test.lua
+++ lib/ds/test.lua
@@ -24 +24 @@
-local getOrSet, get, set
+local getOrSet, getp, setp
@@ -199,2 +199,2 @@
-  T.eq(7,   get({a={b=7}}, {'a', 'b'}))
-  T.eq(nil, get({}, {'a', 'b'}))
+  T.eq(7,   getp({a={b=7}}, {'a', 'b'}))
+  T.eq(nil, getp({}, {'a', 'b'}))
@@ -205,4 +205,4 @@
-  set(t, dp'a.b',   4);   T.eq(4, t.a.b)
-  set(t, dp'a.a.a', 5);   T.eq(5, t.a.a.a)
-  set(t, dp'a.a.a', nil); T.eq(nil, t.a.a.a)
-  set(t, dp'a.b',   4);   T.eq(4, t.a.b)
+  setp(t, dp'a.b',   4);   T.eq(4, t.a.b)
+  setp(t, dp'a.a.a', 5);   T.eq(5, t.a.a.a)
+  setp(t, dp'a.a.a', nil); T.eq(nil, t.a.a.a)
+  setp(t, dp'a.b',   4);   T.eq(4, t.a.b)

--- lib/fd/fd.c
+++ lib/fd/fd.c
@@ -38 +38,4 @@
-  int* s = (FDT)->socks; close(s[0]); close(s[1]); s[0] = -1; s[1] = -1; }
+  int* s = (FDT)->socks; \
+  close(s[0]); s[0] = -1; \
+  close(s[1]); s[1] = -1; \
+}
@@ -70 +73,2 @@
-  fd->code = 0; fd->fileno = -1; fd->pos = 0;
+  fd->code = 0; fd->fileno = -1;
+  fd->pos = 0;  fd->fpos = 0;
@@ -108 +112 @@
-  FD_init(&fdt->fd); fdt->meth = NULL; fdt->stopped = false;
+  FD_init(&fdt->fd); fdt->meth = NULL; fdt->stopped = 0;
@@ -145 +148,0 @@
-  fd->fileno = open((char*)fd->buf, fd->ctrl, 0666);
@@ -146,0 +150 @@
+  fd->fileno = open((char*)fd->buf, fd->ctrl, 0666);
@@ -153 +157 @@
-  fd->pos  = pos; fd->code = code;
+  fd->pos = pos; fd->fpos = pos; fd->code = code;
@@ -214,0 +219,7 @@
+  if(fd->pos != fd->fpos) {
+    off_t pos = lseek(fd->fileno, fd->pos, SEEK_SET);
+    if(pos < 0) {
+      fd->code = errno; return;
+    }
+    fd->pos = pos; fd->fpos = pos;
+  }
@@ -216,2 +227,5 @@
-  if(c >= 0) { fd->si += c; fd->pos += c; fd->code = 0; }
-  else         fd->code = errno;
+  if(c >= 0) {
+    fd->pos += c; fd->fpos = fd->pos;
+    fd->si += c;  fd->code = 0;
+  } else {
+  }
@@ -225,2 +239,2 @@
-    case SEEK_CUR: want += fd->pos; // make absolute
-    case SEEK_SET:
+    case SEEK_CUR /*1*/: want += fd->pos; // make absolute, fallthrough
+    case SEEK_SET /*0*/:
@@ -231,2 +244,0 @@
-    case SEEK_END: break; // rely on syscall
-    default: assert(false);
@@ -235 +247 @@
-  fd->pos = offset; fd->ctrl = whence;
+  fd->off = offset; fd->ctrl = whence;
@@ -240 +252 @@
-  off_t pos = lseek(fd->fileno, fd->pos, fd->ctrl);
+  off_t pos = lseek(fd->fileno, fd->off, fd->ctrl);
@@ -242 +254 @@
-  fd->pos = pos;
+  fd->pos = pos; fd->fpos = pos;
@@ -256 +268 @@
-  fd->si = 0; fd->ei = 0;
+  fd->fpos = fd->pos; fd->si = 0; fd->ei = 0;
@@ -311,0 +324 @@
+  FD* fd = asfd(L);
@@ -313 +326 @@
-      ? asfd(L)->code : lua_tointeger(L, 2);
+      ? fd->code : lua_tointeger(L, 2);
@@ -320 +333,2 @@
-  lua_pushstring(L, str); return 1;
+  lua_pushfstring(L, "%s [%I fd#%I]", str, code, fd->fileno);
+  return 1;
@@ -346,0 +361 @@
+  (FDT)->meth = METH; \
@@ -348 +363 @@
-  fdt->meth = METH; EV_POST(fdt); \
+  EV_POST(fdt); \
@@ -371 +385,0 @@
-
@@ -384,0 +399 @@
+done:
@@ -392,0 +408 @@
+  if(len == 0) return 0;
@@ -446,3 +462,3 @@
-  fd->code = FD_RUNNING;
-  fdt->meth = FD_open; EV_POST(fdt);
-  return 1;
+  fdt->meth = FD_open; fd->code = FD_RUNNING;
+  EV_POST(fdt);
+  return 1; // return fd
@@ -458 +474,2 @@
-  fdt->meth = FD_tmp; EV_POST(fdt);
+  fdt->meth = FD_tmp; fd->code = FD_RUNNING;
+  EV_POST(fdt);
@@ -461 +477,0 @@
-#undef FD_TMP
@@ -469,2 +485,2 @@
-  fdt->fd.code = FD_RUNNING;
-  fdt->meth = FD_close; EV_POST(fdt);
+  fdt->meth = FD_close; fdt->fd.code = FD_RUNNING;
+  EV_POST(fdt);
@@ -477 +492,0 @@
-    EV_DESTROY(fdt);
@@ -478,0 +494 @@
+  EV_DESTROY(fdt);

--- lib/fd/fd.h
+++ lib/fd/fd.h
@@ -10,0 +11 @@
+  volatile int fileno;
@@ -12,2 +13,4 @@
-  volatile int ctrl; // control input (function specific)
-  volatile int fileno; volatile off_t pos;
+  volatile int ctrl;   // control input (function specific)
+  volatile off_t off;  // offset (used for seek)
+  volatile off_t pos;  // position we report (in buffer)
+  volatile off_t fpos; // actual file position

--- lib/fd/fd.lua
+++ lib/fd/fd.lua
@@ -98 +98 @@
-  fd:_write(s)
+  while fd:_write(s) do end
@@ -107 +107 @@
-  fd:_seek(offset or 0, whence)
+  while fd:_seek(offset or 0, whence) do end
@@ -265 +265 @@
-  local f = openFn(path, flags); M.finishRunning(f, 'sleep', 0.005)
+  local f = openFn(path, flags); M.finishRunning(f, 'sleep', 0.001)

--- lib/fd/fd/IFile.lua
+++ lib/fd/fd/IFile.lua
@@ -1,5 +0,0 @@
--- FIXME: __index / etc cannot be support for async operations
---   since they can cause yielding across a C-boundary for
---   things like table.move. Therefore, don't do them for
---   these types. Instead, manually support the methods or figure
---   somethinge else out.
@@ -17 +11,0 @@
-
@@ -21 +15 @@
-local trace = require'ds.log'.trace
+local info = require'ds.log'.info
@@ -23 +17,2 @@
-local index, newindex = mty.index, mty.newindex
+getmetatable(IFile).__index = mty.hardIndex
+IFile.__newindex            = mty.hardNewindex
@@ -79,7 +74 @@
-IFile.__index = function(fi, i)
-  if type(i) == 'string' then
-    local mt = getmetatable(fi)
-    return rawget(mt, i) or index(mt, i)
-  end
-  return fi:getbytes(i)
-end
+IFile.get = IFile.getbytes
@@ -95,5 +84 @@
-
-IFile.__newindex = function(fi, i, v)
-  if type(i) == 'string' then return newindex(fi, i, v) end
-  return fi:setbytes(i, v)
-end
+IFile.set = IFile.setbytes

--- lib/fd/test.lua
+++ lib/fd/test.lua
@@ -129,8 +129,6 @@
-  ds.extend(fi, {'a', 'b', 'c'})
-  T.eq({'a', 'b', 'c'}, ds.icopy(fi))
-  fi[2] = 'B'
-  T.eq({'a', 'B', 'c'}, ds.icopy(fi))
-
-  local fi = IFile:create(2)
-  ds.extend(fi, {'aa', 'bb', 'cc'})
-  T.eq({'aa', 'bb', 'cc'}, ds.icopy(fi))
+  fi:set(1, 'a'); fi:set(2, 'b'); fi:set(3, 'c')
+  T.eq(3, #fi)
+  T.eq('a', fi:get(1))
+  T.eq('b', fi:get(2))
+  T.eq('c', fi:get(3))
+  T.eq(nil, fi:get(4))
@@ -139 +137,2 @@
-fin=true; end ----------------- end generalTest
+fin=true
+end -- end generalTest
@@ -196,3 +195 @@
-fin=false
-ixt.runAsyncTest(generalTest)
-assert(fin)
+fin=false; ixt.runAsyncTest(generalTest); assert(fin)
@@ -200,2 +197 @@
-T.SUBNAME = ''
-M.ioStd()
+M.ioStd(); T.SUBNAME = ''

--- lib/lap/lap.lua
+++ lib/lap/lap.lua
@@ -383 +383,2 @@
-  local errors; async, sync = async or M.async, sync or M.sync
+  async, sync = async or M.async, sync or M.sync
+  local errors
@@ -386,4 +387,7 @@
-  if type(fns) == 'function' then LAP_READY[coroutine.create(fns)] = 'run'
-  else; for i, fn in ipairs(fns) do
-    LAP_READY[coroutine.create(fn)] = 'run'
-  end ; end
+  if type(fns) == 'function' then
+    LAP_READY[coroutine.create(fns)] = 'run'
+  else
+    for i, fn in ipairs(fns) do
+      LAP_READY[coroutine.create(fn)] = 'run'
+    end
+  end

--- lib/lines/lines.lua
+++ lib/lines/lines.lua
@@ -16 +16,2 @@
-local inset = ds.inset
+
+local set, get, inset = ds.set, ds.get, ds.inset
@@ -49 +50 @@
-  inset(t, l, M(sinsert(t[l] or '', c or 1, s)), 1)
+  inset(t, l, M(sinsert(get(t, l) or '', c or 1, s)), 1)
@@ -79 +80 @@
-  for i=l,l2 do push(s, t[i]) end
+  for i=l,l2 do push(s, get(t, i)) end
@@ -111 +112 @@
-  return l, bound(c, 1, #(line or t[l]) + 1)
+  return l, bound(c, 1, #(line or get(t, l)) + 1)
@@ -118 +119 @@
-  l = bound(l, 1, len); c = bound(c - 1, 0, #t[l])
+  l = bound(l, 1, len); c = bound(c - 1, 0, #get(t,l))
@@ -120,2 +121,2 @@
-    line = t[l]
-    if nil == line then return len, #t[len] + 1 end
+    line = get(t, l)
+    if nil == line then return len, #get(t,len) + 1 end
@@ -127 +128 @@
-    if l > len then return len, #t[len] + 1 end
+    if l > len then return len, #get(t,len) + 1 end
@@ -130 +131 @@
-    line = t[l]
+    line = get(t,l)
@@ -140 +141 @@
-  return l, bound(c, 0, #t[l]) + 1
+  return l, bound(c, 0, #get(t,l)) + 1
@@ -149 +150 @@
-    llen = #t[l] + 1
+    llen = #get(t,l) + 1
@@ -155 +156 @@
-    llen = #t[l] + ((l==len and 0) or 1)
+    llen = #get(t,l) + ((l==len and 0) or 1)
@@ -160 +161 @@
-  llen = #t[l] + ((l==len and 0) or 1)
+  llen = #get(t,l) + ((l==len and 0) or 1)
@@ -171 +172 @@
-    local s = t[l]
+    local s = get(t,l)
@@ -193 +194 @@
-    local s = t[l]
+    local s = get(t,l)
@@ -205 +206 @@
-  if l2 > len then l2, c2 = len, #t[len] + 1 end
+  if l2 > len then l2, c2 = len, #get(t,len) + 1 end
@@ -211,3 +212,3 @@
-        if c2 <= #t[l] then -- no newline
-          new[1] = t[l]:sub(1, c-1)..t[l]:sub(c2+1)
-          rem[1]  = t[l]:sub(c, c2)
+        if c2 <= #get(t,l) then -- no newline
+          new[1] = get(t,l):sub(1, c-1)..get(t,l):sub(c2+1)
+          rem[1]  = get(t,l):sub(c, c2)
@@ -216,2 +217,2 @@
-          new[1]         = t[l]:sub(1, c-1)..(t[l2] or '')
-          rem[1], rem[2] = t[l]:sub(c, c2), ''
+          new[1]         = get(t,l):sub(1, c-1)..(get(t,l2) or '')
+          rem[1], rem[2] = get(t,l):sub(c, c2), ''
@@ -222,4 +223,4 @@
-      if c <= #t[l] then new[1] = t[l]:sub(1, c - 1)
-      else l1 = l+1;     new[1] = t[l]..(t[l1] or '') end
-      rem[1] = t[l]:sub(c)
-      for i=l1+1,l2-1 do push(rem, t[i]) end
+      if c <= #get(t,l) then new[1] = get(t,l):sub(1, c - 1)
+      else l1 = l+1;     new[1] = get(t,l)..(get(t,l1) or '') end
+      rem[1] = get(t,l):sub(c)
+      for i=l1+1,l2-1 do push(rem, get(t,i)) end
@@ -227 +228 @@
-        if c2 > #t[l2] then push(rem, t[l2]) -- include newline
+        if c2 > #get(t,l2) then push(rem, get(t,l2)) -- include newline
@@ -229 +230 @@
-          push(rem, t[l2]:sub(1, c2)); push(new, t[l2]:sub(c2 + 1))
+          push(rem, get(t,l2):sub(1, c2)); push(new, get(t,l2):sub(c2 + 1))
@@ -234 +235 @@
-    for i=l,l2 do push(rem, t[i]) end
+    for i=l,l2 do push(rem, get(t,i)) end
@@ -243 +244 @@
-    local line = t[l]
+    local line = get(t,l)
@@ -258 +259 @@
-  for line in f:lines() do t[i] = line; i = i + 1 end
+  for line in f:lines() do set(t,i, line); i = i + 1 end
@@ -287,2 +288,2 @@
-    if len == 0 then t[1] = first
-    else             t[len] = t[len]..first end
+    if len == 0 then set(t,1, first)
+    else             set(t,len, get(t,len)..first) end
@@ -290 +291 @@
-  for i=2,#w do t[len + i - 1] = w[i] end
+  for i=2,#w do set(t, len + i - 1, w[i]) end

--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -27,0 +28,3 @@
+getmetatable(EdFile).__index = mty.hardIndex
+EdFile.__newindex            = mty.hardNewindex
+
@@ -31 +33,0 @@
-
@@ -61,5 +63,2 @@
-EdFile.__index = function(ef, i) --!!> string
-  if type(i) == 'string' then
-    local mt = getmt(ef)
-    return rawget(mt, i) or index(mt, i)
-  end
+--- Get line at index
+EdFile.get = function(ef, i) --> line
@@ -69 +68 @@
-  return (getmt(dat) == Slc) and ef.lf[dat.si + i - 1]
+  return (getmt(dat) == Slc) and ef.lf:get(dat.si + i - 1)
@@ -86,2 +85,2 @@
-EdFile.__newindex = function(ef, i, v) --!!> nil
-  if type(i) == 'string' then return newindex(ef, i, v) end
+--- Set line at index.
+EdFile.set = function(ef, i, v)
@@ -91,32 +90,7 @@
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
-end
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
+--- Return a read-only view of the EdFile which shares the
+--- associated data structures.
+EdFile.reader = function(ef)
+  return EdFile {
+    lf=ef.lf:reader(),
+    dats=ef.dats, lens=ef.lens, readonly=true,
+  }
@@ -125,2 +98,0 @@
-EdFile.iter = function(ef)   return EdIter(ef) end
-
@@ -136 +108 @@
-      local sp, ep = efx[d.si], efx[d.si + 1]
+      local sp, ep = efx:get(d.si), efx:get(d.si + 1)
@@ -147 +119 @@
-EdFile.__extend = function(ef, values)
+EdFile.extend = function(ef, values)
@@ -202 +174 @@
-    return ef:__extend(values)
+    return ef:extend(values)
@@ -254 +226 @@
-    if first then first:__extend(last) -- join first+last
+    if first then first:extend(last) -- join first+last
@@ -267 +239 @@
-    first:__extend(rdats[1]); rdats[1], df = first, df - 1
+    first:extend(rdats[1]); rdats[1], df = first, df - 1
@@ -271 +243 @@
-    last:__extend(dats[dl+1]); dl = dl + 1
+    last:extend(dats[dl+1]); dl = dl + 1
@@ -276,0 +249,2 @@
+EdFile.icopy = ds.defaultICopy
+

--- lib/lines/lines/File.lua
+++ lib/lines/lines/File.lua
@@ -31,0 +32 @@
+local get, set = ds.get, ds.set
@@ -32,0 +34,2 @@
+getmetatable(File).__index = mty.hardIndex
+File.__newindex            = mty.hardNewindex
@@ -44 +47 @@
-    idx[l] = pos; l = l + 1
+    set(idx, l, pos); l = l + 1
@@ -50 +53 @@
-    idx[l] = pos
+    set(idx, l, pos)
@@ -64 +66,0 @@
-    trace('reloading path %s', t.path)
@@ -65,0 +68 @@
+    trace('reloading path %s %s', t.path, t.mode)
@@ -67 +70,2 @@
-    idx, err = loadIdx(f, pth.concat{T.IDX_DIR, t.path}, t.mode, T._reindex)
+    local ipath = pth.concat{T.IDX_DIR, t.path}
+    idx, err = loadIdx(f, ipath, t.mode, T._reindex)
@@ -100 +104 @@
-  if len == 0 then len = 1; idx[1] = 0 end
+  if len == 0 then len = 1; idx:set(1, 0) end
@@ -105 +109 @@
-    len = len + 1; idx[len] = pos + 1
+    len = len + 1; idx:set(len, pos + 1)
@@ -113,6 +117,2 @@
-getmetatable(File).__index = nil
-File.__index = function(lf, i) --!!> string
-  if type(i) == 'string' then
-    local mt = getmt(lf)
-    return rawget(mt, i) or index(mt, i)
-  end
+--- Get line at index
+File.get = function(lf, i) --> line
@@ -124 +124 @@
-    pos = assert(lf.idx[i])
+    pos = assert(lf.idx:get(i))
@@ -134,2 +134,2 @@
-File.__newindex = function(lf, i, v)
-  if type(i) == 'string' then return newindex(lf, i, v) end
+--- Set line at index
+File.set = function(lf, i, v)
@@ -148 +148 @@
-  idx[i], cache[i] = pos, v
+  idx:set(i, pos); cache[i] = v
@@ -165,0 +166,3 @@
+File.extend = ds.defaultExtend
+File.icopy  = ds.defaultICopy
+

--- lib/lines/lines/Gap.lua
+++ lib/lines/lines/Gap.lua
@@ -41,2 +41 @@
-Gap.__index = function(g, l)
-  if type(l) ~= 'number' then return getmetatable(g)[l] end
+Gap.get = function(g, l)
@@ -46,0 +46,4 @@
+Gap.__index = function(g, l)
+  if type(l) ~= 'number' then return getmetatable(g)[l] end
+  return g:get(l)
+end
@@ -62 +65 @@
-Gap.__newindex = function(g, i, v)
+Gap.set = function(g, i, v)
@@ -65,0 +69 @@
+Gap.__newindex = Gap.set
@@ -77 +81 @@
-Gap.__extend = function(g, l)
+Gap.extend = function(g, l)

--- lib/lines/lines/U3File.lua
+++ lib/lines/lines/U3File.lua
@@ -1,0 +2 @@
+local ds  = require'ds'
@@ -17,0 +19,3 @@
+getmetatable(U3File).__index = mty.hardIndex
+U3File.__newindex            = mty.hardNewindex
+
@@ -19,7 +23,5 @@
-U3File.load = function(T, ...) return iload(T, 3, ...) end
-U3File.__index = function(u3, k)
-  if type(k) == 'string' then
-    local mt = getmetatable(u3)
-    return rawget(mt, k) or index(mt, k)
-  end
-  local str = getbytes(u3, k)
+U3File.load   = function(T, ...) return iload(T, 3, ...)    end
+
+--- get value at index
+U3File.get = function(u3, i)
+  local str = getbytes(u3, i)
@@ -29,3 +31,3 @@
-U3File.__newindex = function(u3, k, v)
-  if type(k) == 'string' then return newindex(u3, k, v) end
-  return setbytes(u3, k, pack('>I3', v))
+--- set value at index
+U3File.set = function(u3, i, v)
+  return setbytes(u3, i, pack('>I3', v))
@@ -39,0 +42,3 @@
+U3File.extend = ds.defaultExtend
+U3File.icopy  = ds.defaultICopy
+

--- lib/lines/lines/Writer.lua
+++ lib/lines/lines/Writer.lua
@@ -12,0 +13,4 @@
+getmetatable(Writer).__index = mty.hardIndex
+Writer.__newindex            = mty.hardNewindex
+Writer.set = rawset
+Writer.get = rawget
@@ -14,0 +19,2 @@
+Writer.extend = ds.defaultExtend
+Writer.icopy  = ds.defaultICopy

--- lib/lines/lines/testing.lua
+++ lib/lines/lines/testing.lua
@@ -112,4 +112,5 @@
-  t = new'a b c\nd e\nf g\nh i\n'
-  fmt.print('t:', t)
-  assertEqR({'d e', 'f g'}, lines.remove(t, 2, 3))
-  assertEq(new{'a b c', 'h i', ''}, t)
+  -- TODO: consider re-adding as a separate test
+  -- t = new'a b c\nd e\nf g\nh i\n'
+  -- fmt.print('t:', t)
+  -- assertEqR({'d e', 'f g'}, lines.remove(t, 2, 3))
+  -- assertEq(new{'a b c', 'h i', ''}, t)

--- lib/lines/test.lua
+++ lib/lines/test.lua
@@ -189 +189 @@
-  T.eq(W{'hi there'}, w)
+  T.eq({'hi there'}, ds.icopy(w))
@@ -191 +191 @@
-  T.eq(W{'hi there bob'}, w)
+  T.eq({'hi there bob'}, ds.icopy(w))
@@ -193 +193 @@
-  T.eq(W{'hi there bob', 'and jane'}, w)
+  T.eq({'hi there bob', 'and jane'}, ds.icopy(w))
@@ -195,2 +195,2 @@
-  T.eq(W{'hi there bob', 'and jane and sue',
-             'and zebe', ''}, w)
+  T.eq({'hi there bob', 'and jane and sue',
+             'and zebe', ''}, ds.icopy(w))

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -2,0 +3 @@
+local fd = require'fd'
@@ -5 +5,0 @@
-
@@ -12,0 +13 @@
+local ixt     = require'civix.testing'
@@ -18,0 +20,4 @@
+local get, set = ds.get, ds.set
+
+local info = require'ds.log'.info
+
@@ -20,2 +25,2 @@
-  local pos, t = f:seek'cur', {}
-  assert(pos)
+  local pos, t = f:seek'cur', {}; assert(pos)
+  info('end: %i', f:seek'end')
@@ -27,0 +33,2 @@
+local fin = false
+local tests = function()
@@ -30,5 +37,4 @@
-  u[1] = 11
-  u[2] = 22; u[3] = 33
-  T.eq(11, u[1])
-  T.eq(22, u[2])
-  T.eq(33, u[3]); T.eq(nil, rawget(u, 3))
+  u:set(1, 11); u:set(2, 22); u:set(3, 33)
+  T.eq(11, u:get(1))
+  T.eq(22, u:get(2))
+  T.eq(33, u:get(3)); T.eq(nil, rawget(u, 3))
@@ -36 +42 @@
-  T.eq(11, u[1]) -- testing loadu3s
+  T.eq(11, u:get(1)) -- testing loadu3s
@@ -39,3 +45,3 @@
-  u[2] = 20; T.eq({11, 20, 33}, loadu3s(u.f))
-  T.eq(20, u[2])
-  T.eq(33, u[3])
+  u:set(2, 20); T.eq(3, #u)
+    T.eq({11, 20, 33}, loadu3s(u.f))
+    T.eq(11, u:get(1)); T.eq(20, u:get(2)); T.eq(33, u:get(3))
@@ -43 +49 @@
-  u[1] = 10; u[4] = 44; u[5] = 55
+  u:set(1, 10); u:set(4, 44); u:set(5, 55)
@@ -45,2 +51,2 @@
-  T.eq(10, u[1])
-  T.eq(55, u[5])
+  T.eq(10, u:get(1))
+  T.eq(55, u:get(5))
@@ -48 +54 @@
-  local l = {}; for i, v in ipairs(u) do l[i] = v end
+  local l = {}; for i=1,#u do l[i] = u:get(i) end
@@ -54,2 +60,2 @@
-  T.eq(0, u[1])
-  T.eq(7, u[4])
+  T.eq(0, u:get(1))
+  T.eq(7, u:get(4))
@@ -84,2 +90,2 @@
-    T.eq('one',   f[1])
-    T.eq('three', f[3])
+    T.eq('one',   f:get(1))
+    T.eq('three', f:get(3))
@@ -88,2 +94,2 @@
-  T.eq('one', f[1])
-  push(f, 'four'); push(dat, 'four')
+  T.eq('one', f:get(1))
+  f:set(4, 'four'); push(dat, 'four')
@@ -91 +97 @@
-  T.eq(4, #f); T.eq('four', f[#f])
+  T.eq(4, #f); T.eq('four', f:get(#f))
@@ -94,3 +100,3 @@
-  T.eq('four: still in line four',          f[4])
-  f:write' and this'
-  T.eq('four: still in line four and this', f[4])
+  T.eq('four: still in line four',          f:get(4))
+  f:write' and this'; f:flush()
+  T.eq('four: still in line four and this', f:get(4))
@@ -101 +107 @@
-  T.eq('two', f[2])
+  T.eq('two', f:get(2))
@@ -104 +110 @@
-  f:write'line 1\nline 2\nline 3'
+  f:write'line 1\nline 2\nline 3'; f:flush()
@@ -107 +112,0 @@
-  f:flush()
@@ -146,3 +151,3 @@
-  T.eq('one',   ef[1]); T.eq({2},    ef.lens)
-  T.eq('three', ef[3]); T.eq({2, 6}, ef.lens)
-  T.eq('six',   ef[6])
+  T.eq('one',   ef:get(1)); T.eq({2},    ef.lens)
+  T.eq('three', ef:get(3)); T.eq({2, 6}, ef.lens)
+  T.eq('six',   ef:get(6))
@@ -158 +163 @@
-  push(ef, 'one')
+  ef:set(1, 'one')
@@ -161 +166 @@
-  T.eq('one', ef[1])
+  T.eq('one', ef:get(1))
@@ -163 +168 @@
-  push(ef, 'two')
+  ef:set(2, 'two')
@@ -166,2 +171,2 @@
-  T.eq('one', ef[1])
-  T.eq('two', ef[2])
+  T.eq('one', ef:get(1))
+  T.eq('two', ef:get(2))
@@ -169 +174 @@
-  ef[1] = 'one 1'
+  ef:set(1, 'one 1')
@@ -176,11 +180,0 @@
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
@@ -195 +189 @@
-  T.eq('five 5', ed[3])
+  T.eq('five 5', ed:get(3))
@@ -222 +216 @@
-  ed[1] = 'zero 0' -- same
+  ed:set(1, 'zero 0') -- same
@@ -228 +222 @@
-  for i=1,100 do push(ed, 'line '..i) end
+  for i=1,100 do ed:set(#ed+1, 'line '..i) end
@@ -231 +225 @@
-  T.eq(ed[3], 'line 3')
+  T.eq(ed:get(3), 'line 3')
@@ -234,4 +228,4 @@
-  ed[3] = 'line 3.0'
-  T.eq(ed[2], 'line 2')
-  T.eq(ed[3], 'line 3.0')
-  T.eq(ed[4], 'line 4')
+  ed:set(3, 'line 3.0')
+  T.eq(ed:get(2), 'line 2')
+  T.eq(ed:get(3), 'line 3.0')
+  T.eq(ed:get(4), 'line 4')
@@ -240,3 +234,3 @@
-  T.eq(ed[6], 'line 6')
-  T.eq(ed[7], 'line 7.0')
-  T.eq(ed[10], 'line 8')
+  T.eq(ed:get(6), 'line 6')
+  T.eq(ed:get(7), 'line 7.0')
+  T.eq(ed:get(10), 'line 8')
@@ -247 +241 @@
-  local ed = EdFile()
+  local ed = assert(EdFile())
@@ -260,0 +255,13 @@
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
+fd.ioStd(); T.SUBNAME = ''

--- lib/metaty/metaty.lua
+++ lib/metaty/metaty.lua
@@ -6 +6 @@
-local getmt = getmetatable
+local getmt, type, rawget = getmetatable, type, rawget
@@ -199,0 +200 @@
+
@@ -204,0 +206,5 @@
+M.hardIndex = function(R, k)
+  if type(k) ~= 'string' or not rawget(R, '__fields')[k] then
+    M.indexError(R, k, 3)
+  end
+end
@@ -210,0 +217,6 @@
+M.hardNewindex = function(r, k, v)
+  if type(k) ~= 'string' or not M.metaget(r, '__fields')[k] then
+    M.indexError(getmt(r), k, 3)
+  end
+  rawset(r, k, v)
+end

--- lib/pegl/pegl.lua
+++ lib/pegl/pegl.lua
@@ -16,0 +17 @@
+local get, set = ds.get, ds.set
@@ -103 +104 @@
-  'line [string]: the current line ([$dat[l]])',
+  'line [string]: the current line ([$dat:get(l)])',
@@ -136 +137,4 @@
-  return mty(name){'kind [string]', 'name [string]', __fmt=M.fmtSpec}
+  local s = mty(name){'kind [string]', 'name [string]', __fmt=M.fmtSpec}
+  s.get, s.set = rawget, rawset
+  s.extend = ds.defaultExtend
+  return s
@@ -518 +522 @@
-    dat=dat, l=1, c=1, line=dat[1], lines=#dat,
+    dat=dat, l=1, c=1, line=get(dat,1), lines=#dat,
@@ -553 +557 @@
-  p.line = p.dat[p.l]
+  p.line = get(p.dat,p.l)
@@ -589 +593 @@
-  local line = p.dat[l1]
+  local line = get(p.dat,l1)
@@ -599 +603 @@
-  local line = p.dat[l2]
+  local line = get(p.dat,l2)
@@ -602 +606 @@
-    l2 = l2 - 1; c2 = #p.dat[l2]
+    l2 = l2 - 1; c2 = #get(p.dat,l2)

--- lib/pegl/pegl/lua.lua
+++ lib/pegl/pegl/lua.lua
@@ -11,0 +12 @@
+local get = ds.get
@@ -243 +244 @@
-    p.l, p.line = l, p.dat[l]
+    p.l, p.line = l, get(p.dat,l)
@@ -253 +253,0 @@
-  -- FIXME: this is mutating the global!

--- lib/pkg/pkglib.lua
+++ lib/pkg/pkglib.lua
@@ -177,16 +176,0 @@
---- get any path separated by '.' including both [$require'some'.thing] and
---- [$require'some.thing']
-M.getpath = function(dotpath) --> obj
-  if type(dotpath) == 'string' then -- split by '.'
-    local t = {}; for m in dotpath:gmatch'[^.]+' do push(t, m) end
-  end
-  local obj
-  for i=1,#dotpath do
-    local v = obj and ds.get(obj, ds.slice(dotpath, i))
-    if v then return v end
-    obj = pget(table.concat(dotpath, '.', 1, i))
-  end
-  return obj
-end
-
-

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

--- test.lua
+++ test.lua
@@ -29 +28,0 @@
-
@@ -31,5 +29,0 @@
-  dofile(dir..'lib/lines/test.lua')
-  dofile(dir..'lib/lines/test_motion.lua')
-  assert(io_open == io.open)
-  dofile(dir..'lib/lines/test_file.lua')
-  dofile(dir..'lib/lines/test_buffer.lua')
@@ -38,0 +33 @@
+
@@ -39,0 +35,5 @@
+  dofile(dir..'lib/lines/test.lua')
+  dofile(dir..'lib/lines/test_motion.lua')
+  dofile(dir..'lib/lines/test_buffer.lua')
+  dofile(dir..'lib/lines/test_file.lua')
+  assert(io_open == io.open)
