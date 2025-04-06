refactor pdir - bpath -
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -246 +246 @@
-M.branchDir = function(pdir, branch, dot)
+M.branchDir = function(P, branch, dot)
@@ -249 +249 @@
-  return pth.concat{pdir, dot or '.pvc', branch, '/'}
+  return pth.concat{P, dot or '.pvc', branch, '/'}
@@ -252,2 +252,2 @@
-M.getbase = function(bpath, br) --> br, id
-  bpath = bpath..'base'
+M.getbase = function(bdir, br) --> br, id
+  local bpath = bdir..'base'
@@ -257,3 +257,3 @@
-M.rawtip = function(bpath, id)
-  if id then pth.write(toDir(bpath)..'tip', tostring(id))
-  else return readInt(toDir(bpath)..'tip') end
+M.rawtip = function(bdir, id)
+  if id then pth.write(toDir(bdir)..'tip', tostring(id))
+  else return readInt(toDir(bdir)..'tip') end
@@ -261 +261 @@
-M.depth = function(bpath) return readInt(toDir(bpath)..'patch/depth') end
+M.depth = function(bdir) return readInt(toDir(bdir)..'patch/depth') end
@@ -263,2 +263,2 @@
-M.patchPath = function(bpath, id, last, depth) --> string?
-  depth = depth or M.depth(bpath)
+M.patchPath = function(bdir, id, last, depth) --> string?
+  depth = depth or M.depth(bdir)
@@ -268 +268 @@
-  local path = {bpath, 'patch'}; for i=1,#dirstr,2 do
+  local path = {bdir, 'patch'}; for i=1,#dirstr,2 do
@@ -276,2 +276,2 @@
-M.snapDir = function(bpath, id) --> string?
-  return M.patchPath(bpath, id, '.snap/')
+M.snapDir = function(bdir, id) --> string?
+  return M.patchPath(bdir, id, '.snap/')
@@ -285 +285 @@
-local function initBranch(bpath, id)
+local function initBranch(bdir, id)
@@ -287 +287 @@
-  assertf(not ix.exists(bpath), '%s already exists', bpath)
+  assertf(not ix.exists(bdir), '%s already exists', bdir)
@@ -289,2 +289,2 @@
-  trace('initbranch %s', bpath)
-  ix.mkTree(bpath, {
+  trace('initbranch %s', bdir)
+  ix.mkTree(bdir, {
@@ -293,2 +293,2 @@
-  if id ~= 0 then return bpath end
-  local ppath = M.patchPath(bpath, id, '', depth)
+  if id ~= 0 then return bdir end
+  local ppath = M.patchPath(bdir, id, '', depth)
@@ -300 +300 @@
-M.snapshot = function(pdir, br,id) --> .../id.snap/
+M.snapshot = function(P, br,id) --> .../id.snap/
@@ -303,2 +303,2 @@
-  local bpath = M.branchDir(pdir, br)
-  local snap = M.snapDir(bpath, id)
+  local bdir = M.branchDir(P, br)
+  local snap = M.snapDir(bdir, id)
@@ -307,3 +307,3 @@
-  local bbr,bid = M.getbase(bpath, br)
-  if id == bid then return M.snapshot(pdir, bbr,bid) end
-  trace('findSnap %s id=%s with base %s#%s', bpath, id, bbr,bid)
+  local bbr,bid = M.getbase(bdir, br)
+  if id == bid then return M.snapshot(P, bbr,bid) end
+  trace('findSnap %s id=%s with base %s#%s', bdir, id, bbr,bid)
@@ -311 +311 @@
-  local tip      = M.rawtip(bpath)
+  local tip      = M.rawtip(bdir)
@@ -315 +315 @@
-    snap = M.patchPath(bpath, idl, '.snap/PVC_DONE')
+    snap = M.patchPath(bdir, idl, '.snap/PVC_DONE')
@@ -317 +317 @@
-      fsnap, fid = M.snapDir(bpath,idl), idl; break
+      fsnap, fid = M.snapDir(bdir,idl), idl; break
@@ -320 +320 @@
-      fsnap, fid = M.snapshot(pdir, bbr,bid), idl; break
+      fsnap, fid = M.snapshot(P, bbr,bid), idl; break
@@ -322 +322 @@
-    snap = M.patchPath(bpath, idr, '.snap/PVC_DONE')
+    snap = M.patchPath(bdir, idr, '.snap/PVC_DONE')
@@ -324 +324 @@
-      fsnap, fid = M.snapDir(bpath,idr), idr; break
+      fsnap, fid = M.snapDir(bdir,idr), idr; break
@@ -328,2 +328,2 @@
-  if not fsnap then error(bpath..' does not have snapshot '..id) end
-  local tsnap = M.snapDir(bpath, id)
+  if not fsnap then error(bdir..' does not have snapshot '..id) end
+  local tsnap = M.snapDir(bdir, id)
@@ -338 +338 @@
-    local ppath = M.patchPath(bpath, fid, '.p')
+    local ppath = M.patchPath(bdir, fid, '.p')
@@ -350,2 +350,2 @@
-M.deepen = function(bpath)
-  local depth, pp, zz = M.depth(bpath), bpath..'patch/', bpath..'00/'
+M.deepen = function(bdir)
+  local depth, pp, zz = M.depth(bdir), bdir..'patch/', bdir..'00/'
@@ -367,2 +367,2 @@
-M.rawat = function(pdir, branch, id)
-  local apath = pth.concat{pdir, '.pvc/at'}
+M.rawat = function(P, branch, id)
+  local apath = pth.concat{P, '.pvc/at'}
@@ -374 +374 @@
-M.at = function(pdir, nbr,nid) --!!> branch?, id?
+M.at = function(P, nbr,nid) --!!> branch?, id?
@@ -376,2 +376,2 @@
-  local cbr, cid = M.rawat(pdir); if not nbr then return cbr, cid end
-  local npath = M.branchDir(pdir, nbr)
+  local cbr, cid = M.rawat(P); if not nbr then return cbr, cid end
+  local npath = M.branchDir(P, nbr)
@@ -381,2 +381,2 @@
-  local csnap  = M.snapshot(pdir, cbr,cid)
-  local nsnap  = M.snapshot(pdir, nbr,nid)
+  local csnap  = M.snapshot(P, cbr,cid)
+  local nsnap  = M.snapshot(P, nbr,nid)
@@ -389,2 +389,2 @@
-    if ix.pathEq(pdir..path, nsnap..path) then goto cont end -- local==next
-    if ix.pathEq(pdir..path, csnap..path) then -- local didn't change
+    if ix.pathEq(P..path, nsnap..path) then goto cont end -- local==next
+    if ix.pathEq(P..path, csnap..path) then -- local didn't change
@@ -408,2 +408,2 @@
-    if not ix.exists(pdir..path) then goto cont end -- already deleted
-    if ix.pathEq(pdir..path, csnap..path) then push(rmPaths, path)
+    if not ix.exists(P..path) then goto cont end -- already deleted
+    if ix.pathEq(P..path, csnap..path) then push(rmPaths, path)
@@ -426 +426 @@
-    ix.forceCp(nsnap..path, pdir..path)
+    ix.forceCp(nsnap..path, P..path)
@@ -430 +430 @@
-    ix.rmRecursive(pdir..path)
+    ix.rmRecursive(P..path)
@@ -432 +432 @@
-  M.rawat(pdir, nbr,nid)
+  M.rawat(P, nbr,nid)
@@ -437,2 +437,2 @@
-M.pathsUpdate = function(pdir, add, rm)
-  local pfile = pth.concat{pdir, M.PVCPATHS}
+M.pathsUpdate = function(P, add, rm)
+  local pfile = pth.concat{P, M.PVCPATHS}
@@ -454 +454 @@
-M.resolve = function(P, branch) --> br, id, bpath
+M.resolve = function(P, branch) --> br, id, bdir
@@ -463 +463 @@
-M.resolveSnap = function(pdir, branch) --> snap/, br, id, bpath
+M.resolveSnap = function(P, branch) --> snap/, br, id, bdir
@@ -465,3 +465,3 @@
-  if branch == 'local' then return pdir end
-  local br, id, bdir = M.resolve(pdir, branch)
-  return M.snapshot(pdir, br, id or M.rawtip(bdir)), br, id, bdir
+  if branch == 'local' then return P end
+  local br, id, bdir = M.resolve(P, branch)
+  return M.snapshot(P, br, id or M.rawtip(bdir)), br, id, bdir
@@ -474,3 +474,3 @@
-M.resolve2 = function(pdir, br1, br2) --> branch1/ branch2/
-  return  M.resolveSnap(pdir, br1 or 'at'),
-          M.resolveSnap(pdir, br2 or 'local')
+M.resolve2 = function(P, br1, br2) --> branch1/ branch2/
+  return  M.resolveSnap(P, br1 or 'at'),
+          M.resolveSnap(P, br2 or 'local')
@@ -479,2 +479,2 @@
-M.diff = function(pdir, branch1, branch2) --> Diff
-  return M.Diff:of(M.resolve2(pdir, branch1, branch2))
+M.diff = function(P, branch1, branch2) --> Diff
+  return M.Diff:of(M.resolve2(P, branch1, branch2))
@@ -483,3 +483,3 @@
-M.init = function(pdir, branch)
-  pdir, branch = toDir(pdir), branch or 'main'
-  local dot = pdir..'.pvc/';
+M.init = function(P, branch)
+  P, branch = toDir(P), branch or 'main'
+  local dot = P..'.pvc/';
@@ -488,4 +488,4 @@
-  initBranch(M.branchDir(pdir, branch), 0)
-  pth.write(pdir..M.PVCPATHS, M.INIT_PVCPATHS)
-  pth.write(pdir..'.pvcignore', '')
-  M.rawat(pdir, branch, 0)
+  initBranch(M.branchDir(P, branch), 0)
+  pth.write(P..M.PVCPATHS, M.INIT_PVCPATHS)
+  pth.write(P..'.pvcignore', '')
+  M.rawat(P, branch, 0)
@@ -496,2 +496,2 @@
-M.patch = function(pdir, br1, br2) --> string, s1, s2
-  return M.Diff:of(M.resolve2(pdir, br1, br2)):patch()
+M.patch = function(P, br1, br2) --> string, s1, s2
+  return M.Diff:of(M.resolve2(P, br1, br2)):patch()
@@ -506 +506 @@
-M.commit = function(pdir, desc) --> snap/, id
+M.commit = function(P, desc) --> snap/, id
@@ -514,2 +514,2 @@
-  local br, id = M.rawat(pdir)
-  local bp, cid = M.branchDir(pdir, br), id+1
+  local br, id = M.rawat(P)
+  local bp, cid = M.branchDir(P, br), id+1
@@ -522 +522 @@
-  M.pathsUpdate(pdir) -- sort unique
+  M.pathsUpdate(P) -- sort unique
@@ -525 +525 @@
-  local bsnap = M.snapshot(pdir, br,id)
+  local bsnap = M.snapshot(P, br,id)
@@ -527 +527 @@
-  local diff = M.Diff:of(bsnap, pdir)
+  local diff = M.Diff:of(bsnap, P)
@@ -534,3 +534,3 @@
-  local csnap = M.snapshot(pdir, br,cid)
-  for path in io.lines(pdir..M.PVCPATHS) do
-    T.pathEq(pdir..path, csnap..path)
+  local csnap = M.snapshot(P, br,cid)
+  for path in io.lines(P..M.PVCPATHS) do
+    T.pathEq(P..path, csnap..path)
@@ -538 +538 @@
-  M.rawtip(bp, cid); M.rawat(pdir, br, cid)
+  M.rawtip(bp, cid); M.rawat(P, br, cid)
@@ -544,2 +544,2 @@
-M.nameId = function(pdir, branch,id) --> br,id
-  local br,bid; if not branch then br,bid = M.at(pdir)
+M.nameId = function(P, branch,id) --> br,id
+  local br,bid; if not branch then br,bid = M.at(P)
@@ -547 +547 @@
-  return br, id or bid or M.rawtip(M.branchDir(pdir, br))
+  return br, id or bid or M.rawtip(M.branchDir(P, br))
@@ -550,2 +550,2 @@
-M.branch = function(pdir, name, fbr,fid) --> bpath, id
-  local fpath = M.branchDir(pdir, fbr)
+M.branch = function(P, name, fbr,fid) --> bdir, id
+  local fpath = M.branchDir(P, fbr)
@@ -554 +554 @@
-  local npath = M.branchDir(pdir, name)
+  local npath = M.branchDir(P, name)
@@ -564 +564 @@
-M.branches = function(pdir) --> list
+M.branches = function(P) --> list
@@ -566 +566 @@
-  local d = pdir..'.pvc/'
+  local d = P..'.pvc/'
@@ -576,2 +576,2 @@
-M.checkBranch = function(pdir, name, checks, dir)
-  dir = dir or pdir..name
+M.checkBranch = function(P, name, checks, dir)
+  dir = dir or P..name
@@ -585 +585 @@
-    local bt = M.rawtip(M.branchDir(pdir, bbr))
+    local bt = M.rawtip(M.branchDir(P, bbr))
@@ -596,2 +596,2 @@
-M.graft = function(pdir, name, from)
-  local ndir = pdir..name
+M.graft = function(P, name, from)
+  local ndir = P..name
@@ -599 +599 @@
-  M.checkBranch(pdir, name, {base=1}, from)
+  M.checkBranch(P, name, {base=1}, from)
@@ -637 +637 @@
-M.rebase = function(pdir, branch, id) --> backup/dir/
+M.rebase = function(P, branch, id) --> backup/dir/
@@ -642 +642 @@
-  local cpath = M.branchDir(pdir, cbr)
+  local cpath = M.branchDir(P, cbr)
@@ -644 +644 @@
-  M.at(pdir, bbr,bid) -- checkout base to ensure cleaner checkout at end
+  M.at(P, bbr,bid) -- checkout base to ensure cleaner checkout at end
@@ -648,2 +648,2 @@
-  local bpath = M.branchDir(pdir, bbr)
-  local btip  = M.rawtip(bpath)
+  local bdir = M.branchDir(P, bbr)
+  local btip  = M.rawtip(bdir)
@@ -652,2 +652,2 @@
-  local cpath, cid = M.branchDir(pdir, cbr), bid + 1
-  local ctip       = M.rawtip(cpath)
+  local cdir, cid = M.branchDir(P, cbr), bid + 1
+  local ctip       = M.rawtip(cdir)
@@ -655,2 +655,2 @@
-  local tpath      = M.branchDir(pdir, tbr)
-  local ttip       = id + M.rawtip(cpath) - bid
+  local tdir      = M.branchDir(P, tbr)
+  local ttip       = id + M.rawtip(cdir) - bid
@@ -659 +659 @@
-  local tsnap; if ix.exists(tpath) then
+  local tsnap; if ix.exists(tdir) then
@@ -661,4 +661,4 @@
-    T.pathEq(tpath..'op', op)
-    T.eq({bbr,bid}, M.getbase(tpath))
-    cid   = toint(pth.read(tpath..'rebase'))
-    tsnap = M.snapDir(tpath, ttip)
+    T.pathEq(tdir..'op', op)
+    T.eq({bbr,bid}, M.getbase(tdir))
+    cid   = toint(pth.read(tdir..'rebase'))
+    tsnap = M.snapDir(tdir, ttip)
@@ -666,4 +666,4 @@
-    M.branch(pdir, tbr, bbr,id)
-    pth.write(tpath..'op', op)
-    tsnap = M.snapDir(tpath, ttip); ix.mkDirs(tsnap)
-    cpPaths(M.snapshot(pdir, bbr,id), tsnap)
+    M.branch(P, tbr, bbr,id)
+    pth.write(tdir..'op', op)
+    tsnap = M.snapDir(tdir, ttip); ix.mkDirs(tsnap)
+    cpPaths(M.snapshot(P, bbr,id), tsnap)
@@ -672 +672 @@
-  local tprev = M.snapshot(pdir, bbr,id) -- hard-code first prev
+  local tprev = M.snapshot(P, bbr,id) -- hard-code first prev
@@ -676,6 +676,6 @@
-    local bsnap = M.snapshot(pdir, cbr,bid)
-    pth.write(tpath..'rebase', tostring(cid))
-    local desc = M.desc(M.patchPath(cpath, cid, '.p'))
-    M.merge(tsnap, bsnap, M.snapshot(pdir, cbr,cid))
-    tprev = tprev or M.snapshot(pdir, tbr,tid-1)
-    local tpatch = M.patchPath(tpath,tid, '.p')
+    local bsnap = M.snapshot(P, cbr,bid)
+    pth.write(tdir..'rebase', tostring(cid))
+    local desc = M.desc(M.patchPath(cdir, cid, '.p'))
+    M.merge(tsnap, bsnap, M.snapshot(P, cbr,cid))
+    tprev = tprev or M.snapshot(P, tbr,tid-1)
+    local tpatch = M.patchPath(tdir,tid, '.p')
@@ -689,2 +689,2 @@
-  local backup = M.backupDir(pdir, cbr); ix.mkDirs(backup)
-  ix.mv(cpath, backup)
+  local backup = M.backupDir(P, cbr); ix.mkDirs(backup)
+  ix.mv(cdir, backup)
@@ -694,4 +694,4 @@
-  M.rawtip(tpath, ttip)
-  ix.rm(tpath..'op'); ix.rm(tpath..'rebase')
-  ix.mv(tpath, cpath)
-  M.at(pdir, cbr,ttip)
+  M.rawtip(tdir, ttip)
+  ix.rm(tdir..'op'); ix.rm(tdir..'rebase')
+  ix.mv(tdir, cdir)
+  M.at(P, cbr,ttip)
