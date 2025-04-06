initial implementation of amend




--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -257 +257 @@
-M.rawtip = function(bpath, id)
+M.rawtip = function(bpath, id) 
@@ -637 +637 @@
-M.rebase = function(pdir, branch, id)
+M.rebase = function(pdir, branch, id) --> backup/dir/
@@ -697,0 +698 @@
+  return backup
@@ -753 +754 @@
-    io.fmt:notify('error', 'squashing ids [%s - %s] is a noop', bot, top)
+    io.fmt:styled('error', sfmt('squashing ids [%s - %s] is a noop', bot, top), '\n')
@@ -758,2 +759,2 @@
-  if bot <= bid  then error(sfmt('bottom %i <= base id %s', top, bid)) end
-  if top  >  tip then error(sfmt('top %i > tip %i', top, tip)) end
+  if bot <= bid then error(sfmt('bottom %i <= base id %s', top, bid)) end
+  if top >  tip then error(sfmt('top %i > tip %i', top, tip)) end
@@ -792 +793 @@
-  M.rawat(P, br,bot)
+  M.rawat(P, br,bot); M.rawtip(P, br,bi-1)
@@ -944 +944,0 @@
-  trace('!! desc: %q', desc)
@@ -947 +946,0 @@
-  trace('!! desc now: %q', desc)
@@ -977,2 +976,8 @@
-  local br,bot = M.resolve(P, assert(args[1], 'must set branch#id (aka "at")'))
-  local top = toint(assert(args[2], 'must set endId'))
+  local br, bot,top
+  if args[1] then
+    br, bot = M.resolve(P, args[1])
+    top     = toint(assert(args[2], 'must set endId'))
+  else -- local commits
+    br, bot = M.at(P); top = bot + 1
+    M.commit(P, '')
+  end
@@ -1065,10 +1069,0 @@
---- [$amend -- new commit message]: amend the current patch,
---- rebasing the later patches on top.
-M.main.amend = function(args)
-  -- (1): create new brach_amend at current id
-  -- (2): commit change to branch_amend
-  -- (3): rebase branch_amend onto branch
-  -- (4): squash the commit into the previous and update description
-  -- (5): move branch -> backup/ and branch_amend
-end
-

--- cmd/pvc/test.lua
+++ cmd/pvc/test.lua
@@ -27 +27 @@
-local initPvc = function(d)
+local initPvc = function(d) --> projDir
@@ -271 +270,0 @@
-
