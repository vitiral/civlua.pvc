test_file tests now pass
--- lib/fd/fd.c
+++ lib/fd/fd.c
@@ -38 +38,4 @@
-  int* s = (FDT)->socks; close(s[0]); close(s[1]); s[0] = -1; s[1] = -1; }
+  int* s = (FDT)->socks; \
+  close(s[0]); s[0] = -1; \
+  close(s[1]); s[1] = -1; \
+}
@@ -109 +112 @@
-  FD_init(&fdt->fd); fdt->meth = NULL; fdt->stopped = false;
+  FD_init(&fdt->fd); fdt->meth = NULL; fdt->stopped = 0;
@@ -146 +148,0 @@
-  fd->fileno = open((char*)fd->buf, fd->ctrl, 0666);
@@ -147,0 +150 @@
+  fd->fileno = open((char*)fd->buf, fd->ctrl, 0666);
@@ -218 +221,3 @@
-    if(pos < 0) { fd->code = errno; return; }
+    if(pos < 0) {
+      fd->code = errno; return;
+    }
@@ -222,2 +227,5 @@
-  if(c >= 0) { fd->si += c; fd->pos += c; fd->fpos = fd->pos; fd->code = 0; }
-  else         fd->code = errno;
+  if(c >= 0) {
+    fd->pos += c; fd->fpos = fd->pos;
+    fd->si += c;  fd->code = 0;
+  } else {
+  }
@@ -229 +236,0 @@
-  fprintf(stderr, "!! FD_seekpre %i %i\n", offset, whence);
@@ -236 +242,0 @@
-        fprintf(stderr, "!! buff-only pos=%i si=%i\n", want, fd->si);
@@ -246 +251,0 @@
-  fprintf(stderr, "!! FD_seek %i %i\n", fd->off, fd->ctrl);
@@ -255 +259,0 @@
-  fprintf(stderr, "!! flushing\n");
@@ -319,0 +324 @@
+  FD* fd = asfd(L);
@@ -321 +326 @@
-      ? asfd(L)->code : lua_tointeger(L, 2);
+      ? fd->code : lua_tointeger(L, 2);
@@ -328 +333,2 @@
-  lua_pushfstring(L, "%s [%I]", str, code); return 1;
+  lua_pushfstring(L, "%s [%I fd#%I]", str, code, fd->fileno);
+  return 1;
@@ -354,0 +361 @@
+  (FDT)->meth = METH; \
@@ -356 +363 @@
-  fdt->meth = METH; EV_POST(fdt); \
+  EV_POST(fdt); \
@@ -379 +385,0 @@
-
@@ -401,0 +408 @@
+  if(len == 0) return 0;
@@ -455,3 +462,3 @@
-  fd->code = FD_RUNNING;
-  fdt->meth = FD_open; EV_POST(fdt);
-  return 1;
+  fdt->meth = FD_open; fd->code = FD_RUNNING;
+  EV_POST(fdt);
+  return 1; // return fd
@@ -467 +474,2 @@
-  fdt->meth = FD_tmp; EV_POST(fdt);
+  fdt->meth = FD_tmp; fd->code = FD_RUNNING;
+  EV_POST(fdt);
@@ -470 +477,0 @@
-#undef FD_TMP
@@ -478,2 +485,2 @@
-  fdt->fd.code = FD_RUNNING;
-  fdt->meth = FD_close; EV_POST(fdt);
+  fdt->meth = FD_close; fdt->fd.code = FD_RUNNING;
+  EV_POST(fdt);
@@ -486 +492,0 @@
-    EV_DESTROY(fdt);
@@ -487,0 +494 @@
+  EV_DESTROY(fdt);

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

--- lib/lines/lines/EdFile.lua
+++ lib/lines/lines/EdFile.lua
@@ -34 +33,0 @@
-

--- lib/lines/lines/File.lua
+++ lib/lines/lines/File.lua
@@ -67 +66,0 @@
-    trace('reloading path %s', t.path)
@@ -68,0 +68 @@
+    trace('reloading path %s %s', t.path, t.mode)
@@ -70 +70,2 @@
-    idx, err = loadIdx(f, pth.concat{T.IDX_DIR, t.path}, t.mode, T._reindex)
+    local ipath = pth.concat{T.IDX_DIR, t.path}
+    idx, err = loadIdx(f, ipath, t.mode, T._reindex)

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -241 +241 @@
-  local ed = EdFile()
+  local ed = assert(EdFile())
@@ -265 +264,0 @@
--- FIXME:
@@ -269 +267,0 @@
-
