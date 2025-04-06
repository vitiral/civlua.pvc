more docs
--- README.cxt
+++ README.cxt
@@ -29,0 +30 @@
+# use your lua version (or even full path)
@@ -31,0 +33,2 @@
+
+source ~/.bashrc     # reload your config
@@ -34,2 +37,6 @@
-After [$source ~/.bashrc] you should be able to run any civlua script with
-[$civ <cmd>], i.e. [$civ doc string.find].
+You should now be able to run any civlua script with [$civ <cmd>], i.e.
+[$civ doc string.find].
+
+I also add [$alias ,=civ] to my bashrc, allowing for i.e. [$, help ff]. Note
+that [$civ.lua] can load and run ANY lua module in your [$LUA_PKGS] (not just
+civlua ones), so this is a nice shortcut for your personal scripts.
@@ -147,0 +155,16 @@
+[{h3 name=civ-runner}Writing (and running) your own commands]
+After following [<#Installation>] you can run your own commands.
+This is because [$civ.lua] (after some minor setup) simply runs the
+following:
+
+[{## lang=lua}
+require(cmd).main(shim.parse(arg))
+]##
+
+So it directly calls your module/package's [$main] function.
+See [<#Package_shim>] for full documentation on writing your own
+scripts.
+
+You can then run your package's main function (with arguments pre-parsed into a
+table) by adding it to [$LUA_PKGS] and calling [$civ mypackage].
+

--- civ.lua
+++ civ.lua
@@ -1,2 +1,2 @@
-require'pkglib'()
-local G = assert(G)
+#!/usr/bin/env -S lua
+require'pkglib'(); local G = assert(G)
@@ -4 +4 @@
--- civ module: packaged dev environment
+-- civ.lua: convieience command runner and environment config.
