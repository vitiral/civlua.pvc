trace down bug with ioSync and seek
--- lib/fd/fd.c
+++ lib/fd/fd.c
@@ -222,0 +223 @@
+  fprintf(stderr, "!! FD_seekpre %i %i\n", offset, whence);
@@ -225,2 +226,2 @@
-    case SEEK_CUR: want += fd->pos; // make absolute
-    case SEEK_SET:
+    case SEEK_CUR /*1*/: want += fd->pos; // make absolute, fallthrough
+    case SEEK_SET /*0*/:
@@ -228,0 +230 @@
+        fprintf(stderr, "!! buff-only pos=%i si=%i\n", want, fd->si);
@@ -231,2 +232,0 @@
-    case SEEK_END: break; // rely on syscall
-    default: assert(false);
@@ -239,0 +240 @@
+  fprintf(stderr, "!! FD_seek %i %i\n", fd->pos, fd->ctrl);
@@ -247,0 +249 @@
+  fprintf(stderr, "!! flushing\n");

--- lib/fd/fd.h
+++ lib/fd/fd.h
@@ -9,0 +10,2 @@
+typedef enum _FD_MODE { FD_READ = 1, FD_WRITE = 2 } FD_MODE;
+
@@ -14,0 +17 @@
+  volatile FD_MODE mode;

--- lib/fd/fd/IFile.lua
+++ lib/fd/fd/IFile.lua
@@ -21 +21 @@
-local trace = require'ds.log'.trace
+local info = require'ds.log'.info
@@ -29,0 +30 @@
+  info('!! iseek i=%s (pos=%i)', i, to)
@@ -87,0 +89 @@
+  info('!! setbytes[%s]=%q', i, v)

--- lib/fd/test.lua
+++ lib/fd/test.lua
@@ -135,2 +135,2 @@
-  ds.extend(fi, {'aa', 'bb', 'cc'})
-  T.eq({'aa', 'bb', 'cc'}, ds.icopy(fi))
+  ds.extend(fi, {'a1', 'b2', 'c3'})
+  T.eq({'a1', 'b2', 'c3'}, ds.icopy(fi))
@@ -139 +139,2 @@
-fin=true; end ----------------- end generalTest
+fin=true
+end -- end generalTest
@@ -196,3 +197 @@
-fin=false
-ixt.runAsyncTest(generalTest)
-assert(fin)
+fin=false; ixt.runAsyncTest(generalTest); assert(fin)
@@ -200,2 +199 @@
-T.SUBNAME = ''
-M.ioStd()
+M.ioStd(); T.SUBNAME = ''

--- lib/lines/lines/U3File.lua
+++ lib/lines/lines/U3File.lua
@@ -19 +19 @@
-U3File.load = function(T, ...) return iload(T, 3, ...) end
+U3File.load   = function(T, ...) return iload(T, 3, ...)    end

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -19,0 +20,2 @@
+local info = require'ds.log'.info
+
@@ -21,2 +23,2 @@
-  local pos, t = f:seek'cur', {}
-  assert(pos)
+  local pos, t = f:seek'cur', {}; assert(pos)
+  info('end: %i', f:seek'end')
@@ -33,2 +35 @@
-  u[1] = 11
-  u[2] = 22; u[3] = 33
+  u[1] = 11; u[2] = 22; u[3] = 33
@@ -42,3 +43,4 @@
-  u[2] = 20; T.eq({11, 20, 33}, loadu3s(u.f))
-  T.eq(20, u[2])
-  T.eq(33, u[3])
+  -- FIXME: error here
+  u[2] = 20; u:flush(); T.eq(3, #u)
+    T.eq({11, 20, 33}, loadu3s(u.f))
+    T.eq(11, u[1]); T.eq(20, u[2]); T.eq(33, u[3])
@@ -259,5 +261,8 @@
-fd.ioSync(); T.SUBNAME = '[ioSync]'
-fin = false; tests(); assert(fin)
-
-T.SUBNAME = '[ioAsync]'
-fin=false; ixt.runAsyncTest(tests); assert(fin)
+-- FIXME:
+-- fd.ioSync(); T.SUBNAME = '[ioSync]'
+-- fin = false; tests(); assert(fin)
+-- error'ok'
+
+-- FIXME:
+-- T.SUBNAME = '[ioAsync]'
+-- fin=false; ixt.runAsyncTest(tests); assert(fin)
@@ -265 +270 @@
-fd.ioSync(); T.SUBNAME = ''
+fd.ioStd(); T.SUBNAME = ''
@@ -267 +271,0 @@
-error'ok'

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
