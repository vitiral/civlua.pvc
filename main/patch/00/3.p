add docs for working with git
--- cmd/pvc/README.cxt
+++ cmd/pvc/README.cxt
@@ -92 +92,3 @@
-[{h2}Usage]
+[{h2 name=pvc-init}Initiaize your pvc repo]
+["You may also want to see [<#pvc-git>] to use git for backups]
+
@@ -125,0 +128,52 @@
+
+[{h3 name=pvc-git}Use with git]
+pvc is still in early development, so there is no hosting service which
+ergonomically supports backing-up development. The following is how pvc
+(and civlua) itself is developed and seems to work well.
+
+Basically, we are going to have two git repositories. I will use
+civlua as the example:[+
+* [<https://github.com/civboot/civlua>]: your "main" one that hosts your released
+  versions and documentation. This should NOT contain any [$.pvc/] files (but
+  should contain i.e.  [$.pvcpaths]).
+
+* [<https://github.com/vitiral/civlua.pvc/commits/main/>]: is literally the git
+  repository for your [$.pvc/] directory. While developing we can push
+  patches/branches/whatever here.
+]
+
+[*First], put [$.pvc/] in your main repo's [$.gitignore]
+[##
+echo .pvc >> .gitignore
+]##
+
+[*Second], follow the [<#pvc-init>] section above. This should include adding
+all your files to pvc and making your first pvc commit.
+
+[*Third], [$cd .pvc/] and create your git repository [,inside the .pvc/
+directory]. This will literally track your patch files themselves. Use the
+following as your [$.pvc/.gitignore]. You may also want to add a [$README.md]
+directing folks to your main git repo.
+[##
+**/*.snap/
+backup/
+]##
+
+Finally, add the following to your [$.bashrc]
+[{## lang=sh}
+# Note: you must also have pvc aliased
+function pvcp() {
+  desc="$(pvc at): $(pvc desc --full)"
+  $(cd .pvc/
+    && git add ./
+    && git commit -am "$desc"
+    && git push origin main
+  )
+}
+]##
+
+Now you can hack using [$pvc commit] etc and push to your [$repo.pvc] by
+simply calling [$pvcp]. Your git commit log will be your current [$at]
+location followed by the commit message. When you want to push your
+documentation or releases to git, simply do so -- your main commit log
+won't be polluted by commiting pvc files.
