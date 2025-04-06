onboarding help
--- README.cxt
+++ README.cxt
@@ -23,2 +23 @@
-
-make build LUA_VERSION=lua5.3
+make build LUA_VERSION=lua5.3  # or your lua version
@@ -28,2 +27,2 @@
-LUA_PATH="$PWD/lib/pkg/?.lua"
-LUA_PKGS="$PWD/"
+export LUA_PATH="$PWD/lib/pkg/?.lua"
+export LUA_PKGS="$PWD/"
@@ -31 +30 @@
-alias civ="$PWD/civ.lua"
+alias civ="lua5.3 $PWD/civ.lua"
@@ -35 +34,2 @@
-You can now run any civlua script with, i.e. [$civ help ff].
+After [$source ~/.bashrc] you should be able to run any civlua script with
+[$civ <cmd>], i.e. [$civ doc string.find].
@@ -37 +37,3 @@
-["See [<#pkg-install>] for more details regarding [$PKG.lua] dependencies.]
+["See [<#pkg-install>] for more details regarding [$PKG.lua] dependencies,
+  especially if you are not calling the [$civ.lua] loader.
+]

--- civ.lua
+++ civ.lua
@@ -1,2 +1,2 @@
-#!/usr/bin/env -S lua -e "require'pkglib'()"
-local G = G or _G
+require'pkglib'()
+local G = assert(G)

--- cmd/cxt/cxt/term.lua
+++ cmd/cxt/cxt/term.lua
@@ -115 +115,10 @@
-  for _, n in ipairs(node) do M.serialize(w, n) end
+  if #node == 0 then
+    local ps = w.style;
+    if node.path then
+      w.style = 'path'; M.serialize(w, node.path); w.style = ps
+    elseif node.href then
+      w.style = 'ref'; M.serialize(w, node.href);  w.style = ps
+    end
+  else
+    for _, n in ipairs(node) do M.serialize(w, n) end
+  end

--- cmd/doc/doc.lua
+++ cmd/doc/doc.lua
@@ -460,0 +461 @@
+  require'doc.lua' -- ensure it is loaded

--- cmd/doc/lua.lua
+++ cmd/doc/lua.lua
@@ -124,0 +125 @@
+--- (see [<#string.match>]).
@@ -540,0 +542,2 @@
+PKG_LOOKUP['true'] = M['true']
+
@@ -542,0 +546,2 @@
+PKG_LOOKUP['false'] = M['false']
+
@@ -547,0 +553 @@
+PKG_LOOKUP['nil'] = M['nil']

--- cmd/pvc/README.cxt
+++ cmd/pvc/README.cxt
@@ -199,3 +199,4 @@
-* [*pvcpaths] a list if newline-separated project-relative paths in the file
-  [$.pvcpaths].  This is used by pvc to determine which paths are tracked. It's
-  contents are tracked as a normal file (it is included in the patch diff).
+* [*pvcpaths] is the project-local [$.pvcpaths] file which contains a
+  newline-separated list of project-relative paths.  This is used by pvc to
+  determine which paths are tracked. It's contents are tracked as a normal file
+  (it is included in the patch diff).
@@ -206 +207,2 @@
-  * [*base]: contains [$branch#123], missing if the branch is the trunk
+  * [*base]: contains [$branch#123]. This file is not present if the branch is
+    the trunk.
@@ -211,2 +213,2 @@
-  inside [$.pvc/] and initialize it with the proper [$base] and [$tip] files. The base
-  branch must already exist.
+  inside [$.pvc/] and initialize it with the proper [$base] and [$tip] files.
+  The base branch must already exist.
@@ -215,4 +217,5 @@
-  * The length of [$patch/.../] is stored in [$patch/depth] which is an ascii decimal number,
-    always divisible by 2. Each sub-directory has exactly two digits. For instance, a depth
-    of 4 would store [$12.p] in [$patch/00/00/12.p] and store [$123456.p] in
-    [$12/34/123456.p].
+  * The length of [$patch/.../] is stored in [$patch/depth] which is an ascii
+    decimal number, always divisible by 2. Each sub-directory has exactly two
+    digits. For instance, a depth of 4 would store [$12.p] in
+    [$patch/00/00/12.p] and store [$123456.p] in [$12/34/123456.p].
+
@@ -221,3 +224,7 @@
-  * [*diffs]: the rest of the patch file contains a series of file differences from the previous patch
-    version in the [@unidiff] (aka [$diff -u]) format.
-  * [*commit] is often shorthand for the [$commit reference] (i.e. [$branch#123]).
+
+  * [*diffs]: the rest of the patch file contains a series of file differences
+    from the previous patch version in the [@unidiff] (aka [$diff -u]) format.
+
+  * [*commit] is often shorthand for the [$commit reference] (i.e.
+    [$branch#123]), which refers uniquely to a specific branch and patch file
+    or snapshot directory.
@@ -226,2 +233,3 @@
-* [*commit (action)]: "making a commit" means to take the difference of the current directory
-  and store it as a patch file in the [$patch/] directory.
+* [*commit (action)]: "making a commit" means to take the difference of the
+   current directory and store it as a patch file in the branch's [$patch/]
+   directory.
@@ -230,2 +238,2 @@
-  is a directory which uses the extension [$.snap/]
-  inside of the patch directory, i.e. [$patch/00/123.snap/].
+  is a directory which uses the extension [$.snap/] inside of the patch
+  directory, i.e. [$patch/00/123.snap/].
@@ -238,5 +246,7 @@
-* [*rebase (action)]: to "rebase a branch" means to increase the id of it's [*base],
-  typically to it's base-branch's tip. This is accomplished by making a copy of the
-  new id's snapshot and repeatedly applying the [$merge] command (or
-  equivalent) on each change, using the copied snapshot as [$to] and incrementing
-  the [$base] along the change patches. Each new [$patch] file should be stored. [+
+* [*rebase (action)]: to "rebase a branch" means to increase the id of it's
+  [*base]. This is accomplished by making a copy of the new id's snapshot and
+  repeatedly applying the unix [$merge] command (or equivalent) on each change,
+  using the copied snapshot as [$to] and incrementing the [$base] along the
+  change patches. Each new [$patch] file should be stored, incrementing from
+  the base. [+
+
@@ -244,2 +254,2 @@
-    user how to fix. The software should be able to resume the rebase once the
-    conflicts are resolved.
+    user how to fix them. The software should be able to resume the rebase once
+    the conflicts are resolved.
@@ -249 +259,6 @@
-    checks for this branch and attempts to resume from it.
+    checks for this branch and attempts to resume from it. On failure,
+    it tells the user where the failing files that need to be fixed are
+    located.
+
+  * when the rebase is complete, the old branch should be moved to [$.pvc/backup]
+    then replaced with the rebased version.
@@ -253 +268,2 @@
-  rebased to the tip (also called a "fast forward merge").
+  rebased to the tip (also called a "fast forward merge"), so this is literally
+  just copying the patch files and incrementing the [*tip].
@@ -255,2 +271,3 @@
-* [*squash]: combines multiple commits into one, moving larger commits down. The descriptions
-  should be concatenated, and can be edited separately by the user.
+* [*squash]: combines multiple commits into one, moving larger commits down.
+  The descriptions should be concatenated, and can be edited separately by the
+  user.
@@ -267,0 +285,4 @@
+Also, operations which mutate the meaning of a commit (such as squash or
+rebase) should check to make sure that no branches depend on the branch being
+mutated.
+

--- lib/pkg/pkglib.lua
+++ lib/pkg/pkglib.lua
@@ -271 +271 @@
---- call pkglib to "install" it, making [$require] use [$pkglib.get]
+--- call pkglib directly to "install" it, making [$require] use [$pkglib.get]
@@ -273,0 +274 @@
+  if require == M.get then return end
@@ -275 +275,0 @@
-  G.require = M.get
@@ -276,0 +277 @@
+  G.require = M.get

--- ui/asciicolor/asciicolor/style.lua
+++ ui/asciicolor/asciicolor/style.lua
@@ -32,0 +33 @@
+  ref    = 'cZ',
