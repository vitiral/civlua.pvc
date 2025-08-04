handle changing pos better
--- lib/fd/fd.c
+++ lib/fd/fd.c
@@ -70 +70,2 @@
-  fd->code = 0; fd->fileno = -1; fd->pos = 0;
+  fd->code = 0; fd->fileno = -1;
+  fd->pos = 0;  fd->fpos = 0;
@@ -153 +154 @@
-  fd->pos  = pos; fd->code = code;
+  fd->pos = pos; fd->fpos = pos; fd->code = code;
@@ -214,0 +216,5 @@
+  if(fd->pos != fd->fpos) {
+    off_t pos = lseek(fd->fileno, fd->pos, SEEK_SET);
+    if(pos < 0) { fd->code = errno; return; }
+    fd->pos = pos; fd->fpos = pos;
+  }
@@ -216 +222 @@
-  if(c >= 0) { fd->si += c; fd->pos += c; fd->code = 0; }
+  if(c >= 0) { fd->si += c; fd->pos += c; fd->fpos = fd->pos; fd->code = 0; }
@@ -235 +241 @@
-  fd->pos = offset; fd->ctrl = whence;
+  fd->off = offset; fd->ctrl = whence;
@@ -240,2 +246,2 @@
-  fprintf(stderr, "!! FD_seek %i %i\n", fd->pos, fd->ctrl);
-  off_t pos = lseek(fd->fileno, fd->pos, fd->ctrl);
+  fprintf(stderr, "!! FD_seek %i %i\n", fd->off, fd->ctrl);
+  off_t pos = lseek(fd->fileno, fd->off, fd->ctrl);
@@ -243 +249 @@
-  fd->pos = pos;
+  fd->pos = pos; fd->fpos = pos;
@@ -258 +264 @@
-  fd->si = 0; fd->ei = 0;
+  fd->fpos = fd->pos; fd->si = 0; fd->ei = 0;
@@ -386,0 +393 @@
+done:

--- lib/fd/fd.h
+++ lib/fd/fd.h
@@ -10,2 +9,0 @@
-typedef enum _FD_MODE { FD_READ = 1, FD_WRITE = 2 } FD_MODE;
-
@@ -12,0 +11 @@
+  volatile int fileno;
@@ -14,2 +13,4 @@
-  volatile int ctrl; // control input (function specific)
-  volatile int fileno; volatile off_t pos;
+  volatile int ctrl;   // control input (function specific)
+  volatile off_t off;  // offset (used for seek)
+  volatile off_t pos;  // position we report (in buffer)
+  volatile off_t fpos; // actual file position
@@ -17 +17,0 @@
-  volatile FD_MODE mode;

--- lib/lines/test_file.lua
+++ lib/lines/test_file.lua
@@ -43,2 +43 @@
-  -- FIXME: error here
-  u[2] = 20; u:flush(); T.eq(3, #u)
+  u[2] = 20; T.eq(3, #u)
@@ -261,4 +260,2 @@
--- FIXME:
--- fd.ioSync(); T.SUBNAME = '[ioSync]'
--- fin = false; tests(); assert(fin)
--- error'ok'
+fd.ioSync(); T.SUBNAME = '[ioSync]'
+fin = false; tests(); assert(fin)
