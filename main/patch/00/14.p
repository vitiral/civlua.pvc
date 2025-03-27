add civix testing and update docs
--- .pvcpaths
+++ .pvcpaths
@@ -70,0 +71 @@
+lib/civix/civix/testing.lua

--- cmd/pvc/README.cxt
+++ cmd/pvc/README.cxt
@@ -184 +184 @@
-[{h2}Basic Architecture]
+[{h1 name=pvc-arch}Architecture]
@@ -186,3 +186,2 @@
-The below architecture is given to allow a user to debug or fix problems that
-occur while using pvc regardless of whether the cause is user, software or
-operating system related.
+This architecture is given both so users can debug or fix any errors as well as
+to make it easier to create other implementations of pvc (i.e. in bash).
@@ -190,2 +189,62 @@
-pvc uses only two files in the local directory: [$.pvcpaths] which track
-which paths are included and [$COMMIT] which is the default commit message.
+pvc is composed of the following components: [+
+* [*repo]: the pvc repo (repository) is stored in the [$.pvc/] directory inside of
+  a [*project]. It contains directories (which are the branches) and the plaintext file
+  [$at] which defines the "current commit" as a [*commit reference] (i.e. [$branch#123]).
+  Additionally it contains: [+
+  * [$backup/] directory, which contain [$name-<epochsec>/] directories for backups. In
+    general, pvc should not delete things but should instead move things to a backup
+    directory, reporting these operations to the user (and possibly a log file as well).
+  ]
+
+* [*pvcpaths] a list if newline-separated project-relative paths in the file
+  [$.pvcpaths].  This is used by pvc to determine which paths are tracked. It's
+  contents are tracked as a normal file (it is included in the patch diff).
+
+* [*branch]: a branch is a directory inside the repo (i.e. [$.pvc/main/]). It
+  contains the [$patch/] directory (described in [*commit]) and the plain-text files:
+  [+
+  * [*base]: contains [$branch#123], missing if the branch is the trunk
+  * [*tip]: contains an ascii decimal number, representing the last patch id.
+  ]
+
+* [*branch (action)]: to "create a branch" means to create a new directory
+  inside [$.pvc/] and initialize it with the proper [$base] and [$tip] files. The base
+  branch must already exist.
+
+* [*commit (noun)]: refers to a single patch file inside of [$.pvc/branch/patch/.../123.p]. [+
+  * The length of [$patch/.../] is stored in [$patch/depth] which is an ascii decimal number,
+    always divisible by 2. Each sub-directory has exactly two digits. For instance, a depth
+    of 4 would store [$12.p] in [$patch/00/00/12.p] and store [$123456.p] in
+    [$12/34/123456.p].
+  * [*description]: the top of the patch file (before the first unidiff)
+    contains a plain-text description of the commit.
+  * [*diffs]: the rest of the patch file contains a series of file differences from the previous patch
+    version in the [@unidiff] (aka [$diff -u]) format.
+  * [*commit] is often shorthand for the [$commit reference] (i.e. [$branch#123]).
+  ]
+
+* [*commit (action)]: "making a commit" means to take the difference of the current directory
+  and store it as a patch file in the [$patch/] directory.
+
+* [*snapshot]: a snapshot is the local directory state at a specific commit. It
+  is a directory which uses the extension [$.snap/]
+  inside of the patch directory, i.e. [$patch/00/123.snap/].
+
+* [*checkout (action)]: to "checkout a commit" means to make the local project
+  directory the same as the commit. This is performed by finding the closest
+  [*snapshot] and applying commit patches (either forwards or backwards) in
+  order to make the snapshot reflect the commits state.
+
+* [*rebase (action)]: to "rebase a branch" means to increase the id of it's [*base],
+  typically to it's base-branch's tip. This is accomplished by making a copy of the
+  new id's snapshot and repeatedly applying the [$merge] command (or
+  equivalent) on each change, using the copied snapshot as [$to] and incrementing
+  the [$base] along the change patches. Each new [$patch] file should be stored. [+
+  * the software should detect if conflicts are unresolveable and exit, telling the
+    user how to fix. The software should be able to resume the rebase once the
+    conflicts are resolved.
+
+  * For example, the reference implementation creates a new branch called
+    [$branch__rebase] to perform this action. When calling rebase, it first
+    checks for this branch and attempts to resume from it.
+  ]
@@ -193,3 +252,2 @@
-All other pvc data is stored in a local [$.pvc/] directory. This contains
-branch directories as well as the [$at] file containing the current working
-[$branch#id].
+* [*merge]: merges a branch onto another one. The branch must already be
+  rebased to the tip (also called a "fast forward merge").
@@ -197,4 +255,2 @@
-The branch directories (i.e. [$.pvc/main/], [$.pvc/dev/]) contain the
-following structure: [+
-* a [$branch] text file (if this is not the root) which contains the [$name#id] where
-  this was branched from.
+* [*squash]: combines multiple commits into one, moving larger commits down. The descriptions
+  should be concatenated, and can be edited separately by the user.
@@ -202,11 +258,2 @@
-* an [$uri] text file if this is a remote branch containing where to download
-  updates.
-
-* a [$tip] file containing the tip id of the branch.
-
-* a [$patch/] directory with a directory structure nested by two digits
-  containing files with extensions ending in either [$.p] (patch file) or
-  [$.snap/] (snapshot directory).  For example [$patch/01/23/12345.p] is a
-  patch file in a directory structure with [$patch/depth] of [$4].
-
-  ["The [$.snap/] directories contain the complete project at that id.]
+* [*export]: simply copies a [*branch] without it's snapshot directories to a
+  separate directory, which can be sent to a maintainer to be merged.
@@ -215,8 +262,5 @@
-When pvc commands are run, these directories are modified. For example:[+
-* [$at main#123] walks patch files to create a new
-  [$.pvc/main/patch/01/123.snap/] directory and updates the local directory to
-  match.
-
-* [$commit] creates a new [$patch/01/123.p] file and corresponding
-  [$patch/01/123.snap/] directory which is identical to the local directory.
-]
+[{h2}Other Operations]
+Other operations, such as showing commit messages or ammending a commit, are
+not defined explicitly, but you can see the reference implementation for
+details. Typically their implementation is either straightforward or can be
+performed by variations of the above operations.

--- /dev/null
+++ lib/civix/civix/testing.lua
@@ -0,0 +1,33 @@
+local G = G or _G
+
+--- test runners and helpers for civix
+local M = G.mod and G.mod'civix.testing' or {}
+
+local fmt = require'fmt'
+local lap = require'lap'
+local ix  = require'civix'
+local fd  = require'fd'
+
+--- Typically an entire test file is wrapped in a function,
+--- then passed to this -- which runs all tests sequentially
+--- inside the lap environment.
+---
+--- ["This does not print test names/etc. Use civtest or
+---   equivalent for that.
+--- ]
+M.runAsyncTest = function(fn)
+  assert(not G.LAP_ASYNC, 'already in async mode')
+  local lr = ix.Lap()
+  local _, errors = lr:run{fd.ioAsync, fn}
+  lap.reset()
+  fd.ioStd()
+  if errors then error(
+    'testLapEnv found errors:\n'..fmt(errors)
+  )end
+  if not lr:isDone() then
+    error'testLapEnv had no errors but is not done!'
+  end
+end
+
+return M
+
