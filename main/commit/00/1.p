initial commit after patch - rename
--- .pvcpaths
+++ .pvcpaths
@@ -0,0 +1,2 @@
+.gitignore
+.pvcignore
@@ -1,0 +4,187 @@
+Makefile
+PKG.lua
+README.cxt
+README.md
+UNLICENSE
+civ.lua
+cmd/README
+cmd/cxt/PKG.lua
+cmd/cxt/README.cxt
+cmd/cxt/README.md
+cmd/cxt/TODO.cxt
+cmd/cxt/cxt.lua
+cmd/cxt/cxt/html.lua
+cmd/cxt/cxt/term.lua
+cmd/cxt/test.lua
+cmd/doc/PKG.lua
+cmd/doc/README.cxt
+cmd/doc/doc.lua
+cmd/doc/lua.lua
+cmd/doc/test.lua
+cmd/doc/test/docfake.cxt
+cmd/doc/test/docfake.lua
+cmd/ele/ARCH.md
+cmd/ele/PKG.lua
+cmd/ele/README.cxt
+cmd/ele/design/navigation.md
+cmd/ele/ele.lua
+cmd/ele/ele/Ed.lua
+cmd/ele/ele/Session.lua
+cmd/ele/ele/actions.lua
+cmd/ele/ele/bindings.lua
+cmd/ele/ele/edit.lua
+cmd/ele/ele/nav.lua
+cmd/ele/ele/testing.lua
+cmd/ele/ele/types.lua
+cmd/ele/resources/Intro.txt
+cmd/ele/tests/small.lua
+cmd/ele/tests/test_actions.lua
+cmd/ele/tests/test_bindings.lua
+cmd/ele/tests/test_session.lua
+cmd/ele/tests/test_term.lua
+cmd/ff/PKG.lua
+cmd/ff/ff.lua
+cmd/ff/test.lua
+cmd/pkgrock/PKG.lua
+cmd/pkgrock/README.md
+cmd/pkgrock/pkgrock.lua
+cmd/pvc/NOTES.cxt
+cmd/pvc/PKG.lua
+cmd/pvc/README.cxt
+cmd/pvc/pvc.lua
+cmd/pvc/pvc/unix.lua
+cmd/pvc/test.lua
+cmd/pvc/testdata/hello.lua.1
+cmd/pvc/testdata/notes.sh
+cmd/pvc/testdata/story.txt.1
+cmd/pvc/testdata/story.txt.2
+cmd/pvc/testdata/story.txt.3
+cmd/pvc/testdata/story.txt.3d
+cmd/pvc/testdata/story.txt.4d
+cmd/pvc/testdata/story.txt.5
+lib/civix/.gitignore
+lib/civix/Makefile
+lib/civix/PKG.lua
+lib/civix/README.cxt
+lib/civix/civix.lua
+lib/civix/civix/lib.c
+lib/civix/civix/testing.lua
+lib/civix/test.lua
+lib/civtest/PKG.lua
+lib/civtest/README.cxt
+lib/civtest/civtest.lua
+lib/civtest/test.lua
+lib/diff.lua
+lib/ds/PKG.lua
+lib/ds/README.cxt
+lib/ds/date.lua
+lib/ds/ds.lua
+lib/ds/ds/Grid.lua
+lib/ds/ds/Iter.lua
+lib/ds/ds/LL.lua
+lib/ds/ds/heap.lua
+lib/ds/ds/kev.lua
+lib/ds/ds/log.lua
+lib/ds/ds/path.lua
+lib/ds/ds/utf8.lua
+lib/ds/test.lua
+lib/fd/Makefile
+lib/fd/PKG.lua
+lib/fd/README.cxt
+lib/fd/fd.c
+lib/fd/fd.h
+lib/fd/fd.lua
+lib/fd/fd/IFile.lua
+lib/fd/test.lua
+lib/fmt/PKG.lua
+lib/fmt/README.cxt
+lib/fmt/binary.lua
+lib/fmt/fmt.lua
+lib/fmt/show.lua
+lib/fmt/test.lua
+lib/lap/PKG.lua
+lib/lap/README.cxt
+lib/lap/lap.lua
+lib/lap/test.lua
+lib/lines/PKG.lua
+lib/lines/lines.lua
+lib/lines/lines/EdFile.lua
+lib/lines/lines/File.lua
+lib/lines/lines/Gap.lua
+lib/lines/lines/U3File.lua
+lib/lines/lines/Writer.lua
+lib/lines/lines/buffer.lua
+lib/lines/lines/diff.lua
+lib/lines/lines/futils.lua
+lib/lines/lines/motion.lua
+lib/lines/lines/testing.lua
+lib/lines/test.lua
+lib/lines/test_buffer.lua
+lib/lines/test_diff.lua
+lib/lines/test_file.lua
+lib/lines/test_motion.lua
+lib/lines/testdata/small.txt
+lib/lson/PKG.lua
+lib/lson/README.cxt
+lib/lson/lson.lua
+lib/lson/test.lua
+lib/luck/PKG.lua
+lib/luck/README.cxt
+lib/luck/luck.lua
+lib/luck/test.lua
+lib/luck/testdata/small.luck
+lib/luck/testdata/vals.luck
+lib/luck/testdata/withdeps.luck
+lib/metaty/Makefile
+lib/metaty/PKG.lua
+lib/metaty/README.cxt
+lib/metaty/metaty.c
+lib/metaty/metaty.lua
+lib/metaty/test.lua
+lib/pegl/PKG.lua
+lib/pegl/README.cxt
+lib/pegl/pegl.lua
+lib/pegl/pegl/lua.lua
+lib/pegl/tests/test_lua.lua
+lib/pegl/tests/test_pegl.lua
+lib/pkg/PKG.lua
+lib/pkg/README.cxt
+lib/pkg/pkglib.lua
+lib/pod/Makefile
+lib/pod/PKG.lua
+lib/pod/README.cxt
+lib/pod/pod.c
+lib/pod/pod.lua
+lib/pod/pod/testing.lua
+lib/pod/test.lua
+lib/rebuf/PKG.lua
+lib/rebuf/rebuf.lua
+lib/shim/PKG.lua
+lib/shim/README.cxt
+lib/shim/shim.lua
+lib/shim/test.lua
+lib/smol/.gitignore
+lib/smol/Makefile
+lib/smol/PKG.lua
+lib/smol/README.cxt
+lib/smol/po2prime.lua
+lib/smol/smol.c
+lib/smol/smol.lua
+lib/smol/test.lua
+lib/vcds/PKG.lua
+lib/vcds/test.lua
+lib/vcds/vcds.lua
+test.lua
+testdata/small.txt
+ui/README
+ui/asciicolor/PKG.lua
+ui/asciicolor/README.cxt
+ui/asciicolor/asciicolor.lua
+ui/asciicolor/test.lua
+ui/vt100/PKG.lua
+ui/vt100/README.cxt
+ui/vt100/demo.lua
+ui/vt100/test.lua
+ui/vt100/vt100.lua
+ui/vt100/vt100/AcWriter.lua
+ui/vt100/vt100/testing.lua

--- /dev/null
+++ .gitignore
@@ -0,0 +1,9 @@
+.pvc/
+.out/
+bin/
+API.html
+**/*src.rock
+**/*.rockspec
+**/*.o
+**/*.so
+**/*.gch

--- /dev/null
+++ .pvcignore
@@ -0,0 +1,18 @@
+# directories
+%.git/
+%.out/
+bin/
+experiment/
+cmd/pvc/testdata/0.snap/
+
+# extensions
+%.rock$
+%.rockspec$
+%.o$
+%.so$
+%.gch$
+%.html$
+
+# binaries
+lib/smol/smol_test
+

--- /dev/null
+++ Makefile
@@ -0,0 +1,50 @@
+
+LUA_VERSION = lua
+LUA_EX = $(LUA_VERSION)
+LUA = $(LUA_EX) -e "require'pkglib'()"
+
+.PHONY: ele
+
+all: test demo
+
+test: build
+	which $(LUA_EX)
+	mkdir -p ./.out/
+	# make test
+	$(LUA) test.lua
+	# Tests complete
+
+demo: build
+	$(PRETEST) $(LUA) ui/vt100/demo.lua
+	# $(PRETEST) $(LUA) cmd/ele/tests/test_term.lua
+
+build: metaty fd pod civix smol
+
+metaty: lib/metaty/metaty.c
+	cd lib/metaty && make build LUA_VERSION=$(LUA_VERSION)
+
+fd: lib/fd/fd.c
+	cd lib/fd && make build LUA_VERSION=$(LUA_VERSION)
+
+pod: lib/pod/pod.c
+	cd lib/pod && make build LUA_VERSION=$(LUA_VERSION)
+
+civix: lib/civix/civix/lib.c
+	cd lib/civix && make build LUA_VERSION=$(LUA_VERSION)
+
+smol: lib/smol/smol.c
+	cd lib/smol && make build LUA_VERSION=$(LUA_VERSION)
+	# cd lib/smol && make test  LUA_VERSION=$(LUA_VERSION)
+
+ele: build
+	$(LUA) cmd/ele/ele.lua
+
+doc:
+	mkdir -p ./.out/
+	$(LUA) civ.lua doc civ pkg --pkg=deep --expand --to=.out/README.cxt
+	$(LUA) civ.lua cxt.html .out/README.cxt README.html --config=PKG.lua
+
+clean:
+	rm -f $$($(LUA) civ.lua ff r:lib r:ui r:cmd f:'%.rockspec$$')
+	rm -f $$($(LUA) civ.lua ff r:lib r:ui r:cmd f:'%.src%.rock$$')
+

--- /dev/null
+++ PKG.lua
@@ -0,0 +1,58 @@
+name    = 'civ'
+version = '0.1-0'
+url     = 'git+http://github.com/civboot/civlua'
+doc     = 'README.cxt'
+repo    = 'https://github.com/civboot/civlua'
+homepage = 'https://lua.civboot.org'
+srcs = { 'civ.lua' }
+pkgs = {
+  -- lib/pkg: better lua package management
+
+  -- Core
+  'lib/shim',    -- cmdline args library
+  'lib/metaty',  -- simple types based on metatables
+  'lib/fmt',     -- formatting for types (and raw tables)
+  'lib/civtest', -- simple unit testing
+  'lib/ds',      -- data structures and algorithms
+  'lib/lines',   -- work with files as a table of lines
+  'lib/pod',     -- de/serialize plain-old-data
+  'lib/lap',     -- lua asynchronous protocol
+  'lib/fd',      -- asynchronous filedescriptors
+  'lib/civix',   -- civlua unix interface
+  'lib/lson',    -- JSON and binary-supporting LSON serde
+  'lib/pegl',    -- PEG-like parsing library
+
+  -- data storage / vcs
+  'lib/luck',    -- user configuration
+  'lib/smol',    -- binary diffs and compression
+  'lib/vcds',
+
+  -- Interacting with the user
+  'ui/asciicolor', -- simple style and color to the user
+  'ui/vt100',    -- VT100 terminal interface
+
+  -- cmd
+  'cmd/cxt',     -- simple text markup language
+  'cmd/doc',     -- read and write inline documentation
+  'cmd/ff',      -- fast-find and replace tool
+  'cmd/pkgrock', -- interface with luarocks
+  'cmd/pvc',     -- patch version control
+  'cmd/ele',     -- Extendable Lua Editor (and shell)
+}
+
+local FILE = 'https://github.com/civboot/civlua/blob/main/'
+local FILE_LINE = FILE..'%s#L%s'
+local RENDERED = 'https://html-preview.github.io/'
+               ..'?url=https://github.com/civboot/civlua/main/'
+local EXT_PAT = '%.(%w+)$'
+local USE_RENDERED = {html='html', cxt='html'}
+
+html = {
+  pathUrl = function(p)
+    if USE_RENDERED[p:match(EXT_PAT)] then return p:gsub(EXT_PAT, USE_RENDERED) end
+    if p:match':(%d+)$' then
+      return FILE_LINE:format(p:match'^(.*):(%d+)$')
+    end
+    return FILE..p
+  end,
+}

--- /dev/null
+++ README.cxt
@@ -0,0 +1,220 @@
+[!you can see a rendered version of this document in [/API.html]!]
+civlua: a minimalist, self-documenting and public domain tech stack.
+
+["You are reading the developer documentation. Tutorial-style documentation is
+  planned in the future for both absolute beginners and knowledge experts,
+  but has not yet been started.]
+
+[{:h2}Installation]
+Install Lua with [$apt-get install lua], [$brew lua] or however you normally
+install software, or follow directions at [<https://lua.org/start.html>]. You
+also need standard build tools (i.e. [$make], [$gcc]) and [$rcs] (for [$merge]
+etc, required for [<#pvc>]).
+
+["on NetBSD you must have Lua installed via pkgsrc
+ (aka [$pkgin install lua5.4]) as base Lua doesn't link pthread.
+]
+
+Then run the following (or equivalent):
+
+[{## lang=sh}
+# build lua
+cd path/to/civlua/
+make build LUA_VERSION=lua5.3  # or your lua version
+
+# add these lines to .bashrc
+cat >> ~/.bashrc << EOF
+export LUA_PATH="$PWD/lib/pkg/?.lua"
+export LUA_PKGS="$PWD/"
+
+# use your lua version (or even full path)
+alias civ="lua5.3 $PWD/civ.lua"
+EOF
+
+source ~/.bashrc     # reload your config
+]##
+
+You should now be able to run any civlua script with [$civ <cmd>], i.e.
+[$civ doc string.find].
+
+I also add [$alias ,=civ] to my bashrc, allowing for i.e. [$, help ff]. Note
+that [$civ.lua] can load and run ANY lua module in your [$LUA_PKGS] (not just
+civlua ones), so this is a nice shortcut for your personal scripts.
+
+["See [<#pkg-install>] for more details regarding [$PKG.lua] dependencies,
+  especially if you are not calling the [$civ.lua] loader.
+]
+
+[{:h3}Testing]
+After installation, it's a good idea to run the tests to make sure civlua is
+appropriate for your platform. You can use the command below, which also
+enables logging:
+[{## lang=sh}
+LOGLEVEL=INFO make test LUA_VERSION=lua5.3
+]##
+
+[{:h2 name=why}Why?]
+Civlua is an entire "Developer Tech Stack" from scratch, written in 100% Lua (or
+small C-extensions). First of all, what is a "Developer Tech Stack"?
+
+Besides the compiler and build system, a software developer only truly depends
+on a few terminal-based tools for development. These are their text editor,
+shell (and/or repl), version control, a means to query documentation, and a few
+other situational tools (i.e. find/replace text). These encompase the
+"Developer Tech Stack". civlua aims to provide this tech stack in a "small"
+amount of code that is well documented and easy for a single developer to
+understand and modify within a few months.
+
+Software is complex. Some of the complexity is to serve goals like performance
+and scaleability; which can be good for large-scale collaboration. However,
+the core tools of a developer such as their editor, shell, utilities and
+documentation should should be completely [,knowable] and [,hackable].
+How can our tech stack be knowable when all the core tools are so bloated?
+The [$Python/] directory in  [<https://github.com/python/cpython>CPython] is
+124k lines (and [$Lib] is 790k). [<code.commonmark.org>CommonMark], which just
+renders markdown files, is 20 thousand lines alone!
+
+The [<https://lua.org>Lua] language is only 20k lines of code and this library
+(~15k lines) will soonish implement an entire tech stack that a small team of
+developers or students could use to cooperate and hack. Technology is much more
+joyful when it is at this size and complexity. That is the goal of this
+project, and that is the goal of [<https://civboot.org>], which this project is
+a part of.
+
+[{:h2}Packages]
+The following are packaged directly in this repository as subdirectories.
+
+[{h3}Commands]
+These can all be called directly in bash with [$./civ.lua <cmd> ...]. You can view
+their command documentation with [$./civ.lua help <cmd>]. [+
+* [{*href=#Package_pvc}pvc]: patch version control -- like git but in ~1k LoC.
+
+* [{*href=#Package_ele}Ele]: Extendable Lua Editor and Lua-first shell --
+  still in development.
+
+* [{*href=#Package_doc}doc]: get help on any package or lua object as cxt or rendered
+  with color on the terminal.
+
+* [{*href=#Package_cxt}cxt]: this document and all code documentation is written in
+  [*cxt], a powerful ultra-simple markup language which is designed to be as
+  easy as possible to parse (for computers [,and] humans) while still using as
+  few characters as possible to express format for common cases. Commands: [+
+  * [$cxt.html]: render a cxt document in html.
+  * [$cxt.term]: render a cxt document on the terminal
+  ]
+
+* [{*href=#Package_ff}ff]: find and fix utility, like a superchanged find+grep from unix
+  land.
+]
+
+[{h3}Core Libraries]
+The following are the "core libraries" and represent the "batteries included"
+of Civlua. They maintain minimalism but enable ergonomic programming, powerful
+scripting, asynchronous file access and other goodies. [+
+* [{*href=#Package_pkg}pkg]: enables self-documenting code and cleaner dependency
+  management. Defines the PKG protocol to enable self-documenting modules
+  as well as fix Lua's biggest wart (implicit globals).
+
+* [{*href=#Package_shim}shim]: write scripts for Lua, execute from shell. Think
+  python's [$argparse] but cleaner and allows for Lua OR shell execution.
+
+* [{*href=#Package_metaty}metaty]: enable typosafe, self documenting records (aka
+  structs) which utilize Lua metatables.
+
+* [{*href=#Package_fmt}fmt]: format strings and lua nested types with an (optional)
+  style interface.
+
+* [{*href=#Package_ds}ds]: Data Structures and algnorithms. This module is
+  packed with tons of tiny functions, types and interfaces which enable ergonomic
+  scripting as well as creating applications such as editors and version
+  control systems in pure Lua.
+
+* [{*href=#Package_lines}lines]: treat files like tables of lines and apply
+  algorithms for that interface. The [$lines.File] and [$lines.EdFile] are
+  especially worth checking out.
+
+* [{*href=#Package_civix}civix]: unix system interface: ergonomic unix [$sh],
+  time and file modification are here.
+
+* [{*href=#Package_civtest}civtest]: no batteries would be complete without a testing
+  library.  civtest is minimal but gets the job done.
+
+* [{*href=#Package_lap}lap]: Lua Asynchronous Protocol, for advanced users who want
+  concurrency in pure-lua.
+
+* [{*href=#Package_fd}fd]: file-descriptor library for async files and other file
+  operations.
+
+* [{*href=#Package_pegl}pegl]: general-purpose PEG-like parser library, used
+  for [<#Package_cxt>cxt] and will help provide syntax-highlighting in ele.
+
+* [{*href=#Package_lson}lson]: implements de/serialization of arbitrary
+  concrete data (including tables) to/from JSON and an extension called LSON.
+]
+
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
+[{h3}Styling]
+The following define an interface to enable color output across any device,
+including: normal terminal, Ele (the civlua text editor) and html syntax
+highlighting: [+
+* [{*href=#Package_asciicolor}asciicolor]: specify color and styles using
+  ascii characters, i.e. [$"BW"] is bold+underlined black text on white
+  background.
+
+* [{*href=#Package_vt100}vt100]: defines common VT100 (aka standard unix)
+  terminal input and output.
+]
+
+[{h3}Data Management]
+Civlua aims to implement a simple version control (similar to git) while also
+enabling CivbootOS's configuration and data storage needs (aka network config,
+simple databases, maybe a spreadsheet program, etc): [+
+* [{*href=#Package_luck}luck]: lua-like configuration language with imports.
+  Think [<https://bazel.build/>bazel] but only for data -- though you could
+  make a build system on top!
+
+* [{*href=#Package_tv}tv]: tabbed-values. Similar in spirit to TSV
+  (tab-separated-values) but with an actual spec and the ability to define a
+  header with types.
+
+* [{*href=#Package_vcds}vcds]: version-control data structures. Diffs, cherry
+  picks, etc.
+]
+
+[{:h3}Luarocks]
+The [{*href=#Package_pkgrock}pkgrock] script enables converting [$PKG.lua]
+files to [<https://luarocks.org/>] specs, as well as running the magical git
+incantations necessary for luarocks to find the version.
+
+[{:h2 name=references}Shoutouts and Inspiration] [+
+* [<https://duskos.org>] which inspired Civboot and which this software
+  eventually hopes to use as (one of) its target operating systems
+* [<https://lua.org>] for creating an awesome and minimal programming langauge
+* [<https://civboot.org>]
+]
+
+[{:h2}LICENSE]
+All software, tests, documentation, notes and anything else in this repository
+is released into the public domain ([/UNLICENSE]) unless otherwise noted in
+the given source file.
+
+If you find any of this software helpful or copy large parts of it, please give
+us a a shoutout in your own projects and let us know by opening an
+[<https://github.com/civboot/civlua/issues>issue]. Please note that this is not
+required but is highly appreciated, thanks!
+

--- /dev/null
+++ README.md
@@ -0,0 +1,9 @@
+# civ.lua: a minimalist self-documenting tech stack for Civboot
+
+You can see the rendered Developer/API documentation by going to
+**[this link][rendered]** or by downloading this repository and going to
+`file:///home/path/to/civlua/README.html` directly in your browser.
+
+[rendered]: https://html-preview.github.io/?url=https://github.com/civboot/civlua/main/README.html
+
+

--- /dev/null
+++ UNLICENSE
@@ -0,0 +1,24 @@
+This is free and unencumbered software released into the public domain.
+
+Anyone is free to copy, modify, publish, use, compile, sell, or
+distribute this software, either in source code form or as a compiled
+binary, for any purpose, commercial or non-commercial, and by any
+means.
+
+In jurisdictions that recognize copyright laws, the author or authors
+of this software dedicate any and all copyright interest in the
+software to the public domain. We make this dedication for the benefit
+of the public at large and to the detriment of our heirs and
+successors. We intend this dedication to be an overt act of
+relinquishment in perpetuity of all present and future rights to this
+software under copyright law.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
+EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
+MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
+IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
+OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
+ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+OTHER DEALINGS IN THE SOFTWARE.
+
+For more information, please refer to <https://unlicense.org>

--- /dev/null
+++ civ.lua
@@ -0,0 +1,42 @@
+#!/usr/bin/env -S lua
+require'pkglib'(); local G = assert(G)
+
+-- civ.lua: convieience command runner and environment config.
+local M = G.mod'civ'; G.MAIN = G.MAIN or M
+G.METATY_CHECK = true
+
+local fmt = require'fmt'
+local fd  = require'fd'
+local ac  = require'asciicolor'
+local shim = require'shim'
+
+--- create a Fmt with sensible defaults for scripts
+--- Typically [$t.to] is unset (default=stderr) or set to stdout.
+M.Fmt = function(t)
+  t.to = t.to or io.stderr
+  return ac.Fmt(t)
+end
+
+M.setupFmt = function(to, user)
+  io.fmt  = M.Fmt{to=to}
+  io.user = M.Fmt{to=user or io.stdout}
+end
+
+M.main = function(arg) --> int: return code
+  M.setupFmt()
+  local cmd = table.remove(arg, 1)
+  if cmd == 'help' then
+    cmd = assert(table.remove(arg, 1), 'Usage: help command')
+    io.fmt:styled('bold', 'Help for command '..cmd, '\n')
+    local mod = require(cmd)
+    return require'doc'{rawget(mod, 'Main') or rawget(mod, 'main')}
+  end
+  if not cmd then
+    io.fmt:styled('error', 'Usage: civ.lua pkg ...')
+    return 1
+  end
+  require(cmd).main(shim.parse(arg))
+end
+
+if M == MAIN then os.exit(M.main(G.arg)) end
+return M

--- /dev/null
+++ cmd/README
@@ -0,0 +1,4 @@
+cmd directory contains the primary command-line interfaces for civboot.
+
+Some of the libraries can also be invoked on the command line,
+but that is a secondary use for them.

--- /dev/null
+++ cmd/cxt/PKG.lua
@@ -0,0 +1,21 @@
+name    = 'cxt'
+version = '0.1-0'
+url     = 'git+http://github.com/civboot/civlua'
+summary  = "text markup for civilization"
+doc      = 'README.cxt'
+homepage = "https://lua.civboot.org#Package_cxt"
+license  = "UNLICENSE"
+srcs = {
+  'cxt.lua',
+  'cxt/term.lua',
+  'cxt/html.lua',
+}
+deps = {
+  "lua     ~> 5.3",
+  "pkg     ~> 0.1",
+  "civtest ~> 0.1",
+  "ds      ~> 0.1",
+  "pegl    ~> 0.1",
+  "metaty  ~> 0.1",
+  "shim    ~> 0.1",
+}

--- /dev/null
+++ cmd/cxt/README.cxt
@@ -0,0 +1,281 @@
+cxt: text markup for civilization
+
+It should not take more than a few minutes to know how to read and write
+documentation.
+
+cxt is an ultra-simple markup language which is designed to be as easy as
+possible to parse (for computers [,and] humans) while still using as few
+characters as possible to express format for common cases. The [$src/]
+dir of [<code.commonmark.org>CommonMark] contains more than 20,000 lines of
+code whereas cxt is implemented in less than 500.
+
+cxt is designed to: [+
+ * Make document writing easy: use relatively few characters to express
+   common formatting
+ * Make document parsing easy: unambiguous, unlike [$Ma**rk_do*wn]
+ * Readable as raw text
+ * structured data can be consumed: supports arbitrary attributes
+]
+
+CXT contains only three special characters for deliniating formatting controls: [+
+* the two bracket characters [$[]]
+* a way to escape brackets and itself [$\\], [{# code}\[]# and [{# code}\]]#
+]
+
+There are two ways to specify attributes for a block: [+
+* short: [$[*bold text]] where [$*] can be any of the shortcuts below
+* full: [$[{*_ attr1 attr2=value}bold underlined with attr 1 and 2]]
+]
+
+The following attributes and shortcuts are supported
+[###
+  b i u   bold (*), italic (,) and underlined (_)
+  * , _   Example: [*bold] [,italic] [_underlined]
+                   [{*,_}bold italic and underlined]
+
+  code    inline or block code (depending on whether newlines exist)
+   $      shortcut: [$inline code]
+   #...   See also: '[#... ]#...' which sets the code attribute.
+
+  quote   create a quote block
+   "      Example: ["quote block]
+
+  list    list syntax, see demos
+   +      Example: [+
+            * list item 1
+            * list item 2
+          ]
+
+  table   table syntax, see demos.
+  # head  modify the delimiters with row/col/head attrs.
+  + row
+  | col
+
+  hidden  hidden block, used for comments and/or assigning attributes
+   !      Example: [!hidden block]
+
+  #...    any number of # characters create a "raw" block that must
+          have the same number of # characters closing it.
+
+          [##
+          some code
+          ]##
+
+          [{## code=html}
+          <b>example html</b>
+          ]##
+
+  href    hyper reference, aka a url.
+  <href>
+
+   path   a path, typically relative to project or website root.
+    /     Example: [/path/to/file.lua]
+
+  name    sets the name of the block.
+   n      Used with: [@name]  href=#name  anyAttr=@name
+   :      shortcut: [{: ...}name]
+          Example: [{name=Civboot href=http://civboot.org}Civboot]
+          Example: [{: href=http://civboot.org}Civboot]
+
+  value   when @ is used for an attr value, it will get this attribute.
+   v      defaults to "href" if the node has one, else "text" which
+          is the node's text.
+
+   @      copies a block with given name. When used as an attr value
+          it gets the attribute referenced by "value"
+          Example:
+            [{!:href=http://civboot.org}Civboot] creates a hidden named block
+            [@Civboot] clones the block (removing name and hidden)
+            [<@Civboot>Civboot Project] has href=http://civboot.org
+              note: the default for "value" is "href" if it exists.
+
+ escapes
+   \[    literal [
+   \]    literal ]
+   \\    literal \
+   \*    literal \*, where * is any other character
+]###
+
+[" Note:
+   Any value after a bracket besides [$ {...} b i u * , _ $ " + ! / : v @ ]
+   is invalid.]
+
+[{:h2}Demos]
+
+[{h3}Inline Code:]
+
+[{# lang=cxt}[$inline code]. Note that [$balanced[brackets] are allowed]]# [+
+* [$inline code]. Note that [$balanced[brackets] are allowed]
+]
+
+[{h3}Code block:]
+
+Writing this: [{### lang=cxt}
+[{## lang=lua}
+function example()
+  print'Hello world'
+end
+]##
+]###
+
+Will create a formatted code block: [{## lang=lua}
+function example()
+  print'Hello world'
+end
+]##
+
+[{h3}Text Formatting]
+[{# lang=cxt}[*bold], [,italic] and [_underlined]]# [+
+* [*bold], [,italic] and [_underlined]
+]
+
+[{h3}Linking]
+[{# lang=cxt}[{b i href=http://civboot.org}bold italic link]]# [+
+* [{b i href=http://civboot.org}bold italic link]
+]
+
+[{h3}List]
+Lists are started with [$+], each items is deliniated by [$*]: [{### lang=cxt}
+A list of stuff: [+
+* example list
+* with sub list:[+
+  * sub item
+  * multi-line
+
+    sub item.
+  * inner code block
+    [##
+    function example()
+      print'example inner block'
+    end
+    ]##
+  * final sub
+]
+* final item
+]
+]###
+
+A list of stuff: [+
+* example list
+* with sub list:[+
+  * sub item
+  * multi-line
+
+    sub item.
+  * inner code block
+    [##
+    function example()
+      print'example inner block'
+    end
+    ]##
+  * final sub
+]
+* final item
+]
+
+[{h3}Hidden]
+[{# lang=cxt}Hidden block: "[! this is hidden]"]# [+
+* Hidden block: "[! this is hidden]"
+]
+
+[{h3}Table]
+A table is created by the 'table' attribute. We also set the [$head], [$row]
+and [$col] to the defaults for demonstration (they can be excluded). The
+[$row] and [$head] deliminters are only recognized at the start of a line.
+
+[{## lang=cxt}
+A table: [{table head=# row=+ col=|}
+# col 1      | col 2   | col 3
++ row [*1.1] | row 1.2 | row 1.3
++ row [*1.1] | row 1.2 | row 1.3
+]
+]##
+
+A table: [{table head=# row=+ col=|}
+# col 1      | col 2   | col 3
++ row [*1.1] | row 1.2 | row 1.3
++ row [*1.1] | row 1.2 | row 1.3
+]
+
+[{h3}Table with large columns]
+For very large or multi-lined columns, you can organize them similar to
+sub-lists: [###
+[{table}
+# 1st header column
+| 2nd header column
+| 3rd header column
++ long row 1.1
+| long row 1.2
+
+  Even includes new line!
+| long row 1.3
+  [{## code=lua}
+  function example()
+    return "code block"
+  end
+  ]##
++ row 2.1
+| row 2.2
+| row 2.3
+]
+]###
+
+[{table}
+# 1st header column
+| 2nd header column
+| 3rd header column
++ long row 1.1
+| long row 1.2
+
+  Even includes new line!
+| long row 1.3
+  [{## code=lua}
+  function example()
+    return "code block"
+  end
+  ]##
++ row 2.1
+| row 2.2
+| row 2.3
+]
+
+[{h3}Named Nodes and Values]
+[" [*Note]: all visible named blocks have a ☍ link next to them and serve dual
+   purpose of being referenced within the cxt file using [$[@name]] and by
+   local and external links ([$href=#name]) ]
+
+[$A hidden named block: "[{!:href=http://civboot.org}Civboot]"] [+
+* A hidden named block: "[{!:href=http://civboot.org}Civboot]"
+]
+
+[$A visible named block: [{:href=https://github.com/civboot/civlua}civlua]] [+
+* A visible named block: [{:href=https://github.com/civboot/civlua}civlua]
+]
+
+[$[@Civboot] clones the hidden block (removing the [$clone] attribute)] [+
+* [@Civboot] clones the hidden block (removing the [$clone] attribute)
+]
+
+[$[<@Civboot>Civboot Project] has [$href=http://civboot.org].][+
+* [<@Civboot>Civboot Project] has [$href=http://civboot.org].
+]
+
+[##
+You can also link to named blocks with [$href=#name], for instance the "Demos"
+header is named [<#Demos>Demos].
+]## [+
+* You can also link to named blocks with [$href=#name], for instance the "Demos"
+  header is named [<#Demos>Demos].
+]
+
+[{h3}Escaping \[brackets\]]
+[##
+You can \[escape\] brackets to render them directly. You can also escape '\\'.
+]## [+
+* You can \[escape\] brackets to render them directly. You can also escape '\\'.
+]
+
+[{h2}UNLICENSE]
+Cxt is in the the public domain, see the [<../UNLICENSE>UNLICENSE] for details.
+
+It was originally created by Rett Berg as part of the [@Civboot] project.

--- /dev/null
+++ cmd/cxt/README.md
@@ -0,0 +1,5 @@
+# cxt: a powerful ultra-simple markup language
+
+Go to **[this link][rendered]** to view rendered documentation.
+
+[rendered]: https://htmlpreview.github.io/?https://github.com/civboot/civlua/main/README.html#Package_cxt

--- /dev/null
+++ cmd/cxt/TODO.cxt
@@ -0,0 +1,63 @@
+
+[{h1}TODO list for CXT]
+
+[{h2}Whitespace aware quote block]
+I would like to allow the following to strip preceeding whitespace
+and FAIL if anything exists in said whitespace
+
+[###
+
+[+
+  * This is a normal list item
+  * This is a list item with some code:
+    [##
+    This is a bit of code
+    for the above
+    ]##
+  * Another normal list item
+]
+]###
+
+The code block above should NOT have any preceeding whitespace.
+
+This should be relatively easy, since we just have to detect leading
+whitespace for [$raw] blocks and check+strip them.
+
+[{h2}Html]
+First of all I need to handle special characters:
+[##
+ &   &amp;
+ <   &lt;
+ >   &gt;
+]##
+
+Inline code for html is a bit more complicated. I should use 'samp' (sample)
+instead of 'code' or 'pre', since 'samp' works for inline code and I already
+handle adding [$<br>] to relevant points.
+
+Also: all spaces should become '&nbsp;' and all newlines become '<br>'
+
+So a before and after:
+
+[###
+CXT:
+function foo()
+  a   = "hi"
+  abc = "hi there"
+  return a .. abc
+end
+
+HTML:
+<samp>
+function <b>foo</b>()<br>
+&nbsp; a &nbsp; = "hi"<br>
+&nbsp; abc = "hi there"<br>
+&nbsp; return a .. abc<br>
+end<br>
+</samp>
+]###
+
+It's not pretty... but it just goes to show how HTML is not pretty. Also, I
+threw in the [$<b>foo</b>] to show that you can still add formatting in code
+blocks. I will utilize this for syntax highlighting.
+

--- /dev/null
+++ cmd/cxt/cxt.lua
@@ -0,0 +1,484 @@
+-- TODO:
+--   [1Header block]
+local M = mod and mod'cxt' or {}
+
+local pkg = require'pkglib'
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds  = require'ds'
+local lines = require'lines'
+local T = require'civtest'
+local add, sfmt, srep = table.insert, string.format, string.rep
+local pop = table.remove
+local max = math.max
+local update = table.update
+
+local Key
+local Pat, Or, Not, Many, Maybe
+local Token, Empty, Eof, PIN, UNPIN
+local EMPTY, common
+local pegl = ds.auto'pegl'
+
+local RAW = '#'
+
+--- escape the string so it renders literally
+M.escape = function(str) return str:gsub('([\\%[%]])', '\\%1') end
+
+M._hasUnbalancedBrackets = function(str)
+  local c = 0; for m in str:gmatch'[%[%]]' do
+    if m == '[' then c = c + 1
+    elseif           c == 0 then return true
+    else             c = c - 1 end
+  end
+  return c ~= 0
+end
+M._codeHashes = function(str)
+  local n; for m in str:gmatch'%]#*' do n = max(n or 0, #m-1) end
+  return n
+end
+--- create a [$[##code block]##]
+M.codeblock = function(str, lang)
+  local hs = srep('#', (M._codeHashes(str) or 0) + 1)
+  return lang and sfmt('[{%s lang=%s}%s]%s', hs, lang, str, hs)
+               or (str:sub(1,1)=='#') and sfmt('[{%s}%s]%s', hs, str, hs)
+               or sfmt('[%s%s]%s', hs, str, hs)
+end
+
+--- create [$[$inline code]]
+M.code = function(str, lang)
+  return M._hasUnbalancedBrackets(str) and M.codeblock(str, lang)
+      or lang and sfmt('[{$ lang=%s}%s]', lang, str)
+      or sfmt('[$%s]', str)
+end
+
+------------------------
+-- Parsing
+-- The only thing PEGL is leveraged for is parsing the attributes because
+-- that is whitespace agnostic.  Otherwise whitespace is VERY important
+-- in cxt, and handling whitespace in PEGL would be a complete hack.
+
+M.attrSym = Key{kind='attrSym', {
+  '!',             -- hidden
+  '*', '/', '_',   -- bold, italic, underline
+  ':',             -- define node name
+}}
+M.keyval = {kind='keyval',
+  Pat'[_.%-%w]+',
+  Maybe{'=', Pat'[^%s{}]+', kind='value'},
+}
+M.attr  = Or{Pat{RAW..'+', kind='raw'}, M.attrSym, M.keyval}
+M.attrs =   {PIN, Many{M.attr}, '}', kind='attrs'}
+
+local function addToken(p, node, l1, c1, l2, c2)
+  if l2 >= l1 and (l2>l1 or c2>=c1) then
+    add(node, Token:encode(p, l1, c1, l2, c2))
+  end
+end
+
+local function nodeText(p, node, errNode)
+  local txt = {}; for _, t in ipairs(node) do
+    if mty.ty(t) ~= Token then
+      p.c, p.l = (errNode or t).pos
+      p:error(sfmt('text must be of node with only strings %q', ctrl))
+    end
+    add(txt, p:tokenStr(t))
+  end
+  return table.concat(txt)
+end
+
+--- find the end of a [$[##raw block]##]
+local function bracketedStrRaw(p, node, raw, startCol)
+  node.code = node.code or (node.lang and true)
+  local ws, w1 = p.line:find'^%s+' -- leading whitespace
+  ws = ws and (w1 + 1 == startCol) and p.line:sub(ws, w1) or nil
+
+  local l, c, closePat = p.l, p.c, '%]'..srep(RAW, raw)
+  local closePatStart = '^'..closePat
+  if p.c > #p.line then p:incLine() end
+  while true do
+    if p:isEof() then p:error(sfmt(
+      "Got EOF, expected %q", closePat:sub(2)
+    ))end
+    if ws and p.c == 1 then -- strip leading whitespace
+      addToken(p, node, l, c, p.l, p.c - 1)
+      local w1, w2 = p.line:find(ws); if w1 ~= 1 then
+        p:error(sfmt('Expected leading %q', ws))
+      end
+      l, c, p.c = p.l, w2+1, w2+1
+    end
+    local c1, c2 = p.line:find(closePat, p.c)
+    if c2 then
+      p.c = c2 + 1; local lt, ct = p.l, c1 - 1
+      return addToken(p, node, l, c, lt, ct) --> nil
+    end
+    p:incLine(); node.block = true
+    ::continue::
+  end
+end
+
+--- A string that ends in a closed bracket and handles balanced brackets.
+--- Returns: Token, which does NOT include the closePat
+local function bracketedStr(p, node, raw, startCol)
+  if raw > 0 then return bracketedStrRaw(p, node, raw, startCol) end
+  local l, c, nested = p.l, p.c, 1
+  while nested > 0 do
+    if p:isEof()     then p:error"Got EOF, expected matching ']'" end
+    if p.c > #p.line then p:incLine(); goto continue end
+    local c1, c2 = p.line:find('[%[%]]', p.c); if c2 then
+      if p.line:sub(c1,c2) == '[' then p.c = c2 + 1; nested = nested + 1
+      else                             p.c = c2 + 1; nested = nested - 1 end
+    else p:incLine() end
+    ::continue::
+  end
+  add(node, Token:encode(p, l, c, p.l, p.c - 2))
+end
+
+local fmtAttr = {
+  ['*'] = 'b', [','] = 'i', ['_'] ='u',
+  ['"'] = 'quote',
+  [':'] = 'name', -- both here and txtCtrl. This sets node.name=true
+}
+local strAttr = {
+  ['!'] = 'hidden',   ['$'] = 'code',
+}
+local txtCtrl = {[':'] = 'name', ['@'] = 'clone', ['/'] = 'path'}
+local shortAttrs = {n='name', v='value'}
+
+local function parseAttrs(p, node)
+  local l, c, raw = p.l, p.c, nil
+  local attrs = p:parse(M.attrs)
+  for _, attr in ds.islice(attrs, 1, #attrs-1) do
+    if attr.kind == 'attrSym' then
+      local attr = p:tokenStr(attr)
+      node[assert(fmtAttr[attr] or strAttr[attr])] = true
+    elseif attr.kind == 'keyval' then
+      local val = attr[2]
+      val = (val == pegl.EMPTY) and true or p:tokenStr(val[2])
+      node[p:tokenStr(attr[1])] = val
+    else
+      fmt.assertf(attr.kind == 'raw', 'kind: %s', attr.kind)
+      if raw then
+        p.l, p.c = l, c; p:error'multiple raw (##...) attributes'
+      end
+      local _, c1, _, c2 = attr:span()
+      raw = c2 - c1 + 1
+    end
+  end
+  return raw
+end
+
+local ITEM = {
+  ['^%s*%* ']      = 'bullet',
+  ['^%s*%(%d+%) '] = 'numbered',
+}
+
+local LIST_ITEM_ERR = [[
+expected bullet item followed by whitespace. Examples:\n
+      *   bullet
+      (1) numbered
+      [ ] unchecked
+      [x] checked
+]]
+local function parseList(p, list)
+  p:skipEmpty()
+  if p:isEof() then p:error'Expected a list got EOF' end
+  local ipat, ikind; for ip, i in pairs(ITEM) do
+    if p:consume(ip) then ipat, ikind = ip, i
+      break
+    end
+  end
+  if not ipat then p:error(LIST_ITEM_ERR) end
+  local altEnd = function(p, node, l, c)
+    local c1, c2 = p.line:find(ipat)
+    if c2 and (p.c <= c2) then return {l, c} end
+  end
+  while true do
+    local item = {}
+    local r = M.content(p, item, false, altEnd)
+    if r then
+      addToken(p, item, r[1], r[2], p.l, p.c - 1)
+      local c1, c2 = p.line:find(ipat, p.c)
+      p.c = c2 + 1
+    end
+    if rawget(item[#item], 'br') then pop(item) end
+    p:trimTokenLast(item, true)
+    add(list, item)
+    if not r then break end
+  end
+end
+
+local function parseTable(p, tbl)
+  if p.line and p.c > #p.line then p:incLine() end
+  local rowDel, headDel, colDel = tbl.row or '+', tbl.head or '#', tbl.col or '|'
+  local rowStart = {[rowDel]=true, [headDel]=true}
+
+  -- alternative end lambda
+  local altEnd = function(p, node, l, c)
+    if not p.line:sub(1, p.c-1):find'%S' then -- only parsed ws
+      local _, c2 = p.line:find'%S'           -- look for row start
+      if c2 and rowStart[p.line:sub(c2,c2)] then return {p.line:sub(c2,c2), l, c} end
+    end
+    local c1, c2 = p.line:find(colDel, p.c, true); if not c1 then return end
+    local b1, b2 = p.line:find('[', p.c, true)
+    if not b1 or b1 > c1 then return {colDel, l, c} end
+  end
+
+  local r, content, row = 1
+  repeat
+    if p:isEof() then p:error'Expected a table got EOF' end
+    local col = {}; content = M.content(p, col, false, altEnd)
+    if not content then
+      if row and #col > 0 then add(row, col) end
+      break
+    end
+    local delim, l, c = table.unpack(content)
+    local c1, c2 = p.line:find(delim, p.c, true)
+    if delim == colDel then
+      addToken(p, col, l, c, p.l, c1 - 1)
+    else assert(rowStart[delim])
+      addToken(p, col, l, c, p.l - 1, #p.dat[p.l - 1])
+    end
+    p.c = c2 + 1
+    if row then add(row, col) end
+    if rowStart[delim] then -- save current row and start the next row
+      if row then add(tbl, row) end
+      row = {}
+      if delim == rowDel then        row.row = r; r = r + 1
+      else                           row.header = true end
+    end
+  until not content
+  if row and #row > 0 then add(tbl, row) end
+  for _, row in ipairs(tbl) do
+    for c, col in ipairs(row) do
+      p:trimTokenStart(col)
+      p:trimTokenLast(col, c == #row)
+    end
+  end
+end
+
+--- skip whitespace, return whether it was skipped
+local function skipWs(p)
+  if not p.line then return end
+  p.c = select(2, p.line:find('%S', p.c)) or #p.line + 1
+end
+
+--- increment line, adding token and skipping next line's whitespace.
+--- include newline in token unless this line is EOF
+local function incLine(p, node, l1, c1)
+  local l2, c2 = p.l, #p.line
+  if l1 ~= #p.dat then l2, c2 = l2 + 1, 0 end
+  addToken(p, node, l1, c1, l2, c2)
+  p:incLine(); skipWs(p)
+  return p.l, p.c
+end
+
+local CONTENT_SPEC = {kind='cxt'}
+
+--- parse normal content, adding to node
+M.content = function(p, node, isRoot, altEnd)
+  local l, c = p.l, p.c
+  p:dbgEnter(CONTENT_SPEC)
+  ::loop::
+  if p.line == nil then
+    if not isRoot then p:error"Expected ']' but reached end of file" end
+    p:dbgLeave()
+    return addToken(p, node, l, c, p.l - 1, #p.dat[p.l - 1]) --> nil
+  elseif #p.line == 0 and p.dat[l+1] then
+    add(node, {pos={l}, br=true})
+    p:incLine(); skipWs(p); l, c = p.l, p.c
+    goto loop
+  elseif p.c > #p.line then l, c = incLine(p, node, l, c); goto loop end
+  if altEnd then
+    local e = altEnd(p, node, l, c); if e then
+      p:dbgLeave()
+      return e
+    end
+  end
+  ::refind::
+  local c1, c2 = p.line:find('\\?[%[%]\\]', p.c); if not c2 then
+    l, c = incLine(p, node, l, c)
+    goto loop
+  end
+  p.c = c2 + 1
+  if c1 ~= c2 then -- \escaped
+    addToken(p, node, l, c, p.l, c1-1)
+    c = c2; goto loop
+  end
+  -- found unescaped syntax character: [ ] \
+  if p.line:sub(c2,c2) == '\\' then goto refind end -- '\*' --> '\*'
+  addToken(p, node, l, c, p.l, c2-1)
+  local posL, posC = p.l, p.c
+  if p.line:sub(c1,c2) == ']' then p:dbgLeave(); return end
+  local raw, ctrl = nil, p.line:sub(p.c, p.c)
+  if ctrl == '' then
+    p:error("expected control char after '['")
+  elseif ctrl == RAW then
+    local c1, c2 = p.line:find('^#+', p.c)
+    assert(c2)
+    p.c, raw = c2 + 1, c2 - c1 + 1
+  end
+  p.c = p.c + 1
+  local sub = {}
+  if     raw           then sub.raw, sub.code       = raw, true
+  elseif txtCtrl[ctrl] then -- handled after content
+  elseif fmtAttr[ctrl] then sub[fmtAttr[ctrl]]      = true
+  elseif strAttr[ctrl] then sub[strAttr[ctrl]], raw = true, 0
+  elseif ctrl == '+'   then sub.list                = true
+  elseif ctrl == '{'   then raw = parseAttrs(p, sub)
+  elseif ctrl == '<' then
+    sub.href = p:tokenStr(assert(p:parse{PIN, Pat'[^>]*', '>'}[1]))
+  else p:error(sfmt( "Unrecognized control character after '[': %q", ctrl)) end
+  -- parse table depending on kind
+  if raw           then bracketedStr(p, sub, raw, c2)
+  elseif sub.table then parseTable(p, sub)
+  elseif sub.list  then parseList(p, sub)
+  else                  M.content(p, sub) end
+  -- clean up attributes
+  local txtAttr = txtCtrl[ctrl] or (sub.name == true) and 'name'
+  if txtAttr then
+    sub[txtAttr] = nodeText(p, sub):gsub('%s', '_')
+  end
+  for s, a in pairs(shortAttrs) do
+    if sub[s] then sub[a] = sub[s]; sub[s] = nil end
+  end
+  sub.pos = {posL,posC,p.l,p.c-1}
+  add(node, sub)
+  l, c = p.l, p.c
+  goto loop
+end
+
+local function extractNamed(node, named)
+  if rawget(node, 'name') then
+    if named[node.name] then
+      local l, c = table.unpack(named[node.name].pos)
+      error(sfmt('ERROR node %q is named twice: %s.%s and %s.%s',
+        node.name, l, c, table.unpack(node.pos)))
+    end
+    named[node.name] = node
+  end
+  for _, n in ipairs(node) do
+    if mty.ty(n) ~= Token then extractNamed(n, named) end
+  end
+end
+
+local function getNamed(node, named, name)
+  local n = named[name]; if not n then
+   local l, c = node.pos; error(sfmt(
+     'ERROR %s.%s: name %q not found', l, c, name))
+  end
+  return n
+end
+
+local function resolveFetches(p, node, named)
+  local nty = mty.ty(node)
+  if nty == Token or nty == 'string' then return node end
+  if node.clone then
+    local n = named[node.clone]; if n then
+      local n = update({}, n)
+      n.hidden, n.name, n.value = nil, nil, nil
+      return n
+    else return node end
+  end
+  -- replace all @attr values
+  for k, v in pairs(node) do
+    if type(k) ~= 'number' and type(v) == 'string' and v:sub(1,1) == '@' then
+      local n = named[v:sub(2)]; if n then
+        local attr = n.value or (n.href and 'href') or 'text'
+        if attr == 'text' then v = nodeText(p, n, v)
+        else                   v = n[attr] end
+        node[k] = v
+      end
+    end
+  end
+  for i, n in ipairs(node) do node[i] = resolveFetches(p, n, named) end
+  return node
+end
+
+M.parse = function(dat, dbg)
+  local p = pegl.Parser:new(dat, pegl.RootSpec{dbg=dbg})
+  skipWs(p)
+  local root, named = {}, {}
+  M.content(p, root, true)
+  extractNamed(root, named)
+  resolveFetches(p, root, named)
+  return root, p
+end
+
+M.checkParse = function(dat, context) --> dat
+  local ok, root, p = pcall(M.parse, dat); if ok then
+    if p.l <= #p.dat then error(sfmt(
+      '%s: parse stopped before end\n%s.%s: %s', context, p.l, p.c, p.line
+    ))end
+    return dat
+  end
+  if type(dat) == 'table' then dat = table.concat(dat, '\n') end
+  error(sfmt('Failed to parse cxt %s:\n%s\n\nError: %s',
+        context, dat, root))
+end
+
+---------------------------
+-- Testing Helpers
+
+local SKIP_FOR_STR = ds.Set{'pos', 'raw'}
+M.parsedStrings = function(p, node)
+  if type(node) ~= 'table' then return node end
+  if mty.ty(node) == Token then return p:tokenStr(node) end
+  local n = {}
+  for k, v in pairs(node) do
+    if not SKIP_FOR_STR[k] then
+      v = M.parsedStrings(p, v)
+      n[k] = v
+    end
+  end
+  return n
+end
+
+M.assertParse = function(dat, expected, dbg) --> node
+  local node, p = M.parse(dat, dbg)
+  node = M.parsedStrings(p, node)
+  T.eq(expected, node)
+  return node
+end
+
+M.fmtAttr = fmtAttr
+M.htmlFmt  = ds.Set{'b', 'i', 'u'}
+
+M.Config = mty'Config' {
+  'header [string]: typically used for html header',
+  'pathUrl [function(path) -> url]', pathUrl=ds.iden,
+}
+
+--- A Writer for cxt serializers (terminal, http, etc) to use.
+---
+--- The writer contains: [+
+--- * The src lines and token decoder for getting pegl.Token values.
+--- * The destination lines and current indent level.
+--- ]
+M.Writer = mty'Writer' {
+  'src', 'to',
+  'indent[int]',
+  'style [string]: see asciicolor.Style',
+  'config [Config]', config=M.Config{}
+}
+M.Writer.fromParser = function(ty_, p, to)
+  return ty_{src=p.dat, to=to or {}, indent=0}
+end
+M.Writer.tokenStr = function(w, t)
+  return (type(t) == 'string') and t or t:decode(w.src)
+end
+M.Writer.__index = function(w, l)
+  local m = getmetatable(w)[l]; if m then return m end
+  if type(l) ~= 'number' then return end
+  fmt.errorf('index cxt.Writer: %s', l)
+end
+-- TODO: remove this
+M.Writer.__newindex = function(w, l, line)
+  if type(l) ~= 'number' then return rawset(w, l, line) end
+  if w.style        then w.to:styled(w.style, line)
+  elseif w.to.write then w.to:write(line)
+  else                   w.to[l] = line end
+end
+M.Writer.__len = function(w) return #w.to end
+M.Writer.level = function(w, add) return w.to:level(add) end
+
+return M

--- /dev/null
+++ cmd/cxt/cxt/html.lua
@@ -0,0 +1,248 @@
+--- Serialize cxt nodes as html
+local M = mod and mod'cxt.html' or setmetatable({}, {})
+MAIN = MAIN or M
+
+local pkglib = require'pkglib'
+local mty  = require'metaty'
+local fmt  = require'fmt'
+local pegl = require'pegl'
+local cxt  = require'cxt'
+local shim = require'shim'
+local T = require'civtest'
+local push, sfmt = table.insert, string.format
+local ds    = require'ds'
+local lines = require'lines'
+local LFile = require'lines.File'
+
+M.htmlHead = [[<style>
+body {
+  font-family: -apple-system,BlinkMacSystemFont,"Segoe UI","Noto Sans",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji";
+  font-size: 16px;
+  line-height: 1.5;
+  word-wrap: break-word;
+}
+h1 { margin-top: 0.5em; margin-bottom: 0.3em; border-bottom: 2px solid }
+h2 { margin-top: 0.3em; margin-bottom: 0.2em; border-bottom: 1px solid }
+h3 { margin-top: 0.2em; margin-bottom: 0.1em; border-bottom: 1px solid silver }
+h4 { margin-top: 0.1em; margin-bottom: 0.05em; }
+
+p  { margin-top: 0.3em; margin-bottom: 0.0em; }
+ul { margin-top: 0.1em; margin-bottom: 0.5em; }
+li { margin-top: 0.1em; margin-bottom: 0.0em; }
+blockquote {
+  border: 1px solid #999;  border-radius: 0.1em;
+  padding: 2px;            background-color: mintcream;
+}
+code {
+  background-color: whitesmoke;
+  border: 1px solid #999;  border-radius: 0.3em;
+  font-family: Monaco, monospace;
+  font-size: 16px;
+  padding: 0px;
+  white-space: pre
+}
+.block {
+  margin-top: 0.1em;
+  background-color: snow;  display: block;
+  padding: 5px;
+}
+table, th, td {
+    vertical-align: top;
+    text-align: left;
+    border-collapse: collapse;
+    border: 1px solid grey;
+    margin: 0.05em 0.05em;
+    padding: 3px 5px;
+}
+table { min-width: 400px;         }
+th    { background-color: LightCyan; }
+</style>]]
+
+local function nodeKind(n)
+  if type(n) == 'string' or mty.ty(n) == pegl.Token then
+    return 'token' end
+  if n.code                  then return 'code'  end
+  if n.table                 then return 'table' end
+  if n.list                  then return 'ul'    end
+  if n.br                    then return 'br'    end
+end
+
+local preNameAttrs = {'h1', 'h2', 'h3', 'h4', 'h5'}
+local fmtAttrs = {'quote', 'b', 'i', 'u'}
+local cxtRename = {quote='blockquote', name='id'}
+
+local function addAttr(attrs, k, v)
+  -- TODO: html encode
+  push(attrs, sfmt('%s="%s"', k, v))
+end
+
+local noPKind = ds.Set{'ul', 'blockquote'}
+
+local function addLine(w, line)
+  ds.extend(w, lines(table.concat(line)))
+end
+
+local function startFmt(w, n, kind, line)
+  for _, f in ipairs(preNameAttrs) do
+    if n[f] then push(line, '<'..(cxtRename[f] or f)..'>') end
+  end
+  if n.name then
+    local id = n.name:gsub('%s+', '-')
+    push(line, sfmt('<a id="%s" href="#%s">', id, id))
+    if #n == 0 then push(n, n.name) end
+  end
+  if n.href then
+    push(line, '<a ')
+    if n.id then addAttr(line, 'id', n.id) end
+    addAttr(line, 'href', n.href)
+    push(line, '>')
+  elseif n.id then
+    push(line, '<div '); addAttr(line, 'id', n.id); push(line, '>')
+  end
+  if n.path then
+    push(line, '<a '); addAttr(line, 'href', w.config.pathUrl(n.path)); push(line, '>')
+  end
+  for _, f in ipairs(fmtAttrs) do
+    if n[f] then push(line, '<'..(cxtRename[f] or f)..'>') end
+  end
+end
+local function endFmt(n, line)
+  for _, f in ds.ireverse(preNameAttrs) do
+    if n[f] then push(line, '</'..(cxtRename[f] or f)..'>') end
+  end
+  for _, f in ds.ireverse(fmtAttrs) do
+    if n[f] then push(line, '</'..(cxtRename[f] or f)..'>') end
+  end
+  if n.href then push(line, '</a>') end
+  if n.path then push(line, '</a>') end
+  if n.name then push(line, '</a>') end
+end
+local function startNode(n, kind, line)
+  if kind then
+    push(line, '<'..kind)
+    if n.block then push(line, ' class="block"')         end
+    push(line, '>')
+  end
+end
+local function endNode(n, kind, line)
+  if not kind then return end
+  push(line, '</'..kind..'>');
+end
+
+local CODE_REPL = {
+  ['<'] = '&lt;',   ['>']  = '&gt;',
+}
+
+local function _serialize(w, line, node) --> line
+  local kind = nodeKind(node)
+  if kind == 'token' then
+    local s = w:tokenStr(node)
+    if s:sub(#s,#s) == '\n' then
+      push(line, s:sub(1, #s-1))
+      addLine(w, line)
+      line = {}
+    else push(line, s) end
+    return line
+  elseif node.hidden  then return line
+  elseif kind == 'br' then
+    push(line, '<p>'); addLine(w, line)
+    return {}
+  end
+  startFmt(w, node, kind, line)
+  startNode(node, kind, line)
+  if kind == 'table' then
+    addLine(w, line); w.indent = w.indent + 2
+    for ri, row in ipairs(node) do
+      addLine(w, {'<tr>'})
+      for _, col in ipairs(row) do
+        local el = row.header and 'th' or 'td'
+        line = {'<'..el..'>'}
+        line = _serialize(w, line, col)
+        push(line, '</'..el..'>')
+        addLine(w, line)
+      end
+      addLine(w, {'</tr>'})
+    end
+    line = {}; w.indent = w.indent - 2
+  elseif kind == 'ul' then
+    addLine(w, line); w.indent = w.indent + 2
+    for _, item in ipairs(node) do
+      line = {'<li>'}
+      line = _serialize(w, line, item)
+      push(line, '</li>')
+      addLine(w, line)
+    end
+    line = {}; w.indent = w.indent - 2
+  elseif node.code then
+    local s = {}; for _, n in ipairs(node) do push(s, w:tokenStr(n)) end
+    s = table.concat(s)
+    if s:sub(1, 1) == '\n' then s = s:sub(2)    end
+    if s:sub(-1)   == '\n' then s = s:sub(1,-2) end
+    s = s:gsub('[&<>]', CODE_REPL)
+    push(line, s)
+  elseif #node == 0 then
+    if node.href then line = _serialize(w, line, node.href) end
+  else
+    for _, sub in ipairs(node) do
+      line = _serialize(w, line, sub)
+    end
+  end
+  endNode(node, kind, line); endFmt(node, line)
+  return line
+end
+
+--- serialize the node to the writer.
+M.serialize = function(w, node)
+  -- line is an implementation detail of html around when to line break.
+  -- We want to keep the output html as concise as reasonable, which
+  -- this approach helps with.
+  local line = {}; for _, n in ipairs(node) do
+    line = _serialize(w, line, n)
+  end
+  if #line > 0 then
+    addLine(w, line)
+  end
+end
+M.serializeDoc = function(w, node, head)
+  addLine(w, {'<!DOCTYPE html>\n<html><body>'})
+  if head == nil then head = M.htmlHead end
+  if head then addLine(w, {'<head>\n', head, '\n</head>'}) end
+  M.serialize(w, node)
+  addLine(w, {'</body></html>'})
+end
+
+M.convert = function(dat, to, config)
+  local node, p = cxt.parse(dat)
+  local w = cxt.Writer:fromParser(p, to)
+  w.config = config or cxt.Config{}
+  M.serializeDoc(w, node, w.config.header)
+  return w.to, p, w
+end
+
+M.assertHtml = function(cxtDat, expectedHtml, dbg)
+  local node, p = cxt.parse(cxtDat, dbg)
+  local w = cxt.Writer:fromParser(p)
+  M.serialize(w, node)
+  T.eq(expectedHtml, w.to)
+end
+
+M.main = function(args)
+  args = shim.parseStr(args)
+  if #args < 2 then
+    print'Usage: cxt path/to/file.cxt path/to/file.html'
+    return 1
+  end
+  print('cxt.html', args[1], '-->', args[2])
+  local inp = LFile{path=args[1]}
+  local to  = LFile{path=args[2], mode='w+'}
+  if args.config then
+    args.config = cxt.Config(pkglib.load('CxtConfig', args.config).html)
+  end
+  M.convert(inp, to, args.config)
+  inp:close(); to:flush(); to:close()
+  return 0
+end
+
+getmetatable(M).__call = function(_, args) return M.main(args) end
+if M == MAIN then os.exit(M.main(arg)) end
+return M

--- /dev/null
+++ cmd/cxt/cxt/term.lua
@@ -0,0 +1,148 @@
+G = G or _G
+--- cxt for the terminal, either plain text or vt100/etc
+local M = mod'cxt.term'
+MAIN = G.MAIN or M
+
+local mty  = require'metaty'
+local ds = require'ds'
+local shim = require'shim'
+local pegl = require'pegl'
+local cxt  = require'cxt'
+local fd = require'fd'
+local log = require'ds.log'
+local lines = require'lines'
+local LFile = require'lines.File'
+
+local Token = assert(require'pegl'.Token)
+local push = table.insert
+
+--- Render cxt on a terminal.
+---
+--- Will render an input string or --inp=file.
+M.Args = mty'Args' {
+  'inp  [path|file]: input file',
+  'out  [path|file]: output file (default=stdout)',
+}
+
+local KIND_ORDER = ds.BiMap {
+  'hidden', 
+  'table', 'list', 'quote',
+
+  'h1', 'h2', 'h3', 'h4',
+  'br', 'code', 'block', 'name', 'path', 'clone',
+  'b', 'u', 'class',
+}
+
+M.STYLES = {
+  h1 = 'h1', h2 = 'h2', h3 = 'h3', h4 = 'h4',
+  code = 'code', block = 'code', path = 'path',
+  clone = 'var', name = 'api',
+  b = 'bold', u='ul',
+}
+
+M.HEADER = {h1=40, h2=20, h3=5, h4=1}
+
+local function nodeKind(n)
+  if type(n) == 'string' or mty.ty(n) == Token then
+    return 'token'
+  end
+  for _, o in ipairs(KIND_ORDER) do
+    if n[o] then return o end
+  end
+end
+
+local function serializeRow(w, row, nl)
+  w:level(1); if nl then push(w, '\n') end
+  w:level(1);
+  for i, col in ipairs(row) do
+    if i ~= 1 then push(w, '\t') end
+    M.serialize(w, col)
+  end
+  w:level(-1); w:level(-1)
+end
+
+local SER_KIND = {
+  hidden = ds.noop,
+  token = function(w, node) push(w, w:tokenStr(node)) end,
+  br    = function(w, node) return push(w, '\n')      end,
+  table = function(w, node)
+    if #node == 0 then return end
+    w:level(1)
+    for r, row in ipairs(node) do
+      push(w, '\n+ ')
+      -- if r == 1 then push(w, '  + ') else push(w, '\n+ ') end
+      for c, col in ipairs(row) do
+        if c ~= 1 then push(w, '\t') end
+        w:level(1); M.serialize(w, col); w:level(-1)
+      end
+    end
+    w:level(-1)
+  end,
+  list = function(w, node)
+    w:level(1)
+    for _, item in ipairs(node) do
+      push(w, '\n* ');
+      w:level(1); M.serialize(w, item); w:level(-1)
+    end
+    w:level(-1)
+  end,
+  code = function(w, node)
+    local prevSty = w.style
+    local s = {}; for _, n in ipairs(node) do push(s, w:tokenStr(n)) end
+    s = table.concat(s)
+    if node.block and s:sub(-1) == '\n' then
+      s = s:sub(1, -2) -- strip extra newline
+    end
+    w.style = 'code'; push(w, s); w.style = prevSty
+  end,
+}
+SER_KIND.block = SER_KIND.code
+
+-- serialize node to a writer
+M.serialize = function(w, node)
+  local kind = nodeKind(node)
+  local fn = SER_KIND[kind]
+  if fn then return fn(w, node) end
+  local header = M.HEADER[kind]
+  local prevSty = w.style
+  if header then
+    w.style = 'meta'; push(w, string.rep('#', header))
+    if header > 4 then push(w, '\n# ') else push(w, ' ') end
+  end
+
+  w.style = M.STYLES[kind] or node.style or prevSty
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
+  w.style = prevSty
+end
+
+M.convert = function(dat, to)
+  if type(dat) == 'string' then dat = lines(dat) end
+  local node, p = cxt.parse(dat)
+  local w = cxt.Writer:fromParser(p, to)
+  M.serialize(w, node)
+  return w, node, p
+end
+
+M.main = function(args)
+  args = M.Args(shim.parseStr(args))
+  args.out = args.out or io.fmt
+  if #args > 0    then args.inp = lines(table.concat(args, ' '))
+  elseif args.inp then args.inp = LFile:create(shim.file(args.inp))
+  else error'must provide input' end
+  M.convert(args.inp, args.out)
+  args.out:write'\n'
+  return args.out
+end
+getmetatable(M).__call = function(_, ...) return M.main(...) end
+
+if M == MAIN then M.main(shim.parse(arg)); os.exit(0) end
+return M

--- /dev/null
+++ cmd/cxt/test.lua
@@ -0,0 +1,381 @@
+METATY_CHECK = true
+
+local pkg = require'pkglib'
+local mty = require'metaty'
+local fmt = require'fmt'
+local Mt = mod'Mt'
+--- Example docs
+Mt.A = mty'A' {
+  'a1 [string]: docs for a1'
+  ..'more docs for a1',
+}
+
+local ds  = require'ds'
+local Writer = require'lines.Writer'
+local M = require'cxt'
+local term = require'cxt.term'
+local html = require'cxt.html'
+local T = require'civtest'
+
+local RootSpec, Token
+local testing, EMPTY, EOF
+local pegl = ds.auto'pegl'
+
+local KW, N, NUM, HEX; ds.auto(testing)
+
+T.escape = function()
+  T.eq('foo \\[bar\\] \\\\ baz', M.escape'foo [bar] \\ baz')
+end
+
+T.code = function()
+  local hub = M._hasUnbalancedBrackets
+  T.eq(false, hub'abc')
+  T.eq(false, hub'[[a]b]')
+  T.eq(true, hub'['); T.eq(true, hub']')
+  T.eq(true, hub'[]]')
+
+  local hashes = M._codeHashes
+  T.eq(nil, hashes'foo bar')
+  T.eq(0,   hashes'foo]bar')
+  T.eq(1,   hashes'[###foo]#bar')
+
+  T.eq('[$some [code]]', M.code'some [code]')
+  T.eq('[#some [code]#', M.code'some [code')
+end
+
+T.simple = function()
+  M.assertParse('hi there', {'hi there'})
+  M.assertParse('hi there [*bob]', {
+    'hi there ', {'bob', b=true},
+  })
+  M.assertParse('The [$inline code]', {
+    'The ', {'inline code', code=true},
+  })
+  M.assertParse('For [$inline], [$balanced[brackets] are okay]', {
+    'For ', {code=true, 'inline'}, ', ', { code=true,
+      'balanced[brackets] are okay'
+    },
+  })
+  M.assertParse('[$inline code].    [$balanced[brackets] are allowed]', {
+    {'inline code', code=true},
+    '.    ',
+    {'balanced[brackets] are allowed', code=true},
+  })
+
+  M.assertParse('multiple\n [_lines]\n\n  with [*break]', {
+    'multiple\n', {'lines', u=true},
+    '\n', {br=true},
+    'with ', {'break', b=true},
+  })
+  M.assertParse('has \\[ and \\] in it\n\\and \\\\foo', {
+    'has ', '[ and ', '] in it\n', '\\and ', '\\foo',
+  })
+
+  M.assertParse('with \\[[@foo]\\] okay', {
+    'with ', '[', {'foo', clone='foo'}, '] okay',
+  })
+
+  M.assertParse('empty [{}block works].', {'empty ', {'block works'}, '.'})
+end
+
+T.block = function()
+  M.assertParse([[
+Some code:
+[##
+This is a bit
+  of code.
+]##
+]], {
+    "Some code:\n",
+    {"\nThis is a bit\n  of code.\n", code=true, block=true},
+    '\n',
+  })
+
+end
+
+T.attrs = function()
+  pegl.assertParse{dat='i', spec=M.attr, expect={
+      'i', pegl.EMPTY, kind='keyval',
+    },
+  }
+  pegl.assertParse{dat='i}', spec=M.attrs,
+    expect={kind='attrs',
+      {'i', pegl.EMPTY, kind='keyval'},
+      KW'}',
+    },
+  }
+  M.assertParse('[,some] [{i}italic] blocks', {
+    {'some', i=true}, ' ', {'italic', i=true}, ' blocks'
+  })
+  M.assertParse('go to [/the/right] path', {
+    'go to ',
+    {'the/right', path='the/right'},
+    ' path',
+  })
+end
+
+T.quote = function()
+  M.assertParse([[
+A quote:
+["We work with being,
+  but non-being is what we use.
+
+  -- Tao De Ching, Stephen Mitchel
+]
+]], {
+    'A quote:\n',
+    { quote=true,
+      "We work with being,\n",
+      "but non-being is what we use.\n",
+      {br=true},
+      "-- Tao De Ching, Stephen Mitchel\n",
+    },
+    '\n',
+  }, true)
+end
+
+T.list = function()
+  M.assertParse([[
+A list:[+
+* first item
+* second item:[+
+  * sub first
+  * sub second
+  ]
+
+* third item
+]
+]],
+  {
+    "A list:", { list=true,
+      {"first item"},
+      {
+        "second item:", { list=true,
+          {"sub first"}, {"sub second"},
+        },
+        "",
+      },
+      {"third item"},
+    }, "\n"
+  },
+  true)
+
+end
+
+T.nested = function()
+  M.assertParse([[
+[+
+* list item
+
+  [##
+  with inner code
+  ]##
+]
+]],
+  {
+    { list=true,
+      {
+        "list item\n",
+        {br=true},
+        { block=true, code=true,
+          "\n", "with inner code\n",
+        }, ""
+      },
+    }, "\n"
+  }, true)
+
+end
+
+
+T.table = function()
+  local doc = [[
+[{table}
+# [*h]1     | h2   | h3
++ [{}+r1.1] | r1.2 | r1.3
++ [{}|r2.1] | r2.2 | r2.3
+]
+]]
+  local noIndent = M.assertParse(doc,
+  { -- src
+    { table=true,
+      { header=true,
+        {"", {b=true, 'h'}, '1'},
+        {"h2"},
+        {"h3"},
+      },
+      { row = 1,
+        {"", {"+r1.1"}, ""}, -- note: trimToken* causes ""
+        {"r1.2"},
+        {"r1.3"},
+      },
+      { row = 2,
+        {"", {"|r2.1"}, ""},
+        {"r2.2"},
+        {"r2.3"},
+      },
+    },
+    '\n',
+  })
+  local docIndent = [[
+[{table}
+  # [*h]1 | h2   | h3
+  + [{}+r1.1] | r1.2 | r1.3
+  + [{}|r2.1] | r2.2 | r2.3
+]
+]]
+  M.assertParse(docIndent, noIndent)
+end
+
+T.named = function()
+  M.assertParse([[
+[{n=n1 href=hi.com}N1]
+[@n1]
+]],
+  { -- src
+    {'N1', name='n1', href='hi.com'},
+    '\n',
+    {'N1', href='hi.com'},
+    '\n',
+  })
+
+  M.assertParse([[
+[{: href=hi.com}N 2]
+see [@N_2], I like [<@N_2>links]
+]],
+  { -- src
+    {'N 2', name='N_2', href='hi.com'},
+    '\n', 'see ',
+    {'N 2', href='hi.com'}, ', I like ',
+    {'links', href='hi.com'},
+    '\n',
+  })
+end
+
+T.html = function()
+  html.assertHtml('hi [*there] bob', {'hi <b>there</b> bob'})
+  html.assertHtml('hi [*there]\n  newline', {
+    'hi <b>there</b>', 'newline'
+  })
+  html.assertHtml([[
+listing:[+
+* one
+* two[+
+  * three
+  * four
+  ]
+]
+]],{
+    "listing:<ul>",
+      "<li>one</li>",
+      "<li>two<ul>",
+        "<li>three</li>",
+        "<li>four</li>",
+      "</ul></li>",
+    "</ul>",
+  })
+
+  html.assertHtml([[
+[{table}
+# [*h]1 | h2   | h3
++ r1.1  | r1.2 | r1.3
++ r2.1  | r2.2 | r2.3
+]
+]], {
+  "<table>",
+    "<tr>",
+      "<th><b>h</b>1</th>",
+      "<th>h2</th>",
+      "<th>h3</th>",
+    "</tr>",
+    "<tr>",
+      "<td>r1.1</td>",
+      "<td>r1.2</td>",
+      "<td>r1.3</td>",
+    "</tr>",
+    "<tr>",
+      "<td>r2.1</td>",
+      "<td>r2.2</td>",
+      "<td>r2.3</td>",
+    "</tr>",
+  "</table>",
+  })
+
+  html.assertHtml([[
+Some [$inline code] and: [##
+code 1
+code 2
+]##
+next line.
+]], {
+  "Some <code>inline code</code> and: <code class=\"block\">code 1",
+  "code 2</code>",
+  "next line."
+})
+end
+
+T.term = function()
+  local W = Writer; local w = W{}
+  local sty = term{
+    '[$code] not code',
+    out=fmt.Fmt{to=w}
+  }
+  T.eq(W{'code not code', ''}, w)
+
+  ds.clear(w)
+  local _, node, p = term.convert([[
+[{h1}Heading 1]
+Some text
+... more text
+
+Code:
+[{## lang=lua}
+function foo() return 'hello world' end
+]##
+
+[*bold] [,italic] [/path/to/thing] [+
+  * item 1
+  * item 2 [$with code]
+]
+the end
+]], sty)
+local expect =
+"########################################\
+# Heading 1\
+Some text\
+... more text\
+\
+Code:\
+\
+function foo() return 'hello world' end\
+\
+bold italic path/to/thing \
+  * item 1\
+  * item 2 with code\
+the end\
+"
+  T.eq(expect, table.concat(w, '\n'))
+
+  ds.clear(w)
+local _, node, p = term.convert(
+--"[{h1}[:doc_test] [/lib/doc/test.lua:1] [@Ty<doc_test>]]\
+"[{h1}[:doc_test] [/lib/doc/test.lua:1] [@Ty<doc_test>] ]\
+[{table}\
++ [*Methods, Etc]\
++ [:Example]      [@Ty<Example>]       | [/lib/doc/test.lua:11]\
++ [:__name]       [@string]            | \
+]", sty)
+  local expect =
+"########################################\
+# doc_test lib/doc/test.lua:1 Ty<doc_test> \
+\
+  + Methods, Etc\
+  + Example      Ty<Example>\9lib/doc/test.lua:11\
+  + __name       string\9 "
+  T.eq(expect, table.concat(w, '\n'))
+end
+
+
+T.doc = function()
+  -- local d = require'doc'.docstr(Mt.A)
+  -- M.parse(d)
+end

--- /dev/null
+++ cmd/doc/PKG.lua
@@ -0,0 +1,9 @@
+name    = 'doc'
+version = '0.1-0'
+url     = 'git+http://github.com/civboot/civlua'
+homepage = "https://lua.civboot.org#Package_doc"
+doc     = 'README.cxt'
+srcs = {
+  doc = 'doc.lua',
+  ['doc.lua'] = 'lua.lua',
+}

--- /dev/null
+++ cmd/doc/README.cxt
@@ -0,0 +1,24 @@
+Get documentation on any Lua object. Includes documentation for several items
+in the lua stdlibrary.
+
+["Note: This requires the PKG protocol to be installed, see [/lib/pkg]]
+
+Making a library's types self-documenting is easy:
+
+[{## lang=lua}
+local G = G or _G
+-- My module docs
+local M = G.mod and mod'myModName' or {}
+
+--- my fn docs in [$cxt]
+M.myFn = function(a, b) --> string
+  -- do stuff
+end
+]##
+
+See [@Package_pkg] and [@Package_cxt] for more details.
+
+[*Other Resources] [+
+* Lua API reference: [<https://www.lua.org/manual>]
+* Tutorial style documentation: [<https://www.lua.org/pil/contents.html>]
+]

--- /dev/null
+++ cmd/doc/doc.lua
@@ -0,0 +1,484 @@
+--- Get documentation for lua types and syntax.
+--- Examples: [{## lang=lua}
+--- doc{string.find}
+--- doc'for'
+--- doc'myMod.myFunction'
+--- doc{'someMod', --pkg} -- full pkg documentation
+--- ]##
+---
+--- ["Note: depends on pkg for lookup]
+local M = mod and mod'doc' or setmetatable({}, {})
+MAIN = MAIN or M
+
+assert(PKG_LOC and PKG_NAMES, 'must use pkglib or equivalent')
+
+local pkglib = require'pkglib'
+local shim = require'shim'
+local mty  = require'metaty'
+local fd = require'fd'
+local fmt  = require'fmt'
+local ds   = require'ds'
+local pod = require'pod'
+local pth = require'ds.path'
+local Iter = require'ds.Iter'
+local lines = require'lines'
+local cxt = require'cxt'
+
+local escape = cxt.escape
+local sfmt, srep = string.format, string.rep
+local push, concat = table.insert, table.concat
+local update = table.update
+
+local sfmt = string.format
+
+local INTERNAL = '(internal)'
+local COMMAND_NAME = 'when executed directly'
+
+--- Find the object or name in pkgs
+M.find = function(obj) --> Object
+  if type(obj) ~= 'string' then return obj end
+  return PKG_LOOKUP[obj] or M.getpath(obj)
+      or ds.rawget(G, ds.dotpath(obj))
+end
+
+local objTyStr = function(obj)
+  local ty = type(obj)
+  return (ty == 'table') and mty.tyName(mty.ty(obj)) or ty
+end
+local isBuiltin = function(obj)
+  return pod.isConcrete(obj) or (obj == nil) or (getmetatable(obj) == nil)
+end
+
+local _construct = function(T, d)
+  assert(d.name, 'must set name')
+  assert(d.docTy, 'must set docTy')
+  return mty.construct(T, d)
+end
+
+--- extract the function signature from the code
+local fnsig = function(code) --> string
+  if not code or not code[1] then return end
+  local         s, r = code[1]:match'(%b()).*%-%->%s*(.*)'
+  if not s then s, r = code[1]:match'(%b{}).*%-%->%s*(.*)' end
+  if not s then
+    s, r = code[1]:match'function(%b()).*return%s*(.-)%s*end'
+  end
+  if not s then return end
+  if s and (not r or #r == 0) then r = 'nil' end
+  return (s or '(...)')..(r and sfmt(' -> %s', r) or '')
+end
+
+
+--- Documentation on a single type
+--- These pull together the various sources of documentation
+--- from the PKG and META_TY specs into a single object.
+M.Doc = mty'Doc' {
+  'obj [any]: the object being documented',
+  'name[string]', 'pkgname[string]',
+  'ty [Type]: type, can be string', 'docTy [string]',
+  'path [str]',
+  'main [Doc]: main Args, mostly used for PKG',
+  'meta [table]: metadata, mostly used for PKG',
+  'comments [lines]: comments above item',
+  'fnsig  [string]: function signature',
+  'code   [lines]: code which defines the item',
+  'call   [function]',
+  'fields [table{name=DocItem}]: (for metatys)',
+  'values [table]: raw values that are not the other types',
+  'tys    [table]: table of values',
+  'fns    [table]: methods or functions',
+  'mods   [table]: sub modules (for PKG)',
+  'lvl    [int]: level inside another type (nil or 1)',
+}
+getmetatable(M.Doc).__call = _construct
+M.Doc.__tostring = function(d) return sfmt('Doc%q', d.name) end
+
+M.DocItem = mty'DocItem' {
+  'obj [any]',
+  'name', 'pkgname [string]', 'ty [string]', 'docTy [string]',
+  'path [string]',
+  'fnsig  [string]: function signature',
+  'default [any]', 'doc [string]',
+}
+getmetatable(M.DocItem).__call = _construct
+M.DocItem.__tostring = function(di) return sfmt('DocItem%q', di.name) end
+
+--- return the object's "document type"
+M.type = function(obj)
+  return type(obj) == 'function' and 'Function'
+      or pkglib.isPkg(obj)       and 'Package'
+      or pkglib.isMod(obj)       and 'Module'
+      or mty.isRecord(obj)       and 'Record'
+      or (type(obj) == 'table')  and 'Table'
+      or 'Value'
+end
+
+--- get a Doc or DocItem. If expand is true then recurse.
+M.construct = function(obj, key, expand, lvl) return M._Construct{}(obj, key, expand, lvl) end
+
+--- internal type to construct Doc and DocItems
+M._Construct = mty'_Construct' {
+  'done [table]: objects already documented',
+}
+getmetatable(M._Construct).__call = function(T, t)
+  return mty.construct(T, {done={}})
+end
+
+--- get fields as DocItems removing from t
+local setFields = function(d, t)
+  d.fields = rawget(d.obj, '__fields'); if not d.fields then return end
+  d.fields = update({}, d.fields)
+  local npre = d.name..'.'
+  local fdocs = rawget(d.obj, '__docs') or {}
+  for i, field in ipairs(d.fields) do
+    t[field] = nil
+    local ty = d.fields[field]
+    ty = type(ty) == 'string' and M.cleanFieldTy(ty) or nil
+    d.fields[field] = M.DocItem {
+      name=npre..field, ty=ty, default=rawget(d.obj, field),
+      docTy = 'Field',
+      doc = fdocs[field] and cxt.checkParse(fdocs[field], field),
+    }
+  end
+end
+
+M._Construct.__call = function(c, obj, key, expand, lvl) --> Doc | DocItem
+  assert(obj ~= nil)
+  expand = expand or 0
+  local docTy = assert(M.type(obj))
+  if docTy == 'Package' then return c:pkg(obj, expand) end
+  local name, path = M.modinfo(obj)
+  local d = {
+    obj=obj, path=path, docTy=docTy,
+    name=assert(key or name), pkgname=PKG_NAMES[obj],
+    ty=objTyStr(obj),
+  }
+  if c.done[obj] then return M.DocItem(d) end
+  c.done[obj] = true
+  local comments, code = M.findcode(path)
+  d.fnsig = fnsig(code)
+  if comments then
+    M.stripComments(comments)
+    if #comments == 0 then comments = nil
+    else cxt.checkParse(comments, pth.nice(path)) end
+  end
+  if code     and #code == 0     then code = nil end
+  if expand <= 0 then return M.DocItem(d) end
+  d.lvl, d.comments, d.code = lvl, comments, code
+  d = M.Doc(d)
+  if type(obj) ~= 'table' or docTy == 'Table' or docTy == 'Value' then
+    return d
+  end
+  local mt = getmetatable(obj)
+  if mt ~= nil and type(mt) ~= 'table' then return d end
+
+  d.call = mty.getmethod(obj, '__call')
+  local t = update({}, obj) -- we will remove from t as we go
+  setmetatable(t, nil)
+
+  setFields(d, t)
+
+  -- get other buckets
+  local kpre = d.name..'.'
+  d.fns, d.tys, d.mods, d.values = {}, {}, {}, {}
+  for k, v in pairs(t) do
+    local key = kpre..k
+    if type(v) == 'function' then
+      if PKG_NAMES[v] then d.fns[key] = v; t[k] = nil end
+      -- else keep as "value"
+    elseif pkglib.isMod(v)  then d.mods[key]   = v; t[k] = nil
+    elseif mty.isRecord(v)  then d.tys[key]    = v; t[k] = nil
+    else                         d.values[key] = v
+    end
+  end
+
+  local function finish(attr, lvl)
+    local t = d[attr]; ds.pushSortedKeys(t, fmt.cmpDuck)
+    if #t == 0 then d[attr] = nil; return end
+    for _, k in ipairs(t) do
+      t[k] = c(t[k], k, expand - 1, lvl)
+    end
+  end
+  if d.fields and #d.fields == 0 then d.fields = nil end
+  finish'values'; finish'tys'; finish'mods'
+  finish('fns', (d.docTy == 'Record' or d.docTy == 'Table') and 1 or nil)
+  return d
+end
+
+--- compare so items with [$.] come last in a sort
+local function modcmp(a, b)
+  if a:find'%.' then
+    if not b:find'%.' then return false end -- b is first
+  elseif b:find'%.'   then return true  end -- a is first
+  return a < b
+end
+
+M._Construct.pkg = function(c, pkg, expand) --> Doc
+  local d = M.Doc{
+    docTy = 'Package', name = 'Package '..pkg.name, path = pkg.dir,
+  }
+  d.meta = {
+    summary = pkg.summary, version = pkg.version,
+    repo = pkg.repo, homepage = pkg.homepage,
+  }
+  if pkg.doc then
+    d.comments = assert(lines.load(pth.concat{pkg.dir, pkg.doc}))
+  end
+  if pkg.main then
+    local m = fmt.assertf(
+      M.find(pkg.main), 'PKG %s: main not found', d.name)
+    d.main = c:main(m)
+  end
+  d.mods = pkglib.modules(pkg.srcs)
+  ds.pushSortedKeys(d.mods, modcmp)
+  for i, mname in ipairs(d.mods) do
+    d.mods[mname] = c(M.find(mname), mname, expand - 1)
+  end
+  return d
+end
+
+M._Construct.main = function(c, obj) --> Doc
+  local d = c(obj, nil, 1)
+  return M.Doc {
+    name = d.name, docTy = 'Command',
+    comments = d.comments, fields = d.fields,
+  }
+end
+
+---------------------
+-- Helpers
+
+local VALID = {['function']=true, table=true}
+
+M.modinfo = function(obj) --> (name, loc)
+  if type(obj) == 'function' then return mty.fninfo(obj) end
+  if isBuiltin(obj)          then return type(obj), nil end
+  local name, loc = PKG_NAMES[obj], PKG_LOC[obj]
+  name = name or (type(obj) == 'table') and rawget(obj, '__name')
+  if loc and loc:find'%[' then loc = INTERNAL end
+  return name, loc
+end
+
+M.findcode = function(loc) --> (commentLines, codeLines)
+  if not loc or loc == INTERNAL then return end
+  if type(loc) ~= 'string' then loc = select(2, M.modinfo(loc)) end
+  if not loc or loc:find'%[' then return end
+  local path, locLine = loc:match'(.*):(%d+)'
+  if not path then error('loc path invalid: '..loc) end
+  local l, lines, locLine = 1, ds.Deq{}, tonumber(locLine)
+  local l, lines = 1, ds.Deq{}
+  for line in io.lines(path) do
+    lines:push(line); if #lines > 256 then lines:pop() end
+    if l == locLine then break end
+    l = l + 1
+  end
+  assert(l == locLine, 'file not long enough')
+  lines = ds.reverse(table.move(lines, lines.left, lines.right, 1, {}))
+  local code, comments = {}, {}
+  for l, line in ipairs(lines) do
+    if line:find'^%w[^-=]+=' then
+      table.move(lines, 1, l, 1, code); break
+    end
+  end
+  for l=#code+1, #lines+1 do local
+    line = lines[l]
+    if not line or not line:find'^%-%-%-' then
+      table.move(lines, #code+1, l-1, 1, comments); break
+    end
+  end
+  return ds.reverse(comments), ds.reverse(code)
+end
+
+M.cleanFieldTy = function(ty)
+  return ty:match'^%[.*%]$' and ty:sub(2,-2) or ty
+end
+
+M.stripComments = function(com)
+  if #com == 0 then return end
+  local ind = com[1]:match'^%-%-%-(%s+)' or ''
+  local pat = '^%-%-%-'..string.rep('%s?', #ind)..'(.*)%s*'
+  for i, l in ipairs(com) do com[i] = l:match(pat) or l end
+end
+
+--- get any path with [$.] in it. This is mostly used by help/etc functions
+M.getpath = function(path)
+  require'doc.lua' -- ensure that builtins are included
+  path = type(path) == 'string' and ds.splitList(path, '%.') or path
+  local obj
+  for i=1,#path do
+    local v = obj and ds.rawget(obj, ds.slice(path, i))
+    if v then return v end
+    obj = pkglib.get(table.concat(path, '.', 1, i))
+  end
+  return obj
+end
+
+---------------------
+-- Format to CXT
+
+M.fmtDocItem = function(f, di)
+  local name = di.name and sfmt('[$%s]', escape(di.name or '(unnamed)'))
+  local ty = di.fnsig and sfmt('\\[%s\\]', cxt.code(di.fnsig))
+          or di.ty and sfmt('\\[%s\\]', escape(di.ty)) or ''
+  local path = di.path and sfmt('([{path=%s}src])', escape(pth.nice(di.path)))
+  local default = di.default and ('= '..cxt.code(fmt(di.default)))
+  if path and default then path = '\n'..path end
+  path, default = path or '', default or ''
+  if path:sub(1,1) == '\n' or (di.doc and di.doc ~= '') then
+    f:level(1)
+    f:write(sfmt('%-16s | %s %s%s\n%s', name, ty, default, path, di.doc))
+    f:level(-1)
+  else
+    f:write(sfmt('%-16s | %s %s%s', name, ty, default, path))
+  end
+end
+
+M.fmtAttr = function(f, name, attr)
+  if not attr or not next(attr) then return end
+  local docs, dis = {}, {}
+  for _, k in ipairs(attr) do
+    if mty.ty(attr[k]) == M.Doc then push(docs, k)
+    else push(dis, k) end -- DocItem and values
+  end
+  if #dis > 0 then
+    f:write(sfmt('\n[*%s: ] [{table}', name))
+    for i, k in ipairs(dis) do
+      local v = attr[k]
+      f:write'\n+ '
+      if mty.ty(v) == M.DocItem then M.fmtDocItem(f, v)
+      else f:write(sfmt('[*%s] | %s', k, cxt.code(fmt(v)))) end
+    end
+    f:write'\n]'
+  end
+  if #docs > 0 then
+    for i, k in ipairs(docs) do
+      f:write'\n'; M.fmtDoc(f, attr[k])
+    end
+  end
+end
+
+local HEADERS = {Package=1, Module=2, Record=3, Table=3, Command=2, Value=4}
+M.docHeader = function(docTy, lvl)
+  if docTy == 'Function' then return 3 + (lvl or 0) end
+  return assert(HEADERS[docTy], docTy)
+end
+
+M.fmtMeta = function(f, m)
+  f:write'[{table}'
+  if m.summary then f:write(sfmt('\n+ [*summary] | %s', m.summary)) end
+  f:write(sfmt('\n+ [*version] | [$%s]', m.version or '(no version)'))
+  if m.homepage then f:write(sfmt('\n+ [*homepage] | [<%s>]', m.homepage)) end
+  if m.repo     then f:write(sfmt('\n+ [*repo] | [<%s>]', m.repo)) end
+  f:write'\n]'
+end
+
+M.fmtDoc = function(f, d)
+  local path = d.path and sfmt(' ([{i path=%s}src])', escape(pth.nice(d.path))) or ''
+  local name = d.pkgname or d.name
+  local hname = name and sfmt('[:%s]', name) or '(unnamed)'
+  if d.fnsig then hname = hname..cxt.code(d.fnsig) end
+  f:write(sfmt('[{h%s}%s%s%s]',
+          M.docHeader(d.docTy, d.lvl),
+          d.docTy == 'Package' and '' or (assert(d.docTy)..' '),
+          (d.docTy == 'Command') and COMMAND_NAME or hname,
+          path))
+  if d.meta then M.fmtMeta(f, d.meta) end
+  if d.comments then
+    for i, l in ipairs(d.comments) do f:write('\n', l) end
+  end
+  if d.main then
+    M.fmtDoc(f, d.main)
+  end
+  if d.docTy == 'Table' or d.docTy == 'Value' then
+    if d.code and #d.code > 1 then
+      f:write(cxt.codeblock('\n'..concat(d.code, '\n')..'\n', 'lua'))
+    end
+    return
+  end
+
+  local any = d.fields or d.values or d.tys or d.fns
+  if any or d.mods then f:write'\n' end
+  if d.fields then
+    M.fmtAttr(f, d.docTy == 'Command' and 'Named Args' or 'Fields', d.fields)
+  end
+  if d.values then M.fmtAttr(f, 'Values',  d.values) end
+  if d.tys    then M.fmtAttr(f, 'Records', d.tys) end
+  if d.fns then
+    local name = (d.docTy == 'Record') and 'Methods' or 'Functions'
+    M.fmtAttr(f, name, d.fns)
+  end
+  if d.mods then
+    if any then f:write'\n' end
+    for _, m in ipairs(d.mods) do
+      f:write'\n'; M.fmt(f, d.mods[m])
+    end
+  end
+end
+
+M.fmt = function(f, d)
+  if     mty.ty(d) == M.Doc     then M.fmtDoc(f, d)
+  elseif mty.ty(d) == M.DocItem then M.fmtDocItem(f, d)
+  else error'not a Doc or DocItem' end
+  return f
+end
+
+--- Get documentation for an object or package. Usage: [{## lang=lua}
+---  help 'path.of.object'
+--- ]##
+---
+--- If no path is given shows all available packages.
+M.Args = mty'Args' {
+  'help [bool]: get help',
+  'to   [path]: the output. If ends in [$.html] then auto-converts to html',
+  'pkg  [deep|bool]: if true uses PKG.lua (and all sub-modules).'
+    ..' If "deep" also uses PKG.pkgs',
+  'expand [int|bool]: expand to depth (expand=true means expand=10)', expand=1,
+  'local [bool]: if true only unpacks local pkgs/mods',
+}
+
+local function fmtPkg(f, construct, pkg, expand, deep)
+  -- pkg/ is not itself a PKG... this is a hack
+  if pkg == 'pkg' then pkg = pkglib.loadpkg('lib/pkg', 'pkg') end
+  pkg = pkglib.isPkg(pkg) and pkg
+     or pkglib.getpkg(pkg) or error('could not find pkg: '..pkg)
+  M.fmt(f, construct:pkg(pkg, expand))
+  if deep and pkg.pkgs then
+    for _, dir in ipairs(pkg.pkgs) do
+      local subp = pkglib.loadpkg(dir)
+      f:write'\n\n'
+      fmtPkg(f, construct, subp, expand, deep)
+    end
+  end
+  return pkg
+end
+
+M.main = function(args)
+  args = M.Args(shim.parseStr(args))
+  if args.help then return M.styleHelp(io.fmt, M.Args) end
+  require'doc.lua' -- ensure it is loaded
+  local obj, expand = args[1], args.expand == true and 10 or args.expand
+  assert(obj, 'arg[1] must be the item to find')
+  local to = args.to and shim.file(args.to) or nil
+  local f, c = fmt.Fmt{to=to}, M._Construct{}
+  for _, obj in ipairs(args) do
+    if args.pkg then fmtPkg(f, c, obj, expand, args.pkg == 'deep')
+    else
+      if type(obj) == 'string' then
+        obj = M.find(obj) or error('could not find obj: '..obj)
+      end
+      local name = (type(obj) == 'string') and obj or nil
+      M.fmt(f, c(obj, name, expand))
+    end
+    f:write'\n'
+  end
+  if to then to:flush(); to:close()
+  else
+    require'cxt.term'{table.concat(f), out=io.fmt}
+  end
+end
+getmetatable(M).__call = function(_, args) return M.main(args) end
+
+if M == MAIN then
+  M.main(shim.parse(arg)); os.exit(0)
+end
+return M

--- /dev/null
+++ cmd/doc/lua.lua
@@ -0,0 +1,565 @@
+local G = G or _G
+
+local ERROR = [[
+doc module requires global `mod` function/class, such as one of:
+
+  require'pkg'()
+  mod = require'pkg'.mod
+
+See lib/pkg/README.md for details
+https://github.com/civboot/civlua/tree/main/lib/pkg
+
+Note: also requires PKG_LOC and PKG_NAMES globals to be defined.
+]]
+
+local M = mod and mod'doc.lua' or error(ERROR)
+
+local Keyword = {
+  __name='keyword', __tostring = function() return 'keyword' end
+}
+M.keyword = function() return setmetatable({}, Keyword) end
+
+local undocumented = function(name)
+  local t = {}
+  for k, v in pairs(_G[name]) do
+    k = name..'.'..k; if not rawget(M, k) then t[k] = v end
+  end
+  return t
+end
+
+do
+  local function makemod(name)
+    local m = G[name]
+    setmetatable(m, getmetatable(m) or {__name='Mod<'..name..'>'})
+  end
+
+  makemod'coroutine'
+  makemod'debug'
+  makemod'io'
+  makemod'math'
+  makemod'os'
+  makemod'package'
+  makemod'string'
+  makemod'table'
+  makemod'utf8'
+end
+
+--------------------
+-- Global Functions
+
+--- Get the next key in the table. Used for iterating through tables.
+--- If [$key=nil] returns the first key. Returns [$nil] when [$key] is
+--- the last key.
+M.next = next--(tbl, key) --> nextKey
+
+--- call a function but catch errors. Returns [$ok] followed by the function
+--- results. If not ok, returns the error.
+M.pcall = pcall--(fn, ...) --> ok, fn(...)
+
+--- select elements in varargs [$...] at and after index.
+---
+--- Special value: if [$index='#'] then returns length of [$...]
+M.select = select--(index, ...) -> ...
+
+--- Get the type of [$val]. Possible return values are: [+
+---   * data: nil number string boolean table
+---   * other: function thread userdata
+--- ]
+--- [" See also: metaty.ty(v) for metatypes]
+M.type = type--(val) --> string
+
+--- Sets the metatable on the table which can get gotten with
+--- [$getmetatable] and affects the behavior of operators.
+---
+--- All metamethods: [##
+--- __index    (i.e. t[k])     NOTE: these are only called
+--- __newindex (i.e. t[k] = v)       when key is missing!
+---
+--- __call     (i.e. t())
+--- __tostring (i.e. tostring(t))
+---
+--- +         -        *        /       //        %
+--- __add     __sub    __mul    __div   __idiv    __mod
+---           __unm
+---
+--- &         |        ~        <<      >>        ^
+--- __band    __bor    __bnot   __shl   __shr     __pow
+---
+--- ==        <        <=       #        ..
+--- __eq      __lt     __le     __len    __concat
+---
+--- __name
+--- ]##
+---
+--- [" See also metaty metamethods: __fields   __fmt]
+M.setmetatable = setmetatable-->(t, mt) -> t
+
+--- See setmetatable.
+M.getmetatable = getmetatable--(t) --> mt
+
+--- Convert any value to a string by calling __tostring or using lua's default.
+M.tostring = tostring--(v) --> string
+
+-------------------------------
+-- string
+--- the builtin lua string module.
+---
+--- string literal values can use [+
+---   * [$'single quotes']
+---   * [$"double quotes"]
+---   * [$[==[raw string with any number of = symbols ]==]]
+--- ]
+---
+--- [$\] characters can be used to escape special characters,
+--- except in raw bracketed strings. Common escaped characters
+--- are [$\'] (literal [$']), [$\n] (newline) and [$\t] (tab).
+M.string = string
+
+--- concatenate all items in ... with sep.
+---
+--- Note: this is an addon to from metaty.
+M['string.concat'] = string.concat--(sep, ...) --> string
+
+--- Find the pattern in the subj (subject) string, starting at the index.
+--- returns the si (start index), ei (end index) and match groups
+--- (see [<#string.match>]).
+---
+--- [{## lang=lua}
+--- T.eq({2, 4},       {find('%w+', ' bob is nice')})
+--- T.eq({2, 7, 'is'}, {find(' bob is nice', '%w+ (%w+)')})
+--- ]##
+---
+--- Character classes for matching specific sets: [##
+---   .   all characters
+---   %a  letters
+---   %c  control characters
+---   %d  digits
+---   %l  lower case letters
+---   %p  punctuation characters
+---   %s  space characters
+---   %u  upper case letters
+---   %w  alphanumeric characters
+---   %x  hexadecimal digits
+---   %z  the character with representation 0
+--- ]##
+---
+--- Magic characters, [$.] indicates one character, more indicates many [##
+---     %.     selects a character class or escapes a magic char
+---     (...)  create a group
+---     [...]  create your own character class
+---     [^..]  inversion of [...]
+---     +.     match one or more of previous class  (NOT group)
+---     *.     match zero or more of previous class (NOT group)
+---     ?      match zero or one of previous class  (NOT group)
+---     ^...   if at pat[1], match only beggining of text
+---     ...$   if at pat[#pat], match only end of text
+---     %1-9   matches the previously matched group index EXACTLY
+--- ]##
+M['string.find'] = string.find--(subj, pat, index=1) --> (si, ei, ...matches)
+
+--- Return the capture groups of pat or the whole match if no capture groups.
+--- index: where to start the search and can be negative.
+---
+--- See also: string.find.
+M['string.match'] = string.match--(subj, pat, index=1) --> ...groups
+
+
+--- Return an iterator function that when called returns the next capture group.
+--- index: where to start the search and can be negative.
+---
+--- See also: string.find.
+M['string.gmatch'] = string.gmatch--(subj, pat, index=1) --> iterator()
+
+--- Return substring by index. [$("1234"):sub(3,4) == "34"]
+---
+--- ["Note: This is confusingly named considering string.gsub uses pattern
+---         matching. Such is life.]
+M['string.sub'] = string.sub--(subj, si, ei) --> str[si:ei]
+
+--- Substittue all matches of pattern with repl, returning the new string.
+---
+--- [$repl] can be a: [+
+---  * [@string]: replace with the string except [$%1-9] will be
+---    a matched group from [$pat] and [$%%] is a literal [$%].
+---  * [@table]: the table will be queried for every match using
+---    the first capture as key.
+---  * [$function(...matches) -> string]: the function will be called
+---    with all match groups for each match.
+--- ]
+---
+--- See also: string.find for pattern documentation.
+M['string.gsub'] = string.gsub--(subj, pat, repl, index=1) --> string
+
+--- Format values into a fmt string, i.e: [$format('%s: %i', 'age', 42)]
+---
+--- Directives: [{table}
+---   + [$%%] | literal % char
+---   + [$%d] | decimal
+---   + [$%o] | octal
+---   + [$%x] | hexidecimal (%X uppercase)
+---   + [$%f] | floating point
+---   + [$%s] | string
+--- ]
+---
+--- Directive control structure (ignore spaces): [##
+---   % (specifier width)? directive
+--- ]##
+---
+--- Where [$width] is an integer and [$specifier] can be one of [{table}
+---   + [$+] | right justify to width (the default)
+---   + [$-] | left justify to width
+---   + [$ ] | prefix a positive number with a space
+---   + [$#] | prefix o, x or X directives with 0, 0x and 0X respectively
+---   + [$0] | left-pad a number with zeros
+--- ]
+---
+--- Examples: [{## lang=lua}
+---   sfmt = string.format
+---   T.eq('age: 42',    sfmt('%s: %i',   'age', 42))
+---   T.eq('age:    42', sfmt('%s: %5i',  'age', 42))
+---   T.eq('age: 42,     sfmt('%s: %-5i', 'age', 42))
+---   T.eq('age: 00042', sfmt('%s: %05i', 'age', 42)
+--- ]##
+M['string.format'] = string.format--(fmt: str, ...) --> str
+
+--- Get ASCII (integer) codes for [$s[si:ei]]
+---
+--- Example: [$T.eq({98, 99}, {string.byte('abcd', 2, 3)})]
+M['string.byte'] = string.byte--(str, si=1, ei=si) --> ...ints
+
+-- convert character codes to string and concatenate
+M['string.char'] = string.char-- char(c1, c2, ...) --> string
+
+-- repeat str n times with separator
+M['string.rep'] = string.rep-- rep(str, n, sep) -> string
+
+--- pack the values as bytes into the string using the strtys.
+---
+--- strtys is a string of the form: [{table}
+---   + [$ <  >  =] | (start only) little / big / native endian
+---   + [$ !#     ] | (start only) max alignment = [$#] bytes
+---   + [$ b B    ] | signed / unsigned byte
+---   + [$ h H l L] | native short(h) and long(l) + unsigned vers
+---   + [$ i# I#  ] | signed/unsigned int with [$#] bytes
+---   + [$ f d    ] | native float / double
+---   + [$ T      ] | size_t
+---   + [$ c#     ] | fixed-sized string of [$#] bytes (unaligned)
+---   + [$ z      ] | zero-terminated string        (unaligned)
+---   + [$ s#     ] | counted string of size [$#] bytes
+---   + [$ x      ] | one byte of padding
+---   + [$ Xo     ] | align to option [$o], i.e. [$Xi4]
+---   + [$ j J n  ] | lua Integer / Unsigned / Number
+--- ]
+---
+--- Example: [{## lang=lua}
+--- T.eq(string.pack('>i2i2', 0x1234, 0x5678) == '\x12\x34\x56\x78')]
+--- ]##
+M['string.pack'] = string.pack--(strtys, ...values) -> string
+
+--- See [@string.pack] for the fmt
+M['string.unpack'] = string.unpack--(strtys, str) -> ...
+
+--- Get the size which is used by strtys.
+M['string.packsize'] = string.packsize--(strtys) -> int
+
+--- not documented: see [$string] module
+for k, v in pairs(undocumented'io') do M[k] = v end
+
+-------------------------------
+-- table
+--- the builtin lua table module
+---
+--- Tables act as BOTH a map (of keys -> values) and a list (ordered values
+--- starting at index=1).
+---
+--- You can access the keys with [$t[key]] or if they are a string without
+--- special characters with [$t.key].
+---
+--- Examples: [{## lang=lua}
+--- t = {'first', 'second', 'third', key='hi'}
+--- T.eq('first', t[1])
+--- T.eq('third', t[3])
+--- T.eq('hi',    t.key)
+--- T.eq(#t, 3) -- the length of the "list" part
+--- ]##
+---
+--- [" WARNING: A table's length is defined as ANY index who's next value
+---   is [$nil`]. That means using a table as a list with "holes" likely
+---   won't work for you.
+--- ]
+M.table = table
+
+--- update to with from, return to.
+---
+--- Note: this is an addon from metaty.
+M['table.update'] = table.update--(to, from) --> to
+
+--- concatenate a table of strings with optional separator.
+---
+--- Examples: [{## lang=lua}
+--- concat = table.concat
+--- T.eq(1..' = '..3, concat{1, ' = ', 3})
+--- T.eq('1, 2, 3',   concat({1, 2, 3}, ', ')
+--- ]##
+M['table.concat'] = table.concat--(t, sep='') --> string
+
+--- remove an item from a table, returning it.
+--- The table is shifted if index < #table which may cost up to O(n)
+M['table.remove'] = table.remove--(t, index=#table) --> t[index]
+
+--- sort a table in place using a comparison function [$cmp] who's behavior
+--- must be: [$cmp(a, b) --> makeAFirst]
+M['table.sort'] = table.sort--(list, cmp=lt) --> nil
+
+--- insert or push to table (list-like)
+---
+--- Example: [{## lang=lua}
+--- local push = table.insert
+---   local t = {}
+---
+---   -- push/append behavior
+---   push(t, 'd')            -- {'d'
+---   push(t, 'e')            -- {'d', 'e'}
+---
+---   -- insert behavior
+---   table.insert(t, 'b', 1) -- {'b', 'd', 'e'}
+---   table.insert(t, 'c', 2) -- {'b', 'c', 'd', 'e'}
+---   T.eq({'b', 'c', 'd', 'e'}, t)
+--- ]##
+M['table.insert'] = table.insert
+
+--- Move values from one list to another.
+--- Note that [$si=startIndex] and [$ei=endIndex] (inclusive).
+---
+--- Equivalent to the following, though done in a way
+--- that will properly handle overlapping data: [{## lang=lua}
+---   ti = siTo
+---   for fi=siFrom,eiFrom do
+---     to[ti] = from[fi]; ti = ti + 1
+---   end
+--- ]##
+M['table.move'] = table.move --(from, siFrom, eiFrom, siTo, to=from) -> to
+
+-------------------------------
+-- io module
+
+--- the builtin lua io (input/output) module
+---
+--- Module Functions: [{table}
+--- + [$ input(file=nil)  ->  file  ] |  get/set stdin
+--- + [$ output(file=nil) ->  file  ] |  get/set stdout
+--- + [$ tmpfile() -> file          ] |  note: removed on program exit
+--- + [$ popen()   -> file          ] |  see io.popen
+--- + [$ lines(path or file) -> iter] |  close when done, fail=error
+--- + [$ type(f) -> "[closed ]file" ] |  get whether f is a file
+--- ]
+---
+--- File Methods: [{table}
+--- + [$ read(format="l")  ] | read a file according to format
+--- + [$ lines(format="l") ] | get iterator for reading format
+--- + [$ write(a, b, ...)  ] | write strings a, b, ... in order
+--- + [$ flush()           ] | flush (save) all writes
+--- + [$ seek(whence, offset)] | see seek section below
+--- + [$ setvbuf("no|full|line", sizeHint=appropriateSize)] see function
+--- ]
+---
+--- Format paramater used in read/etc [{table}
+--- + format |  behavior                | (in Lua<=5.2)
+--- + a      |  read all text                        *a
+--- + l      |  read next line, skip EOL             *l
+--- + L      |  read next line, keep EOL             *L
+--- + n      |  read and return a number             *n
+--- + number |  read an exact number of bytes, EOF=nil
+--- + 0      |  EOF=nil, notEOF=''
+--- ]
+---
+--- seek [{table}
+--- + [$ whence="set" ] | offset from beginning of file (0)
+--- + [$ whence="cur" ] | offset from current position
+--- + [$ whence="end" ] | offset from end of file (use negative)
+--- + [$ seek()       ] | get current position
+--- + [$ seek'set'    ] | set to beginning
+--- + [$ seek'end'    ] | set to end
+--- ]
+M.io = io
+
+--- Execute shell command in separate process.
+---
+--- See also: [+
+---   * [$os.execute()]: docs on file:close()
+---   * [/lib/civix][$.sh()]: ergonomic blocking shell.
+--- ]
+M['io.popen'] = io.popen--(command, mode='r|w') -> file
+
+--- not documented: see [$io] module
+for k, v in pairs(undocumented'io') do M[k] = v end
+
+-------------------------------
+-- os module
+
+--- the builtin lua os module
+---
+--- Useful functions: [{table}
+--- + [$exit(rc=0, close=false)] | exit program with return code
+--- + [$date()]                  | get the date. See os.date
+--- + [$execute'command']        | execute command, see os.execute
+--- + [$getenv(varname)]         | get environment variable
+--- + [$remove(path)]            | rm path
+--- + [$rename(old, new)]        | mv old new
+--- + [$tmpname() -> path]       | create temporary file
+--- + [$clock()]                 | seconds used by process (performance)
+--- ]
+---
+--- Recommendations: [+
+--- * use civix.epoch() (nanosec precision) vs os.time() (sec precision)
+--- ]
+M.os = os
+
+--- Execute shell command via C's `system` API. Returns: [+
+---   * ok:      true on command success, false if rc>0
+---   * "exit":  always literal "exit" if command completed
+---   * rc:      the return code of the command
+--- ]
+--- [{## lang=lua}
+---   os.execute'shell command' -> (ok, "exit", rc)
+---   os.execute()              -> isShellAvailable
+--- ]##
+---
+--- Prints whatever was executed. There are no ways to
+--- redirect the output besides piping in the command
+--- string itself.
+---
+--- Recommendation:
+---   For all but the simplest cases use io.popen instead
+M['os.execute'] = os.execute--(string) --> (ok, "exit", rc)
+
+--- not documented: see [$os] module
+for k, v in pairs(undocumented'os') do M[k] = v end
+
+-------------------------------
+-- math
+--- The builtin lua math module.
+M.math = math
+
+M['math.type'] = math.type--(v) --> ("float" | "integer" | nil)
+M['math.max']  = math.max --(x, ...) --> max according to [$<]
+M['math.min']  = math.max --(x, ...) --> min according to [$<]
+M['math.cos']  = math.cos  --(x) --> cos(x) in radians
+M['math.sin']  = math.sin  --(x) --> sin(x) in radians
+M['math.tan']  = math.tan  --(x) --> tan(x) in radians
+M['math.acos'] = math.acos --(x) --> arccos(x) in radians
+M['math.asin'] = math.asin --(x) --> arcsin(x) in radians
+M['math.atan'] = math.atan --(n, d) --> arctan(n / d) in radians
+M['math.exp'] = math.exp --(x) --> e^x (where e is the natural log base)
+--- the maximum value for a Lua integer
+M['math.maxinteger'] = math.maxinteger
+--- the maximum value of any other numeric valuej
+M['math.huge'] = math.huge
+
+--- currently not documented
+for k, v in pairs(undocumented'math') do M[k] = v end
+
+--- [$type] which will return
+---
+---
+
+---------------------
+-- Keywords
+
+--- for is a looping construct with two forms:
+---
+--- Numeric: [{## lang=lua}
+---   for i=si,ei,period do -- period=1 by default
+---     ... do something with i
+---   end
+---
+---   -- is basically the same as
+---   local i = si
+---   while i <= ei do i = i + si
+---     ... do something with i
+---   end
+--- ]##
+---
+--- Generic: [{## lang=lua}
+---   for i, v, etc in (nextfn, state, _index) do
+---     .. do something with i, v, ...
+---   end
+---
+---   -- is almost the same as
+---   while true do
+---     local i, v, etc = nextfn(state, _index)
+---     if i == nil then break end
+---     _index = i -- note: C internal, _index from lua doesn't change
+---     ... code using i, v, etc here
+---   end
+--- ]##
+---
+--- The goal in writing a stateless iterator function is to match this
+--- loop's API as much as possible.
+---
+--- Example rewriting ipairs: [{## lang=lua}
+---   local function rawipairs(t, i)
+---     i = i + 1
+---     if i > #t then return nil end
+---     return i, t[i]
+---   end
+---   local function myipairs_(t)
+---     return rawipairs, t, 0
+---   end
+---   for i, v in myipairs{5, 6, 7} do
+---     iterates through (1, 5) -> (2, 6) -> (3, 7)
+---   end
+--- ]##
+---
+--- Example rewriting pairs using [$next(t, key)]: [{## lang=lua}
+---   function mypairs(t)
+---     return next, t, nil
+---   end
+---   for k, v in mypairs{a=1, b=2, c=3} do
+---     iterates through ('a', 1) -> ('b', 2) -> ('c', 3)
+---   end
+--- ]##
+---
+--- See also: [@metaty.split] is a more complex example.
+M['for'] = function() end
+PKG_LOOKUP['for'] = M['for']
+
+--- [$local x = (expression)]
+---
+--- Define a local (instead of a global) variable. Prefer local variables for
+--- most things unless you are: [+
+--- * modifying the fundamentals of the language (i.e. replacing 'require')
+--- * implementing a "protocol" for libraries to communicate global state
+--- * managing true physical state (i.e. robotics, terminal output, etc)
+--- * you are the top-level application (i.e. a game, CLI, etc) and global state
+---   is the best solution.
+--- ]
+M['local'] = M.keyword()
+PKG_LOOKUP['local'] = M['local']
+
+-- boolean [$true] value
+M['true'] = M.keyword()
+PKG_LOOKUP['true'] = M['true']
+
+-- boolean [$false] value
+M['false'] = M.keyword()
+PKG_LOOKUP['false'] = M['false']
+
+--- [$nil] value, the the absense of a value. Used for: [+
+---   * a variable is not set or has been set to [$nil]
+---   * a table key is not set or has been set to [$nil]
+--- ]
+M['nil'] = M.keyword()
+PKG_LOOKUP['nil'] = M['nil']
+
+-- store items in this module in PKG_* variables
+for k, obj in pairs(M) do
+  local name = PKG_NAMES[obj]
+  if name then
+    local newname = name:sub(9) -- remove "doc.lua."
+    PKG_NAMES[obj] = newname
+    PKG_LOOKUP[name] = nil; PKG_LOOKUP[newname] = obj
+  end
+end
+
+return M

--- /dev/null
+++ cmd/doc/test.lua
@@ -0,0 +1,143 @@
+local M = mod'doc_test'
+
+--- document a fn
+--- another line
+M.exampleFn = function() return end
+
+--- document a metaty
+--- another line
+M.Example  = require'metaty''Example'{
+  'a [int]', a=4,
+}
+M.Example.method = function() end
+
+METATY_CHECK = true
+
+local pkglib = require'pkglib'
+local mty = require'metaty'
+local fmt = require'fmt'
+local pth = require'ds.path'
+local T = require'civtest'
+local doc = require'doc'
+
+T.eq(mod.__newindex, getmetatable(M.Example).__newindex)
+T.eq('doc_test.Example',    PKG_NAMES[M.Example])
+T.eq('cmd/doc/test.lua:11', PKG_LOC[M.Example])
+
+local rmPaths = function(str) return str:gsub('(/.-):%d+', '%1:000') end
+T.eq('blah blah foo/bar.baz:000 blah blah',
+  rmPaths('blah blah foo/bar.baz:100 blah blah'))
+T.eq('a b c/cmd/doc/test.lua:000 def',
+  rmPaths('a b c/cmd/doc/test.lua:11 def'))
+
+local doFmt = function(fn, obj)
+  local f = fmt.Fmt{}
+  fn(f, obj)
+  return rmPaths(table.concat(f))
+end
+
+
+-- This was used to craft the for documentation
+T.pairs = function()
+  local function rawipairs(t, i)
+    i = i + 1
+    if i > #t then return nil end
+    return i, t[i]
+  end
+
+  local function ipairs_(t)
+    return rawipairs, t, 0
+  end
+
+  local e = {1, 2, 10, a=8, hello='hi'}
+  local r = {}; for i, v in ipairs_(e) do r[i] = v end
+  assert(#r == 3)
+  assert(r[1] == 1); assert(r[2] == 2); assert(r[3] == 10);
+
+  local function pairs_(t) return next, t, nil end
+  r = {}; for k, v in pairs_(e) do r[k] = v end
+  assert(#r == 3)
+  assert(r[1] == 1); assert(r[2] == 2); assert(r[3] == 10);
+  assert(r.a == 8);  assert(r.hello == 'hi')
+end
+
+T.findcode = function()
+  local com, code = doc.findcode(M.exampleFn)
+  T.eq({"--- document a fn", "--- another line"}, com)
+  T.eq({"M.exampleFn = function() return end"}, code)
+
+  com, code = doc.findcode(M.Example)
+  T.eq('--- document a metaty', com[1])
+  T.eq('--- another line',      com[2])
+  T.eq([[M.Example  = require'metaty''Example'{]], code[1])
+  T.eq([[  'a [int]', a=4,]], code[2])
+  T.eq('}', code[3])
+end
+
+
+T.doc_fn = function()
+  local res = doc.construct(M.exampleFn, nil, 0)
+  T.eq(
+    "[$doc_test.exampleFn] | \\[[$() -> nil]\\] ([{path=cmd/doc/test.lua:000}src])",
+    doFmt(doc.fmtDocItem, res))
+
+  local res = doc.construct(M.exampleFn, nil, 1)
+  T.eq('Function', res.docTy)
+  T.eq(
+"[{h3}Function [:doc_test.exampleFn][$() -> nil] ([{i path=cmd/doc/test.lua:000}src])]\
+document a fn\
+another line",
+    doFmt(doc.fmtDoc, res))
+end
+
+
+T.doc_ty = function()
+  local res = doc.construct(M.Example, nil, 0)
+  T.eq(
+    "[$doc_test.Example] | \\[Ty<Example>\\] ([{path=cmd/doc/test.lua:000}src])",
+    doFmt(doc.fmtDocItem, res))
+
+  local res = doc.construct(M.Example, nil, 1)
+  T.eq(
+"[{h3}Record [:doc_test.Example] ([{i path=cmd/doc/test.lua:000}src])]\
+document a metaty\
+another line\
+\
+[*Fields: ] [{table}\
++ [$doc_test.Example.a] | \\[int\\] = [$4]\
+]\
+[*Values: ] [{table}\
++ [$doc_test.Example.__docs] | \\[table\\] \
++ [$doc_test.Example.__fieldIds] | \\[table\\] \
++ [$doc_test.Example.__fields] | \\[table\\] \
++ [$doc_test.Example.__name] | \\[string\\] \
+]\
+[*Records: ] [{table}\
++ [$doc_test.Example.__index] | \\[Ty<Example>\\] ([{path=cmd/doc/test.lua:000}src])\
+]\
+[*Methods: ] [{table}\
++ [$doc_test.Example.__fmt] | \\[function\\] ([{path=lib/metaty/metaty.lua:000}src])\
++ [$doc_test.Example.__newindex] | \\[function\\] ([{path=lib/metaty/metaty.lua:000}src])\
++ [$doc_test.Example.__tostring] | \\[function\\] ([{path=lib/metaty/metaty.lua:000}src])\
++ [$doc_test.Example.method] | \\[function\\] ([{path=cmd/doc/test.lua:000}src])\
+]",
+    doFmt(doc.fmtDoc, res))
+end
+
+T.doc_module = function()
+  local dir = 'cmd/doc/test/'
+  local fm = dofile(dir..'docfake.lua')
+
+  local comments, code = doc.findcode(fm)
+  T.eq({
+    "--- fake lua module for testing doc.",
+    "---",
+    "--- module documentation.",
+  }, comments)
+
+  local res = doFmt(doc.fmtDoc, doc.construct(fm, nil, 5))
+  res = res..'\n'
+  pth.write(dir..'docfake.cxt', res) -- uncomment to update, then check diff!
+  local cxt = pth.read(dir..'docfake.cxt')
+  T.eq(cxt, res)
+end

--- /dev/null
+++ cmd/doc/test/docfake.cxt
@@ -0,0 +1,33 @@
+[{h2}Module [:docfake] ([{i path=cmd/doc/test/docfake.lua:000}src])]
+fake lua module for testing doc.
+
+module documentation.
+
+[{h4}Value [:docfake.CONSTANT]]
+[{h3}Table [:docfake.NODOC]]
+[{h4}Value [:docfake.__name]]
+[{h3}Record [:docfake.A] ([{i path=cmd/doc/test/docfake.lua:000}src])]
+Documentation for A
+
+[*Fields: ] [{table}
++ [$docfake.A.a1]  | \[string\] 
+  a1 docs
+  are the best docs
+]
+[{h3}Table [:docfake.A.__docs]]
+[{h3}Table [:docfake.A.__fieldIds]]
+[{h3}Table [:docfake.A.__fields]]
+[{h4}Value [:docfake.A.__name]]
+[*Records: ] [{table}
++ [$docfake.A.__index] | \[Ty<A>\] ([{path=cmd/doc/test/docfake.lua:000}src])
+]
+[{h4}Function [:metaty.fmt] ([{i path=lib/metaty/metaty.lua:000}src])]
+The default __fmt method.
+[{h4}Function [:metaty.newindex] ([{i path=lib/metaty/metaty.lua:000}src])]
+[{h4}Function [:metaty.tostring] ([{i path=lib/metaty/metaty.lua:000}src])]
+The default __tostring method.
+[{h4}Function [:A.meth1][$() -> thing] ([{i path=cmd/doc/test/docfake.lua:000}src])]
+docs for meth1
+[{h3}Function [:docfake.fun1][$() -> thing] ([{i path=cmd/doc/test/docfake.lua:000}src])]
+this is a function.
+it has documentation.

--- /dev/null
+++ cmd/doc/test/docfake.lua
@@ -0,0 +1,26 @@
+--- fake lua module for testing doc.
+---
+--- module documentation.
+local M = mod'docfake'
+
+local mty = require'metaty'
+
+--- documented module constant
+M.CONSTANT = 2
+
+M.NODOC = {3, 4, a=5}
+
+--- this is a function.
+--- it has documentation.
+M.fun1 = function() end --> thing
+
+--- Documentation for A
+M.A = mty'A' {
+  'a1 [string]: a1 docs\n'
+..'are the best docs',
+}
+
+--- docs for meth1
+M.A.meth1 = function() end --> thing
+
+return M

--- /dev/null
+++ cmd/ele/ARCH.md
@@ -0,0 +1,107 @@
+# Architecture
+
+Ele is architected using the MVI (model-view-intent) architecture, also known as
+the "React architecture" from the web library of the same name.
+
+
+```
+   ,_____________________________________________
+   | intent(): keyboard, timer, executor, etc    |
+   `~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
+   /\                                    || Data + events
+   || Data + scheduled                   \/
+  ,__________________   Data + scheduled ,____________________________
+  | view(): paint    | <================ | model(): keybind, actions  |
+  `~~~~~~~~~~~~~~~~~~'                   `~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
+```
+
+The update loop (displayed above) is as follows:
+* Receive a single intent: this can be a keyboard input, a timer firing or an
+  operation function (async function) completing.
+* Execute the model action tied to that event: aka the keybinding or a
+  registered action. This will mutate Data depending on the event. It may also
+  spawn some async opfns (operation functions)
+* Paint the view/s (user-visible) and await the next intent
+
+## Data
+Data holds almost all the "state" for the application, as well as helper
+methods. This includes:
+* The `bufs` which has all open buffers
+* The `root` View (and by extension all Views)
+* The `keys` keybinding "plugin" (builtin)
+* utility methods like `log()`
+
+It does NOT include:
+* `events` fifo buffer
+
+## Actions
+Actions are functions or `__call`-able tables which must be registered in
+`ele.Actions` and must have signature:
+
+```
+function action([self,] data, ev, evsend)
+```
+
+The action body is free to mutate both `data` and `ev` as well as call
+`evsend(newEvent)`. It is also free to call `lap.schedule(...)` to
+schedule coroutines which call `evsend(newEvent)` asynchronously.
+
+Any events scheduled directly by the action will be handled immediately (the LAP
+executor will not be run). The actual implementation of `model()` is:
+
+```
+Ele.model = function(ele)
+  local ev = ele.events:pop()
+  while ev do
+    Actions[ev.action or 'noaction'](ele.data, ev, ele.events)
+    ev = ele.events:pop()
+  end
+end
+```
+
+The actual implementation of `intent()` is basically a specialized LAP executor
+that calls `model()` when any `events` are present.
+
+## Event Records
+Event records MUST be POD (plain old data). This is asserted on by
+`evsend()`.
+
+Events are a table with some fields defined, mainly:
+ * action: the action name that should be executed. This must be
+   registered in `ele.Actions`. See **Action** section above.
+ * cause: (debugging only) a list of keys/etc that led to this action.
+ * other data: used by the action function (this object is its second argument)
+
+## Plugin Architecture
+It is extremely simple to add plugins:
+
+* register relevant `Actions` fields for your plugin. When an event with
+  `action` is emitted then that action will be called by `model()`.
+* (optional) initialize your plugin in `data`
+* (optional) for listening to editor changes register with `ele.changes`, i.e.
+  `push(ele.changes.fileOpened, myPluginFunction)`. It will be called like it
+  is an action for such events.
+* (optional) for listening to real events, schedule your plugin using
+  `lap.schedule(...)` (i.e. the builtin `Keys` plugin does this).
+
+## Keys Builtin Plugin {#keys}
+Keys is a builtin plugin which handles actions associated with modal or chorded
+(aka vim or emacs style) keyboard input sequences. Users assign keybinding
+functions to `Data.bindings` and add binding chains (nested tables) to one of
+the `Data.bindings.modes` tables.
+
+Keybinding functions receive `Data.keys`  as their ONLY argument . `keys` POD,
+see ele/keys.lua for the fields.
+
+The basic operation is that the `keyinput` action walks the bindings in the
+mode, updating `Data.keys.next` until it gets to an action to perform. It then
+calls the binding function, scheduling an event if one is returned.
+
+The binding functions can directly mutate Keys, or they can emit an event which
+calls an action to mutate data or schedule coroutines. Core data is never
+modified by the keybinding itself, which makes logging (and replaying) user
+actions trivial (see `Data.bindings.listen`) which permits recording macros/etc.
+
+The event can have the following special fields:
+* `mode`: if set then `keys.mode` is set to this after the event is emitted.
+  Makes `change`-like commands much simpler.

--- /dev/null
+++ cmd/ele/PKG.lua
@@ -0,0 +1,16 @@
+name    = 'ele'
+version = '0.1-0'
+url     = 'git+http://github.com/civboot/civlua'
+homepage = "https://lua.civboot.org#Package_ele"
+doc     = 'README.cxt'
+srcs = {
+  'ele.lua',
+  'ele/types.lua',
+  'ele/bindings.lua',
+  'ele/edit.lua',
+  'ele/actions.lua',
+  'ele/nav.lua',
+  'ele/Ed.lua',
+  'ele/Session.lua',
+  'ele/testing.lua',
+}

--- /dev/null
+++ cmd/ele/README.cxt
@@ -0,0 +1,20 @@
+Ele: Extendable Lua Editor
+
+Ele is an (**In Development**) extendable lua editor. This is the second
+rewrite, with the original code being in [/experiment/ele].
+
+Ele's primary goals are: [+
+* Implemented in a minimal amount of understandable code. It is the main editor
+  for [@Civboot]
+* Enjoyable and extendable for developers to fit their workflow
+  * undo/redo, syntax highlighting, plugins, user-configurable bindings
+    (supports vim/emacs style), etc.
+* Implements a lua shell (zsh competitor)
+* Can handle any size text file
+]
+
+Non-goals of Ele are: [+
+* focusing on performance against the other goals
+]
+
+See [/ARCH.md] for the current architecture.

--- /dev/null
+++ cmd/ele/design/navigation.md
@@ -0,0 +1,31 @@
+## Navigation
+
+### Opening files
+
+Note: A filelist buffer is just a normal temporary buffer which contains a list
+of files. It also overrides "enter" to perform a goto on the line.
+
+The `goto(string)` function does the following. If it finds a file it opens it
+in an edit buffer. If it finds a directory it opens it in a filelist buffer.
+* Before any of these, if there is a language syntax matcher (i.e. ctags, lsp,
+  etc) then attempts to defer to that.
+* First, attempts to goto the literal string, i.e. `some/path.txt`.
+* Second, removes front/back whitespace and tries again
+* Third treats it like code: and searches for something like
+  `(import|include )? "(?some/kind/of/path.lua)"?`
+* Fourth, uses the above path and determines whether it is `path/like` or `import.like`
+  and tries the above again -- but this time walks the path putting an error
+  message for unfound elements but going to whatever it CAN find.
+  * For instance `import foo.bar.MyClass.myMethod;` would open "MyClass.java"
+    and would post an error message for the missing "myMethod".
+
+Vim-like bindings:
+* `g f` goto file under cursor which is obtained by parsing the line.
+* `g F` same as above but uses trailing numbers to get a line number
+
+Space-f (find) bindings:
+* `space f f`: open an interactive search buffer that uses fd to
+  find files that match the name in the current directory.
+* `space f space`: open a list buffer in CWD
+* `space f .`: open a list buffer in the current file's directory
+

--- /dev/null
+++ cmd/ele/ele.lua
@@ -0,0 +1,57 @@
+-- extendable lua editor
+local M = mod'ele'
+MAIN = MAIN or M
+CWD = CWD or os.getenv'PWD' or os.getenv'CD'
+
+local lap = require'lap'
+local log = require'ds.log'
+local fd = require'fd'
+local ioopen = io.open
+
+-- shim exe function
+M.main = function(args)
+  args = shim.parseStr(args)
+  print'ele exe'
+  local vt = require'vt100'
+  log.info('ele exe', args)
+  -- TODO: handle args
+  local s = args.session or require'ele.Session':user{}
+  local keysend = s.keys:sender()
+
+  local l = require'civix'.Lap{}:run(
+  function() -- setup terminal and kickoff ele coroutines
+    local stderr = assert(ioopen('/tmp/ele.err', 'w'))
+    vt.start(stderr)
+
+    s.ed.display = vt.Term{}
+    print'print after display start'
+    log.info'log after display start'
+    s:handleEvents()
+    lap.schedule(function()
+      LAP_TRACE[coroutine.running()] = true
+      log.info'start term:input()'
+      s.ed.display:input(keysend)
+      log.info'exit term:input()'
+    end)
+    lap.schedule(function()
+      s:draw()
+    end)
+    log.info'ele started'
+  end,
+  function() lap.async() -- setup (async())
+    fd.ioAsync()
+    fd.stdin:toNonblock()
+  end,
+  function() lap.sync() -- teardown (sync())
+    fd.stdin:toBlock()
+    vt.stop()
+    fd.ioSync()
+  end)
+  return s, l
+end
+
+if M == MAIN then
+  M.main(shim.parse(arg)); os.exit(0)
+end
+
+return M

--- /dev/null
+++ cmd/ele/ele/Ed.lua
@@ -0,0 +1,92 @@
+-- defines ele.Ed
+local mty    = require'metaty'
+local ds     = require'ds'
+local path   = require'ds.path'
+local log    = require'ds.log'
+local Gap    = require'lines.Gap'
+local Buffer = require'lines.buffer'.Buffer
+local Edit   = require'ele.edit'.Edit
+local push, pop, concat = table.insert, table.remove, table.concat
+
+-- Ed is the global editor state that actions have access to.
+--
+-- action signature: function(data, event, evsend)
+local Ed = mty'Ed' {
+  'mode  [string]: current editor mode',
+  'modes [table]: keyboard bindings per mode (see: bindings.lua)',
+  'actions [table]: actions which events can trigger (see: actions.lua)',
+  'resources [table]: resources to close when shutting down',
+  'buffers [List]: list of Buffer objects',
+  'edit [Buffer]: the current edit buffer',
+  'view [RootView]: the root view',
+  'display [Term|other]: display/terminal to write+paint text',
+  'run [boolean]: set to false to stop the app', run=true,
+  'ext [table]: table for extensions to store data',
+
+  'error [callable]: error handler (ds.log.logfmt sig)',
+  'warn  [callable]: warn handler',
+  'newDat [callable(text)]: function to create new buffer',
+  newDat = function(f) return f and Gap:load(f) or Gap{path=f} end,
+  'redraw [boolean]: set to true to force a redraw',
+}
+
+Ed.init = function(T, t)
+  t = ds.merge({
+    mode='command', modes={},
+    actions=ds.copy(require'ele.actions'),
+    buffers={},
+    resources={},
+    ext={},
+    redraw = true,
+  }, t or {})
+  require'ele.bindings'.install(t)
+  require'ele.nav'.install(t)
+  return Ed(t)
+end
+
+-- create new buffer from v (path or table of lines)
+-- if v is nil the buffer will be an empty tmp buffer
+--
+-- If v is a string this will first check if a buffer exists at the path.
+Ed.buffer = function(ed, v) --> Buffer
+  if type(v) == 'string' then
+    v = path.abs(v)
+    for _, b in pairs(ed.buffers) do
+      if v == b.dat.path then return b end
+    end
+  end
+  local id = #ed.buffers + 1
+  ed.buffers[id] = Buffer{
+    id=id, dat=ed.newDat(v), tmp=not v and {} or nil
+  }
+  return ed.buffers[id]
+end
+
+-- enter focus mode on a single edit view
+Ed.focus = function(ed, e)
+  if type(e) == 'number' then -- buffer index
+    e = ed.buffers[e] or error('invalid buffer index: '..e)
+  end
+  if mty.ty(e) == Buffer then e = Edit(ed, e)
+  else assert(mty.ty(e) == Edit) end
+  if ed.view then
+    ed.view.container = nil; ed.view:close(ed)
+  end
+  ed.edit, ed.view = e, e
+  return e
+end
+
+-- open path and focus. If already open then use existing buffer.
+Ed.open = function(ed, path) --> edit
+  return ed:focus(ed:buffer(path))
+end
+
+Ed.draw = function(ed)
+  local v, d, e = ed.view, ed.display, ed.edit
+  v.tl, v.tc, v.th, v.tw = 1, 1, d.h, d.w
+  v:draw(d)
+  e:viewCursor()
+  d.l, d.c = e.l, e.c
+end
+
+return Ed

--- /dev/null
+++ cmd/ele/ele/Session.lua
@@ -0,0 +1,117 @@
+local mty = require'metaty'
+-- Session: holds the main objects of an ed session.
+--   This are not directly available to actions/etc
+--   This also makes it easier to setup tests/etc.
+local Session = mty'Session' {
+  'ed [Ed]',
+  'events [Recv]', 'evsend [Send]',
+  'keys [Recv]', 'keysend [Send]',
+  'logf [File]',
+}
+
+local ds = require'ds'
+local log = require'ds.log'
+local lap = require'lap'
+local civix = require'civix'
+local et = require'ele.types'
+local Ed = require'ele.Ed'
+local edit = require'ele.edit'
+local bindings = require'ele.bindings'
+local actions = require'ele.actions'
+
+local yield = coroutine.yield
+
+-- local FRAME = 0.05
+local FRAME = 0.05
+
+Session.init = function(T, s)
+  s = s or {}
+  s.ed = s.ed or Ed:init()
+  s.events = lap.Recv(); s.evsend = s.events:sender()
+  s.keys   = lap.Recv(); s.keysend = s.keys:sender()
+  s.ed:focus(s.ed:buffer())
+  return T(s)
+end
+-- init test session
+Session.test = function(T, ed)
+  local s = T:init(ed)
+  s.ed.error = log.LogTable{}
+  s.ed.warn  = log.warn
+  return s
+end
+-- init (not run) real user session
+Session.user = function(T, ed)
+  local s = T:init(ed)
+  s.ed.error = log.err
+  s.ed.warn  = log.warn
+  return s
+end
+
+
+-- run events until they are exhuasted
+Session.run = function(s)
+  local actions = s.ed.actions
+  while #s.events > 0 do
+    local ev = s.events()
+    log.info('run event %q', ev)
+    if not ev or not ev.action then goto cont end
+    s.ed.redraw = true
+    local act = ev.action; if act == 'exit' then
+      s.ed.error'exit action received'
+      s.ed.run = false
+      break
+    end
+    act = actions[act]; if not act then
+      s.ed.error('unknown action: %q', act)
+      goto cont
+    end
+    local ok, err = ds.try(act, s.ed, ev, s.evsend)
+    if not ok then s.ed.error('failed event %q. %q', ev, err) end
+    ::cont::
+  end
+end
+
+-- send chord of keys and play them (run events)
+-- this is only used in tests
+Session.play = function(s, chord)
+  log.info('play %q', chord)
+  s.keysend:extend(bindings.chord(chord))
+  while (#s.keys > 0) or (#s.events > 0) do yield(true) end
+  log.info('draw %q', chord)
+  s.ed.display:clear(); -- normally part of resize()
+  s.ed.redraw = true; s.ed:draw()
+end
+
+-- Start a user session
+Session.handleEvents = function(s)
+  assert(LAP_ASYNC, 'must be started in async mode')
+  assert(s.ed and s.keys)
+  lap.schedule(function()
+    LAP_TRACE[coroutine.running()] = true
+    bindings.keyactions(s.ed, s.keys, s.evsend)
+  end)
+  lap.schedule(function()
+    LAP_TRACE[coroutine.running()] = true
+    while s.ed.run do
+      s.events:wait()
+      s:run()
+    end
+    log.info'exiting sesssion run + draw'
+  end)
+  return s
+end
+
+-- draw coroutine
+Session.draw = function(s)
+   while s.ed.run do
+     if s.ed.redraw then
+       s.ed.display:resize()
+       s.ed:draw()
+       s.ed.display:draw()
+       s.ed.redraw = false
+     end
+     yield('sleep', FRAME)
+   end
+end
+
+return Session

--- /dev/null
+++ cmd/ele/ele/actions.lua
@@ -0,0 +1,194 @@
+-- Actions builtin plugin
+local M = mod and mod'ele.actions' or {}
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds = require'ds'
+local log = require'ds.log'
+local lines = require'lines'
+local motion = require'lines.motion'
+local et = require'ele.types'
+
+local push, pop = table.insert, table.remove
+local concat    = table.concat
+local sfmt      = string.format
+local min, max  = math.min, math.max
+local callable = mty.callable
+local try = ds.try
+
+----------------------------------
+-- KEYBINDINGS
+
+-- keyinput action.  This handles actual user keyboard inputs as well as
+-- hotkey/etc.
+--
+-- The basic architecture of keys.lua is that the Keys object holds all
+-- state necessary for determining user intent across a chord of keys,
+-- which are pressed in sequence. Typically, these end with the binding
+-- generating an event when all keys are gathered.
+M.keyinput = function(ed, ev, evsend)
+  local mode = ed.modes[ed.mode]; local fallback = mode.fallback
+  local ki, K, err = assert(ev[1], 'missing key'), ed.ext.keys
+  if K.keep then K.keep = nil
+  else           K.chord, K.event, K.next = {}, nil, nil end
+  push(K.chord, ki)
+  log.info('keyinput %q mode=%s', K.chord, ed.mode)
+  local nxt; if K.next then
+    nxt = callable(K.next) and K.next
+          or rawget(K.next, ki)
+  else
+    local emode = ds.get(ed, {'edit', 'modes', ed.mode, ki})
+    nxt = emode and rawget(emode, ki)
+       or rawget(mode, ki)
+       or emode and rawget(emode, 'fallback')
+  end
+  nxt = nxt or fallback
+  if not callable(nxt) then
+    if not type(nxt) == 'table' then
+      K.keep = nil; fmt.errorf('%q is neither fn or table', K.chord)
+    end
+    K.next, K.keep = nxt, true
+    return
+  end
+  log.info(' + keyinput calling %q (%q)', K.chord, nxt)
+  local ok, ev = try(nxt, K)
+  if not ok then ed.error('%q (%s) failed: %q', nxt, concat(K.chord, ' '), ev)
+  elseif ev then
+    log.info(' + keyinput %q -> %q', ki, ev)
+    evsend:pushLeft(ev)
+    if ev.mode then
+      err = et.checkMode(ed, ev.mode); if err then
+        ed.error('%s -> event has invalid mode: %s', n, ev.mode)
+      end
+      ed.mode = ev.mode
+    end
+  end
+  err = K:check(ed); if err then
+    K.keep = nil
+    ed.error('bindings.%s(keys) -> invalid keys: %s', n, err)
+  end
+end
+M.hotkey = M.keyinput
+
+----------------------------------
+-- UTILITY
+
+-- merge action
+-- directly merges ed with event (action key removed)
+M.merge = function(ed, ev)
+  ev.action = nil; ds.merge(ed, ev)
+end
+
+-- chain: push multiple events to the FRONT, effectively
+--   replacing this action with it's children.
+-- Note: supports times
+M.chain = function(ed, ev, evsend)
+  for _=1,ev.times or 1 do evsend:extendLeft(ev) end
+end
+
+-- TODO: decide how I want to do replace mode
+--   probably need an ed:switchMode() function and use
+--   ed.ext.mode table which is cleared on each switch.
+--   Then insert.default just checks ext.mode.replace
+--   to decide to replace instead of insert.
+-- M.replacemode = function(ed)
+--   ed.mode = 'insert'; ed.replace = true
+-- end
+
+----------------------------------
+-- MOVE
+-- This defines the move action
+local DOMOVE = {
+  lines = function(e, _, ev) e.l = e.l + ev.lines end,
+  -- start/end of line/text
+  sol = function(e, line) e.c = 1                  end,
+  sot = function(e, line) e.c = line:find'%S' or 1 end,
+  eol = function(e, line) e.c = #line              end,
+  eot = function(e, line) e.c = line:find'.*%S%s*' or #line end,
+  -- move by word
+  forword  = function(e, line)
+    e.c = motion.forword(line, e.c) or (e.c + 1)
+  end,
+  backword = function(e, line)
+    e.c = motion.backword(line, e.c) or (e.c + 1)
+  end,
+  -- search for character
+  find = function(e, line, ev)
+    e.c = line:find(ev.find, e.c, true) or e.c
+  end,
+  findback = function(e, line, ev)
+    e.c = motion.findBack(line, ev.findback, e.c, true) or e.c
+  end,
+}
+local domove = function(e, ev)
+  local fn = ev.move and DOMOVE[ev.move]
+  if fn      then fn(e, e.buf[e.l], ev)       end
+  if ev.cols then e.c = e.c + ev.cols         end
+  if ev.off  then e.l, e.c = e:offset(ev.off) end
+end
+
+-- move action
+--
+-- set move key to one of:
+--   lines: move set number of lines (set lines = +/- int)
+--   forword, backword: go to next/prev word
+--   sol, eol: go to start/end of line
+--   find, findback: find character forwards/backwards (set find/findback key)
+--
+-- these can additionally be set and will be done in order:
+--   cols, off: move cursor by columns/offset (positive or negative)
+--
+-- Supports: times
+M.move = function(ed, ev)
+  local e = ed.edit
+  log.trace('move %q [start %s.%s]', ev, e.l, e.c)
+  for _=1,ev.times or 1 do domove(e, ev) end
+  e.l, e.c = e:boundLC(e.l, e.c)
+end
+
+----------------------------------
+-- MODIFY
+
+-- insert action
+--
+-- this inserts text at the current position.
+M.insert = function(ed, ev)
+  local e = ed.edit; e:changeStart()
+  e:insert(string.rep(assert(ev[1]), ev.times or 1))
+end
+
+-- remove movement action
+--
+-- This is always tied with a movement (except below).
+-- It performs the movement and then uses the new location
+-- as the "end"
+--
+-- Exceptions:
+-- * lines=0 removes a single line (also supports times)
+M.remove = function(ed, ev)
+  local e = ed.edit; e:changeStart()
+  if ev.lines == 0 then
+    local t = ev.times; local l2 = (t and (t - 1)) or 0
+    log.info('remove lines(0) %s:%s', e.l, e.l + l2)
+    return e:remove(e.l, e.l + l2)
+  end
+  if ev.move == 'forword' then ev.cols = ev.cols or -1 end
+  local l, c = e.l, e.c + (ev.cols1 or 0)
+  M.move(ed, ev)
+  local l, c, l2, c2 = lines.sort(l, c, e.l, e.c)
+  log.info('remove %q: %s.%s -> %s.%s', ev, l, c, l2, c2)
+  if ev.lines then e:remove(l, l2)
+  else             e:remove(l, c, l2, c2) end
+  l, c = motion.topLeft(l, c, l2, c2)
+  e.l = math.min(#e.buf, l); e.c = e:boundCol(c)
+end
+
+----------------------------------
+-- nav: navigation
+
+M.nav = function(ed, ev, evsend)
+  local to = assert(ev[1], 'nav: must provide index 1 for to')
+  to = fmt.assertf(ed.ext.nav[to], 'nav: invalid to=%q', to)
+  to(ed, ev, evsend)
+end
+
+return M

--- /dev/null
+++ cmd/ele/ele/bindings.lua
@@ -0,0 +1,300 @@
+-- Bindings builin plugin
+--
+-- This defines the default keybindings and the function
+-- for handling key inputs.
+local M = mod and mod'ele.keys' or {}
+
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds = require'ds'
+local et = require'ele.types'
+local log = require'ds.log'
+
+local sfmt = string.format
+local push, pop, concat = table.insert, table.remove, table.concat
+local get, set, dp = ds.get, ds.set, ds.dotpath
+local add = ds.add
+
+---------------------------
+-- TYPES
+
+M.Keys = mty'Keys' {
+  "chord [table]: list of keys which led to this binding, i.e. {'space', 'a'}",
+  "event [table]: table to use when returning (emitting) an event.",
+  "next [table|string]: the binding which will be used for the next key",
+  "keep [boolean]: if true the above fields will be preserved in next call",
+}
+
+M.Keys.check = function(k, ele) --> errstring?
+  if k.next == nil then return end
+  return (type(k.next) ~= 'table') and et.checkBinding(k.next)
+    or get(k, {'event', 'action'})
+       and et.checkAction(ele, k.event.action)
+end
+
+---------------------------
+-- Utility Functions and Callable Records
+
+-- space-separated keys to a list, asserting valid keys
+M.chord = function(str) --> keylist
+  local checkKey = et.term.checkKey
+  local keys = {}; for k in str:gmatch'%S+' do
+    push(keys, assert(checkKey(k)))
+  end
+  return keys
+end
+
+M.literal = function(key)
+  return fmt.assertf(et.term.literal(key),
+    'invalid literal: %q', key)
+end
+M.chordstr = function(chord)
+  local s = {}
+  for _, key in ipairs(chord) do push(s, M.literal(key)) end
+  return concat(s)
+end
+
+M.moveAction = function(event)
+  return function(keys)
+    local ev = keys.event or {}
+    ev.action = ev.action or 'move'
+    return ds.update(ev, event)
+  end
+end
+
+-- Return an updated keys.event when called (typically for an action)
+M.Event = mty'Event'{}
+getmetatable(M.Event).__call = mty.constructUnchecked
+getmetatable(M.Event).__index = nil
+M.Event.__newindex = nil
+M.Event.__call = function(a, keys)
+  keys.event = keys.event or {}
+  return ds.update(keys.event, a)
+end
+
+-- Chain of literal events
+M.Chain = mty'Chain'{}
+M.Chain.__call = function(acts, keys)
+  local ev = keys.event or {}; ev.action = 'chain'
+  for i, act in ipairs(acts) do ev[i] = ds.copy(act) end
+  return ev
+end
+
+-- Runs a given key chord (series of keys)
+--   example: command.T = hotkey'd t' -- delete till 
+M.Hotkey = mty'Hotkey' {}
+getmetatable(M.Hotkey).__call = function(T, chord)
+  return mty.construct(T, M.chord(chord))
+end
+M.Hotkey.__call = function(r, keys)
+  local ev = keys.event or {}; ev.action = 'chain'
+  for i, k in ipairs(r) do ev[i] = {action='hotkey', k} end
+  return ev
+end
+
+---------------------------
+-- Default ed.bindings functions
+
+M.exit = M.Event{action='exit'}
+
+M.insertChord = function(keys)
+  return ds.update(keys.event or {}, {
+    M.chordstr(keys.chord), action='insert',
+  })
+end
+M.unboundChord = function(keys)
+  error('unbound chord: '..concat(keys.chord, ' '))
+end
+
+
+M.close       = M.Event{action='close'} -- close current focus
+
+M.insertmode  = M.Event{mode='insert'}
+M.insertsot   = M.Event{mode='insert', action='move', move='sot'}
+M.inserteol   = M.Event{mode='insert', action='move', move='eol', cols=1}
+M.commandmode = M.Event{mode='command'}
+
+do local MA = M.moveAction
+  M.right,   M.left      = MA{off=1},          MA{off=-1}
+  M.forword, M.backword  = MA{move='forword'}, MA{move='backword'}
+  M.up                   = MA{move='lines', lines=-1}
+  M.down                 = MA{move='lines', lines=1}
+  -- start/end of line/text
+  M.sol, M.sot           = MA{move='sol'}, MA{move='sot'}
+  M.eol, M.eot           = MA{move='eol'}, MA{move='eot'}
+end
+
+M.movekey = function(keys)
+  local ev = keys.event or {}
+  ev[ev.move] = M.literal(ds.last(keys.chord))
+  return ev
+end
+
+-- go to the character
+M.find = function(keys)
+  keys.event = keys.event or {}
+  keys.event.action = keys.event.action or 'move'
+  keys.event.move = 'find'
+  keys.next = M.movekey
+  keys.keep = true
+end
+
+-- go to the column before the character
+M.till = function(keys)
+  M.find(keys); keys.event.cols = -1
+end
+
+-- go back to the character
+M.findback = function(keys)
+  M.find(keys)
+  keys.event.move = 'findback'
+end
+
+-- go back to the column after the character
+M.tillback = function(keys)
+  M.findback(keys); keys.event.cols = 1
+end
+
+M.backspace = M.Event{action='remove', off=-1, cols1=-1}
+M.delkey    = M.Event{action='remove', off=1}
+
+-- delete until a movement command (or similar)
+M.delete = function(keys)
+  local ev = keys.event or {}; keys.event = ev
+  if ev.action == 'remove' then
+    ev.lines = 0; return ev
+  end
+  ev.action = 'remove'
+  keys.keep = true
+end
+
+M.change = function(keys)
+  local ev = M.delete(keys); keys.event.mode = 'insert'
+  return ev
+end
+
+-- used for setting the number of times to do an action.
+-- 1 0 d t x: delete till the 10th x
+M.times = function(keys)
+  local ev = keys.event or {}; keys.event = ev
+  ev.times = (ev.times or 0) * 10 + tonumber(ds.last(keys.chord))
+  keys.keep = true
+end
+M.zero = function(keys) -- special: movement if not after a digit
+  local ev = keys.event or {}
+  if not ev.action and ev.times then return M.times(keys) end
+  ev.action, ev.move = ev.action or 'move', 'sol'
+  return ev
+end
+
+---------------------------
+-- KEYBOARD LAYOUT
+
+-- bind chord to function
+-- example: bind(B.insert, 'space a b', function(keys) ... end)
+M.bind = function(b, chord, fn)
+  assert(type(fn) == 'table' or mty.callable(fn),
+    'can only bind to table or callable')
+  chord = (type(chord) == 'string') and M.chord(chord) or chord
+  assert(#chord > 0, 'chord is empty')
+  local i, mpath = 1, {}
+  while i < #chord do
+    mpath[i] = mty.name(b)
+    local key = chord[i]; if not rawget(b, key) then
+      b[key] = mod and mod(concat(mpath)) or {}
+    end
+    b, i = b[key], i + 1
+  end
+  b[chord[i]] = fn
+end
+M.bindall = function(b, map)
+  for chord, fn in pairs(map) do M.bind(b, chord, fn) end
+end
+
+-- Modes
+M.insert  = {}
+M.command = {}
+
+
+-- Navigation
+M.goline  = M.Event{action='nav', 'line'}
+M.listCWD = M.Event{action='nav', 'listcwd'}
+
+-----
+-- INSERT
+M.insert.fallback = M.insertChord
+M.bindall(M.insert, {
+  ['^q ^q'] = M.exit,
+  esc       = M.commandmode,
+  right = M.right, left=M.left, up=M.up, down=M.down,
+  back = M.backspace, del=M.delkey,
+})
+
+-----
+-- COMMAND
+M.command.fallback = M.unboundChord
+M.bindall(M.command, {
+  ['^q ^q'] = M.exit,
+  i = M.insertmode, I=M.insertsot, A=M.inserteol,
+
+  -- movement
+  right = M.right, left=M.left, up=M.up, down=M.down,
+  l     = M.right, h   =M.left, k =M.up, j   =M.down,
+  w=M.forword, b=M.backword,
+  f=M.find, F=M.findback,
+  t=M.till, T=M.tillback,
+  ['^'] = M.sot, ['$'] = M.eol,
+
+  -- times (note: 1-9 defined below)
+  ['0'] = M.zero, -- sol+0times
+
+  d = M.delete, c = M.change,
+
+  -- Navigation
+  -- ['g f']       = M.navFind,
+  ['g l']           = M.goline,
+  -- ['space f f']     = M.navInteractive,
+  ['space f space'] = M.listCWD,
+  -- ['space f .']     = M.listFileDir,
+})
+-- times
+for b=('1'):byte(), ('9'):byte() do M.command[string.char(b)] = M.times end
+
+---------------------------
+-- INSTALL
+
+-- install the builtin keys plugin
+--
+-- Note: this does NOT start the keyactions coroutine
+M.install = function(ed)
+  ed.ext.keys = M.Keys{}
+  ed.modes = ds.merge(ed.modes or {}, {
+      insert=M.insert, command=M.command,
+  })
+end
+
+-- keyactions coroutine.
+-- This should be scheduled with LAP, see user.lua and testing.lua
+M.keyactions = function(ed, keyrecv, evsend)
+  assert(keyrecv:hasSender())
+  log.info('keyactions keyrecv=%q', keyrecv)
+  for key in keyrecv do
+    log.info('key received: %q', key)
+    if key == '^q' then ed.run = false; log.warn('received ^q, exiting') end
+    if not ed.run then break end
+    if key then
+      if type(key) == 'string' then
+        evsend{key, action='keyinput'}
+        log.info('sent key %q', key)
+      else assert(key[1] == 'size')
+        local d = ed.display
+        local ch = (d.h ~= key.h) or (d.w ~= key.w)
+        d.h, d.w = key.h, key.w
+        if ch then ed.redraw = true end
+      end
+    else ed.warn'received empty key' end
+  end
+  log.warn'exited keyactions'
+end
+
+return M

--- /dev/null
+++ cmd/ele/ele/edit.lua
@@ -0,0 +1,167 @@
+local M = mod'ele.edit'
+
+-- #####################
+-- # Edit struct
+local mty    = require'metaty'
+local ds     = require'ds'
+local log    = require'ds.log'
+local motion = require'lines.motion'
+local types = require'ele.types'
+local lines = require'lines'
+
+local push = table.insert
+local span, lsub = lines.span, lines.sub
+local max = math.max
+
+M.Edit = mty'Edit' {
+  'id[int]',
+  'container', -- parent (Window/Model)
+  'canvas',
+  'buf[Buffer]',
+  'l[int]',  l=1,     'c[int]',  c=1,   -- cursor line, col
+  'vl[int]', vl=1,    'vc[int]', vc=1,  -- view   line, col (top-left)
+  'tl[int]', tl=-1,   'tc[int]', tc=-1, -- term   line, col (top-left)
+  'th[int]', th=-1,   'tw[int]', tw=-1, -- term   height, width
+  'fh[int]', fh=0,    'fw[int]', fw=0,  -- force h,w
+  'closed [bool]', closed = false,
+
+  -- override specific keybindings for this buffer
+  'modes [table]',
+}
+
+getmetatable(M.Edit).__call = function(T, container, buf)
+  return mty.construct(T, {
+    id=types.uniqueId(), container=container, buf=assert(buf),
+  })
+end
+
+M.Edit.close = function(e, ed)
+  assert(not e.container, "Edit not removed before close")
+  e.closed = true
+  if e.buf.tmp then
+    e.buf.tmp[e] = nil; if #e.buf.tmp == 0 then
+      ed.buffers[e.id] = nil
+    end
+  end
+end
+M.Edit.__len       = function(e) return #e.buf end
+M.Edit.__tostring  = function(e) return string.format('Edit[id=%s]', e.id) end
+M.Edit.copy        = function(e) return ds.copy(e, {id=T.nextViewId()}) end
+M.Edit.forceHeight = function(e) return e.fh end
+M.Edit.forceWidth  = function(e) return e.fw end
+M.Edit.curLine     = function(e)
+  return e.buf.dat[e.l] end
+M.Edit.colEnd      = function(e) return #e:curLine() + 1 end
+M.Edit.lastLine    = function(e) return e.buf[#e] end
+M.Edit.offset = function(e, off)
+  return lines.offset(e.buf.dat, off, e.l, e.c)
+end
+
+M.Edit.boundLC = function(e, l, c)
+  if l <= 1 then
+    if #e == 0 then return 1, 1 end
+    return 1, ds.bound(c, 1, #e.buf[1] + 1)
+  end
+  l = ds.bound(l, 1, #e)
+  return l, ds.bound(c, 1, #e.buf[l] + 1)
+end
+
+-- bound the column for the line
+M.Edit.boundCol= function(e, c, l)
+  return ds.bound(c, 1, #e.buf[l or e.l] + 1)
+end
+
+-- update view to see cursor (if needed)
+M.Edit.viewCursor = function(e)
+  if e.l > 1 and e.l > #e then error(
+    ('e.l OOB: %s > %s'):format(e.l, #e)
+  )end
+  local l, c = e:boundLC(e.l, e.c)
+  if e.vl > l            then e.vl = l end
+  if l < e.vl            then e.vl = l end
+  if l > e.vl + e.th - 1 then e.vl = l - e.th + 1 end
+  if c < e.vc            then e.vc = c end
+  if c > e.vc + e.tw - 1 then e.vc = c - e.tw + 1 end
+end
+
+-----------------
+-- Mutations: these update the changes in the buffer
+M.Edit.changeStart = function(e) e.buf:changeStart(e.l, e.c) end
+
+M.Edit.changeUpdate2 = function(e)
+  local ch = assert(e.buf:getStart())
+  ch.l2, ch.c2 = e.l, e.c
+end
+M.Edit.append = function(e, msg)
+  local l2 = #e + 1
+  e.buf:append(msg)
+  e.l, e.c = l2, 1
+  e:changeUpdate2()
+end
+
+M.Edit.insert = function(e, s)
+  local b = e.buf
+  b:insert(s, e.l, e.c);
+  e.l, e.c = lines.offset(b.dat, #s, e.l, e.c)
+  -- if causes cursor to move to next line, move to end of cur line
+  -- except in specific circumstances
+  if (e.l > 1) and (e.c == 1) and ('\n' ~= s:sub(#s)) then
+    e.l, e.c = e.l - 1, #b[e.l - 1] + 1
+  end
+  e:changeUpdate2()
+end
+
+M.Edit.remove = function(e, ...)
+  local ch = e.buf:remove(...)
+  e:changeUpdate2()
+end
+
+M.Edit.removeOff = function(e, off, l, c)
+  if off == 0 then return end
+  l, c = l or e.l, c or e.c;
+  local l2, c2 = lines.offset(e.buf.dat, ds.decAbs(off), l, c)
+  if off < 0 then l, l2, c, c2 = l2, l, c2, c end
+  e:remove(l, c, l2, c2)
+end
+
+M.Edit.replace = function(e, s, ...)
+  local l1, c1 = e.l, e.c
+  local l, c = span(...)
+  assert(e.l == l and (not c or c1 == c))
+  local chR = e:remove(...);
+  local chI = e:insert(s)  ;
+  e.l, e.c = l1, c1
+  e:changeUpdate2()
+end
+
+-----------------
+-- Undo / Redo
+M.Edit.undo = function(e)
+  local chs = e.buf:undo(); if not chs then return end
+  local c = assert(chs[1])
+  e.l, e.c = c.l1, c.c1
+end
+M.Edit.redo = function(e)
+  local chs = e.buf:redo(); if not chs then return end
+  local c = assert(chs[1])
+  e.l, e.c = c.l2, c.c2
+end
+
+-----------------
+-- Draw to terminal
+M.Edit.draw = function(e, t, isRight)
+  assert(t); e:viewCursor()
+  local b = lines.box(e.buf.dat,
+    e.vl,            e.vc,
+    e.vl + e.th - 1, e.vc + e.tw - 1)
+  t.text:insert(e.tl, e.tc, b)
+end
+
+-- Called by model for only the focused editor
+M.Edit.drawCursor = function(e, t)
+  e:viewCursor()
+  local c = ds.min(e.c, e:colEnd())
+  t.l, t.c = e.tl + (e.l - e.vl), e.tc + (c - e.vc)
+end
+
+return M

--- /dev/null
+++ cmd/ele/ele/nav.lua
@@ -0,0 +1,48 @@
+-- nav: core navigation
+local M = mod and mod'ele.nav' or {}
+
+local ds = require'ds'
+local lap = require'lap'
+local cx = require'civix'
+local lines = require'lines'
+
+local B = require'ele.bindings'
+
+local dp = ds.dotpath
+
+local isDir = function(p) return p:sub(-1) == '/' end
+
+M.to = mod and mod'ele.nav.to' or {}
+
+M.modes = mod and mod'ele.nav.modes' or {}
+M.modes.insert  = { fallback=function() error'cannot insert in nav list' end }
+M.modes.command = {
+  enter = B.Event{action='nav', 'line'},
+  esc   = B.close,
+}
+
+-- Create a new buffer for nav related actions
+M.navEdit = function(ed) --> new temporary nav buffer
+  local b = ed:buffer(); local e = ed:focus(b); push(b.tmp, e)
+  e.modes = M.modes
+  return e
+end
+
+M.to.listcwd = function(ed)
+  local e = M.navEdit(ed)
+  local d = function() ed.redraw = true end
+  lap:schedule(function()
+    cx.walk({assert(CWD)}, {
+      dir     = function(p) e:append(p..'/\n'); d() end,
+      default = function(p) e:append(p..'\n');  d() end,
+    }, 1)
+  end)
+end
+
+M.to.line = function(ed, ev) eD:open(ed.edit:curLine()) end
+
+M.install = function(ed)
+  ed.ext.nav = ds.merge(ed.ext.nav or {}, M.to)
+end
+
+return M

--- /dev/null
+++ cmd/ele/ele/testing.lua
@@ -0,0 +1,20 @@
+-- helpers for testing ele and related libraries
+local M = mod and mod'ele.testing' or {}
+
+local buffer = require'lines.buffer'
+local eb = require'ele.bindings'
+local Session = require'ele.Session'
+local edit = require'ele.edit'
+
+local push = table.insert
+
+M.SLEEP = 0
+
+M.newSession = function(text)
+  local s = Session:test(); local ed = s.ed
+  push(ed.buffers, buffer.Buffer.new(text))
+  ed.edit = edit.Edit(nil, ed.buffers[1])
+  return s
+end
+
+return M

--- /dev/null
+++ cmd/ele/ele/types.lua
@@ -0,0 +1,58 @@
+local M = mod'ele.types'
+
+local mty    = require'metaty'
+local ds     = require'ds'
+M.term       = require'vt100'
+local sfmt = string.format
+local push, pop, concat = table.insert, table.remove, table.concat
+local get = ds.get
+
+M.ID = 1
+M.uniqueId = function()
+  local id = M.ID; M.ID = M.ID+1; return id
+end
+
+M.checkBinding = function(b)
+  if not mty.callable(b) then
+    return 'binding must be callable'
+  end
+end
+
+M.checkBindings = function(btable, path)
+  path = path or {}; push(path, '<root>')
+  if type(btable) ~= 'table' then error(sfmt(
+    '%s: bindings must be only tables and callables', concat(path)
+  ))end
+
+  local keyError, err = M.term.keyError
+  for k, b in pairs(btable) do
+    path[#path] = k
+    if k == 'fallback' then
+      if not mty.callable(b) then error(sfmt(
+        '%s: fallback must be callable', concat(path)
+      ))end
+      goto continue
+    end
+    err = (type(k) ~= 'string') and 'keys must be str' or keyError(k)
+    if err then return sfmt('%s: %s', concat(path, ' '), err) end
+    if not mty.callable(b) then
+      M.checkBindings(b, path)
+    end
+    ::continue::
+  end
+  pop(path)
+end
+
+M.checkMode = function(data, mode) --> errstring
+  if not data.modes[mode] then
+    return sfmt('modes.%s does not exist', mode)
+  end
+end
+
+M.checkAction = function(data, action) --> errstring
+  if not mty.callable(get(data, {'actions', action})) then
+    return sfmt('actions.%s is not a callable', action)
+  end
+end
+
+return M

--- /dev/null
+++ cmd/ele/resources/Intro.txt
@@ -0,0 +1,28 @@
+intro = [===[
+Welcome to Ele, the extendable lua editor for text and code.
+Ele is a modal editor (similar to vim), which makes it both powerful and fun to
+use.
+
+HOW TO EXIT: press cntl+q twice.
+
+* type "space ? ?" for the help introduction.
+* type "space ? t" to navigate the tree of available options in your current mode.
+
+This buffer will now be used as the command buffer. Basic operation:
+* in insert mode write lua scripts and type "enter enter" to execute one stanza
+  * a stanza is a set of non-empty lines.
+  * Note: this will also add an empty line to the executed stanza.
+* in command mode you may also type "enter" to execute the current stanza
+
+list the current directory with:
+    list''<enter><enter>
+  alternatively in command mode:
+    space f l  (aka find list)
+
+  - use j/k or arrow keys to go up/down to select a file
+  - in command mode, select a file to open by typing "g l" (goto line)
+
+open a file by typing:           o'path/to/file.txt'<enter><enter>
+]===]
+
+

--- /dev/null
+++ cmd/ele/tests/small.lua
@@ -0,0 +1,8 @@
+-- a small lua file for tests
+local M = {}
+
+M.main = function()
+  print'hello world'
+end
+
+return M

--- /dev/null
+++ cmd/ele/tests/test_actions.lua
@@ -0,0 +1,85 @@
+-- Test event handling actions
+
+local fmt = require'fmt'
+local T = require'civtest'
+local ds = require'ds'
+local M = require'ele.actions'
+local edit = require'ele.edit'
+local Ed = require'ele.Ed'
+local Buffer = require'lines.buffer'.Buffer
+
+local newEd = function(lines)
+  return Ed{
+    edit = edit.Edit(nil, Buffer.new(lines)),
+  }
+end
+
+local lines3 =
+  '1 3 5 7 9\n'
+..'  3 5\n'
+..'1 3 5 7 9\n'
+
+T.move = function()
+  local d = newEd(lines3); local e = d.edit
+  local function assertMove(mv, ev, l, c)
+    ev.move = mv; M.move(d, ev)
+    T.eq({l, c}, {e.l, e.c})
+  end
+
+  T.eq({1, 1}, {e.l, e.c})
+
+  -- move some cols
+  assertMove(nil, {cols=1}, 1, 2)
+  assertMove(nil, {cols=-3}, 1, 1)
+
+  -- forword/backword
+  assertMove('forword',  {},        1, 3)
+  assertMove('forword',  {times=2}, 1, 7)
+  assertMove('backword', {},        1, 5)
+  assertMove('forword',  {times=5}, 1, 10)
+
+  -- move lines
+  e.l, e.c = 1, 9; assertMove('lines', {lines=1}, 2, 6)
+  e.l, e.c = 1, 9; assertMove('lines', {lines=2}, 3, 9)
+
+  -- find
+  e.l, e.c = 1, 1
+  assertMove('find',     {find='3'},     1, 3)
+  assertMove('find',     {find='9'},     1, 9)
+  assertMove('findback', {findback='1'}, 1, 1)
+end
+
+T.remove = function()
+  local d = newEd(lines3); local e, b = d.edit, d.edit.buf
+  local function assertRemove(mv, ev, l, c)
+    ev.move = mv; M.remove(d, ev)
+    T.eq({l, c}, {e.l, e.c})
+  end
+
+  T.eq({1, 1}, {e.l, e.c})
+  assertRemove('forword', {}, 1, 1) -- remove word (end at 1.1)
+    T.eq('3 5 7 9', b[1])
+    T.eq('  3 5', b[2])
+  assertRemove('find', {find='7', cols=-1}, 1, 1) -- remove before 7
+    T.eq('7 9', b[1])
+  assertRemove('lines', {lines=0, times=2}, 1, 1) -- remove two lines
+    T.eq('1 3 5 7 9\n', fmt(b.dat))
+  e.c = 4; assertRemove(nil, {off=-1, cols1=-1}, 1, 3) -- backspace delete '3'
+    T.eq('1  5 7 9\n', fmt(b.dat))
+  e.c = 4; assertRemove(nil, {off=-1}, 1, 3) -- backspace delete ' 5'
+    T.eq('1  7 9\n', fmt(b.dat))
+end
+
+T.insert = function()
+  local d = newEd'1 2 3\n4 5 6'; local e, b = d.edit, d.edit.buf
+  local function assertInsert(txt, ev, l, c)
+    ev[1] = txt; M.insert(d, ev)
+    T.eq({l, c}, {e.l, e.c})
+  end
+  T.eq({1, 1}, {e.l, e.c})
+  assertInsert('4 5 ', {}, 1, 5)
+    T.eq('4 5 1 2 3', b[1])
+    T.eq('4 5 6',     b[2])
+  assertInsert('6 7\n', {}, 2, 1)
+    T.eq('4 5 6 7\n1 2 3\n4 5 6', fmt(b.dat))
+end

--- /dev/null
+++ cmd/ele/tests/test_bindings.lua
@@ -0,0 +1,106 @@
+
+local T = require'civtest'
+local mty = require'metaty'
+local ds = require'ds'
+local lap = require'lap'
+local M = require'ele.bindings'
+local et = require'ele.types'
+local Ed = require'ele.Ed'
+local keyinput = require'ele.actions'.keyinput
+
+local push = table.insert
+
+local actions = {
+  insert=ds.noop, move=ds.noop, remove=ds.noop, merge=ds.noop,
+}
+
+local events = function()
+  local e = {}; return e, function(v) push(e, v) end
+end
+
+T.chords = function()
+  T.eq({'space', 'a', 'b'}, M.chord'space a b')
+
+  T.eq('a b', M.chordstr{'a', 'space', 'b'})
+  T.eq('x',   M.chordstr{'x'})
+end
+
+local function newEd(mode)
+  local ed = Ed{
+    mode=mode, modes={}, actions=actions, ext={}
+  }
+  M.install(ed)
+  return ed
+end
+
+T.bindings = function()
+  local data = newEd'insert'
+  et.checkBindings(M.insert)
+  et.checkBindings(M.command)
+end
+
+local function assertKeys(keyinputs, mode, expectKeys, expectEvents)
+  local data = newEd(mode)
+  local events = lap.Recv(); local evsend = events:sender()
+  for _, ki in ipairs(M.chord(keyinputs)) do
+    keyinput(data, {action='keyinput', ki}, evsend)
+  end
+
+  if expectKeys == false then T.eq(nil, data.ext.keys.keep)
+  elseif expectKeys then T.eq(expectKeys, data.ext.keys) end
+  T.eq(expectEvents or {}, events:drain())
+  return data
+end
+
+T.action = function()
+  local d
+  local mode = function(mode) return {mode=mode} end
+  -- Switch between modes
+  d = assertKeys('esc',   'insert', false, {mode'command'})
+    T.eq('command', d.mode)
+    T.eq({'esc'},   d.ext.keys.chord)
+  d = assertKeys('i',     'command', false, {mode'insert'})
+    T.eq('insert', d.mode)
+    T.eq({'i'},    d.ext.keys.chord)
+  d = assertKeys('esc i', 'insert', false,
+    {mode'insert', mode'command'}) -- note: reverse order because pushLeft
+    T.eq('insert',  d.mode)
+    T.eq({'i'},     d.ext.keys.chord)
+
+  -- Insert mode
+  local ins = function(str) return {action='insert', str} end
+  d = assertKeys('a', 'insert', false, {ins'a'})
+    T.eq({'a'}, d.ext.keys.chord)
+  d = assertKeys('space a', 'insert', false,
+    {ins'a', ins' '}) -- note: reverse order because pushLeft
+    T.eq({'a'}, d.ext.keys.chord)
+
+  -- move
+  local move = function(t) t.action = 'move'; return t end
+  assertKeys('l',     'command', false, {move{off=1}})
+  assertKeys('3 l',   'command', false, {move{off=1, times=3}})
+  assertKeys('3 0 l', 'command', false, {move{off=1, times=30}})
+
+  -- remove
+  local rm = function(t) t.action = 'remove'; return t end
+  assertKeys('d l',   'command', false, {rm{off=1}})
+  assertKeys('5 d l', 'command', false, {rm{off=1,  times=5}})
+  assertKeys('3 d d', 'command', false, {rm{lines=0, times=3}})
+
+  local ch = function(t) t.mode = 'insert'; return rm(t) end
+  d = assertKeys('3 c l', 'command', false, {ch{off=1, times=3}})
+    T.eq('insert', d.mode)
+  d = assertKeys('c c',   'command', false, {ch{lines=0}})
+    T.eq('insert', d.mode)
+
+  -- find
+  assertKeys('f x',       'command', false,
+    {move{find='x', move='find'}})
+  assertKeys('1 0 d f x', 'command', false,
+    {  rm{find='x', move='find', times=10}})
+  assertKeys('1 0 d t x', 'command', false,
+    {  rm{find='x', move='find', times=10, cols=-1}})
+
+  -- Event
+  assertKeys('I', 'command', false, {move{move='sot', mode='insert'}})
+end

--- /dev/null
+++ cmd/ele/tests/test_session.lua
@@ -0,0 +1,138 @@
+-- Test display functionality (not mutation)
+
+local T = require'civtest'
+local CT = require'civtest'
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds, lines = require'ds', require'lines'
+local pth = require'ds.path'
+local log = require'ds.log'
+local etest = require'ele.testing'
+local edit = require'ele.edit'
+local Session = require'ele.Session'
+local Buffer = require'lines.buffer'.Buffer
+local Fake = require'vt100.testing'.Fake
+local path = require'ds.path'
+local ixt = require'civix.testing'
+
+local _CWD = CWD
+CWD = path.abs(ds.srcdir()) -- override global
+
+local SMALL = CWD..'small.lua'
+local LINES3 =
+  '1 3 5 7 9\n'
+..' 2 4 6\n'
+..''
+
+local y = function(v) coroutine.yield(v or true) end
+
+local function run(s)
+  while (#s.keys + #s.events > 0) do coroutine.yield(true) end
+end
+
+-- Test{th=5, ..., 'name', function(test) ed = test.s.ed; ... end}
+local Test = mty.record'session.Test' {
+  'th', th=3, 'tw', tw=20,
+  'dat', 'open [path]',
+  's [Session]',
+}
+getmetatable(Test).__call = function(Ty, t)
+  local path = ds.srcloc(1)
+  t = mty.construct(Ty, t)
+  t.s = t.s or Session:test(); local ed = t.s.ed
+  ed.display = Fake{h=t.th, w=t.tw}
+  local name = assert(t[1], 'need name')
+  print('## test_session.Test', name)
+  local testFn = function()
+    if t.dat then
+      lines.inset(ed.edit.buf.dat, t.dat, 1)
+    elseif t.open then ed:open(t.open) end
+    t.s:handleEvents()
+    assert(t[2], 'need [2]=fn')(t)
+    T.eq(log.LogTable{}, ed.error)
+    ed.run = false
+  end
+  ixt.runAsyncTest(function() T.runTest(name, testFn, path) end)
+end
+
+Test{'session', dat='', function(tst)
+  local s, ed, e = tst.s, tst.s.ed, tst.s.ed.edit
+  local b, t = ed.edit.buf, ed.display
+  T.eq('command', ed.mode)
+  T.eq('\n\n', fmt(t))
+
+  s:play'Z' -- unknown
+    T.eq(1, #ed.error)
+    T.matches('unbound chord: Z', fmt(ed.error[1]))
+  ds.clear(ed.error)
+
+  s:play'i'
+    T.eq('insert', ed.mode) -- next mode
+    T.eq(nil, ed.ext.keys.next) -- selected in keyinput
+  T.eq(log.LogTable{}, ed.error)
+
+  s:play'9 space 8'; ed:draw()
+    T.eq('9 8', b.dat[1])
+    T.eq('9 8\n\n', fmt(t))
+  T.eq(log.LogTable{}, ed.error)
+
+  s:play'space 7 return 6'
+    T.eq('9 8 7\n6\n', fmt(t))
+end}
+
+Test{'move', dat=LINES3, function(tst)
+  local s, ed, e = tst.s, tst.s.ed, tst.s.ed.edit
+  T.eq(3, #e.buf)
+  T.eq('command', ed.mode)
+  T.eq('\n\n', fmt(ed.display))
+
+  s:play'' -- draw
+    T.eq('1 3 5 7 9\n 2 4 6\n', fmt(ed.display))
+
+  s:play'j';   T.eq({2, 1}, {e.l, e.c})
+    T.eq(LINES3, fmt(ed.display))
+  s:play'2 k'; T.eq({1, 1}, {e.l, e.c})
+  s:play'$';   T.eq({1, 9}, {e.l, e.c})
+  s:play'j';   T.eq({2, 7}, {e.l, e.c})
+    T.eq(LINES3, fmt(ed.display))
+
+  s:play'0';   T.eq({2, 1}, {e.l, e.c})
+  s:play'2 w'; T.eq({2, 4}, {e.l, e.c})
+  s:play'b';   T.eq({2, 2}, {e.l, e.c})
+  s:play'l ^'; T.eq({2, 2}, {e.l, e.c})
+end}
+
+Test{'backspace', dat=LINES3, function(tst)
+  local s, ed, e = tst.s, tst.s.ed, tst.s.ed.edit
+  local b = e.buf
+  s:play'l l';    T.eq({1, 3}, {e.l, e.c})
+  s:play'i back'; T.eq({1, 2}, {e.l, e.c})
+    T.eq('13 5 7 9', b[1])
+  T.eq('13 5 7 9\n 2 4 6\n', fmt(ed.display))
+end}
+
+Test{'open', open=SMALL, th=9, tw=30, function(tst)
+  local s, ed, e = tst.s, tst.s.ed, tst.s.ed.edit
+  local b, BID = e.buf, 2
+  T.eq(b.id, BID)
+  T.eq(0, #ed.buffers[1].tmp) -- was temporary and was closed
+  T.eq(SMALL, b.dat.path)
+  s:play'' -- draws
+    T.eq('-- a small lua file for tests', b[1])
+    T.eq(pth.read(SMALL), fmt(ed.display))
+  s:play'd f space'
+    T.eq('a small lua file for tests', b[1])
+  e = ed:open(SMALL)
+    T.eq(b.id, BID)
+    assert(rawequal(b, e.buf), 'buf is new')
+    T.eq('a small lua file for tests', b[1]) -- no change to contents
+end}
+
+-- Test{'nav', dat='', function(tst)
+--   local s, ed, e = tst.s, tst.s.ed, tst.s.ed.edit
+--   local b, BID = e.buf, 2
+--   s:play'space f space' -- listCWD
+--     T.eq(BID, b.id) -- opened new buffer
+-- end}
+
+CWD = _CWD

--- /dev/null
+++ cmd/ele/tests/test_term.lua
@@ -0,0 +1,43 @@
+-- Test display functionality (not mutation)
+
+local T = require'civtest'
+local fmt = require'fmt'
+local ds, lines = require'ds', require'lines'
+local et   = require'ele.testing'
+local edit = require'ele.edit'
+local Buffer = require'lines.buffer'.Buffer
+local Fake = require'vt100.testing'.Fake
+
+local lines3 =
+  'line1\n'
+..'  line2\n'
+..'    line3'
+
+local L_2h5w =
+  "line1\n"
+.."  lin\n"
+
+local L_2l3c2h5w =
+  "\n"
+.."  line1\n"
+.."    lin"
+
+T.edit = function()
+  local e = edit.Edit(nil, Buffer.new(lines3))
+  T.eq(3, #e.buf.dat)
+  T.eq(3, #e.buf)
+  T.eq(3, #e)
+  local ft = Fake{h=3, w=10}
+  e.tl, e.tc, e.th, e.tw = 1, 1, 3, 10
+  e:draw(ft, true)
+  T.eq(lines3, fmt(ft))
+
+  e.th, e.tw = 2, 5
+  ft:clear(); e:draw(ft, true)
+  T.eq(L_2h5w, fmt(ft))
+
+  e.tl, e.tc = 2, 3
+  ft:clear(); e:draw(ft, true)
+  T.eq(L_2l3c2h5w, fmt(ft))
+end
+

--- /dev/null
+++ cmd/ff/PKG.lua
@@ -0,0 +1,16 @@
+name    = 'ff'
+version = '0.1-0'
+url     = 'git+http://github.com/civboot/civlua'
+summary  = "find+fix files"
+homepage = "https://lua.civboot.org#Package_ff"
+license  = "UNLICENSE"
+srcs     = { 'ff.lua' }
+main     = 'ff.Main'
+deps = {
+  "lua    ~> 5.3",
+  "pkg    ~> 0.1",
+  "civix  ~> 0.1",
+  "ds     ~> 0.1",
+  "metaty ~> 0.1",
+  "shim   ~> 0.1",
+}

--- /dev/null
+++ cmd/ff/ff.lua
@@ -0,0 +1,233 @@
+local G = G or _G
+
+--- re-imagining of ff using new tech and better args
+local M = G.mod and G.mod'ff' or setmetatable({}, {})
+MAIN = G.MAIN or M
+
+local shim = require'shim'
+local mty  = require'metaty'
+local ds   = require'ds'
+local log  = require'ds.log'
+local pth  = require'ds.path'
+local Iter = require'ds.Iter'
+local civix = require'civix'
+local ac = require'asciicolor'
+
+local sfmt, gsub = string.format, string.gsub
+local push = table.insert
+local construct = mty.construct
+local nice = pth.nice
+
+local fmtMatch, fmtSub
+
+-- TODO: '-' should mean --stdin. Also support stdin
+
+--- find-fix: find (and optionally replace) patterns
+---
+--- Colon args:[+
+--- * [$ r:some/dir/]: same as [$--root=some/dir/]
+--- * [$ p:a_path.*pattern]: same as [$--path=some/dir]
+--- * [$-p:a_path.*pattern]: same as [$--nopath=some/dir]
+--- ]
+---
+--- Examples:[{## sh}
+--- ff some.*pattern  # search recursively in local dir
+--- ff r:some/dir/ some.*pat -not.*pat p:some%.path -p:not%.path]
+--- ]##
+---
+--- ff's replacing functionality is intended to be used incrementally:[+
+--- * use [$--sub=whatever] to see what changes will happen
+--- * only use [$--mut] when everything looks correct
+--- ]
+---
+--- Note that all directories/ always end with [$/]
+M.Main = mty'Main' {
+  'root [list] [$r:path1 r:path2]: list of root paths',
+  'pat  [list] [$any.+pat1 pat2]: list of patterns to find',
+  'nopat [list] [$-notpat]: list of (file-wide) pattern exclusions',
+  'path [list] [$p:%.lua] list of file path patterns',
+  'nopath [list] [$-p:%.bin] list of file path patterns to exclude.\n'
+  .."default: exclude dirs starting with '.'. Disable default by setting "
+  ..'to an empty string, i.e. [$--nopath=]',
+  'sub [string]: the subsitution string to use with pat',
+  'mut [bool]: mutate files (used with sub)',
+  'dirs [bool]: show all non-excluded directories',
+}
+
+
+--- find patterns in path.
+--- If there is a match then the path is logged to [$io.stdout] and the matches
+--- to [$io.fmt].
+M.find = function(path, pats, sub) --> boolean
+  local found, l, find, ms, me, pi, pat = false, 0, ds.find
+  local f, sf = io.fmt, ac.Fmt{to=io.stdout}
+  for line in io.lines(path, 'L') do
+    l, ms, me, pi, pat = l + 1, find(line, pats)
+    if ms then
+      if not found then
+        sf:styled('path', nice(path), '\n'); sf:flush()
+        found = true
+      end
+      fmtMatch(f, l, line, ms, me)
+      if sub then
+        local after = assert(gsub(line, pat, sub))
+        fmtSub(f, line, after)
+      end
+    end
+  end
+  return found
+end
+
+--- perform replacement of [$pats] with [$sub], writing to [$to]
+M.replace = function(path, to, pats, sub)
+  local find, ms, me, pi, pat = ds.find
+  for line in io.lines(path, 'L') do
+    ms, me, pi, pat = find(line, pats)
+    if ms then
+    end
+    to:write(ms and gsub(line, pat, sub) or line)
+  end
+end
+
+--- Get an iterator of matching paths.
+---
+--- ["WARNING: this also writes to io.fmt and io.stdout]
+M.iter = function(args) --> Iter
+  args = M.Main(args)
+  if #args.root == 0 then args.root[1] = pth.cwd() end
+  log.info('ff %q', args)
+  local sf = ac.Fmt{to=io.stdout}
+
+  local w = civix.Walk(args.root)
+  local it, ffind, finds = Iter{w}, M.find, ds.find
+  -- check nopath patterns
+  if #args.nopath > 0 then; it:map(function(p, pty)
+    if not finds(p, args.nopath) then return p, pty end
+    if pty == 'dir' then w:skip() end
+  end); end
+  -- show/no-show dirs
+  if args.dirs then;   it:map(function(p, pty)
+      if pty == 'dir' then sf:styled('path', nice(p), '\n') end
+      return p, pty
+    end)
+  else
+    it:map(function(p, pty) if pty ~= 'dir' then return p, pty end end)
+  end
+  -- check path patterns
+  if #args.path > 0 then;   it:map(function(p, pty)
+    if (pty == 'dir') or finds(p, args.path) then return p, pty end
+  end); end
+  -- check for nopat
+  if #args.nopat > 0 then
+    local nopat = args.nopat
+    it:map(function(p, pty)
+      if pty == 'dir' then return p, pty end
+      for l in io.lines(p) do
+        if finds(l, nopat) then return end
+      end; return p, pty
+    end)
+  end
+
+  -- find pattern or sub in file
+  local pat, sub = args.pat, args.sub
+  if #pat > 0 then
+    it:map(function(p, pty)
+      if (pty == 'dir') or ffind(p, pat, sub) then return p, pty end
+    end)
+  end
+
+  -- perform actual replacement mutation
+  if sub and args.mut then
+    local replace = M.replace
+    it:map(function(p, pty)
+      if pty == 'file' then
+        local subPath = p..'.SUB'
+        local to = assert(io.open(subPath, 'w+'))
+        if to:seek'end' ~= 0 then error(sfmt(
+          '%s already exists', subPath
+        ))end
+        replace(p, to, pat, sub)
+        to:flush(); to:close();
+        civix.mv(subPath, p)
+      end
+      return p, pty
+    end)
+  end
+  return it
+end
+
+-----------------------
+-- Parsing Utils
+
+-- construct main from args
+getmetatable(M.Main).__call = function(T, args)
+  args = shim.parseStr(args)
+  for _, k in ipairs{'root', 'pat', 'nopat', 'path', 'nopath'} do
+    args[k] = shim.list(args[k])
+  end
+  shim.popRaw(args, args.root)
+  M.parseColons(args)
+  if #args.nopath == 0 then args.nopath={'^%..*/', '/%..*/'} end
+  local i = 1; while i <= #args.nopath do
+    if args.nopath[i] == '' then table.remove(args.nopath, i)
+    else i = i + 1 end
+  end
+  return construct(T, args)
+end
+
+local COLON = {['r:']='root', ['p:']='path', ['s:']='pat'}
+--- parse [$c:commands] into t
+M.parseColons = function(args)
+  local no, cmd, si
+  for _, str in ipairs(args) do
+    si = 1; no = str:sub(1,1) == '-'; if no then si = si + 1 end
+    cmd = COLON[str:sub(si, si+1)]
+    if cmd then si = si + 2 else cmd = 'pat' end
+    push(args[(no and 'no' or '')..cmd], str:sub(si))
+  end
+  ds.clear(args)
+end
+
+-----------------------
+-- Logging Utilities
+local linenum = function(l) return sfmt('% 6i ', l) end
+local AFTER = '   --> '
+
+
+local splitMatch = function(str, ms, me) --> beg, mat, end_
+  local beg, mat = str:sub(1,ms-1), str:sub(ms,me)
+  local end_     = str:sub(me+1)
+  local hasNL = str:sub(-1) == '\n'
+  if hasNL then
+    if end_ == '' then mat = mat:sub(1,-2)
+    else end_ = end_:sub(1,-2) end
+  else end_ = end_..'[EOL]' end
+  return beg, mat, end_
+end
+
+M.fmtMatch = function(f, l, str, ms, me)
+  local beg, mat, end_ = splitMatch(str, ms, me)
+  f:styled('line',  linenum(l))
+  f:styled(nil,     beg)
+  f:styled('match', mat)
+  f:styled(nil,     end_, '\n')
+end
+M.fmtSub = function(f, before, after)
+  local si, ei = 1, -1
+  while before:sub(si,si) == after:sub(si,si) do si = si + 1 end
+  while before:sub(ei,ei) == after:sub(ei,ei) do ei = ei - 1 end
+  ei = #after + ei + 1
+  if ei == 0 then return end
+  local beg, mat, end_ = splitMatch(after, si, ei)
+  f:styled('meta', AFTER)
+  f:styled('meta', beg)
+  f:styled(nil,    mat)
+  f:styled('meta', end_, '\n')
+end
+fmtMatch, fmtSub = M.fmtMatch, M.fmtSub
+
+M.main = function(args) M.iter(args):run() end
+getmetatable(M).__call = function(_, args) --> list of paths
+  return M.iter(args):keysTo()
+end
+return M

--- /dev/null
+++ cmd/ff/test.lua
@@ -0,0 +1,135 @@
+-- test for ff
+-- Many of these involve writing some text files and dirs to .out/ff/
+-- and then using it to
+
+local pkg = require'pkglib'
+local shim = require'shim'
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds, lines = require'ds', require'lines'
+local civix  = require'civix'
+local T = require'civtest'
+local ff = require'ff'
+
+local push, sfmt = table.insert, string.format
+
+local dir = '.out/ff/'
+if civix.exists(dir) then civix.rmRecursive(dir) end
+local a = {}; for i=1,100 do push(a, 'a '..i) end
+local b = {}; for i=1,100 do push(b, 'b '..i) end
+
+local NOPATH = {"^%..*/", "/%..*/"}
+civix.mkTree(dir, {
+  ['a.txt'] = table.concat(a, '\n'),
+  b = {
+    ['b1.txt'] = table.concat(b, '\n'),
+    ['b2.txt'] = 'mostly empty',
+  },
+}, true)
+
+local function seekRead(f)
+  f:seek'set'; local s = f:read'*a'
+  f:seek'set'; return s
+end
+
+local function expectSimple(fmt)
+  local t = {}
+  for i=1,9 do push(t, sfmt(fmt, i, i)) end
+  return table.concat(t, '\n')..'\n'
+end
+
+local function simpleSub(fmt, subfmt)
+  local t = {}
+  for i=1,9 do
+    push(t, sfmt(fmt, i, i))
+    push(t, sfmt(subfmt, i))
+  end
+  return table.concat(t, '\n')..'\n'
+end
+
+T.ff_Main = function()
+  local m = ff.Main{'a', 'p:b/c', '-b', '-p:%.ef', 'r:r1/', '--', 'r2/'}
+  T.eq(mty.construct(ff.Main, {
+    root={'r2/', 'r1/'},
+    pat={'a'},    nopat={'b'},
+    path={'b/c'}, nopath={'%.ef'},
+  }), m)
+
+  local m = ff.Main(shim.parse{'a', '--sub=b', 'p:dir/',
+                                '--', 'root/', '--weird'})
+  T.eq(mty.construct(ff.Main, {
+    root={'root/', '--weird'},
+    pat={'a'},    nopat={},
+    path={'dir/'}, nopath=NOPATH,
+    sub = 'b',
+  }), m)
+end
+
+local function runFF(args) --> ok, paths, stdout, stderr
+  local ll = LOGLEVEL; LOGLEVEL = 0
+  local f, out = fmt.Fmt{to=io.tmpfile()}, io.tmpfile()
+  local iofmt, ioout = io.fmt, io.stdout
+  io.fmt, io.stdout = f, out
+  local ok, paths = ds.try(ff, args)
+  io.fmt, io.stdout = iofmt, ioout
+  f.to:seek'set'; out:seek'set'
+  LOGLEVEL = ll
+  return ok, paths, out:read'a', f.to:read'a'
+end
+
+local function testA()
+  local ok, res, stdout, stderr = runFF{'-p:', 'a %d1', '--', dir}
+  assert(ok, res)
+  T.eq({dir..'a.txt'}, res)
+  T.eq(dir..'a.txt\n', stdout)
+  T.eq(expectSimple'    %i1 a %i1', stderr)
+
+  -- do without -p: means .out/ never gets searched
+  -- (because of default)
+  local ok, res, stdout, stderr = runFF{'a %d1', '--', dir}
+  assert(ok, res)
+  T.eq({}, res); T.eq('', stdout); T.eq('', stderr)
+end
+
+T.ff_find = function()
+  testA()
+
+  local bArgs = {'-p:', 'b %d1', '--', dir}
+  local ok, res, stdout, stderr = runFF(ds.copy(bArgs))
+  assert(ok, res)
+  T.eq({dir..'b/b1.txt'}, res)
+  T.eq(dir..'b/b1.txt\n', stdout)
+  T.eq(expectSimple'    %i1 b %i1', stderr)
+
+  -- adding /b/ does nothing
+  local ok, res, stdout, stderr = runFF{'-p:', 'b %d1', 'p:/b/', 'r:'..dir}
+  assert(ok, res);
+  T.eq({dir..'b/b1.txt'}, res)
+end
+
+T.ff_sub = function()
+  local subArgs = {'-p:', 'a (%d1)', sub='s %1', '--', dir}
+  local ok, res, stdout, stderr = runFF(ds.copy(subArgs))
+  assert(ok, res)
+  T.eq({dir..'a.txt'}, res)
+  T.eq(simpleSub('    %i1 a %i1', '   --> s %i1'), stderr)
+
+  testA() -- not mutated
+
+  -- mutate it with sub
+  local ok, res, stdout, stderr = runFF(ds.copy(subArgs, {mut=true}))
+  assert(ok, res)
+  T.eq({dir..'a.txt'}, res)
+  T.eq(simpleSub('    %i1 a %i1', '   --> s %i1'), stderr)
+
+  -- there are no more 'a %i1'
+  local ok, res, stdout, stderr = runFF(ds.copy(subArgs))
+  assert(ok, res)
+  T.eq({}, res); T.eq('', stderr) -- no matches
+
+  -- there are 's %i1'
+  local ok, res, stdout, stderr = runFF{'-p:', 's %d1', 'r:'..dir}
+  assert(ok, res)
+  T.eq({dir..'a.txt'}, res)
+  T.eq(expectSimple'    %i1 s %i1', stderr)
+end

--- /dev/null
+++ cmd/pkgrock/PKG.lua
@@ -0,0 +1,15 @@
+name    = 'pkgrock'
+version = '0.1-1'
+url     = 'git+http://github.com/civboot/civlua'
+summary  = "pkg utilities to work with rockspecs"
+homepage = "https://lua.civboot.org#Package_pkgrock"
+license  = "UNLICENSE"
+srcs = {'pkgrock.lua'}
+deps = {
+  "lua    ~> 5.3",
+  "pkg    ~> 0.1",
+  "civix  ~> 0.1",
+  "ds     ~> 0.1",
+  "metaty ~> 0.1",
+  "shim   ~> 0.1",
+}

--- /dev/null
+++ cmd/pkgrock/README.md
@@ -0,0 +1,10 @@
+# pkgrock: luarocks for [pkg]
+Script to auto create and upload luarocks from PKG.lua files.
+
+Example (using `civ.lua`)
+```
+, rock lib/pkg --create --gitops='add commit tag' \
+  --gitpush='origin main --tags' --upload=$ROCKAPI
+```
+
+[pkg]: https://github.com/civboot/civlua/tree/main/lib/pkg

--- /dev/null
+++ cmd/pkgrock/pkgrock.lua
@@ -0,0 +1,135 @@
+local M = mod'pkgrock'
+MAIN = MAIN or M
+local mty = require'metaty'
+local fmt = require'fmt'
+
+--- utility for publishing PKG.lua directories. Usage: [##
+---   pkgrock dir1 dir2 ...args]
+--- ]##
+---
+--- Example (sh): [##
+---   , rock lib/pkg --create --gitops='add commit tag' \
+---     --gitpush='origin main --tags' --upload=$ROCKAPI
+--- ]##
+M.Main = mty'pkgrock' {
+  [[create [bool]   creates the rocks from PKG.lua files]],
+  [[gitops [string] one or more: add,commit,tag]],
+  [[gitpush[string] where to push, i.e: 'origin main']],
+  [[upload [string] set to the luarocks api key]],
+}
+
+local pkg = require'pkglib'
+local ds  = require'ds'
+local shim = require'shim'
+local civix = require'civix'
+local push, sfmt = table.insert, string.format
+local pth = require'ds.path'
+
+local UPLOAD = [[luarocks upload %s --api-key=%s]]
+
+M.rockpath = function(dir, tag)
+  return pth.concat{dir, tag..'.rockspec'}
+end
+
+-- make a rock and return rock, rockpath, PKG
+M.makerock = function(styled, dir)
+  local path = dir
+  if not dir:find'/PKG.lua$' then path = pth.concat{dir, 'PKG.lua'} end
+  styled('... loading pkg', path)
+  local p = pkg.load('noname', path)
+  local rock = p.rockspec or {}
+  rock.rockspec_format = rock.rockspec_format or "3.0"
+  rock.package = rock.package or p.name
+  rock.version = rock.version or p.version
+  rock.source = rock.source or {}; local s = rock.source
+  local tag = (rock.package..'-'..rock.version)
+  s.url = s.url or p.url
+  s.dir = s.dir or pth.concat{select(2, pth.last(p.url)), dir} -- luarocks#1675
+  s.tag = s.tag or tag
+  rock.description = rock.description or {}; local d = rock.description
+  d.summary  = d.summary  or p.summary
+  d.homepage = d.homepage or p.homepage
+  d.license  = d.license  or p.license
+  rock.dependencies = rock.dependencies or p.deps
+  rock.build = rock.build or {
+    type = 'builtin', modules = pkg.modules(p.srcs),
+  }
+  local rpath = M.rockpath(dir, tag)
+  styled('... writing rockspec', rpath)
+  local fmt = fmt.Fmt:pretty{
+    to=io.open(rpath, 'w'),
+    indexEnd = ',\n', keyEnd=',\n'
+  }
+  for _, key in ipairs(ds.orderedKeys(rock)) do
+    local val = rock[key]
+    fmt:write(key, ' = ')
+    fmt(val); fmt:write'\n'
+  end
+  fmt.to:close()
+end
+
+M.loadrock = function(dir)
+  local p = pkg.load(dir, pth.concat{dir, 'PKG.lua'})
+  local rpath = M.rockpath(dir, p.name..'-'..p.version)
+  return rpath, pkg.load(p.name, rpath)
+end
+
+local function execute(styler, ...)
+  local cmd = string.format(...)
+  styler:styled('code', 'executing: '..cmd, '\n')
+  if not os.execute(cmd) then error('execute failed: '..cmd) end
+end
+
+M.main = function(t)
+  t = M.Main(shim.parseStr(t))
+  require'civ'.setupFmt()
+  local to = io.fmt
+  local styled = function(...)
+    to:styled('notify', table.concat({...}, '\t'), '\n')
+  end
+  if t.gitops then
+    assert(os.execute'git diff --quiet --exit-code', 'git repo has diffs')
+  end
+  local gitops = ds.Set(shim.listSplit(t.gitops))
+  local tags, rpaths = {}, {}
+  if t.create then for _, dir in ipairs(t) do
+    styled('making rock', dir)
+    M.makerock(styled, dir)
+  end end
+  for _, dir in ipairs(t) do
+    local rpath, rock = M.loadrock(dir)
+    push(rpaths, rpath); push(tags, assert(rock.source.tag))
+  end
+  if gitops.tag then
+    styled'... getting tags'
+    local out = civix.sh'git tag'
+    local exist = ds.Set(require'lines'(out))
+      :union(ds.Set(tags))
+    if not ds.isEmpty(exist) then error(
+      'tags already exist: '..table.concat(ds.orderedKeys(exist), ' ')
+    )end
+  end
+  if gitops.add then for _, rp in ipairs(rpaths) do
+    styled('git add:', rp)
+    execute(io.fmt, [[git add -f %s]], rp)
+  end end
+  if gitops.commit then
+    styled'... commiting'
+    execute(io.fmt, [[git commit -am 'pkgrock: %s']], table.concat(tags, ' '))
+  end
+  if gitops.tag then for _, tag in ipairs(tags) do
+    styled('add tag:', tag)
+    execute(io.fmt, [[git tag '%s']], tag)
+  end end
+  if t.gitpush then
+    styled'... pushing'
+    execute(io.fmt, [[git push %s]], t.gitpush)
+  end
+  if t.upload then for _, rp in ipairs(rpaths) do
+    styled('uploading', rp)
+    execute(io.fmt, UPLOAD, rp, t.upload)
+  end end
+end
+
+if M == MAIN then M.main(shim.parse(arg)); os.exit(0) end
+return M

--- /dev/null
+++ cmd/pvc/NOTES.cxt
@@ -0,0 +1,131 @@
+
+[{h3}COMMIT File]
+One problem normally associated with using patches for VCS is that there is no way to include
+metadata in the commit. Flux solves this problem by requiring a COMMIT file
+to be modifed for every commit. In order to commit, the user must edit the
+COMMIT file by prepending data in the following form:
+[##
+One line description: the next line MUST be blank.
+
+Freeform description, commonly in CXT format. Can be any number
+of lines, but must be followed by a blank line.
+
+ATTRIBUTE=arbitrary one-line attributes in a block at end.
+]##
+
+["The tool requires that all changes to COMMIT are prepended so that conflicts
+  on rebasing are impossible, since rebases are always applied to the end of
+  the trunk.
+]
+
+Flux then automatically adds the following lines to the patch:
+[##
+AUTHOR=<username>
+SIGNATURE=<cryptographic signature of patch>
+HASH=<sha256 hash of repo, excluding COMMIT>
+]##
+
+["The HASH always dictates the end of a COMMIT record.]
+
+When viewing commits on the command line, pvc will format these messages for
+the user.
+
+[{h3}.pvc]
+A file containing a newlineline separated list of lua [$+include] and
+[$-exclude] Lua patterns to display files the user may have forgotten to
+include.
+
+[{h3}Archive]
+A branch is "archived" as a single file for transmission or storage by:[+
+* moving all patch files to the end of [$tar].
+* moving the [$tags] to the end of [$tar].
+* copying (or renaming) [$tar] to [$branch.tar]
+]
+
+[{h3 n=pvc.collapse}Collapsing Patches]
+One advantage over pvc's simplisitic model is that it allows the
+maintainer to collapse patches. For example, say you have the
+following tags: [##
+443 0.1.3
+551 0.1.4
+]##
+
+Say you no longer need the specific changes that occured between [$[444, 551]]
+and just want the diffs between the tagged versions. Flux can create (and
+understand) a single [$444-551] patch file which is all the diffs rolled into
+one, allowing the maintainer to also cleanup the collapsed COMMITS file (note
+that the HASH doesn't include the COMMITS file).
+
+["Note: If a tagged patch is being collapsed it must be the last patch id in a
+  collapsed range to prevent loss of tags.
+]
+
+When clients of your repo see the collapsed commit, they should perform the
+collapse themselves and verify the hash as well as the signature for the new
+commit message.
+
+Flux will create a [$branch.<epochSeconds>.443-550.tar.gz] (or other suitable
+compression) to [$./pvc/backups] to allow rolling back the change. Backup
+files of this kind are also kept when ammending local commits or rebasing to
+head.
+
+There are many benefits of this, the main one being it allows for very
+fine-grained patches during development with the possibility of future repo
+maintence in the future -- one doesn't have to second-guess the best practice
+of using small patches during development when they can always be collapsed at
+a later date.
+
+[{h2}Common Operations]
+Below are common operations and how they are handled by the software.
+
+[{h3}Pull]
+The user runs [$pvc pull root]. For this example the latest commit number is "442":[+
+* pvc will request a tar file from URL containing the current id to the latest id (442)
+* in a temporary directory, pvc will apply each patch sequentially from the
+  current [$id.snap] directory.
+* pvc will move the temporary directory to [$.pvc/root/442.snap/]
+]
+
+[{h3}Checkout]
+The user runs [$pvc checkout branch <id>]
+
+If the suitable [$.pvc/branch/id.snap/] directory does not exist then patches
+are applied (either forward or backward) to create that directory.
+
+The current directory will then be cleared and replaced with files copied from
+the snapshot.
+
+[{h3}Commit]
+This is the simplest: a [$diff] is taken against the latest [$snap/] and stored
+as the next patch id. Then the latest [$snap/] directory is updated.
+
+[{h3}Branch]
+The user runs [$pvc branch name [trunk id]]:[+
+* Create a new directory with the branch name under [$.pvc/]
+* Copy the full contents of the trunk at the patch id into [$.pvc/branch/id.snap/]
+* Create the [$branch] file with the relevant metadata (URL can be a local
+  directory).
+* That's it. The branch is created. Commits will appear in this directory.
+]
+
+[{h3}Merge aka rebase]
+The only allowed merge is a rebase. It effectively involves cherry picking
+changes from the branch onto the trunk, requiring the user to resolve any
+conflicts.
+
+That's it -- and yes cherry picks are slightly complicated, but no this isn't
+that hard.
+
+[{h2}Other Considerations]
+[+
+* On each commit, pvc garbage collects [$id.snap/] directories and moves patch
+  files into [$tar].
+* A pvc repo can be hosted readonly by simply hosting an FTP server or
+  similar. In fact, this is the preferred method of hosting a pvc repo.[+
+  * The write path should be behind an RPC or similar to verify the signature/etc.
+  * Altenatively, it is (obviously?) trivial to merge patches sent by email.
+  ]
+]
+
+
+

--- /dev/null
+++ cmd/pvc/PKG.lua
@@ -0,0 +1,14 @@
+name     = 'pvc'
+version  = '0.1-0'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "Simple version control software"
+homepage = "https://lua.civboot.org#Package_pvc"
+license  = "UNLICENSE"
+doc      = 'README.cxt'
+deps = {
+  "lua    ~> 5.3",
+}
+srcs = {
+  'pvc.lua',
+  'pvc/unix.lua'
+}

--- /dev/null
+++ cmd/pvc/README.cxt
@@ -0,0 +1,290 @@
+[$pvc <cmd>]: patch version control command line utility.
+
+["NOTICE: pvc now works but will have bugs and the API is subject to change.
+  Use at your own risk and always back up work that you are using pvc
+  to track (aka use [<#pvc-git>git and pvc together]).
+]
+
+[{:h3 name=pvc-install}Installation]
+
+Simply follow civlua's [<#Installation>] and add the following to your [$.bashrc]
+[##
+alias pvc="civlua pvc"
+]##
+
+[{:h2 name=pvc-about}About]
+[*pvc] is a version control system similar to git or mercurial, but is ultra
+simple: branches are simply a [$base] followed by a set of unix patches with
+incrementing id. The only fundamental disadvantage (or advantage) of using pvc
+instead of git is that pvc supports only fast-forward merges, which are the
+cleanest and simplest to understand.
+
+Builtin cmds:[+
+* [$init dir]: initialize the [$dir] (default=CWD) for PVC.
+
+* [$diff branch1 branch2]: get the difference (aka the patch) between
+  [$branch1] (default=[$at]) and [$branch2] (default=local). Each value can be
+  either a branch name or a directory which contains a [$.pvcpaths] file.
+
+  ["See [*Usage] for how this can be used for the first commit.]
+
+* [$commit]: add changes to the current branch as a patch and move [$at]
+  forward. The commit message can be written to the COMMIT file or be
+  specified after the [$--] argument (multiple are space-separated).
+
+* [$at [branch]]: if [$branch] is empty then return the active
+  [$branch#id].
+
+  If [$branch] is set then this sets the active [$branch#id], causing the
+  local directory to be updated (default id=tip).
+  ["git equivalent: [$checkout]]
+
+* [$tip [branch]]: get the highest id for branch (default=current).
+
+* [$branch name [from]]: start a new branch of name [$name]. The optional
+  [$from] (default=[$at]) argument can specify a local [$branch#id] or an
+  (external) [$path/to/dir] to graft onto the pvc tree.
+
+  ["the [$from/dir] is commonly used by maintainers to accept patches from
+    contributors.
+  ]
+
+* [$rebase [branch [id]]]: change the base of branch to id.
+  (default branch=current, id=branch base's tip)
+
+* [$grow from]: copy the commits at [$from] onto current branch.
+  The base of [$from] must be the current branch's tip.
+  Then move the branch to backup.
+  ["in git this is a "fast forward" merge]
+
+* [$pvc show [branch#id] --num=10 --full]
+
+  If no branch is specified: show branches. [$full] also displays
+  the base and tip.
+
+  Else show branch#id and the previous [$num] commit messages.
+  With [$full] show the full commit message, else show only
+  the first line.
+
+* [$pvc desc branch [$path/to/new]]
+  get or set the description for a single branch id.
+  The default branch is [$at].
+
+  The new description can be passed via [$path/to/new] or
+  after [$--] (like commit).
+
+* [$pvc squash [branch#id endId]]
+  squash branch id -> endId (inclusive) into a single patch at [$id].
+
+  You can then edit the description by using [$pvc desc branch#id].
+
+* [$export path/ [branch]]: (warning: untested)
+  copy all patch files in the branch directory to
+  [$path/]. If an [$#id] is specified then it is used as the maximum id
+  (defaults: branch=current, id=tip)
+
+  ["the resulting directory is commonly sent to [$tar -zcvf branch.tar.gz path/]
+    and then [$branch.tar.gz] sent to a maintainer to be merged
+  ]
+
+* [$prune branch id]: (warning: untested) remove a branch by moving it to a
+  backup directory. If an id is given then instead move ids from [$[id,tip]]
+  (inclusive) to a backup.
+]
+
+[{h2 name=pvc-init}Initiaize your pvc repo]
+["You may also want to see [<#pvc-git>] to use git for backups]
+
+First install [<#Package_civ>], then run pvc in bash with [$civ.lua pvc <cmd>].
+
+To track an existing directory:[+
+* [$cd path/to/dir] to navigate to the directory
+* [$pvc init] to initialize pvc
+* [$pvc diff] prints the diff of local changes to stderr and untracked files
+  (that are not matched in [$.pvcignore] to stdout. Edit [$.pvcignore]
+  with appropriate entries (see [<#pvcignore>]) to ignore paths you don't
+  want tracked until [$pvc diff] shows only files you want tracked.
+
+  When ready, running [$pvc diff >> .pvcpaths] in bash will track all untracked
+  files.
+  ["Alternatively, manually add files to [$.pvcpaths]]
+* [$pvc commit -- initial pvc commit] will commit your changes to
+  [$.pvc/main/patch/.../1.p].
+]
+
+[{:h3}pvcignore]
+The [$.pvcignore] file should contain a line-separated list of [<#string.find>]
+patterns that should be ignored. Items ending in [$/] will apply to whole
+directories. A common pvc ignore file might look like:
+
+[##
+# directories
+%.git/
+%.out/
+
+# extensions
+%.so$
+
+# binary files
+%./path/to/some_binary
+]##
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
+# .pvc/.gitignore
+**/*.snap/
+backup/
+]##
+
+Finally, add the following to your [$.bashrc]
+[{## lang=sh}
+# Note: you must also have pvc aliased
+function pvcp() {
+  desc="$(pvc at): $(pvc desc --full)"
+  (cd .pvc/ &&
+    git add ./ &&
+    git commit -am "$desc" &&
+    git push origin main)
+}
+]##
+
+Now you can hack using [$pvc commit] etc and push to your [$repo.pvc] by
+simply calling [$pvcp]. Your git commit log will be your current [$at]
+location followed by the commit message. When you want to push your
+documentation or releases to git, simply do so -- your main commit log
+won't be polluted by commiting pvc files.
+
+[{h1 name=pvc-arch}Architecture]
+
+This architecture is given both so users can debug or fix any errors as well as
+to make it easier to create other implementations of pvc (i.e. in bash).
+
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
+* [*pvcpaths] is the project-local [$.pvcpaths] file which contains a
+  newline-separated list of project-relative paths.  This is used by pvc to
+  determine which paths are tracked. It's contents are tracked as a normal file
+  (it is included in the patch diff).
+
+* [*branch]: a branch is a directory inside the repo (i.e. [$.pvc/main/]). It
+  contains the [$patch/] directory (described in [*commit]) and the plain-text files:
+  [+
+  * [*base]: contains [$branch#123]. This file is not present if the branch is
+    the trunk.
+  * [*tip]: contains an ascii decimal number, representing the last patch id.
+  ]
+
+* [*branch (action)]: to "create a branch" means to create a new directory
+  inside [$.pvc/] and initialize it with the proper [$base] and [$tip] files.
+  The base branch must already exist.
+
+* [*commit (noun)]: refers to a single patch file inside of [$.pvc/branch/patch/.../123.p]. [+
+  * The length of [$patch/.../] is stored in [$patch/depth] which is an ascii
+    decimal number, always divisible by 2. Each sub-directory has exactly two
+    digits. For instance, a depth of 4 would store [$12.p] in
+    [$patch/00/00/12.p] and store [$123456.p] in [$12/34/123456.p].
+
+  * [*description]: the top of the patch file (before the first unidiff)
+    contains a plain-text description of the commit.
+
+  * [*diffs]: the rest of the patch file contains a series of file differences
+    from the previous patch version in the [@unidiff] (aka [$diff -u]) format.
+
+  * [*commit] is often shorthand for the [$commit reference] (i.e.
+    [$branch#123]), which refers uniquely to a specific branch and patch file
+    or snapshot directory.
+  ]
+
+* [*commit (action)]: "making a commit" means to take the difference of the
+   current directory and store it as a patch file in the branch's [$patch/]
+   directory.
+
+* [*snapshot]: a snapshot is the local directory state at a specific commit. It
+  is a directory which uses the extension [$.snap/] inside of the patch
+  directory, i.e. [$patch/00/123.snap/].
+
+* [*checkout (action)]: to "checkout a commit" means to make the local project
+  directory the same as the commit. This is performed by finding the closest
+  [*snapshot] and applying commit patches (either forwards or backwards) in
+  order to make the snapshot reflect the commits state.
+
+* [*rebase (action)]: to "rebase a branch" means to increase the id of it's
+  [*base]. This is accomplished by making a copy of the new id's snapshot and
+  repeatedly applying the unix [$merge] command (or equivalent) on each change,
+  using the copied snapshot as [$to] and incrementing the [$base] along the
+  change patches. Each new [$patch] file should be stored, incrementing from
+  the base. [+
+
+  * the software should detect if conflicts are unresolveable and exit, telling the
+    user how to fix them. The software should be able to resume the rebase once
+    the conflicts are resolved.
+
+  * For example, the reference implementation creates a new branch called
+    [$branch__rebase] to perform this action. When calling rebase, it first
+    checks for this branch and attempts to resume from it. On failure,
+    it tells the user where the failing files that need to be fixed are
+    located.
+
+  * when the rebase is complete, the old branch should be moved to [$.pvc/backup]
+    then replaced with the rebased version.
+  ]
+
+* [*merge]: merges a branch onto another one. The branch must already be
+  rebased to the tip (also called a "fast forward merge"), so this is literally
+  just copying the patch files and incrementing the [*tip].
+
+* [*squash]: combines multiple commits into one, moving larger commits down.
+  The descriptions should be concatenated, and can be edited separately by the
+  user.
+
+* [*export]: simply copies a [*branch] without it's snapshot directories to a
+  separate directory, which can be sent to a maintainer to be merged.
+]
+
+[{h2}Other Operations]
+Other operations, such as showing commit messages or ammending a commit, are
+not defined explicitly, but you can see the reference implementation for
+details. Typically their implementation is either straightforward or can be
+performed by variations of the above operations.
+
+Also, operations which mutate the meaning of a commit (such as squash or
+rebase) should check to make sure that no branches depend on the branch being
+mutated.
+
+[{! :href=https://en.wikipedia.org/wiki/Diff#Unified_format}unidiff]
+[{! :href=https://en.wikipedia.org/wiki/Tar_(computing)}tarball]

--- /dev/null
+++ cmd/pvc/pvc.lua
@@ -0,0 +1,1074 @@
+local G = G or _G
+local M = G.mod and mod'pvc2' or setmetatable({}, {})
+MAIN = G.MAIN or M
+
+local shim  = require'shim'
+local mty   = require'metaty'
+local ds    = require'ds'
+local pth   = require'ds.path'
+local kev   = require'ds.kev'
+local ix    = require'civix'
+local lines = require'lines'
+local T = require'civtest'
+
+local pu = require'pvc.unix'
+
+local srep, sfmt = string.rep, string.format
+local sconcat = string.concat
+local push, concat = table.insert, table.concat
+local sort = table.sort
+local info = require'ds.log'.info
+local trace = require'ds.log'.trace
+local s = ds.simplestr
+local construct = mty.construct
+local toDir, pconcat = pth.toDir, pth.concat
+local pk = ds.popk
+
+local assertf = require'fmt'.assertf
+
+M.DOT = '.pvc/'
+M.PVC_DONE = 'PVC_DONE'
+M.PVCPATHS = '.pvcpaths' -- file
+M.INIT_PVCPATHS = '.pvcpaths\n' -- initial contents
+M.INIT_PATCH = [[
+# initial patch
+--- /dev/null
++++ .pvcpaths
+.pvcpaths
+]]
+
+local toint = math.tointeger
+
+--- this exists for tests to override
+M.backupId = function() return tostring(ix.epoch():asSeconds()) end
+
+--- reserved branch names
+M.RESERVED_NAMES = { ['local']=1, at=1, tip=1, }
+
+-----------------------------------
+-- Utilities
+
+--- get a set of the lines in a file
+local loadLineSet = function(path) --> set
+  local s = {}; for l in io.lines(path) do s[l] = true end; return s
+end
+
+local loadPaths = function(P) --> list
+  local paths = ds.BiMap(lines.load(P..M.PVCPATHS))
+  if not paths[M.PVCPATHS] then push(paths, M.PVCPATHS) end
+  return paths
+end
+
+local loadIgnore = function(P) --> list
+  local ignore = {'%./%.pvc/'}
+  for line in io.lines(P..'.pvcignore') do
+    if line == '' or line:sub(1,1) == '#' then --ignore
+    else push(ignore, line)
+    end
+  end
+  return ignore
+end
+
+--- copy all paths in [$from/.pvcpaths] -> [$to/]
+local cpPaths = function(from, to)
+  trace('cpPaths %s -> %s', from, to)
+  for path in io.lines(from..M.PVCPATHS) do
+    ix.forceCp(from..path, to..path)
+  end
+end
+
+local readInt = function(path) return toint(pth.read(path)) end
+
+--- call [$fn(path1, path2)] for all files in [$dir/.pvcpaths]
+--- the value will be nil if it is missing in either path.
+---
+--- Note: the passed in paths are still relative.
+local mapPvcPaths = function(dir1, dir2, fn)
+  local paths1, paths2 = loadPaths(dir1), loadPaths(dir2)
+  for _, p1 in ipairs(paths1) do fn(p1, paths2[p1] and p1 or nil) end
+  for _, p2 in ipairs(paths2) do
+    if not paths1[p2] then fn(nil, p2) end
+  end
+end
+
+local untracked = function(P) --> list[string]
+  trace('untracked %s', P)
+  local out, paths, ignore = {}, ds.Set(loadPaths(P)), loadIgnore(P)
+  local w = ix.Walk{P}
+  for path, fty in w do
+    path = path:sub(#P+1)
+    if path == '' then goto cont end
+    local mpath = './'..path -- path for matching
+    trace('ut path %q', mpath)
+    if paths[path] then goto cont end
+    if fty == 'dir' then
+      for _, pat in ipairs(ignore) do
+        if pat:sub(-1,-1) == '/' and mpath:find(pat) then
+          w:skip(); goto cont
+        end
+      end
+    else
+      for _, pat in ipairs(ignore) do
+        if pat:sub(-1,-1) ~= '/' and mpath:find(pat) then
+          goto cont
+        end
+      end
+      push(out, path)
+    end
+    ::cont::
+  end
+  table.sort(out)
+  return out
+end
+
+
+-----------------------------------
+-- Patch Logic
+
+local postCmd = {
+  rename = function(a, b) info('rename %q %q', a, b); civix.mv(a, b) end,
+  swap   = function(a, b) info('swap %q %q', a, b); civix.swap(a, b) end,
+}
+
+--- Given a patch string perform post-patch requirements in dir.
+---
+--- These must be given near the top of the patch file, before the first
+--- [$---].  Supported commands (arguments are actually tab separated):
+--- [##
+--- ! rename before  after
+--- ! swap   first   second
+--- ]##
+---
+--- If reverse is given it does the opposite; also this should be called BEFORE
+--- calling [$patch(reverse=true)]
+M.patchPost = function(dir, patch, reverse)
+  for line in io.lines(patch) do
+    if line:sub(1,3) == '---' then break end -- stop after first diff
+    if line:sub(1,1) == '!' then
+      local cmd, a, b = table.unpack(ds.splitList(line:match'!%s*(.*)'))
+      if reverse then a, b = b, a end
+      (postCmd[cmd] or error('unknown cmd: '..cmd))(pconcat{dir, a}, pconcat{dir, b})
+    end
+  end
+end
+
+--- forward patch, applying diff to dir
+M.patch = function(dir, diff)
+  pu.patch(dir, diff)
+  M.patchPost(dir, diff)
+end
+
+--- reverse patch, applying diff to dir
+M.rpatch = function(dir, diff)
+  M.patchPost(dir, diff, true)
+  pu.rpatch(dir, diff)
+end
+
+--- calculate necessary directory depth.
+--- Example: 01/23/12345.p has dirDepth=4
+M.calcPatchDepth = function(id)
+  local len = #tostring(id); if len <= 2 then return 0 end
+  return len - (2 - (len % 2))
+end
+
+-----------------------------------
+-- Diff
+
+--- [$Diff:of(dir1, dir2)] returns what changed between two pvc dirs.
+M.Diff = mty'Diff' {
+  'dir1 [string]', 'dir2 [string]',
+  'equal   [list]',
+  'changed [list]',
+  'deleted [list]',
+  'created [list]',
+}
+
+M.Diff.of = function(T, d1, d2)
+  local peq = ix.pathEq
+  local t = (type(d1) == 'table') and d1 or {dir1=d1, dir2=d2}
+  t = T(t)
+  local equal, changed, deleted, created = {}, {}, {}, {}
+  mapPvcPaths(d1, d2, function(p1, p2)
+    if p1 and p2 then
+      if peq(d1..p1, d2..p2) then push(equal,   p1)
+      else                        push(changed, p1) end
+    elseif p1 then                push(deleted, p1)
+    else                          push(created, p2)
+    end
+  end)
+  sort(equal); sort(changed); sort(deleted); sort(created)
+  t.equal, t.changed, t.deleted, t.created =
+    equal,   changed,   deleted,   created
+  return t
+end
+
+M.Diff.hasDiff = function(d)
+  return (#d.changed > 0) or (#d.deleted > 0) or (#d.created > 0)
+end
+
+M.Diff.format = function(d, fmt, full)
+  local function s(...) return fmt:styled(...) end
+  if full then
+    for _, line in ds.split(d:patch(), '\n') do
+      local l2 = line:sub(1,2)
+      if l2 == '--' or l2 == '++' or l2 == '@@' then s('notify', line, '\n')
+      elseif line:sub(1,1) == '-' then s('base',   line, '\n')
+      elseif line:sub(1,1) == '+' then s('change', line, '\n')
+      else fmt:write(line, '\n') end
+    end
+  else
+    if not d:hasDiff() then return s('bold', 'No Difference') end
+    s('bold', 'Diff:', ' ', d.dir1, ' --> ', d.dir2, '\n')
+    for _,path in ipairs(d.deleted) do s('base',   '-'..path, '\n') end
+    for _,path in ipairs(d.created) do s('change', '+'..path, '\n') end
+    for _,path in ipairs(d.changed) do s('notify', '~'..path, '\n') end
+  end
+end
+
+M.Diff.patch = function(d) --> patchText
+  local d1, d2, patch = d.dir1, d.dir2, {}
+  for _, path in ipairs(d.changed) do
+    push(patch, pu.diff(d1..path, path, d2..path, path))
+  end
+  for _, path in ipairs(d.created) do
+    push(patch, pu.diff(nil, nil, d2..path, path))
+  end
+  for _, path in ipairs(d.deleted) do
+    push(patch, pu.diff(d1..path, path))
+  end
+  return concat(patch, '\n')
+end
+
+--------------------------------------------
+-- Branch
+
+--- return the branch path in project regardless of whether it exists
+M.branchDir = function(P, branch, dot)
+  assert(branch, 'branch is nil')
+  assert(not M.RESERVED_NAMES[branch], 'branch name is reserved')
+  return pth.concat{P, dot or '.pvc', branch, '/'}
+end
+
+M.getbase = function(bdir, br) --> br, id
+  local bpath = bdir..'base'
+  if ix.exists(bpath) then return M.parseBranch(pth.read(bpath))
+  else return br, 0 end
+end
+M.rawtip = function(bdir, id)
+  if id then pth.write(toDir(bdir)..'tip', tostring(id))
+  else return readInt(toDir(bdir)..'tip') end
+end
+M.depth = function(bdir) return readInt(toDir(bdir)..'commit/depth') end
+
+M.patchPath = function(bdir, id, last, depth) --> string?
+  depth = depth or M.depth(bdir)
+  if M.calcPatchDepth(id) > depth then return end
+  local dirstr = tostring(id):sub(1,-3)
+  dirstr = srep('0', depth - #dirstr)..dirstr -- zero padded
+  local path = {bdir, 'commit'}; for i=1,#dirstr,2 do
+    push(path, dirstr:sub(i,i+1)) -- i.e. 00/12.p
+  end
+  push(path, tostring(id)..(last or '.p'))
+  return pconcat(path)
+end
+
+--- Get the snap/ path regardless of whether it exists
+M.snapDir = function(bdir, id) --> string?
+  return M.patchPath(bdir, id, '.snap/')
+end
+
+local function initSnap0(snap)
+  ix.forceWrite(snap..M.PVCPATHS, M.INIT_PVCPATHS)
+  ix.forceWrite(snap..'PVC_DONE', '')
+end
+
+local function initBranch(bdir, id)
+  assert(id >= 0)
+  assertf(not ix.exists(bdir), '%s already exists', bdir)
+  local depth = M.calcPatchDepth(id + 1000)
+  trace('initbranch %s', bdir)
+  ix.mkTree(bdir, {
+    tip=tostring(id), commit = {depth=tostring(depth)},
+  }, true)
+  if id ~= 0 then return bdir end
+  local ppath = M.patchPath(bdir, id, '', depth)
+  initSnap0(ppath..'.snap/')
+end
+
+--- Snapshot the branch#id by applying patches.
+--- Return the snapshot directory
+M.snapshot = function(P, br,id) --> .../id.snap/
+  trace('snapshot %s#%s', br,id)
+  -- f=from, t=to
+  local bdir = M.branchDir(P, br)
+  local snap = M.snapDir(bdir, id)
+  if ix.exists(snap) then return snap, id end
+  if id == 0 then return initSnap0(snap) end
+  local bbr,bid = M.getbase(bdir, br)
+  if id == bid then return M.snapshot(P, bbr,bid) end
+  trace('findSnap %s id=%s with base %s#%s', bdir, id, bbr,bid)
+
+  local tip      = M.rawtip(bdir)
+  local fsnap, fid -- find the snap/id to patch from
+  local idl, idr = id-1, id+1
+  while (bid <= idl) or (idr <= tip) do
+    snap = M.patchPath(bdir, idl, '.snap/PVC_DONE')
+    if ix.exists(snap) then
+      fsnap, fid = M.snapDir(bdir,idl), idl; break
+    end
+    if bid == idl then
+      fsnap, fid = M.snapshot(P, bbr,bid), idl; break
+    end
+    snap = M.patchPath(bdir, idr, '.snap/PVC_DONE')
+    if ix.exists(snap) then
+      fsnap, fid = M.snapDir(bdir,idr), idr; break
+    end
+    idl, idr = idl-1, idr+1
+  end
+  if not fsnap then error(bdir..' does not have snapshot '..id) end
+  local tsnap = M.snapDir(bdir, id)
+  trace('creating snapshot %s from %s', tsnap, fsnap)
+  if ix.exists(tsnap) then ix.rmRecursive(tsnap) end
+  ix.mkDir(tsnap)
+  cpPaths(fsnap, tsnap)
+  local patch = (fid <= id) and pu.patch or pu.rpatch
+  local inc   = (fid <= id) and 1       or -1
+  fid = fid + inc
+  while true do
+    local ppath = M.patchPath(bdir, fid)
+    trace('patching %s with %s', tsnap, ppath)
+    patch(tsnap, ppath)
+    if fid == id then break end
+    fid = fid + inc
+  end
+  pth.write(tsnap..M.PVC_DONE, '')
+  info('created snapshot %s', tsnap)
+  return tsnap
+end
+
+--- increase the depth of branch by 2, adding a [$00/] directory.
+M.deepen = function(bdir)
+  local depth, pp, zz = M.depth(bdir), bdir..'commit/', bdir..'00/'
+  ix.mv(pp, zz); ix.mkDir(pp) ix.mv(zz, pp)
+  pth.write(pp..'depth', tostring(depth + 2))
+end
+
+-----------------
+-- Project Methods
+
+M.parseBranch = function(str, bdefault, idefault) --> branch, id
+  local i = str:find'#'
+  if i              then return str:sub(1,i-1), toint(str:sub(i+1))
+  elseif toint(str) then return bdefault,       toint(str)
+  else                   return str,            idefault end
+end
+
+--- get or hard set the current branch/id
+M.rawat = function(P, branch, id)
+  local apath = pth.concat{P, '.pvc/at'}
+  if branch then pth.write(apath, sfmt('%s#%s', branch, id))
+  else    return M.parseBranch(pth.read(apath)) end
+end
+
+--- get or set where the working id is at.
+M.at = function(P, nbr,nid) --!!> branch?, id?
+  -- c=current, n=next
+  local cbr, cid = M.rawat(P); if not nbr then return cbr, cid end
+  local npath = M.branchDir(P, nbr)
+
+  nid = nid or M.rawtip(npath)
+  trace('at %s#%i -> %s#%i', cbr, cid, nbr, nid)
+  local csnap  = M.snapshot(P, cbr,cid)
+  local nsnap  = M.snapshot(P, nbr,nid)
+  trace('at snaps %s -> %s', csnap, nsnap)
+
+  local npaths = loadPaths(nsnap)
+
+  local ok, cpPaths, rmPaths = true, {}, {}
+  for _, path in ipairs(npaths) do
+    if ix.pathEq(P..path, nsnap..path) then goto cont end -- local==next
+    if ix.pathEq(P..path, csnap..path) then -- local didn't change
+      if not ix.pathEq(csnap..path, nsnap..path) then -- next did change
+        push(cpPaths, path)
+      end
+      goto cont
+    end
+    -- else local path changed
+    if ix.pathEq(csnap..path, nsnap..path) then
+      io.fmt:styled('meta',  sfmt('keeping changed %s', path), '\n')
+    else
+      io.fmt:styled('error', sfmt('path %s changed',    path), '\n')
+      ok = false
+    end
+    ::cont::
+  end
+  -- look at paths in current but not next
+  for path in io.lines(csnap..M.PVCPATHS) do
+    if npaths[path]              then goto cont end
+    if not ix.exists(P..path) then goto cont end -- already deleted
+    if ix.pathEq(P..path, csnap..path) then push(rmPaths, path)
+    else
+      f:styled('error',
+        sfmt('path %s changed but would be removed', path), '\n')
+      ok = false
+    end
+    ::cont::
+  end
+  if not ok then error(sfmt(s[[
+
+    ERROR: local changes (%s#%s) would be trampled by checkout %s#%s
+    Solutions:
+    * commit the current changes
+    * revert the current changes
+  ]], cbr,cid, nbr,nid)) end
+  for _, path in ipairs(cpPaths) do
+    trace('checkout cp: %s', path)
+    ix.forceCp(nsnap..path, P..path)
+  end
+  for _, path in ipairs(rmPaths) do
+    trace('checkout rm: %s', path)
+    ix.rmRecursive(P..path)
+  end
+  M.rawat(P, nbr,nid)
+  io.fmt:styled('notify', sfmt('pvc: at %s#%s', nbr,nid), '\n')
+end
+
+--- update paths file (path) with the added and removed items
+M.pathsUpdate = function(P, add, rm)
+  local pfile = pth.concat{P, M.PVCPATHS}
+  local paths = assert(lines.load(pfile), pfile)
+  if add then ds.extend(paths, add) end
+  if rm and rm[1] then rm = ds.Set(rm) end
+  local rmFn = rm and function(v1, v2) return rm[v2] or (v1 == v2) end
+            or ds.eq
+  ds.sortUnique(paths, nil, rmFn)
+  push(paths, '')
+  lines.dump(paths, pfile)
+end
+
+--- resolve a branch name. It can be one of: [+
+--- * A directory with [$/] in it.
+--- * [$branch] or [$branch#id]
+--- * Special: at
+--- ]
+M.resolve = function(P, branch) --> br, id, bdir
+  local br, id = M.parseBranch(branch)
+  if not br then error('unknown branch: '..branch) end
+  if br == 'local' then error('local not valid here') end
+  if br == 'at'  then br, id = M.rawat(P) end
+  return br, id, M.branchDir(P, br)
+end
+
+--- resolve and take snapshot, permits local
+M.resolveSnap = function(P, branch) --> snap/, br, id, bdir
+  if branch:find'/' then return branch end -- directory
+  if branch == 'local' then return P end
+  local br, id, bdir = M.resolve(P, branch)
+  return M.snapshot(P, br, id or M.rawtip(bdir)), br, id, bdir
+end
+
+--- resolve two branches into their branch directories. Defaults:[+
+--- * br1 = 'at'
+--- * br2 = 'local'
+--- ]
+M.resolve2 = function(P, br1, br2) --> branch1/ branch2/
+  return  M.resolveSnap(P, br1 or 'at'),
+          M.resolveSnap(P, br2 or 'local')
+end
+
+M.diff = function(P, branch1, branch2) --> Diff
+  return M.Diff:of(M.resolve2(P, branch1, branch2))
+end
+
+M.init = function(P, branch)
+  P, branch = toDir(P), branch or 'main'
+  local dot = P..'.pvc/';
+  if ix.exists(dot) then error(dot..' already exists') end
+  ix.mkTree(dot, {backup = {}}, true)
+  initBranch(M.branchDir(P, branch), 0)
+  pth.write(P..M.PVCPATHS, M.INIT_PVCPATHS)
+  pth.write(P..'.pvcignore', '')
+  M.rawat(P, branch, 0)
+  io.fmt:styled('notice', 'initialized pvc repo '..dot, '\n')
+end
+
+--- Create a patch file from two branch arguments (see resolve2).
+M.patch = function(P, br1, br2) --> string, s1, s2
+  return M.Diff:of(M.resolve2(P, br1, br2)):patch()
+end
+
+
+local isPatchLike = function(line)
+  return line:sub(1,3) == '---'
+      or line:sub(1,3) == '+++'
+      or line:sub(1,2) == '!!'
+end
+M.commit = function(P, desc) --> snap/, id
+  assert(desc, 'commit must provide description')
+  for _, line in ds.split(desc, '\n') do
+    assert(not isPatchLike(line),
+      "commit message cannot have any of the following"
+    .." at the start of a line: +++, ---, !!")
+  end
+
+  local br, id = M.rawat(P)
+  local bp, cid = M.branchDir(P, br), id+1
+  trace('start commit %s/%s', br, cid)
+  if id ~= M.rawtip(bp) then error(s[[
+    ERROR: working id is not at tip. Solutions:
+    * stash -> at tip -> unstash -> commit
+    * prune: move or delete downstream changes.
+  ]])end
+  M.pathsUpdate(P) -- sort unique
+
+  -- b=base c=change
+  local bsnap = M.snapshot(P, br,id)
+  local patchf = M.patchPath(bp, cid)
+  local diff = M.Diff:of(bsnap, P)
+  if not diff:hasDiff() then
+    error('invalid commit: no differences detected')
+  end
+  if M.calcPatchDepth(cid) > M.depth(bp) then M.deepen(bp) end
+  ix.forceWrite(patchf,
+    sconcat('\n', desc, diff:patch()))
+  local csnap = M.snapshot(P, br,cid)
+  for path in io.lines(P..M.PVCPATHS) do
+    T.pathEq(P..path, csnap..path)
+  end
+  M.rawtip(bp, cid); M.rawat(P, br, cid)
+  io.fmt:styled('notify', sfmt('commited %s#%s to %s', br, cid, patchf), '\n')
+  return csnap, cid
+end
+
+--- get the conventional brName, id for a branch,id pair
+M.nameId = function(P, branch,id) --> br,id
+  local br,bid; if not branch then br,bid = M.at(P)
+  else                             br,bid = M.parseBranch(branch) end
+  return br, id or bid or M.rawtip(M.branchDir(P, br))
+end
+
+M.branch = function(P, name, fbr,fid) --> bdir, id
+  local fpath = M.branchDir(P, fbr)
+  if not ix.exists(fpath) then error(fpath..' does not exist') end
+  fid = fid or M.rawtip(fpath)
+  local npath = M.branchDir(P, name)
+  initBranch(npath, fid)
+  pth.write(npath..'base', sfmt('%s#%s', fbr,fid))
+  return npath, fid
+end
+
+local NOT_BRANCH = { backup = 1, at = 1}
+local branchesRm = function(a, b) return NOT_BRANCH[a] end
+
+--- get all branches
+M.branches = function(P) --> list
+  local entries = {}
+  local d = P..'.pvc/'
+  for e in ix.dir(d) do
+    if not NOT_BRANCH[e] and ix.pathtype(d..e) == 'dir' then
+      push(entries, pth.toNonDir(e))
+    end
+  end
+  sort(entries)
+  return entries
+end
+
+M.checkBranch = function(P, name, checks, dir)
+  dir = dir or P..name
+  local bbr,bid = M.getbase(dir, nil)
+  local tip     = M.rawtip(dir)
+  if tip <= bid then error(sfmt('tip %i <= baseid %i'..tip, bid)) end
+  -- TODO: check that patch files exist, etc.
+
+  if checks.base and not bbr then error(from..' does not have base') end
+  if bbr then
+    local bt = M.rawtip(M.branchDir(P, bbr))
+    if bid > bt then error(sfmt(
+      '%s base.id %s > %s tip of %i', from, bid, bbr, bt
+    ))end
+    -- TODO(sig): check signature
+  end
+  if checks.children then -- check that it has no children
+
+  end
+end
+
+M.graft = function(P, name, from)
+  local ndir = P..name
+  if ix.exists(ndir) then error(ndir..' already exists') end
+  M.checkBranch(P, name, {base=1}, from)
+  ix.cpRecursive(from, ndir)
+end
+
+local FAILED_MERGE = [[
+FAILED MERGE
+    to: %s
+  base: %s
+change: %s
+ ERROR: %s]]
+
+M.merge = function(tdir, bdir, cdir) --!!>
+  trace('pvc.merge to=%s base=%s change=%s', tdir, bdir, cdir)
+  local paths, conflicts = {}, false
+  mapPvcPaths(bdir, cdir, function(bpath, cpath)
+    local to     = tdir..(cpath or bpath)
+    local base   = bpath and (bdir..bpath) or nil
+    local change = cpath and (cdir..cpath) or nil
+    local ok, err = pu.merge(to, base, change)
+    if not ok then
+      io.fmt:styled('error', sfmt(
+        FAILED_MERGE, to, base, change, err), '\n')
+      conflicts = true
+    end
+  end)
+  assert(not conflicts, 'failed to merge, fix conflicts and then re-run')
+end
+
+--- return a backup directory (uses the timestamp)
+M.backupDir = function(P, name) --> string
+  for _=1,10 do
+    local b = sfmt('%s.pvc/backup/%s-%s/', P, name, M.backupId())
+    if ix.exists(b) then ix.sleep(0.01) else return b end
+  end
+  error('could not find empty backup')
+end
+
+--- rebase the branch (current branch) to make it's baseid=id
+M.rebase = function(P, branch, id) --> backup/dir/
+  local cbr = branch
+
+  --- process: repeatedly use merge on the (new) branch__rebase branch.
+  --- the final result will be in to's last snapshot id
+  local cpath = M.branchDir(P, cbr)
+  local bbr, bid = M.getbase(cpath, cbr)
+  M.at(P, bbr,bid) -- checkout base to ensure cleaner checkout at end
+
+  if bbr == cbr then error('the base of '..cbr..' is itself') end
+  if id == bid then return end
+  local bdir = M.branchDir(P, bbr)
+  local btip  = M.rawtip(bdir)
+  if id > btip then error(id..' is > tip of '..btip) end
+
+  local cdir, cid = M.branchDir(P, cbr), bid + 1
+  local ctip       = M.rawtip(cdir)
+  local tbr        = cbr..'__rebase'
+  local tdir      = M.branchDir(P, tbr)
+  local ttip       = id + M.rawtip(cdir) - bid
+
+  local op = sfmt('rebase %s %s', cbr, bid)
+  local tsnap; if ix.exists(tdir) then
+    assert(ix.exists(tsnap))
+    T.pathEq(tdir..'op', op)
+    T.eq({bbr,bid}, M.getbase(tdir))
+    cid   = toint(pth.read(tdir..'rebase'))
+    tsnap = M.snapDir(tdir, ttip)
+  else
+    M.branch(P, tbr, bbr,id)
+    pth.write(tdir..'op', op)
+    tsnap = M.snapDir(tdir, ttip); ix.mkDirs(tsnap)
+    cpPaths(M.snapshot(P, bbr,id), tsnap)
+  end
+  local tid = id + 1
+  local tprev = M.snapshot(P, bbr,id) -- hard-code first prev
+
+  while cid <= ctip do
+    assert(tid <= ttip)
+    local bsnap = M.snapshot(P, cbr,bid)
+    pth.write(tdir..'rebase', tostring(cid))
+    local desc = M.desc(M.patchPath(cdir, cid))
+    M.merge(tsnap, bsnap, M.snapshot(P, cbr,cid))
+    tprev = tprev or M.snapshot(P, tbr,tid-1)
+    local tpatch = M.patchPath(tdir,tid)
+    trace('writing patch %s', tpatch)
+    ix.forceWrite(tpatch,
+      concat(desc, '\n')..'\n'..M.Diff:of(tprev, tsnap):patch())
+    tprev = nil
+    bid, cid, tid = bid + 1, cid + 1, tid + 1
+  end
+
+  local backup = M.backupDir(P, cbr); ix.mkDirs(backup)
+  ix.mv(cdir, backup)
+  io.fmt:styled('notify',
+    sfmt('pvc: rebase %s to %s#%s done. Backup at %s', cbr, bbr, id, backup),
+    '\n')
+  M.rawtip(tdir, ttip)
+  ix.rm(tdir..'op'); ix.rm(tdir..'rebase')
+  ix.mv(tdir, cdir)
+  M.at(P, cbr,ttip)
+  return backup
+end
+
+--- Grow [$to] by copying patches [$from]
+M.grow = function(P, to, from) --!!>
+  local fbr, fdir = assert(from, 'must set from'), M.branchDir(P, from)
+  local ftip = M.rawtip(fdir)
+  local bbr, bid = M.getbase(fdir)
+  local tbr = to or M.rawat(P)
+  if bbr ~= tbr then error(sfmt(
+    'the base of %s is %s, not %s', from, bbr, tbr
+  ))end
+  local tdir = M.branchDir(P, tbr)
+  local ttip = M.rawtip(tdir)
+  if bid ~= ttip then error(sfmt(
+    'rebase required (%s tip=%s, %s base id=%s)', tbr, ttip, bbr, bid
+  ))end
+  if ftip == bid then error(sfmt(
+    "rebase not required: %s base is equal to it's tip (%s)", fbr, bid
+  ))end
+  M.at(P, tbr,ttip)
+  if M.diff(P):hasDiff() then error'local changes detected' end
+  -- TODO(sig): check signature
+  for id=bid+1, M.rawtip(fdir) do
+    local tpath = M.patchPath(tdir, id)
+    assert(not ix.exists(tpath))
+    local fpath = M.patchPath(fdir, id)
+    info('copying: %s -> %s', fpath, tpath)
+    ix.forceCp(fpath, tpath)
+  end
+  M.rawtip(tdir, ftip)
+  local back = M.backupDir(P, fbr)
+  io.fmt:styled('notify',
+    sfmt('deleting %s (mv %s -> %s)', fbr, fdir, back), '\n')
+  ix.mkDirs(pth.last(back)); ix.mv(fdir, back)
+  io.fmt:styled('notify', sfmt('grew %s tip to %s', tbr, ftip), '\n')
+  M.at(P, to,ftip)
+end
+
+--- return the description of ppath
+M.desc = function(ppath, num) --> {string}
+  local desc = {}
+  for line in io.lines(ppath) do
+    if line:sub(1,2) == '!!' or line:sub(1,3) == '---'
+      then break end
+    push(desc, line); if num and #desc >= num then break end
+  end
+  return desc
+end
+
+--- squash num commits together before br#id.
+M.squash = function(P, br, bot,top)
+  trace('squash %s [%s %s]', br, bot,top)
+  assert(br and bot and top, 'must set all args')
+  assert(top > 0)
+  if top - bot <= 0 then
+    io.fmt:styled('error', sfmt('squashing ids [%s - %s] is a noop', bot, top), '\n')
+    return
+  end
+  local bdir = M.branchDir(P, br)
+  local tip, bbr, bid = M.rawtip(bdir), M.getbase(P, br)
+  if bot <= bid then error(sfmt('bottom %i <= base id %s', top, bid)) end
+  if top >  tip then error(sfmt('top %i > tip %i', top, tip)) end
+  M.at(P, br,top)
+  local back = M.backupDir(P, br..'-squash'); ix.mkDirs(back)
+  local desc = {}
+  local last = M.patchPath(bdir, tip)
+  if not ix.exists(last) then error(last..' does not exist') end
+
+  local patch = M.Diff:of(M.snapshot(P, br,bot-1), M.snapshot(P, br,top))
+    :patch()
+  -- move [bot,top] commits to backup/ and remove their .snap/ directories.
+  for i=bot,top do
+    local path = M.patchPath(bdir, i)
+    ds.extend(desc, M.desc(path))
+    local bpatch = back..i..'.p'
+    ix.mv(path, bpatch)
+    io.fmt:styled('notify', sfmt('mv %s %s', path, bpatch), '\n')
+    ix.rmRecursive(M.snapDir(bdir, i))
+  end
+  -- write the squashed patch file
+  local f = io.open(M.patchPath(bdir, bot), 'w')
+  for _, line in ipairs(desc) do f:write(line, '\n') end
+  f:write(patch); f:close()
+
+  ix.rmRecursive(M.snapDir(bdir, bot)) -- TODO: remove this I think
+
+  -- move the patch files above top down to be above squashed bot
+  local bi = bot
+  for i=top+1, tip do; bi = bi + 1
+    ix.rmRecursive(M.snapDir(bdir, i))
+    local botPat = M.patchPath(bdir, bi)
+    local topPat = M.patchPath(bdir, i)
+    io.fmt:styled('notify', sfmt('mv %s %s', topPat, botPat), '\n')
+    ix.mv(topPat, botPat)
+  end
+
+  M.rawat(P, br,bot); M.rawtip(bdir,bi)
+  io.fmt:styled('notify',
+    sfmt('squashed [%s - %s] into %s. New tip=%i', bot, top, bot, bi), '\n')
+end
+
+local popdir = function(args)
+  return pth.toDir(pk(args, 'dir') or pth.cwd())
+end
+
+local HELP = [=[[+
+* sh usage:  [$pvc <cmd> [args]]
+* lua usage: [$pvc{'cmd', ...}]
+]
+
+See README for details.
+]=]
+M.main = G.mod and G.mod'pvc.main' or setmetatable({}, {})
+
+  --- [$help [cmd]]: get help
+M.main.help = function(args) print(HELP) end
+
+--- [$init dir]: initialize the [$dir] (default=CWD) for PVC.
+M.main.init = function(args) --> nil
+  M.init(popdir(args), args[1] or 'main')
+end
+
+--- [$diff branch1 branch2 --full]: get the difference (aka the patch) between
+--- [$branch1] (default=[$at]) and [$branch2] (default=local). Each value can be
+--- either a branch name or a directory which contains a [$.pvcpaths] file.
+---
+M.main.diff = function(args) --> Diff
+  trace('diff%q', args)
+  local P = popdir(args)
+  local d = M.diff(P, args[1], args[2])
+  d:format(io.fmt, args.full)
+  if not args.full then
+    for _, path in ipairs(untracked(P)) do
+      io.user:styled('notify', path, '\n')
+    end
+  end
+  io.fmt:write'\n'
+  return d
+end
+
+--- [$commit]: add changes to the current branch as a patch and move [$at]
+--- forward. The commit message can be written to the COMMIT file or be
+--- specified after the [$--] argument, where multiple arguments are space
+--- separated.
+M.main.commit = function(args)
+  local P = popdir(args)
+  local desc = shim.popRaw(args)
+  if desc then desc = concat(desc, ' ')
+  else         desc = pth.read(P..'COMMIT') end
+  M.commit(P, desc)
+end
+
+--- [$at [branch]]: if [$branch] is empty then return the active
+--- [$branch#id].
+---
+--- If [$branch] is set then this sets the active [$branch#id], causing the
+--- local directory to be updated (default id=tip).
+--- ["git equivalent: [$checkout]]
+M.main.at = function(args) --> string
+  local D, branch = popdir(args), args[1]
+  if branch then return M.at(D, M.parseBranch(branch)) end
+  branch = sfmt('%s#%s', M.rawat(D))
+  print(branch); return branch
+end
+
+--- [$tip [branch]]: get the highest branch#id for branch (default=at).
+M.main.tip = function(args) --> string
+  local P = popdir(args)
+  local out = sfmt('%s#%s',
+    M.rawtip(M.branchDir(P, args[1] or M.rawat(P))))
+  print(out); return out
+end
+
+--- [$branch name [from]]: start a new branch of name [$name]. The optional
+--- [$from] (default=[$at]) argument can specify a local [$branch#id] or an
+--- (external) [$path/to/dir] to graft onto the pvc tree.
+---
+--- ["the [$from/dir] is commonly used by maintainers to accept patches from
+--- contributors.
+--- ]
+M.main.branch = function(args)
+  local D = popdir(args)
+  local name = assert(args[1], 'must provide branch name')
+  assert(not name:find'/', "branch name must not include '/'")
+
+  local fbr,fid = args[2]
+  if fbr and fbr:find'/' then return M.graft(D, name, fbr) end
+  if fbr then fbr, fid = M.parseBranch(fbr)
+  else        fbr, fid = M.rawat(D) end
+  local bpath, id = M.branch(D, name, fbr,fid)
+  M.at(D, name)
+end
+
+--- [$pvc show [branch#id] --num=10 --full]
+---
+--- If no branch is specified: show branches. [$full] also displays
+--- the base and tip.
+---
+--- Else show branch#id and the previous [$num] commit messages.
+--- With [$full] show the full commit message, else show only
+--- the first line.
+M.main.show = function(args)
+  local D = popdir(args)
+  local full = args.full
+  if not args[1] then -- just show all branches
+    for _, br in ipairs(M.branches(D)) do
+      if full then
+        local bdir = M.branchDir(D, br)
+        local tip, base,bid = M.rawtip(bdir), M.getbase(bdir, nil)
+        io.user:styled('notify', sfmt('%s\ttip=%s%s',
+          br, tip, base and sfmt('\tbase=%s#%s', base,bid) or ''), '\n')
+      else io.user:styled('notify', br, '\n') end
+    end
+    return
+  end
+  local br, id = M.parseBranch(args[1])
+  if not br or br == 'at' then br, id = M.rawat(D) end
+
+  local num, dir = toint(args.num or 10), M.branchDir(D, br)
+  if not id then id = M.rawtip(dir) end
+  local bbr, bid = M.getbase(dir)
+  for i=id,id-num+1,-1 do
+    if i <= 0 then break end
+    if i == bid then
+      br, dir = bbr, M.branchDir(D, bbr)
+      bbr, bid = M.getbase(dir)
+    end
+    local ppath = M.patchPath(dir, i)
+    local desc = M.desc(ppath, not full and 1 or nil)
+    io.user:styled('notify', sfmt('%s#%s:', br,i), '')
+    io.user:level(1)
+    io.user:write(full and '\n' or ' ', concat(desc, '\n'))
+    io.user:level(-1)
+    io.user:write'\n'
+  end
+end
+
+--- [$pvc desc branch [$path/to/new]]
+--- get or set the description for a single branch id.
+--- The default branch is [$at].
+---
+--- The new description can be passed via [$path/to/new] or
+--- after [$--] (like commit).
+M.main.desc = function(args)
+  local P = popdir(args)
+  local br, id, bdir = M.resolve(P,
+    args[1] == '--' and 'at' or args[1] or 'at')
+  local desc = shim.popRaw(args)
+  if desc        then desc = concat(desc, ' ')
+  elseif args[2] then desc = pth.read(args[2]) end
+  local oldp = M.patchPath(bdir, id)
+  local olddesc = concat(M.desc(oldp), '\n')
+  if not desc then return print(olddesc) end
+  -- Write new description
+  local newp = sconcat('', bdir, tostring(id))
+  local n = assert(io.open(newp, 'w'))
+  n:write(desc, '\n')
+  local o = assert(io.open(oldp, 'r'))
+  for line in o:lines() do -- skip old desc
+    if isPatchLike(line) then n:write(line, '\n'); break end
+  end
+  for line in o:lines() do n:write(line, '\n') end
+  n:close(); o:close()
+  local back = M.backupDir(P, sfmt('%s#%s', br, id)); ix.mkDirs(back)
+  back = back..id..'.p'
+  ix.mv(oldp, back)
+  io.fmt:styled('notify', sfmt('moved %s -> %s', oldp, back), '\n')
+  io.fmt:styled('notify', 'Old description (deleted):', '\n', olddesc, '\n')
+  ix.mv(newp, oldp)
+  io.fmt:styled('notify', 'updated desc of '..oldp, '\n')
+end
+
+--- [$pvc squash [branch#id endId]]
+--- squash branch id -> endId (inclusive) into a single patch at [$id].
+---
+--- You can then edit the description by using [$pvc desc branch#id].
+M.main.squash = function(args)
+  trace('squash%q', args)
+  local P = popdir(args)
+  local br, bot,top
+  if args[1] then
+    br, bot = M.resolve(P, args[1])
+    top     = toint(assert(args[2], 'must set endId'))
+  else -- local commits
+    br, bot = M.at(P); top = bot + 1
+    M.commit(P, '')
+  end
+  M.squash(P, br, bot,top)
+end
+
+getmetatable(M.main).__call = function(_, args)
+  trace('pvc%q', args)
+  local cmd = table.remove(args, 1)
+  local fn = rawget(M.main, cmd); if not fn then
+    io.fmt:styled('error',
+      cmd and (cmd..' is not recognized') or 'Must provide sub command', '\n')
+    return M.main.help()
+  end
+  return fn(args)
+end
+
+--- [$rebase [branch [id]]]: change the base of branch to id.
+--- (default branch=current, id=branch base's tip)
+M.main.rebase = function(args) --> string
+  local P = popdir(args)
+  local br = args[1] ~= '' and args[1] or M.rawat(P)
+  local base = M.getbase(M.branchDir(P,br))
+  M.rebase(P, br, M.rawtip(M.branchDir(P, base)))
+end
+
+--- [$grow from --to=at]: grow [$to] (default=[$at]) using branch from.
+---
+--- ["In other version control systems this is called a
+---   "fast forward merge"
+--- ]
+M.main.grow = function(args)
+  local P = popdir(args)
+  return M.grow(P, args.to, args[1])
+end
+
+--- [$prune branch [id]] delete branch by moving it to backup directory.
+M.main.prune = function(args)
+  local D = popdir(args)
+  local br = assert(args[1], 'must specify branch')
+  local bdir = M.branchDir(D, br)
+  assert(ix.exists(bdir), bdir..' does not exist')
+  local back = M.backupDir(D, br); ix.mkDirs(back)
+  local id = args[2]
+  if id then
+    id = toint(id); local tip = M.rawtip(bdir)
+    local d = M.depth(bdir)
+    local undo = {}
+    for i=id,tip do
+      local from = M.patchPath(bdir,id, d)
+      local to   = sfmt('%s%s.p', back, id)
+      ix.mv(from, to)
+      push(undo, sfmt('mv %s %s', to, from))
+    end
+    pth.write(back..'UNDO', table.concat(undo, '\n'))
+    io.fmt:styled('notify', sfmt('pruned [%s -> %s]. Undo with %s',
+      id, tip, back..'UNDO'))
+  else
+    ix.mv(bdir, back)
+    io.fmt:styled('notify', sfmt('moved %s -> %s', bdir, back))
+  end
+end
+
+--- [$export branch to/]: copy all patch files in the branch to [$to/].
+---
+--- ["the resulting directory is commonly sent to [$tar -zcvf branch.tar.gz path/]
+---   and then [$branch.tar.gz] sent to a maintainer to be merged
+--- ]
+M.main.export = function(args) --> to
+  local D = popdir(args)
+  local br = assert(args[1], 'must specify branch')
+  local to = pth.toDir(assert(args[2], 'must specify to/ directory'))
+  if ix.exists(to) then error('to/ directory already exists: '..to) end
+
+  local bdir = M.branchDir(D, br)
+  local tip, bbr,bid = M.rawtip(bdir), M.getbase(bdir,nil)
+
+  ix.mkDirs(to..'commit/')
+  pth.write(bdir..'tip', tip)
+  ix.cp(bdir..'commit/depth', to..'commit/depth')
+  if bbr then pth.write(bdir..'base', sfmt('%s#%s', bbr,bid)) end
+  -- Note: if base then first id isn't there
+  for id=bbr and (bid+1) or bid, tip do
+    ix.forceCp(M.patchPath(bdir,id, M.patchPath(to,id)))
+  end
+  io.fmt:styled('notify', sfmt('exported %s to %s', bdir, to))
+  return to
+end
+
+getmetatable(M).__call = getmetatable(M.main).__call
+
+return M

--- /dev/null
+++ cmd/pvc/pvc/unix.lua
@@ -0,0 +1,93 @@
+local G = G or _G
+--------------------------------
+-- Unix Version Control Functions
+-- These shell out to unix for functionality instead of using civboot owned
+-- algorithms.
+local M = G.mod and mod'pvc.unix' or {}
+
+local ix = require'civix'
+local pth = require'ds.path'
+
+local push = table.insert
+local sfmt = string.format
+local trace = require'ds.log'.trace
+local NULL = '/dev/null'
+
+local EMPTY_DIFF = [[
+--- %s
++++ %s
+@@ -0,0 +0,1 @@
++
+]]
+
+local diffCheckPath = function(p, pl) --> p, pl
+  if not p then return NULL, NULL end
+  local st = ix.stat(p); if not st then
+    error(p..' is in .pvcpaths but does not exist')
+  end
+  if st:size() == 0 then error(
+    p..' has a size of 0, which patch cannot handle'
+  )end
+  return p, pl
+end
+
+--- Get the unified diff using unix [$diff --unified=1],
+--- properly handling file creation/deleting
+--- the [$l] variables are the "label" to use.
+--- when the coresponding value is nil then the label is [$/dev/null]
+M.diff = function(a,al, b,bl) --> string?
+  a, al = diffCheckPath(a, al)
+  b, bl = diffCheckPath(b, bl)
+  local o, e, sh = ix.sh{
+    'diff', '-N', a, '--label='..al, b, '--label='..bl,
+    unified='0', stderr=io.stderr, rc=true}
+  trace('diff rc=%i', sh:rc())
+  if sh:rc() > 1 then
+    error('diff failed:\n'..(e or o or '(no std err or out)'))
+  end
+  if o then
+    if sh:rc() ~= 1 then error('unknown return code: '..sh:rc()) end
+    if o:sub(1,3) ~= '---' then
+      error(sfmt('non-diff output from diff %q %q:\n%s\n%s',
+                                            al,bl,  o,  e))
+    end
+    return o
+  end
+  -- https://stackoverflow.com/questions/44427545]])
+  error((a or b)..[[ is empty, which pvc does not support.
+Solution: Add a newline (or any other content) to the file,
+          or delete the file.]])
+end
+
+local patchArgs = function(cwd, path)
+  return {'patch', '-p0', '-fu', input=pth.abs(path), CWD=cwd}
+end
+
+--- forward patch
+M.patch = function(cwd, path)
+  cwd = pth.toDir(cwd)
+  local args = patchArgs(cwd, path); push(args, '-N')
+  trace('sh%q', args)
+  return ix.sh(args) or ''
+end
+
+--- reverse patch
+M.rpatch = function(cwd, path)
+  cwd = pth.toDir(cwd)
+  local args = patchArgs(cwd, path); push(args, '-R')
+  trace('sh%q', args)
+  return ix.sh(args)
+end
+
+--- incorporate all changes that went into going from base to change into to
+M.merge = function(to, base, change) --> ok, err
+  assert(to, 'must provide to')
+  base, change = base or NULL, change or NULL
+  trace('merging t:%s b:%s c:%s', to, base, change)
+  local o, e, sh = ix.sh{'merge', '-A', to, base, change, rc=true}
+  trace('merge rc=%i', sh:rc())
+  if sh:rc() == 0 then return true end
+  return nil, e
+end
+
+return M

--- /dev/null
+++ cmd/pvc/test.lua
@@ -0,0 +1,271 @@
+
+local T = require'civtest'
+
+local pvc = require'pvc'
+local ds = require'ds'
+local pth = require'ds.path'
+local fd = require'fd'
+local ix = require'civix'
+
+local TD, D = 'cmd/pvc/testdata/', '.out/pvc/'
+local pc = pth.concat
+local s = ds.simplestr
+
+fd.ioStd()
+
+--- test some basic internal functions
+T.internal = function()
+  T.eq(0, pvc.calcPatchDepth(1))
+  T.eq(0, pvc.calcPatchDepth(10))
+  T.eq(2, pvc.calcPatchDepth(101))
+end
+
+T.patchPath = function()
+  T.eq('foo/commit/00/1.p', pvc.patchPath('foo', 1, '.p', 2))
+end
+
+local initPvc = function(d) --> projDir
+  d = d or D
+  ix.rmRecursive(d);
+  pvc.init(d)
+  return d
+end
+
+--- test empty files
+T.empty = function()
+  local d = initPvc()
+  T.throws('no differences detected', function()
+    pvc.commit(d, 'empty repo')
+  end)
+  pth.write(d..'empty.txt', '')
+  pth.append(d..'.pvcpaths', 'empty.txt')
+  T.throws('has a size of 0', function()
+    pvc.commit(d, 'commit empty.txt')
+  end)
+end
+
+-- binary not supported
+T.binary = function()
+  local P = initPvc()
+  local bpath, BIN = P..'bin', '\x00\xFF'
+  pth.write(bpath, BIN)
+  pth.append(P..'.pvcpaths', 'bin')
+  T.throws('Binary files /dev/null and bin differ', function()
+    pvc.commit(P, 'commit binary file')
+  end)
+end
+
+-- missing path is an error
+T.missingPath = function()
+  local P = initPvc()
+  pth.append(P..'.pvcpaths', 'file.dne')
+  T.throws('but does not exist', function()
+    pvc.commit(P, 'commit path dne')
+  end)
+end
+
+local HELLO_PATCH1 = [[
+--- /dev/null
++++ hello/hello.lua
+@@ -0,0 +1,5 @@
++local M = {}
++
++M.helloworld = function()
++  print'hello world'
++end
+]]
+
+local STORY_PATCH1 = [[
+--- /dev/null
++++ story.txt
+@@ -0,0 +1,4 @@
++# Story
++This is a story
++about a man
++and his dog.
+]]
+
+--- This test is large but does an entire "common" workflow
+T.workflow = function()
+  ix.rmRecursive(D);
+  -- initialize PVC
+  pvc.init(D)
+  T.eq({'main'}, pvc.branches(D))
+  T.path(D, {
+    ['.pvcpaths'] = '.pvcpaths\n',
+    ['.pvc'] = {
+      at = 'main#0', main = { tip = '0' },
+    },
+  })
+  local Bm = D..'.pvc/main/'
+  T.path(Bm..'commit/', {
+    depth = '2',
+    ['00'] = {
+      ['0.snap'] = {
+        PVC_DONE = '', ['.pvcpaths'] = '.pvcpaths\n',
+      }
+    }
+  })
+
+  -- copy some files and add them
+  ix.cp(TD..'story.txt.1',      D..'story.txt')
+  ix.forceCp(TD..'hello.lua.1', D..'hello/hello.lua')
+
+  pth.append(D..'.pvcpaths', 'story.txt')
+  pth.append(D..'.pvcpaths', 'hello/hello.lua')
+  T.path(D..'.pvcpaths', '.pvcpaths\nstory.txt\nhello/hello.lua\n')
+  T.eq(pvc.Diff{
+    dir1=D..'.pvc/main/commit/00/0.snap/', dir2=D,
+    equal={}, deleted={},
+    changed={'.pvcpaths'}, created={'hello/hello.lua', 'story.txt'},
+  }, pvc.diff(D))
+
+  local DIFF1 = s[[
+  desc1
+  --- .pvcpaths
+  +++ .pvcpaths
+  @@ -1,0 +2,2 @@
+  +hello/hello.lua
+  +story.txt
+
+  ]]
+  ..HELLO_PATCH1
+  ..'\n'
+  ..STORY_PATCH1;
+
+  local br, id = pvc.commit(D, 'desc1')
+  local p1 = pvc.patchPath(Bm, id, '.p')
+  T.path(p1, DIFF1)
+  T.eq({'desc1'}, pvc.desc(p1))
+  pvc.main.desc{'--', 'desc1', '-', 'edited', dir=D}
+  T.eq({'desc1 - edited'}, pvc.desc(p1))
+
+  local STORY1 = pth.read(TD..'story.txt.1')
+  local HELLO1 = pth.read(TD..'hello.lua.1')
+
+  T.path(D, {
+    ['.pvcpaths'] = '.pvcpaths\nhello/hello.lua\nstory.txt\n',
+    ['story.txt'] = STORY1, hello = {['hello.lua'] = HELLO1},
+    ['.pvc'] = { at = 'main#1' }
+  })
+  T.path(Bm, { tip = '1' })
+  T.eq({'main', 1}, {pvc.at(D)})
+  T.eq(pvc.Diff{
+    dir1=D..'.pvc/main/commit/00/1.snap/', dir2=D,
+    equal={'.pvcpaths', 'hello/hello.lua', 'story.txt'},
+    deleted={}, changed={}, created={},
+  }, pvc.diff(D))
+
+  -- go backwards
+  pvc.at(D, 'main', 0)
+  assert(not ix.exists(D..'story.txt'))
+  assert(not ix.exists(D..'hello/hello.lua'))
+  T.path(D..'.pvcpaths', '.pvcpaths\n')
+  T.eq(pvc.Diff{
+    dir1=D..'.pvc/main/commit/00/1.snap/', dir2=D,
+    equal={},
+    deleted={'hello/hello.lua', 'story.txt'},
+    changed={'.pvcpaths'},
+    created={},
+  }, pvc.diff(D, 'main#1'))
+
+  T.throws('ERROR: working id is not at tip.', function()
+    pvc.commit(D, 'desc error')
+  end)
+
+  -- go forwards
+  pvc.at(D, 'main', 1)
+  local EXPECT1 = {
+    ['.pvcpaths'] = '.pvcpaths\nhello/hello.lua\nstory.txt\n',
+    ['story.txt'] = STORY1, hello = { ['hello.lua'] = HELLO1 },
+  }
+  T.path(D, EXPECT1)
+
+  -- change story and delete hello.lua and commit
+  local EXPECT2 = ds.copy(EXPECT1)
+  local STORY2 = pth.read(TD..'story.txt.2')
+  pth.write(D..'story.txt', STORY2); EXPECT2['story.txt'] = STORY2
+  ix.rmRecursive(D..'hello/');       EXPECT2.hello = nil
+  pvc.pathsUpdate(D, nil, --[[rm=]]{'hello/hello.lua'})
+  EXPECT2[pvc.PVCPATHS] = '.pvcpaths\nstory.txt\n'
+  T.path(D, EXPECT2)
+
+  pvc.commit(D, 'desc2')
+  T.path(Bm, { tip = '2' }); T.eq({'main', 2}, {pvc.at(D)})
+  T.path(D, EXPECT2); T.path(Bm..'commit/00/2.snap/', EXPECT2)
+
+  -- Create divergent branch which both modify story.txt
+  local STORY3d = pth.read(TD..'story.txt.3d')
+  local EXPECT3d = ds.copy(EXPECT2)
+    EXPECT3d['story.txt'] = STORY3d
+
+  pvc.branch(D, 'dev', 'main'); pvc.at(D, 'dev')
+  T.eq({'dev', 'main'}, pvc.branches(D))
+  local Bd = D..'.pvc/dev/'
+  T.path(D, EXPECT2);
+  T.eq(Bm..'commit/00/2.snap/', pvc.snapshot(D, 'dev', 2))
+  pth.write(D..'story.txt', STORY3d); T.path(D, EXPECT3d)
+  pvc.commit(D, 'desc3d')
+  T.path(Bd, { tip = '3' }); T.eq({'dev', 3}, {pvc.at(D)})
+  T.eq({'main', 2}, {pvc.getbase(Bd, 'dev')})
+
+  local STORY4d = pth.read(TD..'story.txt.4d')
+  pth.write(D..'story.txt', STORY4d)
+  local EXPECT4d = ds.copy(EXPECT3d, {
+    ['story.txt'] = STORY4d
+  })
+  pvc.commit(D, 'desc4d')
+
+  pvc.at(D, 'main',2)
+  T.path(Bm, { tip = '2' }); T.eq({'main', 2}, {pvc.at(D)})
+  T.path(D, EXPECT2)
+
+  -- diverge main from dev
+  local STORY3m  = pth.read(TD..'story.txt.3')
+  local EXPECT3m = ds.copy(EXPECT2, {['story.txt'] = STORY3m})
+
+  pth.write(D..'story.txt', STORY3m); T.path(D, EXPECT3m)
+  pvc.commit(D, 'desc3')
+
+  -- just test checkout a few times
+  pvc.at(D, 'dev',3);  T.path(D, EXPECT3d)
+  pvc.at(D, 'dev',2);  T.path(D, EXPECT2)
+  pvc.at(D, 'main',3); T.path(D, EXPECT3m)
+  pvc.at(D, 'dev',4);  T.path(D, EXPECT4d)
+
+  -- perform rebase
+  pvc.rebase(D, 'dev',3)
+  T.eq({'dev', 5}, {pvc.rawat(D)})
+  T.eq(3, pvc.rawtip(Bm))
+  T.eq(5, pvc.rawtip(Bd))
+  T.eq({'desc4d'}, pvc.desc(Bd..'commit/00/5.p'))
+
+  local EXPECT5 = ds.copy(EXPECT2, {
+    ['story.txt'] = pth.read(TD..'story.txt.5')
+  })
+  T.path(Bd..'commit/00/5.snap/', EXPECT5)
+  pvc.at(D, 'main',3); T.path(D, EXPECT3m)
+  pvc.at(D, 'dev',4);
+
+  -- dev4 has main3's changes.
+  local EXPECT4 = ds.copy(EXPECT3d, {
+    ['story.txt'] = STORY3d:gsub('unhappy', 'happy'),
+  })
+  T.path(D, EXPECT4)
+
+  pvc.grow(D, 'main', 'dev')
+  T.eq(5, pvc.rawtip(Bm))
+  T.eq({'main', 5}, {pvc.at(D)})
+  assert(not ix.exists(Bd))
+  T.path(pvc.snapshot(D, 'main', 5), EXPECT5)
+  T.path(pvc.snapshot(D, 'main', 4), EXPECT4)
+
+  -- Squash main commit and first dev commit
+  pvc.squash(D, 'main', 3,4)
+  T.eq(4, pvc.rawtip(Bm))
+  T.path(pvc.snapshot(D, 'main', 2), EXPECT2)
+  T.path(pvc.snapshot(D, 'main', 3), EXPECT4)
+  pvc.at(D, 'main',2); T.path(D, EXPECT2)
+  pvc.at(D, 'main',3); T.path(D, EXPECT4)
+  pvc.at(D, 'main',4); T.path(D, EXPECT5)
+end

--- /dev/null
+++ cmd/pvc/testdata/hello.lua.1
@@ -0,0 +1,5 @@
+local M = {}
+
+M.helloworld = function()
+  print'hello world'
+end

--- /dev/null
+++ cmd/pvc/testdata/notes.sh
@@ -0,0 +1,102 @@
+# This file is for playing with the unix diff/patch tools and testing
+# how they interact.
+DNE=.pvc/DNE
+
+D=$PWD
+TD=$PWD/cmd/pvc/testdata
+OD=$PWD/.out/pvc
+
+# Create patch.1 from story.txt and hello.lua
+function create1() {
+  echo create1
+  echo "cd $TD"; cd $TD
+  echo ls;       ls
+  echo creating 1
+  # create comes FROM /dev/null and to the path
+  diff -N --unified=0 /dev/null story.txt.1 --label=/dev/null --label=story.txt \
+    > patch.story.txt.1
+  diff -N --unified=0 /dev/null hello.lua.1 --label=/dev/null --label=hello.lua \
+    > patch.hello.lua.1
+  cat patch.story.txt.1 patch.hello.lua.1 > patch.1
+}
+
+# Create patch.2 from story.txt and delete hello.lua
+function create2() {
+  cd $TD
+  # creating 2 (with deleted hello.lua)
+  diff -N --unified=0 story.txt.1 story.txt.2 --label=story.txt --label=story.txt \
+    > patch.story.txt.2
+  # delete goes TO /dev/null
+  diff -N --unified=0 hello.lua.1 /dev/null  --label=hello.lua  --label=/dev/null \
+    > patch.hello.lua.2
+  cat patch.story.txt.2 patch.hello.lua.2 > patch.2
+}
+
+# Create 3 and 3d (d=dev) which diverge.
+# 3 represents a "main" change whereas 3d must be rebased
+function create3() {
+  cd $TD
+  diff -N --unified=0 story.txt.2 story.txt.3 --label=story.txt --label=story.txt \
+    > patch.3
+  diff -N --unified=0 story.txt.2 story.txt.3d --label=story.txt --label=story.txt \
+    > patch.3d
+}
+
+# renames story.txt -> kitty.txt and applies small diff
+function create5() {
+  cd $TD
+  diff -N --unified=0 story.txt.4 story.txt.5 --label=story.txt --label=kitty.txt \
+    > patch.5
+}
+
+function efile() { echo; echo "## efile: $1"; cat "$1"; }
+
+# apply patch.1
+function patch1() {
+  rm -rf $OD; mkdir $OD; cd $OD
+  patch -Nu --input=$TD/patch.1
+  efile $OD/story.txt
+  efile $OD/hello.lua
+}
+
+# apply patch.2
+function patch2() {
+  cd $OD
+  patch -Nfu --input=$TD/patch.2; echo "rc=$?"
+  efile $OD/story.txt
+  efile $OD/hello.lua
+}
+
+# Reverse patch.2 getting 1 back
+function patch2_1() {
+  cd $OD; patch -Rfu --input=$TD/patch.2
+  efile story.txt
+  efile hello.lua
+}
+
+function patch3 {
+  cd $OD; patch -Nfu --input=$TD/patch.3; echo "rc=$?"
+  efile story.txt
+}
+
+function patch3d {
+  cd $OD; patch -Nfu --input=$TD/patch.3d; echo "rc=$?"
+  efile story.txt
+}
+
+# use merge instead of patch when rebasing / cherry picking
+function rebase4 {
+  cd $OD
+  merge story.txt $TD/story.txt.2 $TD/story.txt.3d
+  efile story.txt
+}
+
+# should happen after rebase4
+function patch5 {
+  cd $OD; patch -Nfu --input=$TD/patch.5; echo "rc=$?"
+  efile story.txt
+  efile kitty.txt
+}
+
+echo "Running $1"
+$1

--- /dev/null
+++ cmd/pvc/testdata/story.txt.1
@@ -0,0 +1,4 @@
+# Story
+This is a story
+about a man
+and his dog.

--- /dev/null
+++ cmd/pvc/testdata/story.txt.2
@@ -0,0 +1,10 @@
+# Story
+This is a story
+about a man
+and his cat.
+
+Him and his cat took
+a swim. The cat was
+very unhappy.
+
+THE END.

--- /dev/null
+++ cmd/pvc/testdata/story.txt.3
@@ -0,0 +1,10 @@
+# Story
+This is a story
+about a man
+and his cat.
+
+Him and his cat took
+a swim. The cat was
+very happy.
+
+THE END.

--- /dev/null
+++ cmd/pvc/testdata/story.txt.3d
@@ -0,0 +1,12 @@
+# Story
+This is a story
+about a man
+and his water cat,
+Sam.
+
+He and Sam cat took
+a swim. The cat was
+very unhappy.
+
+THE END.
+Fin.

--- /dev/null
+++ cmd/pvc/testdata/story.txt.4d
@@ -0,0 +1,12 @@
+# Story
+This is a story
+about a man
+and his water cat,
+Sam.
+
+He and Sam cat took
+a swim. The cat was
+very unhappy.
+
+THE END.
+Finished.

--- /dev/null
+++ cmd/pvc/testdata/story.txt.5
@@ -0,0 +1,12 @@
+# Story
+This is a story
+about a man
+and his water cat,
+Sam.
+
+He and Sam cat took
+a swim. The cat was
+very happy.
+
+THE END.
+Finished.

--- /dev/null
+++ lib/civix/.gitignore
@@ -0,0 +1,3 @@
+**/*.so
+**/*.o
+**/*.dylib

--- /dev/null
+++ lib/civix/Makefile
@@ -0,0 +1,38 @@
+# Copy/pastable Makefile for Lua C sources.
+#
+# Note: `luarocks make` puts the shared library files next to the C file,
+#       which is the convention followed here.
+
+# Modify these for a new library
+NAME  = civix
+FILES = $(NAME)/lib.c
+OUT   = $(NAME)/lib
+LUA_VERSION = lua
+
+UNAME != uname
+build:  $(UNAME)
+NetBSD: $(OUT).so
+Linux:  $(OUT).so
+Darwin: $(OUT).so
+# Windows: $(OUT).dll
+
+$(OUT).so: $(FILES)
+	make Build$(UNAME)
+
+BuildNetBSD:
+	$(CC) -DBSD $(FILES) -fPIC -llua -I/usr/pkg/include/$(LUA_VERSION) -shared -o $(OUT).so
+
+BuildLinux: $(FILES)
+	# vcmd:       $(_VCMD)
+	# vcmd2:      $(_VCMD2)
+	# lua version $(LUA_VERSION)
+	$(CC) $(FILES) -fPIC -l$(LUA_VERSION) -I/usr/include/$(LUA_VERSION) -shared -o $(OUT).so
+
+BuildDarwin:
+	$(CC) $(FILES) $(shell pkg-config lua --cflags) -c -O2 -fPIC   -o $(OUT).o
+	$(CC) $(OUT).o -bundle -undefined dynamic_lookup -all_load     -o $(OUT).so
+
+# BuildWindows: TODO
+
+clean:
+	rm -f $(OUT).o $(OUT).so $(OUT).dll

--- /dev/null
+++ lib/civix/PKG.lua
@@ -0,0 +1,23 @@
+name     = 'civix'
+summary  = "Unix sys library"
+homepage = "https://lua.civboot.org#Package_civix"
+license  = "UNLICENSE"
+version  = '0.1-8'
+url      = 'git+http://github.com/civboot/civlua'
+doc      = 'README.cxt'
+srcs = {
+  'civix.lua',
+  ['civix.lib'] = 'civix/lib.c',
+  'civix/testing.lua',
+}
+libs = {
+  ['civix.lib'] = 'civix/lib.so',
+}
+deps = {
+  "lua ~> 5.3",
+  "shim   ~> 0.1",
+  "fd     ~> 0.1",
+  "metaty ~> 0.1",
+  "ds     ~> 0.1",
+  "lap    ~> 0.1",
+}

--- /dev/null
+++ lib/civix/README.cxt
@@ -0,0 +1,18 @@
+Civboot's unix system library
+
+Civix contains standard unix functions that exist in most language's "sys"
+library such as [$sleep], [$epoch] etc. It also contains a powerful [$Sh{}] type
+and convieience [$sh()] function for executing system shell commands, either
+synchronously or asynchronously using the LAP protocol (see [<#Package_lap>].
+
+[##
+$ lua
+> sh = require'civix'.sh
+> print(sh'ls some/path')
+> -- cat /var/log/syslog | grep "netgroup: version"
+> out = sh{stdin=io.open'/var/log/syslog', 'grep', 'netgroup: version'}
+> for line in require'ds'.lines(out) do ... something per line ... end
+]##
+
+["Civix depends on the [<#Package_fd>] library for async file descriptors and
+  other filedescriptor functionality.]

--- /dev/null
+++ lib/civix/civix.lua
@@ -0,0 +1,522 @@
+-- civix: unix-like OS utilities.
+local M = mod and mod'civix' or {}
+
+local mty  = require'metaty'
+local fmt  = require'fmt'
+local ds   = require'ds'
+local shim = require'shim'
+local lib  = require'civix.lib'; local C = lib
+local fd   = require'fd'
+local lap  = require'lap'
+
+local trace = require'ds.log'.trace
+local pth = require'ds.path'
+local concat, sfmt = table.concat, string.format
+local sort = table.sort
+local push, pop = table.insert, table.remove
+local yield = coroutine.yield
+local pc = pth.concat
+local construct = mty.construct
+
+local type = type
+local fdType = fd.type
+local check = ds.check
+local toDir, toNonDir = pth.toDir, pth.toNonDir
+local cmpDirsLast = pth.cmpDirsLast
+local fmodeName = fd.FMODE.name
+
+--- Block size used as default for file moves/etc
+--- Default is 32 KiB
+M.BLOCK_SZ = 1 << 15
+
+--- Stat object with mode() and modified() functions
+M.Stat = C.Stat
+
+--- Given two Stat objects return whether their modifications
+--- are equal
+M.statModifiedEq = function(fs1, fs2)
+  local s1, ns1 = fs1:modified()
+  local s2, ns2 = fs2:modified()
+  return (s1 == s2) and (ns1 == ns2)
+end
+
+--- Given a path|File|Stat return a Stat
+M.stat = function(v) --> Stat?, errmsg?
+  if getmetatable(v) == M.Stat then return v end
+  if type(v) == 'string'       then return lib.stat(v) end
+  return lib.stat(fd.fileno(v))
+end
+
+--- return whether two Stat's have equal modification times
+M.statModifiedEq = function(fs1, fs2) --> boolean
+  local s1, ns1 = fs1:modified()
+  local s2, ns2 = fs2:modified()
+  return (s1 == s2) and (ns1 == ns2)
+end
+
+--- return whether two path|File|Stat have equal modification times
+M.modifiedEq = function(a, b)
+  return M.statModifiedEq(M.stat(a), M.stat(b))
+end
+
+-- TODO: actually implement
+lib.getpagesize = function() return 4096 end
+
+ds.update(M, {
+  -- file types
+  SOCK = "sock", LINK = "link",
+  FILE = "file", BLK  = "blk",
+  DIR  = "dir",  CHR  = "chr",
+  FIFO = "fifo",
+
+  dir = lib.dir, rm=lib.rm, rmdir = lib.rmdir,
+  exists = lib.exists,
+
+  -- TODO: probably good to catch return code for cross-filesystem
+})
+
+--- Move path from old -> new, throwing an error on failure.
+M.mv = function(old, new) assert(os.rename(old, new)) end
+
+--- Read data from fd [$from] and write to fd [$to], then flush.
+M.fdWrite = function(to, from, sz--[[=BLOCK_SZ]]) --> (to, from)
+  sz = sz or M.BLOCK_SZ
+  while true do
+    local b = check(2, from:read(sz)); if not b then break end
+    assert(to:write(b))
+  end assert(to:flush())
+  return to, from
+end
+
+--- copy data from [$from] to [$to]. Their types can be either
+--- a string (path) or a file descriptor.
+M.cp = function(from, to)
+  local fd, fc, td, tc -- f:from, t:to, d:descriptor, c:close
+  if type(from) == 'string' then fd = assert(io.open(from, 'r')); fc = 1
+                            else fd = from end
+  if type(to)   == 'string' then td = assert(io.open(to, 'w')); tc = 1
+                            else td = to end
+  M.fdWrite(td, fd)
+  if fc then fd:close() end; if tc then td:close() end
+end
+
+--- swap paths a <-> b
+M.swap = function(a, b, ext)
+  ext = ext or '.SWAP'
+  M.mv(a, a..ext); M.mv(b, a); M.mv(a..ext, a)
+end
+
+--- set the modified time of the path|file
+M.setModified = function(f, sec, nsec) --> ok, errmsg?
+  local close
+  if type(f) == 'string' then f = io.open(f); close = true end
+  local ok, err = lib.setmodified(fd.fileno(f), sec, nsec)
+  if close then f:close() end
+  return ok, err
+end
+
+-------------------------------------
+-- Utility
+
+--- quote the str if it's possible
+M.quote = function(str)
+  if string.find(str, "'") then return nil end
+  return "'" .. str .. "'"
+end
+
+--- "global" shell settings
+M.SH_SET = { debug=false, host=false }
+
+-------------------------------------
+-- Time Functions
+
+--- Sleep for the specified duration
+M.sleep = function(d) --> nil
+  if type(d) == 'number' then d = ds.Duration:fromSeconds(d) end
+  if d.s >= 0 then lib.nanosleep(d.s, d.ns) end
+end
+
+--- Return the Epoch/Mono time
+--- Time according to realtime clock
+M.epoch   = function() return ds.Epoch(lib.epoch())   end
+--- Duration according to monotomically incrementing clock.
+M.mono    = function() return ds.Duration(lib.mono()) end
+M.monoSec = function() return M.mono():asSeconds()    end
+
+-------------------------------------
+-- Core Filesystem
+
+local function qp(p)
+  return fmt.assertf(M.quote(p), 'path cannot contain "\'": %s', p)
+end
+
+M.pathtype = function(path)
+  local stat, err = lib.stat(path)
+  if not stat then return nil, err end
+  return fmodeName(C.S_IFMT & stat:mode())
+end
+
+--- return if the contents of the two paths are equal.
+--- If both are directories return true (do not recurse).
+--- If both don't exist return true
+M.pathEq = function(path1, path2)
+  local ty1, ty2 = M.pathtype(path1), M.pathtype(path2)
+  if ty1 ~= ty2              then return false end
+  if not ty1 or ty1 == 'dir' then return true end
+  return pth.read(path1) == pth.read(path2)
+end
+
+M.isFile = function(path) return M.pathtype(path) == 'file' end
+M.isDir  = function(path) return M.pathtype(path) == 'dir'  end
+local isFile = M.isFile
+
+local function _walkcall(ftypeFns, path, ftype, err)
+  if err then return ftypeFns.error(path, err) end
+  local fn = ftypeFns[ftype] or ftypeFns.default
+  if fn then return fn(path, ftype) end
+end
+
+local function _walk(base, ftypeFns, maxDepth, depth)
+  local err
+  if maxDepth and depth >= maxDepth then return end
+  for fname, ftype in M.dir(base) do
+    local path = pc{base, fname}
+    if ftype == 'unknown' then
+      ftype, err = M.pathtype(path)
+      if not ftype then ftype = 'error' end
+    end
+    local o = _walkcall(ftypeFns, path, ftype, err)
+    if o == true then return end
+    if o ~= 'skip' and ftype == 'dir' then
+      _walk(path, ftypeFns, maxDepth, depth + 1)
+    end
+  end
+  if ftypeFns.dirDone then ftypeFns.dirDone(base, 'dir') end
+end
+
+--- TODO: remove this
+--- walk the paths up to depth, calling [$ftypeFns[ftype]] for
+--- each item encountered.
+---
+--- If depth is nil/false then the depth is infinite.
+---
+--- ftypeFns must be a table of ftypes (file, dir) and: [+
+---  * default: called as fallback (if missing ftype key)
+---  * error: called if determining the type caused an error,
+---    typically due to the file not existing.
+---    the call is: error(path, errstr)
+---  * dirDone: called AFTER the directory has been walked
+--- ]
+---
+--- The Fn signatures are: (path, ftype) -> stopWalk
+--- If either return true then the walk is ended immediately
+--- If dirFn returns 'skip' then the directory is skipped
+M.walk = function(paths, ftypeFns, maxDepth)
+  for _, path in ipairs(paths) do
+    assert('' ~= path, 'empty path')
+    local ftype, err = M.pathtype(path)
+    _walkcall(ftypeFns, path, ftype, err)
+    if ftype == 'dir' then _walk(path, ftypeFns, maxDepth, 0) end
+  end
+end
+
+--- Walk the directory tree as a iterator of [$path, ftype]. Can walk either a
+--- single path [$Walk'path/'] or a list of paths [$Walk{'a/', 'b.txt'}]. [+
+--- * Note: all [$ftype=='dir'] paths end in [$/].
+--- * Warning: you may want to handle [$ftype=='error']
+--- ]
+M.Walk = mty'Walk' {
+  'maxDepth [int]: maximum depth to walk (default=infinite)',
+  'pi [int]: the current (root) path index being walked', pi = 0,
+  '_dirs [table]: a stack of WalkDirs that are being walked',
+}
+getmetatable(M.Walk).__call = function(T, t)
+  if type(t) == 'string' then t = {t} end
+  t._dirs = {}
+  return construct(T, t)
+end
+---- get the depth of the current directory being walked
+M.Walk.depth = function(w) return #w._dirs end
+--- skip the current directory level
+M.Walk.skip = function(w) pop(w._dirs) end
+M.Walk.__call = function(w) --> path, ftype
+  local pi = w.pi if pi > #w then return end
+  while #w._dirs > 0 do
+    local path, err = w._dirs[#w._dirs](w) -- DFS: top of stack
+    if path then return path, err end
+    pop(w._dirs) -- else _WalkDir is done, pop it.
+  end
+  pi = pi + 1; w.pi = pi;
+  local path = w[pi]; if not path then return end
+  local ftype = M.pathtype(path)
+  if ftype == 'dir' then path = toDir(path); w:_deeper(path)
+  else                   path = toNonDir(path) end
+  return path, ftype -- emit the 'root' path
+end
+--- walk one level deeper by pushing onto _dirs stack.
+M.Walk._deeper = function(w, path)
+  if not w.maxDepth or #w._dirs <= w.maxDepth then
+    push(w._dirs, M._WalkDir{base=path})
+  end
+end
+
+--- Walk a single directory
+M._WalkDir = mty'_WalkDir' {
+  'ftypes [table]: path -> ftype map',
+  '_i [int]: current index',
+  'base [string]: base directory',
+}
+getmetatable(M._WalkDir).__call = function(T, t)
+  local base, ftypes = t.base, {}
+  for fname, ftype in M.dir(base) do
+    local path = pc{base, fname}
+    if ftype == 'unknown' then ftype = M.pathtype(path) end
+    path = (ftype=='dir') and toDir(path) or toNonDir(path)
+    push(t, path); ftypes[path] = ftype
+  end
+  sort(t, cmpDirsLast) -- always return files first
+  t._i, t.ftypes = 0, ftypes
+  return construct(T, t)
+end
+M._WalkDir.__call = function(wd, walk) --> path, ftype
+  local i = wd._i; if i >= #wd then return end
+  i = i + 1; wd._i = i
+  local path = wd[i]; local ftype = wd.ftypes[path]
+  if i > 0 and ftype == 'dir' then walk:_deeper(path) end
+  return path, ftype
+end
+
+--- recursively copy [$from/] to new [$to/] directory.
+M.cpRecursive = function(from, to, except)
+  assert(M.isDir(from),    'from must be a directory')
+  assert(not M.exists(to), 'to must not exist')
+  from, to = pth.toDir(from), pth.toDir(to)
+  M.mkDirs(to);
+  local w = M.Walk{from}
+  for fpath, ftype in w do
+    local path = fpath:sub(#from)
+    if except and except[path] then w:skip()
+    elseif ftype == 'dir' then M.mkDirs(to..path)
+    else                       M.cp(fpath, to..path) end
+  end
+end
+
+local RM_FNS = {dir = ds.noop, default = M.rm, dirDone = M.rmdir }
+M.rmRecursive = function(path)
+  if not M.exists(path) then return end
+  M.walk({path}, RM_FNS, nil)
+end
+M.mkDirs = function(path)
+  if type(path) == 'string' then path = pth(path) end
+  local dir = ''; for _, c in ipairs(path) do
+    dir = pc{dir, c}
+    local ok, errno = lib.mkdir(dir)
+    if ok or (errno == C.EEXIST) then -- directory created or exists
+    else fmt.errorf('failed to create directory: %s (%s)', 
+                    dir, lib.strerrno(errno)) end
+  end
+end
+M.mkDir = function(path, parents) --!!> nil
+  if parents then M.mkDirs(pth(path))
+  else fmt.assertf(lib.mkdir(path), "mkdir failed: %s", path) end
+end
+
+--- copy [$from] to [$to], creating the directory structure if necessary.
+M.forceCp = function(from, to)
+  M.rmRecursive(to); M.mkDirs( (pth.last(to)) )
+  M.cp(from, to)
+end
+
+--- write [$text] to [$path], creating the directory structure if necessary.
+M.forceWrite = function(path, text)
+  M.rmRecursive(path); M.mkDirs( (pth.last(path)) )
+  pth.write(path, text)
+end
+
+--- mkTree(tree) builds a tree of files and dirs at `dir` [+
+--- * Dirs  are tables.
+--- * Files are string or fd -- which are read+closed.
+--- ]
+--- Example: [{## lang=lua}
+--- tree = {
+---   a = {
+---     ['a1.txt'] = 'stuff in a1.txt',
+---     ['a2.txt'] = 'stuff in a.txt',
+---     a3 = {
+---       ['a4.txt'] = io.open'some/file.txt',
+---     }
+---   }
+--- }
+--- ]##
+---
+--- Builds a tree like [#
+--- a/a1.txt    # content: stuff in a1.txt
+--- a/a2.txt    # content: stuff in a2.txt
+--- a/a3/a4.txt # content: stuff in a3.txt
+--- ]#
+M.mkTree = function(dir, tree, parents) --!!> nil
+  M.mkDir(dir, parents)
+  for name, v in pairs(tree) do
+    local p = pc{dir, name, type(v) == 'table' and '/' or nil}
+    if fdType(v) then
+      local f = M.fdWrite(assert(io.popen(p, 'w')), v)
+      f:close(); v:close()
+    elseif type(v) == 'string' then pth.write(p, v)
+    elseif type(v) == 'table'  then M.mkTree(p, v)
+    else error('invalid tree value of type '..type(v)) end
+  end
+end
+
+M.Lap = function() return lap.Lap {
+  sleepFn=M.sleep, monoFn=M.monoSec, pollList=fd.PollList(),
+}end
+
+--- Start args on the shell
+--- ["Suggestion: use civix.sh instead.]
+---
+--- [$Sh:start()] kicks off a subprocess which start the shell using the fds
+--- you pass in or creating them if you set them to true. Created file
+--- descriptors will be stored in the associated name.
+---
+--- ["Why? This means that [$:close()] will only close filedescriptors created
+---        by the shell itself, and you won't accidentially close
+---        io.stdout/etc.]
+---
+--- Examples (see civix.sh for more examples): [{table}
+--- # Lua                                                  | Bash
+--- + [$Sh({'ls', 'foo/bar'}, {stdout=io.stdout}):start()] | [$ls foo/bar]
+--- + [$v = Sh{'ls foo/bar', stdout=true}:start():read'a']  | [$v=$(ls foo/bar)]
+--- ]
+M.Sh = mty'Sh' {
+  "args [table]: arguments to pass to shell",
+  "stdin  [file|bool]: shell's stdin to send  (default=empty)",
+  "stdout [file|bool]: shell's stdout              (default=empty)",
+  "stderr [file|bool]: shell's stderr              (default=empty)",
+  "env [list]:  shell's environment {'FOO=bar', ...}",
+  "cwd [string]: current working directory",
+  '_sh [userdata]: internal C implemented shell',
+}
+getmetatable(M.Sh).__index = function(sh, k)
+  local shv = rawget(sh, '_sh', k)
+  if shv then return shv end
+  if rawget(sh, '__fields')[k] then return nil end
+  error('unknown field: '..k)
+end
+
+local function _fnomaybe(f, default)
+  if type(f) == 'boolean' then return f end
+  return f and fd.fileno(f) or default
+end
+--- start the shell in the background.
+--- Example: [$sh{arg1, arg2, stdin=nostdin, stdout=true, stderr=io.stderr}]
+--- ["Note: See Sh for how filedescriptors are set]
+M.Sh.start = function(sh)
+  local r, w, l = fd.newFD(), fd.newFD(), fd.newFD()
+  local ex, _r, _w, _l = lib.sh(
+    sh.args[1], sh.args, sh.env,
+    _fnomaybe(sh.stdin), _fnomaybe(sh.stdout, true),
+    _fnomaybe(sh.stderr, fd.sys.STDERR_FILENO),
+    sh.cwd
+  )
+  sh._sh = assert(ex, 'INTERNAL: lib.sh returned nil')
+  if _r then r:_setfileno(_r); r:toNonblock() else r = nil end
+  if _w then w:_setfileno(_w); w:toNonblock() else w = nil end
+  if _l then l:_setfileno(_l); l:toNonblock() else l = nil end
+  sh.stdin, sh.stdout, sh.stderr = w, r, l
+  return sh
+end
+
+M.Sh.isDone = function(sh) return sh._sh:isDone() end
+M.Sh.rc     = function(sh) return sh._sh:rc()     end
+
+--- wait for shell to complete, returns return code
+M.Sh.wait = function(sh) --> int
+  if LAP_ASYNC then
+    while not sh:isDone() do yield('sleep', 0.005) end
+  else sh._sh:wait() end
+  return sh:rc()
+end
+
+
+M.ShFin = mty'ShFin'{
+  'stdin [file]', 'stdout [file]', 'stderr [file]',
+  "input [string]: write to then close stdin (either self's or shell's)",
+}
+--- finish files (in sh or other) by writing other.input to stdin and reading
+--- stdout/stderr.  All processes are done asynchronously
+M.Sh.finish = function(sh, other) --> out, err
+  other = M.ShFin(other or {})
+  local inpf = other.stdin  or sh.stdin
+  local outf = other.stdout or sh.stdout
+  local errf = other.stderr or sh.stderr
+  if not (other.input or outf or errf) then return end
+  local fns, out, err = {}
+  if other.input then assert(inpf, 'provided input without stdin')
+    push(fns, function()
+      inpf:write(other.input); inpf:close()
+    end)
+  end
+  if outf then push(fns, function() out = outf:read'a' end) end
+  if errf then push(fns, function() err = errf:read'a' end) end
+  if LAP_ASYNC then lap.all(fns) else M.Lap():run(fns) end
+  return out, err
+end
+M.Sh.write = function(sh, ...) return sh.stdin:write(...) end
+M.Sh.read  = function(sh, ...) return sh.stdout:read(...) end
+
+M._sh = function(cmd) --> Sh
+  local pk, sh, other = ds.popk, {}, {}
+  if type(cmd) == 'string' then cmd = shim.parseStr(cmd)
+  else
+    sh.stdin  = pk(cmd, 'stdin')
+    sh.stdout = pk(cmd, 'stdout')
+    sh.stderr = pk(cmd, 'stderr')
+    sh.env    = pk(cmd, 'ENV')
+    sh.cwd    = pk(cmd, 'CWD')
+  end
+  sh.args = shim.expand(cmd)
+  if type(sh.stdin) == 'string' then
+    if #sh.stdin > fd.PIPE_BUF then -- may block, use tmpfile
+      local t = fd.tmpfile(); t:write(sh.stdin); t:seek'set'
+      sh.stdin = t
+    else other.input = sh.stdin; sh.stdin = true end
+  end
+  return M.Sh(sh), other
+end
+
+--- Execute the command in another process via execvp (system shell). Throws an
+--- error if the command fails.
+---
+--- if cmd is a table, the following keys are treated as special. If you need any
+--- of these then you must use M.Sh directly (recommendation: use Plumb) [+
+--- * [$stdin[string|file]] the process's stdin. If string it will be sent to stdin.
+--- * [$stdout[file]] the process's stdout. out will be nil if this is set
+--- * [$stderr[file]] the process's stderr (default=io.stderr)
+--- * [$ENV [table]] the process's environment.
+--- * [$CWD [table]] the process's current directory.
+--- * [$rc [bool]] if true allow non-zero return codes (else throw error).
+---   You can get the rc with [$sh:rc()] (method on 3rd return argument).
+--- ]
+---
+--- Note: use [$Plumb{...}:run()] if you want to pipe multiple shells together.
+--- [{table}
+--- # Command                               Bash
+--- + [$sh'ls foo/bar']                    | [$ls foo/bar]
+--- + [$sh{'ls', 'foo/bar', 'dir w spc/'}] | [$ls foo/bar "dir w spc/"]
+--- + [$sh{stdin='sent to stdin', 'cat'}]  | [$echo "sent to stdin" | cat]
+--- ]
+M.sh = function(cmd) --> out, err, sh
+  trace('sh%q', cmd)
+  local rcOk; if type(cmd) == 'table' then rcOk = ds.popk(cmd, 'rc') end
+  local sh, other = M._sh(cmd)
+  sh:start()
+  local out, err = sh:finish(other)
+  local rc = sh:wait();
+  if not rcOk and rc ~= 0 then fmt.errorf(
+    'Command failed with rc=%s: %q%s', rc, cmd,
+    (out and (#out > 0) and ('\nSTDOUT:\n'..out) or '')
+  )end
+  return out, err, sh
+end
+
+return M

--- /dev/null
+++ lib/civix/civix/lib.c
@@ -0,0 +1,375 @@
+#include <stdlib.h>
+
+#include <string.h>
+#include <stdbool.h>
+#include <errno.h>
+#include <assert.h>
+
+#include <lua.h>
+#include <lualib.h>
+#include <lauxlib.h>
+
+#include <unistd.h>
+#include <dirent.h>
+#include <time.h>
+#include <poll.h>
+#include <signal.h>
+#include <sys/wait.h>
+#include <sys/stat.h>
+
+#ifdef BSD
+extern char** environ;
+static void clearenv() { *environ = NULL; }
+#endif
+
+// ---------------------
+// -- Utilities
+typedef lua_State LS;
+typedef struct stat STAT;
+
+#define ASSERT(L, OK, ...) \
+  if(!(OK)) { luaL_error(L, __VA_ARGS__); }
+#define SERR strerror(errno)
+
+#define L_setmethod(L, KEY, FN) \
+  lua_pushcfunction(L, FN); lua_setfield(L, -2, KEY);
+
+static bool l_defaulttrue(LS *L, int index) {
+  return lua_isnoneornil(L, index) || lua_toboolean(L, index);
+}
+
+// Return a string array with null-terminated end.
+// Note: you MUST free it.
+char** checkstringarray(LS *L, int index, int* lenOut) {
+  lua_len(L, index); int len = luaL_checkinteger(L, -1); lua_pop(L, 1);
+  char** arr = malloc(sizeof(char*) * (len + 1));
+  for(int i = 0; i < len; i++) {
+    lua_geti(L, index, i + 1); arr[i] = (char*)luaL_checkstring(L, -1);
+    lua_pop(L, 1);
+  }
+  arr[len] = NULL; *lenOut = len;
+  return arr;
+}
+
+static int l_strerrno(LS* L) {
+  lua_pushstring(L, strerror(luaL_checkinteger(L, 1))); return 1;
+}
+
+// ---------------------
+// -- Time
+int gettime(LS *L, clockid_t clk_id) {
+  struct timespec spec = {};
+  clock_gettime(clk_id, &spec);
+  lua_pushinteger(L, spec.tv_sec);
+  lua_pushinteger(L, spec.tv_nsec);
+  return 2;
+} int l_epoch(LS *L) { return gettime(L, CLOCK_REALTIME);  }
+  int l_mono(LS *L)  { return gettime(L, CLOCK_MONOTONIC); }
+
+int l_nanosleep(LS*L) {
+  struct timespec req, rem;
+  req.tv_sec  = luaL_checkinteger(L, 1); req.tv_nsec = luaL_checkinteger(L, 2);
+  while(nanosleep(&req, &rem)) req = rem;
+  return 0;
+}
+
+// ---------------------
+// -- Dir iterator and other functions
+
+// mkdir(path, mode=0777) -> ok, errno
+//   note: 0777 is octal.
+int l_mkdir(LS* L) {
+  const char* path = luaL_checkstring(L, 1);
+  mode_t mode = luaL_optinteger(L, 2, 0777);
+  if(mkdir(path, mode)) {
+    lua_pushnil(L); lua_pushinteger(L, errno); return 2;
+  }
+  lua_pushboolean(L, true); return 1;
+}
+
+static int rmfn(LS* L, char* name, int fn(const char*)) {
+  const char* path = luaL_checkstring(L, 1);
+  bool rerr = lua_toboolean(L, 2);
+  if(!fn(path)) return 0;
+  ASSERT(L, rerr, "failed to %s: %s (%s)", name, path, SERR);
+  lua_pushinteger(L, errno); return 1;
+}
+// rm(path, reterrno) -> errno: removes path
+// if reterrno just returns errno on failure, else fails
+static int l_rm(LS* L)    { return rmfn(L, "rm",    unlink); }
+static int l_rmdir(LS* L) { return rmfn(L, "rmdir", rmdir); }
+static int l_copy(LS* L) { // copy(from, to) -> errno
+  const char* old = luaL_checkstring(L, 1);
+  const char* new = luaL_checkstring(L, 2);
+  bool rerr       = lua_toboolean(L, 3);
+  if(!rename(old, new)) return 0;
+  ASSERT(L, rerr, "failed to rename %s -> %s: %s", old, new, SERR);
+  lua_pushinteger(L, errno); return 1;
+}
+static int l_exists(LS* L) {
+  const char* path = luaL_checkstring(L, 1);
+  lua_pushboolean(L, 0 == access(path, F_OK)); return 1;
+}
+
+const char* DIR_META = "civix.Dir";
+#define toldir(L) (DIR**)luaL_checkudata(L, 1, DIR_META)
+
+static void DIR_gc(DIR** dir) {
+  if(*dir) { closedir(*dir); *dir = NULL; }
+}
+static int l_dir_gc(LS *L) { DIR_gc(toldir(L)); return 0; }
+
+// Each time called return next: (name, ftype) or nil
+static int dir_iter(LS *L) {
+	DIR** dir = (DIR**) luaL_checkudata(L, lua_upvalueindex(1), DIR_META);
+  if(*dir == NULL) return 0; // already freed
+  struct dirent* ent;
+skip:
+  if((ent = readdir(*dir)) == NULL) {
+    DIR_gc(dir); return 0; // done, free *DIR immediately
+  }
+  if((0==strcmp(".", ent->d_name)) || (0==strcmp("..", ent->d_name)))
+    { goto skip; }
+  lua_pushstring(L, ent->d_name);
+  switch(ent->d_type) {
+#define DCASE(VAL, STR) case VAL: lua_pushstring(L, STR); break;
+    DCASE(DT_BLK, "blk");   DCASE(DT_CHR, "chr");  DCASE(DT_DIR, "dir");
+    DCASE(DT_FIFO, "fifo"); DCASE(DT_LNK, "link"); DCASE(DT_REG, "file");
+    DCASE(DT_SOCK, "sock"); DCASE(DT_UNKNOWN, "unknown");
+#undef DCASE
+    default:         lua_pushnil(L);
+  }
+  return 2;
+}
+
+// return (name, ftype) iterator. Skips "." and ".."
+static int l_dir(LS *L) {
+  const char* path = luaL_checkstring(L, 1);
+  DIR** dir = (DIR**)lua_newuserdata(L, sizeof(DIR*)); // stack: dir
+  luaL_setmetatable(L, DIR_META);
+  ASSERT(L, *dir = opendir(path), "cannot open %s: %s", path, SERR);
+  lua_pushcclosure(L, dir_iter, 1);                    // stack: (empty)
+  return 1;
+}
+
+// ---------------------
+// -- Stat
+const char* STAT_META = "civix.Stat";
+#define tolstat(L) ((STAT**)luaL_checkudata(L, 1, STAT_META))
+static void STAT_gc(STAT** st) { if(*st) { free(*st); *st = NULL; } }
+static int l_stat_gc(LS* L)    { STAT_gc(tolstat(L)); return 0; }
+
+// path -> (stat?, err)
+static int l_stat(LS* L) {
+  STAT** st = (STAT**)lua_newuserdata(L, sizeof(STAT*)); // stack: dir
+  if (!st) { lua_pushnil(L); lua_pushstring(L, "OOM"); return 2; }
+  *st = NULL; luaL_setmetatable(L, STAT_META);
+  *st = malloc(sizeof(STAT));
+  if (!*st) { lua_pushnil(L); lua_pushstring(L, "OOM"); return 2; }
+  int rc = lua_isnumber(L, 1)
+      ? fstat(lua_tonumber(L, 1), *st)
+      : stat(luaL_checkstring(L, 1), *st);
+  if(rc) { lua_pushnil(L); lua_pushstring(L, SERR); return 2; }
+  return 1;
+}
+
+static int l_stat_mode(LS *L) {
+  lua_pushinteger(L, (*tolstat(L))->st_mode); return 1;
+}
+
+// stat -> (sec, nsec)
+static int l_stat_modified(LS *L) {
+  STAT* st = *tolstat(L);
+  lua_pushinteger(L, st->st_mtim.tv_sec);
+  lua_pushinteger(L, st->st_mtim.tv_nsec);
+  return 2;
+}
+
+// stat -> (size)
+static int l_stat_size(LS *L) {
+  STAT* st = *tolstat(L);
+  lua_pushinteger(L, st->st_size); return 1;
+}
+
+// (fd, modified_s, modified_ns) --> error?
+static int l_setmodified(LS* L) {
+  int fno = luaL_checkinteger(L, 1);
+  struct timespec times[2];
+  times[0].tv_sec  = 0; times[0].tv_nsec = UTIME_OMIT; // omit access
+  times[1].tv_sec  = luaL_checkinteger(L, 2);
+  times[1].tv_nsec = luaL_checkinteger(L, 3);
+  if(futimens(fno, times)) { lua_pushstring(L, strerror(errno)); return 1; }
+  return 0;
+}
+
+// ---------------------
+// -- Shell
+const char* SH_META  = "civix.Sh";
+#define tolsh(L) ((struct sh*)luaL_checkudata(L, 1, SH_META))
+
+struct sh {
+  pid_t pid; char** env; // note: env only set if needs freeing
+  int rc; // return code of wait
+};
+
+struct sh* sh_wait(struct sh* sh, int flags) {
+  if(sh->pid) {
+    siginfo_t infop = {0};
+    if(waitid(P_PID, sh->pid, &infop, WEXITED | flags)) {
+      fprintf(stderr, "ERROR: waitid failed\n");
+      return sh;
+    }
+    if(infop.si_pid) {
+      sh->pid = 0; sh->rc = infop.si_status;
+    }
+  }
+  return sh;
+}
+
+static void sh_gc(struct sh* sh) {
+  if(sh->pid) { kill(sh->pid, SIGKILL); sh_wait(sh, 0); }
+  if(sh->env) { free(sh->env); sh->env = NULL; }
+}
+static int l_sh_gc(LS *L) { sh_gc(tolsh(L)); return 0; }
+
+// () -> isDone: asynchronously determine whether Sh is done.
+static int l_sh_isDone(LS *L) {
+  lua_pushboolean(L, !sh_wait(tolsh(L), WNOHANG)->pid);
+  return 1;
+}
+
+static int l_sh_rc(LS *L) {
+  lua_pushinteger(L, tolsh(L)->rc);
+  return 1;
+}
+
+// () -> : block until Sh is done.
+static int l_sh_wait(LS *L) {
+  sh_wait(tolsh(L), 0);
+  return 0;
+}
+
+// (command, argList, envList=nil, stdin, out, err, CWD) -> (sh, r, w)
+// Note: all file-descriptors are integers
+// Note: file descriptors are only returned if they have been created
+//   by pipe(), they are not returned if they were passed in.
+#define CLOSE(fno) if(fno >= 0) { close(fno); }
+static int l_sh(LS *L) {
+  const char* command = luaL_checkstring(L, 1);
+  char **env = NULL; int _unused;
+  char **argv = checkstringarray(L, 2, &_unused);
+  if(!lua_isnoneornil(L, 3)) { env = checkstringarray(L, 3, &_unused); }
+  bool createdChR = false, createdChW = false, createdChL = false;
+
+  int topi = lua_gettop(L); // FIXME: remove
+  struct sh* sh = (struct sh*)lua_newuserdata(L, sizeof(struct sh));
+  assert(!lua_isnil(L, -1));
+  *sh = (struct sh) { .env = env };
+  luaL_setmetatable(L, SH_META);
+
+  // ch_r=child-read, pr_w=parent-write, etc
+  int rw[2];
+  int ch_r = -1, ch_w = -1; int pr_r = -1, pr_w = -1, pr_l = -1, ch_l = -1;
+  // process stdin
+  if(lua_isinteger(L, 4)) ch_r = lua_tointeger(L, 4);
+  else if (lua_toboolean(L, 4)) {
+    createdChR = true; if(pipe(rw)) goto error; ch_r  = rw[0]; pr_w  = rw[1];
+  }
+  // process stdout
+  if(lua_isinteger(L, 5)) ch_w = lua_tointeger(L, 5);
+  else if (lua_toboolean(L, 5)) {
+    createdChW = true; if(pipe(rw)) goto error; pr_r  = rw[0]; ch_w  = rw[1];
+  }
+  // process stderr
+  if(lua_isinteger(L, 6)) ch_l = lua_tointeger(L, 6);
+  else if (lua_toboolean(L, 6)) {
+    createdChL = true; if(pipe(rw)) goto error; pr_l  = rw[0]; ch_l  = rw[1];
+  }
+
+  const char* cwd = luaL_optstring(L, 7, NULL);
+
+  int pid = fork(); if(pid == -1) goto error;
+  else if(pid == 0) { // child
+    CLOSE(pr_r); CLOSE(pr_w); CLOSE(pr_l);
+    if(ch_w != STDOUT_FILENO) { dup2(ch_w,  STDOUT_FILENO); close(ch_w); }
+    else if(ch_w < 0) close(STDOUT_FILENO);
+    if(ch_r != STDIN_FILENO)  { dup2(ch_r,  STDIN_FILENO);  close(ch_r); }
+    else if (ch_r < 0) close(STDIN_FILENO);
+    if(ch_l != STDERR_FILENO) { dup2(ch_l,  STDERR_FILENO); close(ch_l); }
+    else if (ch_l < 0) close(STDERR_FILENO);
+    if(env) {
+      clearenv(); while(*env) { putenv(*env); env += 1; }
+    }
+    if(cwd) chdir(cwd);
+    execvp(command, argv);
+    if(errno) fprintf(stderr, "execvp\"%s\"(%s [%i])\n",
+          command, SERR, errno);
+    return 1;
+  } // else parent
+  sh->pid = pid;
+  // only return if we created the fileno. Also, close child-side pipes
+  if(createdChW) { close(ch_w); lua_pushinteger(L, pr_r); } else lua_pushnil(L);
+  if(createdChR) { close(ch_r); lua_pushinteger(L, pr_w); } else lua_pushnil(L);
+  if(createdChL) { close(ch_l); lua_pushinteger(L, pr_l); } else lua_pushnil(L);
+  return 4;
+  error:
+    if(createdChW) CLOSE(ch_w); if(createdChR) CLOSE(ch_r);
+    if(createdChL) CLOSE(ch_l);
+    if(pr_r) close(pr_r);    if(pr_w) close(pr_w); if(pr_l) close(pr_l);
+    luaL_error(L, "failed sh: %s", SERR); return 0;
+}
+#undef CLOSE
+
+
+// ---------------------
+// -- Registry
+static const struct luaL_Reg civix_lib[] = {
+  {"strerrno", l_strerrno},
+  {"epoch", l_epoch}, {"mono", l_mono},
+  {"nanosleep", l_nanosleep},
+  {"dir", l_dir},
+  {"stat", l_stat}, {"setmodified", l_setmodified},
+  {"mkdir", l_mkdir}, {"rm",  l_rm}, {"rmdir", l_rmdir},
+  {"exists", l_exists},
+  {"sh", l_sh},
+  {NULL, NULL}, // sentinel
+};
+
+int luaopen_civix_lib(LS *L) {
+  luaL_newlib(L, civix_lib);
+
+  luaL_newmetatable(L, DIR_META);
+    L_setmethod(L, "__gc", l_dir_gc);
+  lua_setfield(L, -2, "Dir");
+
+  luaL_newmetatable(L, STAT_META);
+    L_setmethod(L, "__gc", l_stat_gc);
+    lua_createtable(L, 0, 3); // __index table
+      L_setmethod(L, "mode",     l_stat_mode);
+      L_setmethod(L, "modified", l_stat_modified);
+      L_setmethod(L, "size",     l_stat_size);
+    lua_setfield(L, -2, "__index");
+  lua_setfield(L, -2, "Stat");
+
+  luaL_newmetatable(L, SH_META);
+    L_setmethod(L, "__gc", l_sh_gc);
+    lua_createtable(L, 0, 3); // __index table
+      L_setmethod(L, "isDone", l_sh_isDone);
+      L_setmethod(L, "wait",   l_sh_wait);
+      L_setmethod(L, "rc",     l_sh_rc);
+    lua_setfield(L, -2, "__index");
+  lua_setfield(L, -2, "Sh");
+
+  #define setconstfield(L, CONST) \
+    lua_pushinteger(L, CONST); lua_setfield(L, -2, #CONST)
+  // st_mode constants
+  setconstfield(L, S_IFMT);
+  setconstfield(L, S_IFSOCK); setconstfield(L, S_IFLNK);
+  setconstfield(L, S_IFREG);  setconstfield(L, S_IFBLK);
+  setconstfield(L, S_IFDIR);  setconstfield(L, S_IFCHR);
+  setconstfield(L, S_IFIFO);
+
+  // important errno's
+  setconstfield(L, EEXIST);
+  return 1;
+}

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

--- /dev/null
+++ lib/civix/test.lua
@@ -0,0 +1,196 @@
+METATY_CHECK = true
+
+local mty = require'metaty'
+local ds = require'ds'
+local pth = require'ds.path'
+local Iter = require'ds.Iter'
+local T = require'civtest'
+local fd = require'fd'
+local ixt = require'civix.testing'
+
+local M  = require'civix'
+local lib = require'civix.lib'
+local D = 'lib/civix/'
+local O = '.out/'
+local push = table.insert
+
+local fin
+local tests = function()
+T.simple = function()
+  local sh, o = M.sh
+  T.eq('/tmp\n', sh{'pwd', CWD='/tmp'})
+
+  T.eq('/tmp thisIsFOO\n',
+    sh{'sh', '-c', 'echo $PWD $FOO',
+       CWD='/tmp', ENV={'FOO=thisIsFOO'}})
+
+  local o, e, sh = M.sh{'false', rc=true}
+  T.eq(1, sh:rc())
+end
+
+-- TODO: this behaves slighlty differently for the different file
+--       descriptor libraries!
+-- FIXME: re-enable async test
+T.testSh = function()
+  local sh, o = M.sh
+
+  T.eq('',           sh'true')
+  T.eq('hi there\n', sh{'echo', 'hi there'})
+  T.eq('from stdin', sh{stdin='from stdin', 'cat'})
+  T.eq('foo --abc=ya --aa=bar --bb=42\n',
+    sh{'echo', 'foo', '--abc=ya', aa='bar', bb=42})
+
+  local path = '.out/echo.test'
+  local f = io.open(path, 'w+')
+  local out, err, s = sh{'echo', 'send to file', stdout=f}
+  T.eq(nil, out); T.eq(nil, err);
+  T.eq(nil, s.stdin); T.eq(nil, s.stdout)
+  T.eq('send to file\n', io.open(path):read'a')
+  f:seek'set'; T.eq('send to file\n', f:read'a')
+
+  f:seek'set'
+  out, err, s = sh{stdin=f, 'cat', stdout=io.open('.out/cat.test', 'w+')}
+  T.eq(nil, out); T.eq(nil, err)
+  T.eq('send to file\n', io.open('.out/cat.test'):read'a')
+
+  out, err, s = sh{'sh', '-c', "echo 'on STDERR' >&2 ", stdout=false, stderr=true}
+  T.eq(nil, out); T.eq('on STDERR\n', err)
+  collectgarbage()
+end
+
+
+T.sh_fail = function()
+  T.throws('Command failed with rc=1', function()
+    M.sh'false'
+  end)
+  T.throws('Command failed with rc=1', function()
+    M.sh{'commandNotExist', 'blah'}
+  end)
+end
+
+T.time = function()
+  local period, e1 = ds.Duration(0.001), M.epoch()
+  for i=1,10 do
+    M.sleep(period)
+    local e2 = M.epoch()
+    local result = e2 - e1; assert((e2 - e1) > period, result)
+    e1 = e2
+  end
+  M.sleep(-2.3)
+  local m = M.mono(); M.sleep(0.001); assert(m < M.mono())
+end
+
+local TEST_TREE = {
+  ['a.txt'] = 'for civix a test',
+  b = {
+    ['b1.txt'] = '1 in dir b/',
+    ['b2.txt'] = '2 in dir b/',
+  },
+}
+
+local function mkTestTree(tree)
+  local d = '.out/civix/'
+  if M.exists(d) then M.rmRecursive(d) end
+  M.mkTree(d, tree or TEST_TREE, true)
+  return d
+end
+
+T.cp = function()
+  pth.write(O..'cp.txt', 'copy this\ndata')
+  M.cp(O..'cp.txt', O..'cp.2.txt')
+  T.eq(pth.read(O..'cp.txt'), pth.read(O..'cp.2.txt'))
+end
+
+T.walk = function()
+  local d = mkTestTree()
+  local paths, types, depths = {}, {}, {}
+  local w = M.Walk{d}; for path, ty in w do
+    push(paths, path); push(types, ty); push(depths, w:depth())
+  end
+  T.eq({
+      ".out/civix/", ".out/civix/a.txt",
+      ".out/civix/b/",
+        ".out/civix/b/b1.txt",
+        ".out/civix/b/b2.txt" }, paths)
+  T.eq({'dir', 'file', 'dir', 'file', 'file'}, types)
+  T.eq({1,     1,      2,     2,       2},     depths)
+  T.eq(nil, w()); T.eq(nil, w());
+
+  local w = M.Walk{d}
+  local saw = {}; local function see(path) push(saw, path) end
+  local skipB = function(path, ptype)
+    return not path:find'/b/' or w:skip()
+  end
+  local expect = {".out/civix/", ".out/civix/a.txt", ".out/civix/b/"}
+  T.eq(expect, Iter{w}:listen(skipB):keysTo())
+
+  w = M.Walk{d}
+  T.eq(
+    {".out/civix/", ".out/civix/a.txt"},
+    Iter{w}:listen(see):filterK(skipB):keysTo())
+  T.eq(expect, saw)
+end
+
+T.mkRmTree = function()
+  local d = mkTestTree()
+  T.eq(pth.read'.out/civix/a.txt', 
+  'for civix a test')
+  T.eq(pth.read'.out/civix/b/b1.txt', '1 in dir b/')
+  T.eq(pth.read'.out/civix/b/b2.txt', '2 in dir b/')
+  M.rmRecursive(d)
+  assert(not M.exists(d))
+end
+
+T.cpTree = function()
+  local d = mkTestTree()
+  local d2 = '.out/civix2'
+  if M.exists(d2) then M.rmRecursive(d2) end
+  M.cpRecursive(d, d2)
+  T.path(d2, TEST_TREE)
+  M.rmRecursive(d2)
+  M.cpRecursive(d, d2, {['b/b2.txt']=true})
+  assert(not M.exists(d2..'b/b2.txt'))
+end
+
+T.stat = function()
+  local path = O..'stat.txt'
+  pth.write(path, 'hello\n')
+  T.eq(6, M.stat(path):size())
+end
+fin = true; end ---------------- end tests()
+
+fd.ioSync();
+fin = false; tests(); assert(fin)
+
+T.SUBNAME = '[ioAsync]'
+fin=false; ixt.runAsyncTest(tests); assert(fin)
+
+T.SUBNAME = ''
+
+-- FIXME: consider re-working and enabling
+-- T.fd_perf = function()
+--   local Kib = string.rep('123456789ABCDEF\n', 64)
+--   local data = string.rep(Kib, 500)
+--   local count, run = 0, true
+--   local res
+--   local O = '.out/'
+--   M.Lap{
+--     -- make sleep insta-ready instead (open/close use it)
+--     sleepFn = function(cor) LAP_READY[cor] = 'sleep' end,
+--   }:run{
+--     function() while run do
+--       count = count + 1; coroutine.yield(true)
+--     end end,
+--     function()
+--       local f = fd.openFDT(O..'perf.bin', 'w+')
+--       f:write(data); f:seek'set'; res = f:read'a'
+--       f:close()
+--       run = false
+--     end,
+--   }
+-- 
+--   assert(data == res)
+--   -- assert(count > 50, tostring(count))
+-- end
+
+fd.ioStd()

--- /dev/null
+++ lib/civtest/PKG.lua
@@ -0,0 +1,14 @@
+name     = 'civtest'
+version  = '0.1-2'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "Ultra simple testing library"
+homepage = "https://lua.civboot.org#Package_civtest"
+license  = "UNLICENSE"
+doc = 'README.cxt'
+srcs = { 'civtest.lua' }
+deps = {
+  "lua    ~> 5.3",
+  "pkg    ~> 0.1",
+  "metaty ~> 0.1",
+  "ds     ~> 0.1",
+}

--- /dev/null
+++ lib/civtest/README.cxt
@@ -0,0 +1,4 @@
+Civtest: absurdly simple test library
+
+This is a no-frills test library. It simply builds on [/lib/metaty] and
+[/lib/ds] to provide the simplest possible needs for testing.

--- /dev/null
+++ lib/civtest/civtest.lua
@@ -0,0 +1,156 @@
+local G = G or _G
+
+--- module for writing simple tests
+local M = G.mod and G.mod'civtest' or setmetatable({}, {})
+M.SUBNAME = ''
+
+local mty = require'metaty'
+local fmt = require'fmt'
+local fbin = require'fmt.binary'
+local ds = require'ds'
+local pth = require'ds.path'
+local lines = require'lines'
+local ix = require'civix'
+
+local getmt = getmetatable
+local push, sfmt = table.insert, string.format
+local function exit(rc) io.stderr:flush(); os.exit(rc) end
+
+local function errordiff(e, r)
+  local f = io.fmt
+  if e == r then return f:styled(
+    'notice', '\n(Formatted strings are equal)'
+  )end
+  io.fmt:styled('error', '\n!! DIFF:', '\n')
+  io.fmt(require'lines.diff'.Diff(e, r));
+end
+local function fail(name)
+  error(sfmt('Failed %s', name), 2)
+end
+
+--- Run the test, printing information to the terminal.
+---
+--- This function computes name=[$name..civtest.SUBNAME]
+--- and sets civtest.NAME to the new name, which can be
+--- used in the test.
+---
+--- ["Note: normally this is called when the user sets
+---   a key to the civtest module, which has __newindex()
+---   overriden to call this function.
+--- ]
+M.runTest = function(name, fn, path)
+  name = name..M.SUBNAME
+  rawset(M, 'NAME', name);
+  io.fmt:styled('h2', sfmt('## Test %-32s', name), ' ')
+  io.fmt:styled('path', pth.nice(path), '\n')
+  return fn()
+end
+
+M.showDiff = function(f, a, b)
+  f:styled('error', '\n!! RESULT:', '\n');   f(b)
+  if mty.ty(a) ~= mty.ty(b) then
+    f:styled('error', '\n!! TYPES:', ' ',
+             mty.name(a), ' != ', mty.name(b), '\n')
+  else
+    if type(a) == 'string' then
+      if #a ~= #b then f:styled('notify', sfmt(
+        '\nLengths: %s ~= %s', #a, #b
+      ))end
+    else a, b = fmt.pretty(a), fmt.pretty(b) end
+    errordiff(a, b)
+  end
+end
+local showDiff = M.showDiff
+
+--- Assert that [$a] equals [$b] (according to [<#metaty.eq>].
+M.eq = function(a, b)
+  if mty.eq(a, b) then return end
+  showDiff(io.fmt, a, b); fail'Test.eq'
+end
+
+-- binary equal
+M.binEq = function(e, r)
+  assert(type(e) == 'string', 'expect must be string')
+  assert(type(r) == 'string', 'result must be string')
+  if e == r then return end
+  if #e ~= #r then io.fmt:styled(
+    'notify', sfmt('binary lengths: %s ~= %s\b', #e, #r)
+  )end
+  errordiff(fbin(e), fbin(r))
+  fail'Test.binEq'
+end
+
+--- assert [$subj:find(pat)]
+M.matches = function(pat, subj) --> !?error
+  if subj:find(pat) then return end
+  local f = io.fmt
+  f:styled('error', '\n!! RESULT:', '\n');   f(subj)
+  f:styled('error', '\n!! Did not match:', sfmt('%q\n', pat))
+  f:styled('error', '!! Failed Test.matches:', ' ')
+  f:styled('path', pth.nice(ds.srcloc(1)), '\n')
+  fail'matches'
+end
+
+--- assert [$subj:find(pat, 1, true)] (plain find)
+M.contains = function(plain, subj) --> !?error
+  if subj:find(plain, 1, true) then return end
+  io.fmt:styled('error', '\n!! RESULT:', '\n');   f(b)
+  io.fmt:styled('error', '\n!! Did not contain:', sfmt('%q\n', plain))
+  io.fmt:styled('error', '!! Failed Test.contains:', ' ')
+  io.fmt:styled('path', pth.nice(ds.srcloc(1)), '\n')
+  fail'contains'
+end
+
+--- assert [$fn()] fails and the [$contains] is in the message.
+M.throws = function(contains, fn) --> ds.Error
+  local ok, err = ds.try(fn)
+  if ok then
+    f:styled('error', '!! Unexpected: did not receive an error')
+    fail'Test.throws (no error)'
+  end
+  if err.msg:find(contains, 1, true) then return err end
+  local f = io.fmt
+  f:styled('error', '\n!! Unexpected Result:', '\n');
+  f:styled('error', 'Actual error:', '\n')
+  f:write(err.msg)
+  f:styled('error', '\n# end actual error', '\n')
+  showDiff(io.fmt, contains, err.msg)
+  fail'Test.throws (not expected)'
+end
+
+--- Assert that the path exists.
+M.exists = function(path)
+  if not require'civix'.exists(path) then error(
+    'does not exist: '..path
+  )end
+end
+
+--- Assert the contents at the two paths are equal
+M.pathEq = function(a, b)
+  local at, bt = pth.read(a), pth.read(b)
+  if at == bt then return end
+  showDiff(io.fmt, at, bt);
+  io.fmt:styled('error', sfmt('Path expected: %s\n       result: %s',
+    a, b), '\n')
+  fail'Test.pathEq'
+end
+
+--- Assert that path matches expect. Expect can be of type:
+--- * string: asserts the file contents match.
+--- * table: recursively assert the subtree contents exist.
+M.path = function(path, expect)
+  M.exists(path)
+  if type(expect) == 'string' then
+    local txt = pth.read(path)
+    if expect == txt then return end
+    io.fmt:styled('error', '!! Path '..path, '\n')
+    showDiff(io.fmt, expect, txt); fail'Test.tree'
+  end
+  if ix.pathtype(path) ~= ix.DIR then error(path..' is not a dir') end
+  for k, v in pairs(expect) do M.path(pth.concat{path, k}, v) end
+end
+
+getmetatable(M).__newindex = function(m, name, fn)
+  return m.runTest(name, fn, select(2, mty.fninfo(fn)))
+end
+return M

--- /dev/null
+++ lib/civtest/test.lua
@@ -0,0 +1,20 @@
+
+local mty = require'metaty'
+local ds  = require'ds'
+local T = require'civtest'
+
+T.civtest = function()
+  T.eq(1, 1)
+  T.eq('hi', 'hi')
+  T.eq({1, 2, a=5}, {1, 2, a=5})
+  T.throws('hi there', function() error('hi there bob') end)
+end
+
+T.global = function()
+  G.testGlobal = true; assert(testGlobal)
+  testGlobal = nil;    assert(nil == G.testGlobal)
+  T.throws('global someGlobal is nil/unset', function()
+    someGlobal = true
+  end)
+  assert(G.someGlobal == nil)
+end

--- /dev/null
+++ lib/diff.lua
@@ -0,0 +1 @@
+-- diff: simple diff datatypes and operations

--- /dev/null
+++ lib/ds/PKG.lua
@@ -0,0 +1,23 @@
+name     = 'ds'
+version  = '0.1-13'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "Tiny data structures and algorithms"
+homepage = "https://lua.civboot.org#Package_ds"
+license  = "UNLICENSE"
+doc      = 'README.cxt'
+deps = {
+  "lua    ~> 5.3",
+  "metaty ~> 0.1",
+  "fmt    ~> 0.1",
+}
+srcs = {
+  'ds.lua',
+  'ds/Iter.lua',
+  'ds/LL.lua',
+  'ds/path.lua',
+  'ds/utf8.lua',
+  'ds/heap.lua',
+  'ds/log.lua',
+  'ds/Grid.lua',
+  'ds/kev.lua',
+}

--- /dev/null
+++ lib/ds/README.cxt
@@ -0,0 +1,23 @@
+[*ds]: absurdly necessary data structures and algorithms
+
+ds is a small-ish lua library which fills many of the data structure and method
+gaps (needed "batteries") in Lua's standard library. It's only dependency is
+[/lib/metaty] which it uses for defining it's records and [/lib/fmt] which it
+uses to define the logging interface.
+
+[{h3}none: "set but none" vs nil's simply "unset"]
+In Lua [$nil] always means "unset". Certain APIs (like JSON) might distinguish
+between unset vs null/empty/none. For such APIs [$none] can be used to mean "set
+as none" instead of simply "unset" (which is what [$nil] means).
+
+[$none] overrides [$__metatable='none'] so that [$getmetatable(none)=='none'] and
+[$metaty.ty(none) == 'none'].
+
+["WARNING: [$assert(none)] will pass.  Use [$ds.bool] to make [$none] falsy.]
+
+[{h3}path]
+[$ds.path] has some functions for working with paths.
+
+It interacts (but does not set) the [*globals] [$CWD] and [$HOME] to get the
+"current working directory" and "home directory", respectively.
+

--- /dev/null
+++ lib/ds/date.lua
@@ -0,0 +1,32 @@
+---------------------
+-- DateTime: a year, day and time
+local mty = require'metaty'
+
+local M = {}
+
+M.DAY_SECONDS = 24 * 60 * 60
+M.MONTH_DAYS = {
+-- jan feb mar apr may jun
+   31, 28, 31, 30, 31, 30,
+-- jul aug sep oct nov dec
+   31, 31, 30, 31, 30, 31,
+}
+M.MONTH_SHORT = {
+  'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
+  'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
+}
+
+M.DateTime = mty'DateTime' {
+  'year[int]',
+  'yearSeconds[int]  seconds into year',
+  'ns[int]           nanoseconds into second',
+}
+M.DateTime.isLeapYear = function(dt) return 0 == dt.year % 4 end
+-- Get the day of the year [0-366]
+M.DateTime.dayOfYear =
+(function(dt) return math.floor(dt.yearSeconds / DAY_SECONDS) end)
+
+M.DateTime.month = function(dt)
+end
+
+return M

--- /dev/null
+++ lib/ds/ds.lua
@@ -0,0 +1,1160 @@
+-- ds: data structures and algorithms
+
+local M = mod and mod'ds' or {}
+
+local mty = require'metaty'
+local fmt = require'fmt'
+local push, pop, sfmt    = table.insert, table.remove, string.format
+local sfind = string.find
+local move, sort, unpack = table.move, table.sort, table.unpack
+local concat             = table.concat
+local ulen, uoff     = utf8.len, utf8.offset
+local min, max = math.min, math.max
+local xpcall, traceback = xpcall, debug.traceback
+local resume = coroutine.resume
+local getmethod = mty.getmethod
+local EMPTY = {}
+
+local sconcat = string.concat -- note: from metaty
+local tupdate  = table.update  -- note: from metaty
+
+M.PlainStyler = mty'PlainStyler' {}
+
+------------------
+-- DS psudo-metaevents
+-- these use new "metaevent" (similar to __len) that tables can override
+
+--- if t is a table returns t.__name or '?'
+M.name = function(t) --> string
+  if not type(t) == 'table' then return end
+  local mt = getmetatable(t)
+end
+
+--- insert values into list at i.
+--- Uses [$__inset] metamethod if available.
+--- rmlen, if provided, will cause [$t[i:i+rmlen]] to be removed first
+M.inset = function(t, i, values, rmlen) --> removed?
+  local meth = getmethod(t, '__inset')
+  if meth then return meth(t, i, values, rmlen) end
+  -- impl notes, there are two modes:
+  -- * we want to keep some values after i: we cache those values then shift in
+  -- * we don't want to keep values after i: we shift in the values and clear
+  --   the rest
+  rmlen = rmlen or 0; local tlen, vlen = #t, #values
+  if tlen - i - rmlen >= 0 then -- we want to keep some values >= i
+    local cache = move(t, i + rmlen, tlen, 1, {})
+    move(values, 1, max(vlen, tlen - i + 1), i, t)
+    move(cache, 1, #cache, i + vlen, t)
+    return t
+  end
+  -- not keeping values >= i
+  return move(values, 1, max(vlen, rmlen), max(1, i + 1 - rmlen), t)
+end
+
+---------------------
+-- Pseudo Types
+
+--- the only four non-mutable data types in lua
+local CONCRETE_TYPES = {
+  ['nil']=true, boolean=true, number=true, string=true
+}
+
+-- return true if the value is "plain old data".
+--
+-- Plain old data is defined as any concrete type or a table with no metatable
+-- and who's pairs() are only POD.
+local isPod; isPod = function(v, mtFn)
+  local ty = type(v)
+  if ty == 'table' then
+    local mt = getmetatable(v)
+    if mt then return mtFn(v, mt) end
+    for k, v in pairs(v) do
+      if not (isPod(k, mtFn) and isPod(v, mtFn)) then
+        return false
+      end
+    end
+    return true
+  end
+  return CONCRETE_TYPES[ty]
+end
+M.isPod, M.CONCRETE_TYPES = isPod, CONCRETE_TYPES
+
+-----------------
+-- Utility
+
+M.SKIP      = 'skip'
+M.noop      = function() end
+M.nosupport = function() error'not supported' end
+M.iden      = function(...) return ... end -- identity function
+M.retTrue   = function() return true  end
+M.retFalse  = function() return false end
+M.newTable  = function() return {}    end
+M.eq        = function(a, b) return a == b end
+
+M.srcloc = function(level) --> "/path/to/dir/file.lua:10"
+  local info = debug.getinfo(2 + (level or 0), 'Sl')
+  local loc = info.source; if loc:sub(1,1) ~= '@' then return end
+  return loc:sub(2)..':'..info.currentline
+end
+M.shortloc = function(level) --> "dir/file.lua:10"
+  local info = debug.getinfo(2 + (level or 0), 'Sl')
+  local loc = info.source; if loc:sub(1,1) ~= '@' then return end
+  return loc:match'^@.-([^/]*/[^/]*)$'..':'..info.currentline
+end
+M.srcdir = function(level) --> "/path/to/dir/"
+  return M.srcloc(1 + (level or 0)):match'^(.*/)[^/]+$'
+end
+
+M.coroutineErrorMessage = function(cor, err) --> string
+  return sconcat('',
+    'Coroutine error: ', debug.stacktraceback(cor, err), '\n',
+    'Coroutine failed!')
+end
+
+---------------------
+-- Order checking functions
+M.isWithin = function(v, min, max) --> bool
+  local out = (min <= v) and (v <= max)
+  return out
+end
+M.lt  = function(a, b) return a < b end
+M.gt  = function(a, b) return a > b end
+M.lte = function(a, b) return a <= b end
+local lte = M.lte
+M.bound = function(v, min, max) --> value within [min,max]
+  return ((v>max) and max) or ((v<min) and min) or v
+end
+M.sort2 = function(a, b) --> (small, large)
+  if a <= b then return a, b end; return b, a
+end
+M.repr = function(v) return sfmt('%q', v) end
+
+---------------------
+-- Number Functions
+M.isEven = function(a) return a % 2 == 0 end --> bool
+M.isOdd  = function(a) return a % 2 == 1 end --> bool
+M.decAbs = function(v) --> number
+  if v == 0 then return 0 end
+  return ((v > 0) and v - 1) or v + 1
+end
+
+---------------------
+-- String Functions
+
+
+-- Concatenate all values in ..., calling tostring on them
+-- if necessary.
+-- This has several differences than table.concat:[+
+-- * it does not require allocating a table to be called.
+-- * it automatically calls tostring on the arguments.
+-- ]
+--
+-- This function is most useful if you have a known number
+-- of arguments or ... which you want to concatenate.
+M.concat = string.concat--(sep, ...) --> string
+
+--- return the string if it is only uppercase letters
+M.isupper = function(c) return c:match'^%u+$' end --> string?
+
+--- return the string if it is only lowercase letters
+M.islower = function(c) return c:match'^%l+$' end --> string?
+
+M.trim = function(subj, pat, index) --> string
+  pat = pat and ('^'..pat..'*(.-)'..pat..'*$') or '^%s*(.-)%s*$'
+  return subj:match(pat, index)
+end
+
+--- find any of a list of patterns. Return the match [$start, end] as well as
+--- the [$index, pat] of the pattern matched.
+M.find = function(subj, pats, si, plain) --> (ms, me, pi, pat)
+  si = si or 1
+  for pi, p in ipairs(pats) do
+    local ms, me = sfind(subj, p, si, plain)
+    if ms then return ms, me, pi, p end
+  end
+end
+
+--- split strings
+M.split = mty.split         --(s, sep) --> strIter
+M.splitList = function(...) --(s, sep) --> list
+  local t = {}; for _, v in mty.split(...) do push(t, v) end
+  return t
+end
+
+--- trim the end of the string by removing pat (default='%s')
+M.trimEnd = function(subj, pat, index) --> string
+  pat = pat and ('^(.-)'..pat..'*$') or '^(.-)%s*$'
+  return subj:match(pat, index)
+end
+
+--- Squash a string: convert all whitespace to repl (default=' ').
+M.squash = function(s, repl) return s:gsub('%s+', repl or ' ') end --> string
+
+--- utf8 sub. If len is pre-computed you can pass it in for better performance.
+M.usub = function(s, si, ei, len)
+  ei = ei or -1
+  if si < 0 then len = len or ulen(s); si = len + si + 1 end
+  local so = uoff(s, si)
+  if not so then return '' end
+  if ei < 0 then
+    if ei == -1 then return s:sub(so) end
+    len = len or ulen(s); ei = len + ei + 1
+  end
+  local eo = uoff(s, ei - si + 2, so) -- offset of character after ei
+  return s:sub(so, eo and (eo - 1) or nil)
+end
+
+--- A way to declare simpler mulitline strings which: [+
+--- * ignores the first/last newline if empty
+--- * removes leading whitespace equal to the first
+---   line (or second line if first line has no indent)
+--- ]
+--- Example: [{## lang=lua}
+--- local s = require'ds'.simplestr
+--- local mystr = s[[
+---   this is
+---     a string.
+--- ]]
+--- T.eq('this is\n  a string.', mystr)
+--- ]##
+M.simplestr = function(s)
+  local i, out, iden, spcs = 1, {}, nil
+  for _, line in M.split(s, '\n') do
+    spcs = line:match'^%s*'
+    if iden then -- later lines, iden already set
+      assert((#spcs == #line) or (#spcs >= #iden), 'invalid indent')
+      push(out, line:sub(#iden + 1))
+    else -- set iden from line 1 (if exists) or line 2
+      iden = (i > 1 or spcs ~= '') and spcs or nil
+      push(out, line:sub(#spcs + 1))
+    end
+    i = i + 1
+  end
+  return concat(out, '\n')
+end
+
+---------------------
+-- Table Functions
+M.isEmpty = function(t) return t == nil or next(t) == nil end
+
+--- the full length of all pairs
+--- ["WARNING: very slow, requires iterating the whole table]
+M.pairlen = function(t) --> int
+  local l = 0; for _ in pairs(t) do l = l + 1 end; return l
+end
+
+--- sort table and return it.
+--- Eventually this may use the [$__sort] metamethod
+M.sort = function(t, fn) sort(t, fn); return t end --> t
+
+--- sort t and remove anything where [$rmFn(v1, v2)]
+--- (normally rmFn is [$ds.eq])
+M.sortUnique = function(t, sortFn, rmFn) --> t
+  sort(t, sortFn); rmFn = rmFn or M.eq
+  local i, len, iv, kv = 1, #t
+  for k=2,len do
+    iv, kv = t[i], t[k]
+    if not rmFn(iv, kv) then
+      i = i + 1; t[i] = kv
+    end
+    k = k + 1
+  end
+  move(EMPTY, i+1, len, i+1, t)
+  return t
+end
+
+--- get index, handling negatives
+M.geti = function(t, i) --> t[i]
+  return (i >= 0) and t[i] or t[#t + i + 1]
+end
+M.last = function(t) return t[#t] end
+
+--- get the first (and assert only) element of the list
+M.only = function(t) --> t[1]
+  local l = #t; fmt.assertf(l == 1, 'not only: len=%s', l)
+  return t[1]
+end
+
+--- get only the values of pairs(t) as a list
+M.values = function(t) --> list
+  local vals = {}; for _, v in pairs(t) do push(vals, v) end
+  return vals
+end
+
+-- get only the keys of pairs(t) as a list
+M.keys = function(t) --> list
+  local keys = {}; for k in pairs(t) do push(keys, k) end
+  return keys
+end
+
+--- next(t, key) but with indexes
+M.inext = ipairs{} --(t, i) --> (i+1, v)
+local inext = M.inext
+
+--- inext but reversed.
+M.iprev = function(t, i) --> (t, i) --> (i-1, v)
+  if i > 1 then return i - 1, t[i - 1] end
+end
+
+--- ipairs reversed
+M.ireverse = function(t) return M.iprev, t, #t + 1 end --> iter
+
+M.rawislice = function(state, i) --> (i+1, v)
+  i = i + 1; if i > state[2] then return end
+  return i, state[1][i]
+end
+
+-- islice(t, starti, endi=#t): iterate over slice.
+--   Unlike other i* functions, this ignores length
+--   except as the default value of endi
+M.islice = function(t, starti, endi) --> iter[starti:endi]
+  if endi then
+    return M.rawislice, {t, endi}, (starti or 1) - 1
+  end
+  return inext, t, (starti or 1) - 1
+end
+
+M.slice = function(t, starti, endi) --> list[starti:endi]
+  local sl = {}
+  for i=starti or 1,endi or #t do push(sl, t[i]) end
+  return sl
+end
+
+--- iend(t, starti, endi=-1): get islice from the end.
+---   starti and endi must be negative.
+---
+--- Example: [$iend({1, 2, 3, 4, 5}, -3, -2) -> 3, 4]
+M.ilast = function(t, starti, endi) --> iter[starti:endi]
+  local len = #t; endi = endi and min(len, len + endi + 1) or len
+  return M.rawislice, {t, endi}, min(len - 1, len + starti)
+end
+
+--- reverse a list-like table in-place
+M.reverse = function(t) --> t (reversed)
+  local l = #t; for i=1, l/2 do
+    t[i], t[l-i+1] = t[l-i+1], t[i]
+  end
+  return t
+end
+
+M.extend = function(t, l) --> t: move vals to end of t
+  local meth = getmethod(t, '__extend')
+  if meth then return meth(t, l) end
+  return move(l, 1, #l, #t + 1, t)
+end
+local extend = M.extend
+
+-- clear(t, startindex=1, len=#t) -> t: set t[si:si+len-1] = nil
+M.clear = function(t, si, len) --> t
+  -- TODO: (len or #t) - si + 1
+  return move(EMPTY, 1, len or #t, si or 1, t)
+end
+-- append one or more values to t
+M.add = function(t, ...) --> t
+  local tend = #t
+  for i=1,select('#', ...) do t[tend + i] = select(i, ...) end
+  return t
+end
+-- make t's index values the same as r's
+M.replace = function(t, r) --> t
+  return move(r, 1, max(#t, #r), 1, t)
+end
+--- return t with the key/vals of add inserted
+M.update = function(t, add) --> t
+  for k, v in pairs(add) do t[k] = v end; return t
+end
+--- return new list which contains all elements inserted in order
+M.flatten = function(...)
+  local t, len = {}, select('#', ...)
+  for i=1,len do extend(t, select(i, ...)) end
+  return t
+end
+
+--- like update but only for specified keys
+M.updateKeys = function(t, add, keys) --> t
+  for _, k in ipairs(keys) do t[k] = add[k] end; return t
+end
+M.orderedKeys = function(t, cmpFn) --> keys
+  local keys = {}; for k in pairs(t) do push(keys, k) end
+  sort(keys, cmpFn)
+  return keys
+end
+--- adds all [$key=index] to the table so the keys can
+--- be iterated using [$for _, k in ipairs(t)]
+M.pushSortedKeys = function(t, cmpFn) --> t
+  local keys = M.orderedKeys(t, cmpFn)
+  for i, k in ipairs(keys) do t[i] = k end
+  return t
+end
+
+--- recursively update t with add. This will call update on inner tables as
+--- well.
+--- ["Note: treats list indexes as normal keys (does not append)]
+M.merge = function(t, add) --> t
+  for k, v in pairs(add) do
+    local ex = t[k] -- existing
+    if type(ex) == 'table' and type(v) == 'table' then
+      M.merge(ex, v)
+    else t[k] = v end
+  end
+  return t
+end
+
+M.popk = function(t, key) --> t[k]: pop key
+  local val = t[key]; t[key] = nil; return val
+end
+
+--- return len items from the end of [$t], removing them from [$t]
+M.drain = function(t, len--[[#t]]) --> table
+  local out = {}; for i=1, min(#t, len) do push(out, pop(t)) end
+  return M.reverse(out)
+end
+
+M.getOrSet = function(t, k, newFn) --> t[k] or newFn()
+  local v = t[k]; if v ~= nil then return v end
+  v = newFn(t, k); t[k] = v
+  return v
+end
+
+M.setIfNil = function(t, k, v) --> nil
+  if t[k] == nil then t[k] = v end
+end
+M.emptyTable = function() return {} end
+
+--- remove (mutate) the left side of the table (list).
+--- noop if rm is not exactly equal to the left side.
+M.rmleft = function(t, rm, eq--[[ds.eq]]) --> t (mutated)
+  eq = eq or ds.eq
+  for i, v in ipairs(rm) do
+    if not t[i] or not eq(v, t[i]) then
+      return
+    end
+  end
+  local l, rl = #t, #rm
+  move(t,     rl + 1, l,  1) -- move to start
+  move(EMPTY, 1,      rl, l - rl + 1, t) -- clear end
+  return t
+end
+
+--- used with ds.get and ds.set. Example [{## lang=lua}
+---   local dp = require'ds'.dotpath
+---   ds.get(t, dp'a.b.c')
+--- ]##
+M.dotpath = function(dots) --> list split by '.'
+  local p = {}; for v in dots:gmatch'[^%.]+' do push(p, v) end
+  return p
+end
+
+--- get the value at the path or nil if the value or any
+--- intermediate table is missing.
+--- [{## lang=lua}
+---   get(t, {'a', 2, 'c'})  -> t.a?[2]?.c?
+---   get(t, dotpath'a.b.c') -> t.a?.b?.c?
+--- ]##
+M.get = function(t, path) --> value? at path
+  for _, k in ipairs(path) do
+    t = t[k]; if t == nil then return nil end
+  end
+  return t
+end
+
+--- same as ds.get but uses [$rawget]
+M.rawget = function(t, path) --> value? at path
+  for _, k in ipairs(path) do
+    t = rawget(t, k); if t == nil then return nil end
+  end
+  return t
+end
+
+--- set the value at path using newFn (default=ds.newTable) to create
+--- missing intermediate tables.
+--- [{## lang=lua}
+--- set(t, dotpath'a.b.c', 2) -- t.a?.b?.c = 2
+--- ]##
+M.set = function(d, path, value, newFn) --> nil
+  newFn = newFn or M.emptyTable
+  local len = #path; assert(len > 0, 'empty path')
+  for i=1,len-1 do d = M.getOrSet(d, path[i], newFn) end
+  d[path[len]] = value
+end
+
+M.indexOf = function(t, find) --> int
+  for i, v in ipairs(t) do
+    if v == find then return i end
+  end
+end
+
+M.indexOfPat = function(strs, pat) --> int
+  for i, s in ipairs(strs) do if s:find(pat) then return i end end
+end
+
+--- popit (aka pop-index-top) will return the value at [$t[i]], replacing it
+--- with the value at the end (aka top) of the list.
+---
+--- if [$i > #t] returns nil and doesn't affect the size of the list.
+M.popit = function(t, i) --> t[i] and length of t is reduced by 1
+  local len = #t; if i > len then return end
+  local o = t[i]; t[i] = t[len]; t[len] = nil
+  return o
+end
+
+--- Walk the table up to depth maxDepth (or infinite if nil) [+
+--- * [$fieldFn(key, value, state)    -> stop] is called for every non-table value.
+--- * [$tableFn(key, tblValue, state) -> stop] is called for every table value
+--- ]
+---
+--- If tableFn [$stop==ds.SKIP] (i.e. 'skip') then that table is not recursed.
+--- Else if stop then the walk is halted immediately
+M.walk = function(t, fieldFn, tableFn, maxDepth, state) --> nil
+  if maxDepth then
+    maxDepth = maxDepth - 1; if maxDepth < 0 then return end
+  end
+  for k, v in pairs(t) do
+    if type(v) == 'table' then
+      if tableFn then
+        k = tableFn(k, v, state); if k then
+          if k == M.SKIP then goto skip end
+          return
+        end
+      end
+      M.walk(v, fieldFn, tableFn, maxDepth, state)
+    elseif fieldFn and fieldFn(k, v, state) then return end
+    ::skip::
+  end
+end
+
+--- A typo-safe table, typically used in libraries for storing constants.
+---
+--- Adding keys is always allowed but getting non-existant keys is an error.
+M.TypoSafe = mty'TypoSafe'{}
+getmetatable(M.TypoSafe).__call = mty.constructUnchecked
+getmetatable(M.TypoSafe).__index = mty.index
+M.TypoSafe.__newindex = nil
+
+
+---------------------
+-- Untyped Functions
+
+--- Copy list-elements only
+M.icopy = function(t) --> list
+  local meth = getmethod(t, '__icopy')
+  if meth then return meth(t) end
+  return move(t, 1, #t, 1, {})
+end
+
+--- Copy and update full table
+M.copy = function(t, update) --> new t
+  return setmetatable(
+    update and tupdate(tupdate({}, t), update) -- copy+update
+            or tupdate({}, t)                  -- copy
+    , getmetatable(t))
+end
+
+M.deepcopy = function(t) --> table
+  local out = {}; for k, v in pairs(t) do
+    if 'table' == type(v) then v = M.deepcopy(v) end
+    out[k] = v
+  end
+  return setmetatable(out, getmetatable(t))
+end
+
+---------------------
+-- File Functions
+M.readPath = function(path) --!!> string
+  local f, out, err = assert(io.open(path))
+  out, err = f:read('a'); f:close()
+  return assert(out, err)
+end
+
+M.writePath = function(path, text) --!!> nil
+  local f = fmt.assertf(io.open(path, 'w'), 'invalid %s', path)
+  local out, err = f:write(text); f:close(); assert(out, err)
+end
+
+---------------------
+-- Source Code Functions
+
+--- convert lines-like table into chunk for eval
+M.lineschunk = function(dat) --> iter()
+  local i = 1
+  return function() -- alternates between next line and newline
+    local o = '\n'; if i < 0 then i = 1 - i
+    else  o = dat[i];             i =   - i end
+    if o == '' then assert(i < 0); o = '\n'; i = 1 - i end
+    return o
+  end
+end
+
+--- evaluate lua code
+M.eval = function(chunk, env, name) --> (ok, ...)
+  assert(type(env) == 'table')
+  if not name then
+    local i = debug.getinfo(3)
+    name = sfmt('%s:%s', i.source, i.currentline)
+  end
+  local e, err = load(chunk, name, 't', env)
+  if err then return false, err end
+  return pcall(e)
+end
+
+---------------------
+-- Low-level Types
+
+--- Weak key table, see docs on [$__mode]
+M.WeakK = setmetatable(
+  {__name='WeakK', __mode='k'}, {
+  __name='Ty<WeakK>', __call=mty.constructUnchecked,
+})
+
+--- Weak value table, see docs on [$__mode]
+M.WeakV = setmetatable(
+  {__name='WeakV', __mode='v'}, {
+  __name='Ty<WeakV>', __call=mty.constructUnchecked,
+})
+
+--- Weak key+value table, see docs on [$__mode]
+M.WeakKV = setmetatable(
+  {__name='WeakKV', __mode='kv'}, {
+  __name='Ty<WeakKV>', __call=mty.constructUnchecked,
+})
+
+--- Table that ignores new indexes. Used to disable caching in tests.
+M.Forget = setmetatable(
+  {__name='Forget', __newindex=M.noop},
+  {__name='Ty<Forget>', __call=mty.constructUnchecked}
+)
+
+--- Table that errors on missing key
+M.Checked = setmetatable(
+  {__name='Checked', __metatable='table',
+   __index=function(_, k) error('unknown key: '..k) end,
+  },
+  {__name='Ty<Checked>', __call=mty.constructUnchecked}
+)
+
+
+--- A slice of anything with start and end indexes.
+--- ["Note: This object does not hold a reference to the object being
+---   sliced.]
+M.Slc = mty'Slc' {
+  'si [int]: start index',
+  'ei [int]: end index',
+}
+local Slc = M.Slc
+M.Slc.__len = function(s) return s.ei - s.si + 1 end --> #s
+
+--- return either a single (new) merged or two sorted Slcs.
+M.Slc.merge  = function(a, b) --> first, second?
+  if a.si > b.si     then a, b = b, a end -- fix ordering
+  if a.ei + 1 < b.si then return a, b end -- check overlap
+  return Slc{si=a.si, ei=max(a.ei, b.ei)}
+end
+
+M.Slc.__fmt = function(s, fmt) --> string
+  fmt:write(sfmt('Slc[%s:%s]', s.si, s.ei))
+end
+
+---------------------
+-- Sentinal, none type, bool()
+
+local _si=function() error('invalid operation on sentinel', 2) end
+--- [$sentinel(name, metatable)]
+--- Use to create a "sentinel type". Return the (singular) instance.
+---
+--- Sentinels are "single values" commonly used for things like: none, empty, EOF, etc.
+--- They have most metatable methods disallowed and are immutable down. Methods can
+--- only be set by the provided metatable value.
+M.sentinel = function(name, mt) --> NewType
+  mt = M.update({
+    __name=name, __tostring=function() return name end,
+    __newindex=_si, __len=_si, __pairs=_si,
+    __pairs = function() return M.noop end,
+  }, mt or {})
+  mt.__index = mt
+  setmetatable(mt, {__name='Ty<'..name..'>', __index=mty.indexError})
+  local S = setmetatable({}, mt)
+  mt.__toPod   = function() return S end
+  mt.__fromPod = function(_, pod, v)
+    if v ~= S then error('expected '..name..' got '..type(v)) end
+    return v
+  end
+  rawset(S, '__toPod', mt.__toPod)
+  rawset(S, '__fromPod', mt.__fromPod)
+  return S
+end
+
+--- none: "set as none" vs nil aka "unset"
+---
+--- none is a sentinel value. Use it in APIs where there is an
+--- "unset but none" such as JSON's "null".
+M.none = M.sentinel('none', {__metatable='none'})
+
+--- convert to boolean (none aware)
+M.bool = function(v) --> bool
+  return not rawequal(M.none, v) and v and true or false
+end
+
+--- An immutable empty table
+M.empty = setmetatable({}, {
+  __newindex = function() error('mutate ds.empty', 2) end,
+  __metatable = 'table',
+})
+
+--- Immutable table
+M.Imm = mty'Imm' {}
+local IMM_DATA = '<!imm data!>'
+getmetatable(M.Imm).__call = function(T, t)
+  return setmetatable({[IMM_DATA]=(next(t) ~= nil) and t or nil}, T)
+end
+M.Imm.__metatable = 'table'
+M.Imm.__newindex = function() error'cannot modify Imm table' end
+M.Imm.__index    = function(t, k)
+  local d = rawget(t, IMM_DATA); return d and d[k]
+end
+M.Imm.__pairs    = function(t) return next, rawget(t, IMM_DATA) or t end
+M.Imm.__len      = function(t)
+  local d = rawget(t, IMM_DATA); return not d and 0 or #d
+end
+
+M.empty = M.Imm{}
+
+---------------------
+-- Duration
+local NANO  = 1000000000
+local function durationSub(s, ns, s2, ns2)
+  s, ns = s - s2, ns - ns2
+  if ns < 0 then
+    ns = NANO + ns
+    s = s - 1
+  end
+  return s, ns
+end
+
+local function assertTime(t)
+  assert(math.floor(t.s) == t.s,   'non-int seconds')
+  assert(math.floor(t.ns) == t.ns, 'non-int nano-seconds')
+  assert(t.ns < NANO, 'ns too large')
+  return t
+end
+
+local timeNew = function(T, s, ns)
+  if ns == nil then return T:fromSeconds(s) end
+  local out = {s=s, ns=ns}
+  return setmetatable(assertTime(out), T)
+end
+local fromSeconds = function(ty_, s)
+  local sec = math.floor(s)
+  return ty_(sec, math.floor(NANO * (s - sec)))
+end
+local fromMs = function(ty_, s)     return ty_(s / 1000) end
+local fromMicros = function(ty_, s) return ty_(s / 1000000) end
+local asSeconds = function(time) return time.s + (time.ns / NANO) end
+
+M.Duration = mty'Duration' {
+  's[int]: seconds', 'ns[int]: nanoseconds',
+}
+getmetatable(M.Duration).__call = timeNew
+
+M.Duration.NANO = NANO
+M.Duration.fromSeconds = fromSeconds
+M.Duration.fromMs = fromMs
+M.Duration.asSeconds = asSeconds
+M.Duration.__sub = function(self, r)
+  assert(mty.ty(r) == M.Duration)
+  local s, ns = durationSub(self.s, self.ns, r.s, r.ns)
+  return M.Duration(s, ns)
+end
+M.Duration.__add = function(self, r)
+  assert(mty.ty(r) == M.Duration)
+  local s, ns = durationSub(self.s, self.ns, -r.s, -r.ns)
+  return M.Duration(s, ns)
+end
+M.Duration.__lt = function(self, o)
+  if self.s < o.s then return true end
+  return self.ns < o.ns
+end
+M.Duration.__fmt = nil
+M.Duration.__tostring = function(self) return self:asSeconds() .. 's' end
+
+M.DURATION_ZERO = M.Duration(0, 0)
+
+---------------------
+-- Epoch: time since the unix epoch. Interacts with duration.
+M.Epoch = mty'Epoch' {
+  's[int]: seconds', 'ns[int]: nanoseconds',
+}
+getmetatable(M.Epoch).__call = timeNew
+
+M.Epoch.fromSeconds = fromSeconds
+M.Epoch.asSeconds = asSeconds
+M.Epoch.__sub = function(self, r)
+  assert(self);     assert(r)
+  assertTime(self); assertTime(r)
+  local s, ns = durationSub(self.s, self.ns, r.s, r.ns)
+  if mty.ty(r) == M.Duration then return M.Epoch(s, ns) end
+  assert(mty.ty(r) == M.Epoch, 'can only subtract Duration or Epoch')
+  return M.Duration(s, ns)
+end
+M.Epoch.__lt = function(self, o)
+  if self.s < o.s then return true end
+  return self.ns < o.ns
+end
+M.Epoch.__fmt = nil
+M.Epoch.__tostring = function(self)
+  return string.format('Epoch(%ss)', self:asSeconds())
+end
+
+---------------------
+-- Set
+M.Set = mty'Set'{}
+M.Set.__newindex = nil
+getmetatable(M.Set).__index = nil
+getmetatable(M.Set).__call = function(T, t)
+  local s = {}
+  for _, k in ipairs(t) do s[k] = true end
+  return mty.constructUnchecked(T, s)
+end
+
+M.Set.__fmt = function(self, f) --> nil
+  f:write('Set', f.tableStart)
+  local keys = {}; for k in ipairs(self) do push(keys, k) end
+  sort(keys)
+  if #keys > 1 then f:level(1) end
+  for i, k in ipairs(keys) do
+    f(k)
+    if i < #keys then f:write(f.indexEnd) end
+  end
+  if #keys > 1 then f:level(-1) end
+  f:write(f.tableEnd)
+end
+
+M.Set.__eq = function(self, t) --> bool
+  local len = 0
+  for k in pairs(self) do
+    if not t[k] then return false end
+    len = len + 1
+  end
+  for _ in pairs(t) do -- ensure lengths are the same
+    len = len - 1
+    if len < 0 then return false end
+  end
+  return true
+end
+
+M.Set.union = function(self, s) --> Set
+  local both = M.Set{}
+  for k in pairs(self) do if s[k] then both[k] = true end end
+  return both
+end
+
+--- items in self but not in s
+M.Set.diff = function(self, s) --> Set
+  local left = M.Set{}
+  for k in pairs(self) do if not s[k] then left[k] = true end end
+  return left
+end
+
+---------------------
+-- Binary Search
+
+local function _bs(t, v, cmp, si, ei)
+  if ei <= si + 1 then -- cannot narrow further
+    return cmp(t[ei], v) and ei
+        or cmp(t[si], v) and si or (si - 1)
+  end
+  local mi = (si + ei) // 2
+  if cmp(t[mi], v) then return _bs(t, v, cmp, mi, ei)
+  else                  return _bs(t, v, cmp, si, mi - 1) end
+end
+
+--- Search the sorted table, return i such that: [+
+--- * [$cmp(t[i], v)] returns true  for indexes <= i
+--- * [$cmp(t[i], v)] returns false for indexes >  i
+--- ]
+--- If you want a value perfectly equal then check equality
+--- on the resulting index.
+M.binarySearch = function(t, v, cmp, si--[[1]], ei--[[#t]]) --> index
+  return _bs(t, v, cmp or lte, si or 1, ei or #t)
+end
+
+---------------------
+-- Binary Tree
+
+--- indexed table as Binary Tree.
+--- These functions treat an indexed table as a binary tree
+--- where root is at [$index=1]
+M.bt = mod and mod'bt' or {}
+M.bt.left = function(t, i)    return t[i * 2]     end
+M.bt.right = function(t, i)   return t[i * 2 + 1] end
+M.bt.parent = function(t, i)  return t[i // 2]    end
+M.bt.lefti = function(t, i)   return   i * 2      end
+M.bt.righti = function(t, i)  return   i * 2 + 1  end
+M.bt.parenti = function(t, i) return   i // 2     end
+
+---------------------
+-- Directed Acyclic Graph
+
+--- Functions for working with directed acyclic graphs.
+M.dag = mod and mod'dag' or {}
+
+local function _dagSort(st, name, parents)
+  if st.visited[name] then return end; st.visited[name] = true
+  if parents then for _, pname in ipairs(parents) do
+    _dagSort(st, pname, st.depsMap[pname])
+  end end
+  push(st.out, name)
+end
+
+--- Sort the directed acyclic graph. depsMap must behave like a table which:
+--- [{## lang=lua}
+---   for pairs(depsMap) -> nodeName, ...
+---   depsMap[nodeName]  -> nodeDeps (list)
+--- ]##
+---
+--- If depsMap is a map of pkg -> depPkgs then the result is the order the pkgs
+--- should be built.
+---
+--- Note: this function does NOT detect cycles.
+M.dag.sort = function(depsMap) --> sortedDeps
+  local state = {depsMap=depsMap, out={}, visited={}}
+  for name, parents in pairs(depsMap) do
+    _dagSort(state, name, parents)
+  end
+  return state.out
+end
+
+M.dag.reverseMap = function(childrenMap) --> parentsMap (or vice-versa)
+  local pmap = {}
+  for pname, children in pairs(childrenMap) do
+    M.getOrSet(pmap, pname, M.emptyTable)
+    if children then for _, cname in ipairs(children) do
+      push(M.getOrSet(pmap, cname, M.emptyTable), pname)
+    end end
+  end
+  return pmap
+end
+
+--- Given a depsMap return missing deps (items in a deps with no name).
+M.dag.missing = function(depsMap) --> missingDeps
+  local missing = {}; for n, deps in pairs(depsMap) do
+    for _, dep in ipairs(deps) do
+      if not depsMap[dep] then missing[dep] = true end
+    end
+  end
+  return missing
+end
+
+---------------------
+-- BiMap
+
+--- Bidirectional Map.
+--- Maps both [$key -> value] and [$value -> key].
+--- Must use [$:remove] (instead of [$bm[k] = nil] to handle deletions.
+---
+--- Note that [$pairs()] will return BOTH directions (in an unspecified order)
+M.BiMap = mty'BiMap'{}
+M.BiMap.__fields   = nil
+M.BiMap.__fmt      = nil
+M.BiMap.__tostring = nil
+
+getmetatable(M.BiMap).__call = function(ty_, t)
+  local rev = {}; for k, v in pairs(t) do rev[v] = k end
+  for k, v in pairs(rev) do t[k] = v end
+  return setmetatable(t, ty_)
+end
+M.BiMap.__newindex = function(t, k, v)
+  rawset(t, k, v); rawset(t, v, k)
+end
+getmetatable(M.BiMap).__index = nil
+M.BiMap.remove = function(t, k) --> v
+  local v = t[k]; t[k] = nil; t[v] = nil; return v
+end
+
+---------------------
+-- Deq Buffer
+
+--- [$Deq() -> Deq], a deque
+--- Use as a first in/out with [$deq:push(v)/deq()]
+---
+--- Main methods: [##
+---   pushLeft()  pushRight()
+---   popLeft()   popRight()
+--- ]##
+--- Calling it is the same as popLeft (use as iterator)
+M.Deq = mty'Deq'{
+  'right [number]',
+  'left  [number]'
+}
+getmetatable(M.Deq).__call = function(T)
+  return mty.construct(T, {right=0, left=1})
+end
+M.Deq.pushRight = function(deq, val)
+  local r = deq.right + 1; deq[r] = val; deq.right = r
+end
+--- extend deq to right
+M.Deq.extendRight = function(deq, vals) --> nil
+  local r, vlen = deq.right, #vals
+  move(vals, 1, vlen, r + 1, deq)
+  deq.right = deq.right + vlen
+end
+M.Deq.pushLeft = function(deq, val) --> nil
+  local l = deq.left - 1;  deq[l] = val; deq.left = l
+end
+--- extend deq to left ([$vals[1]] is left-most)
+M.Deq.extendLeft = function(deq, vals) --> nil
+  local vlen = #vals
+  deq.left = deq.left - vlen
+  move(vals, 1, vlen, deq.left, deq)
+end
+M.Deq.popLeft = function(deq) --> v
+  local l = deq.left; if l > deq.right then return nil end
+  local val = deq[l]; deq[l] = nil; deq.left = l + 1
+  return val
+end
+M.Deq.popRight = function(deq) --> v
+  local r = deq.right; if deq.left > r then return nil end
+  local val = deq[r]; deq[r] = nil; deq.right = r - 1
+  return val
+end
+M.Deq.push = M.Deq.pushRight --(d, v) --> nil
+M.Deq.__len = function(d) return d.right - d.left + 1 end --> #d
+M.Deq.pop = M.Deq.popLeft --> (d) -> v
+M.Deq.__call = M.Deq.pop  --> () -> v
+M.Deq.clear = function(deq) --> nil: clear deq
+  local l = deq.left; move(EMPTY, l, deq.right, l, deq)
+  deq.left, deq.right = 1, 0
+end
+M.Deq.drain = function(deq) --> table: get all items and clear deq
+  local t = move(deq, deq.left, deq.right, 1, {})
+  deq:clear(); return t
+end
+
+-----------------------
+-- Handling Errors
+
+--- Throw an error if [$select(i, ...)] is truthy, else return ...
+---
+--- For example, [$file:read'L'] returns [$line?, errmsg?].
+--- However, the absence of line doesn't necessarily
+--- indicate the presence of errmsg: EOF is just [$nil].
+---
+--- Therefore you can use [$line = check(2, f:read'L')]
+--- to only assert on the presence of errmsg.
+M.check = function(i, ...) --!!> ...
+  if select(i, ...) then error(tostring(select(i, ...))) end
+  return ...
+end
+
+M.IGNORE_TRACE = {
+  [""]=true,
+  ['stack traceback:']=true,
+  ["[C]: in function 'error'"]=true,
+  ["[C]: in ?"]=true,
+}
+--- convert the string traceback into a list
+M.tracelist = function(tbstr, level) --> {traceback}
+  tbstr = tbstr or traceback(2 + (level or 0))
+  local ig, tb = M.IGNORE_TRACE, {}
+  for l in tbstr:gmatch'%s*([^\n]*)' do
+    if not ig[l] then push(tb, l) end
+  end
+  return tb
+end
+M.traceback = function(level) --> string
+  return concat(M.tracelist(nil, 1 + (level or 0)), '\n    ')
+end
+
+--- Error message, traceback and cause
+--- NOTE: you should only use this for printing/logging/etc.
+M.Error = mty'Error' {
+  'msg [string]', 'traceback [table]', 'cause [Error]',
+}
+M.Error.__fmt = function(e, f)
+  f:write('ERROR: ', e.msg)
+  if e.traceback then
+    f:write'\ntraceback:\n'
+    for _, l in ipairs(e.traceback) do
+      f:write('  ', l, '\n')
+    end
+  end
+  if e.cause then
+    f:write'\nCaused by: '
+    f(e.cause); f:write'\n'
+  end
+end
+M.Error.__tostring = function(e) return fmt(e) end
+
+--- create the error from the arguments.
+--- tb can be one of: [$coroutine|string|table]
+M.Error.from = function(msg, tb, cause) --> Error
+  tb = (type(tb) == 'thread') and traceback(tb) or tb
+  return M.Error{
+    msg=msg:match'^%S+/%S+:%d+: (.*)' or msg, -- remove line number
+    traceback=(type(tb) == 'table') and tb or M.tracelist(tb),
+    cause=cause,
+  }
+end
+
+--- for use with xpcall. See: try
+M.Error.msgh = function(msg, level) --> Error
+  return M.Error.from(msg, traceback('', (level or 1) + 1))
+end
+
+--- try to run the fn. Similar to pcall. Return one of: [+
+--- * successs: [$(true, ...)]
+--- * failure: [$(false, ds.Error{...})]
+--- ]
+M.try = function(fn, ...) --> (ok, ...)
+  return xpcall(fn, M.Error.msgh, ...)
+end
+
+--- Same as coroutine.resume except uses a ds.Error object for errors
+--- (has traceback)
+M.resume = function(th) --> (ok, err, b, c)
+  local ok, a, b, c = resume(th)
+  if ok then return ok, a, b, c end
+  return nil, M.Error.from(a, th)
+end
+
+-----------------------
+-- Import helpers
+
+--- auto-set nil locals using require(mod)
+--- [$local x, y, z; ds.auto'mm' -- sets x=mm.x; y=mm.y; z=mm.z]
+M.auto = function(mod, i) --> (mod, i)
+  mod, i = type(mod) == 'string' and require(mod) or mod, i or 1
+  while true do
+    local n, v = debug.getlocal(2, i)
+    if not n then break end
+    if nil == v then
+      if not mod[n] then error(n.." not in module", 2) end
+      debug.setlocal(2, i, mod[n])
+    end
+    i = i + 1
+  end
+  return mod, i
+end
+
+--- indexrequire: [$R.foo] is same as [$require'foo']
+--- This is mostly used in scripts/etc
+M.R = setmetatable({}, {
+  __index=function(_, k) return require(k) end,
+  __newindex=function() error"don't set fields" end,
+})
+
+--- Include a resource (raw data) relative to the current file.
+---
+--- Example: [$M.myData = ds.resource'data/myData.csv']
+M.resource = function(relpath)
+  return require'ds.path'.read(M.srcdir(1)..relpath)
+end
+
+--- exit immediately with message and errorcode = 99
+M.yeet = function(fmt, ...)
+  io.fmt:styled('error',
+    sfmt('YEET %s: %s', M.shortloc(1), sfmt(fmt or '', ...)),
+    '\n')
+  os.exit(99)
+end
+
+return M

--- /dev/null
+++ lib/ds/ds/Grid.lua
@@ -0,0 +1,57 @@
+-- text grid type
+local mty = require'metaty'
+local ds = require'ds'
+
+local clear = ds.clear
+local max = math.max
+local push, concat = table.insert, table.concat
+local codes, char = utf8.codes, utf8.char
+
+--- ds.Grid: a text grid
+--- Grid is a table (rows/lines) of tables (cols). Each column should contain a
+--- single unicode character or nil.
+local G = mty'ds.Grid' {
+  'h [int]: height', 'w [int]: width',
+}
+getmetatable(G).__call = function(T, t)
+  return mty.construct(T, t):clear()
+end
+
+--- clear the grid
+G.clear = function(g) --> g
+  for l=1,g.h do
+    local line = g[l] or {}
+    clear(line, 1, max(#line, g.w)); assert(next(line) == nil)
+    g[l] = line
+  end
+  clear(g, g.h + 1, #g)
+  return g
+end
+
+local split = function(s) --> lines
+  if type(s) == 'string' then return ds.split(s, '\n')
+  else --[[lines]]            return ipairs(s) end
+end
+
+--- insert the str|lines into the grid at l.c
+--- this handles newlines by inserting at the same column
+G.insert = function(g, l, c, str)
+  for _l, lstr in split(str) do
+    local llen = 0
+    local line = g[l]; if not line then return end
+    for _, code in codes(lstr) do
+      llen = llen + 1
+      local lc = c + llen - 1; assert(lc <= g.w, 'line+c too long')
+      for i=#line+1,lc-1 do line[i] = ' ' end -- fill spaces
+      line[lc] = char(code)
+    end
+    l = l + 1
+  end
+end
+
+G.__fmt = function(g, f)
+  local h = g.h; for l=1,h-1 do f:write(concat(g[l]), '\n') end
+  f:write(concat(g[h]))
+end
+
+return G

--- /dev/null
+++ lib/ds/ds/Iter.lua
@@ -0,0 +1,304 @@
+local mty = require'metaty'
+--- fluent iterator
+---
+--- [{## lang=lua}
+--- isNumber = function(v) return type(v) == 'number' end
+--- t = {4, 5, 'six', 7}
+--- T.eq(
+---   {'4', '5', '7'},
+---   Iter:ofList(t)       -- iterate over ipairs(t)
+---     :filterV(isNumber) -- only numbers
+---     :mapV(tostring)    -- convert to string
+---     :valsTo())         -- collect list of values (drops keys)
+--- ]##
+local Iter = mty'Iter' {
+  '_li [int]: left index of fns (stored at negative index)', _li = 0,
+  '_nextK [any]: next key when [$iter()]ated',
+}
+
+local ds = require'ds'
+
+local select, unpack = select, table.unpack
+local pairs, ipairs = pairs, ipairs
+local push, sort = table.insert, table.sort
+local concat = table.concat
+local construct = mty.construct
+local rawislice, inext = ds.rawislice, ds.inext
+
+local swapKV = function(k, v) return v, k end
+
+--------------------------------
+-- Constructors
+
+--- construct from table of [${nextFn, state, startK}] (see [$help 'for']).
+--- Examples: [{## lang=lua}
+---   it = Iter{pairs(t)}  -- recommendation: use It:of(t) instead
+---   it = Iter{ipairs(t)} -- recommendation: use It:ofList(t) instead
+---   it = Iter{myIterFn}
+--- ]##
+getmetatable(Iter).__call = function(T, t)
+  t._nextK = t[3]; return setmetatable(t, T)
+end
+
+--- create iterable of [$pairs(t)]
+Iter.of = function(T, t) return T{pairs(t)} end
+
+--- create iterable of [$ipairs(t)]
+Iter.ofList = function(T, t) return T{ipairs(t)} end
+
+--- create an iterable that returns [$table.unpack] on each
+--- value in [$ipairs(t)].
+---
+--- i.e. [$Iter:ofUnpacked{{5, 'five'}, {6, 'six'}}] will
+--- return (5, 'five') then (6, 'six')
+Iter.ofUnpacked = function(T, t)
+  local i, len = 0, #t
+  return T{function()
+    if i >= len then return end
+    i = i + 1; return unpack(t[i])
+  end}
+end
+
+--- create an iterable of [$t] which emits keys in order.
+---
+--- [" WARNING: this first sorts the keys, which can be slow]
+Iter.ofOrdMap = function(T, t, cmpFn)
+  local keys = {}; for k, v in pairs(t) do push(keys, k) end
+  sort(keys, cmpFn)
+  return T{pairs(keys)}:lookup(t)
+end
+
+--- sort t then iterate over list
+Iter.ofOrdList = function(T, t, cmpFn)
+  sort(t, cmpFn); return T{ipairs(t)}
+end
+
+--- iterate over slice of [$starti:endi] in [$t]
+Iter.ofSlc = function(T, t, starti, endi)
+  if endi then
+    return T{rawislice, {t, endi}, (starti or 1) - 1}
+  end
+  return T{inext, t, (starti or 1) - 1}
+end
+
+--------------------------------
+-- Mapping methods
+
+--- emit [$k, fn(v)] for each non-nil result
+---
+--- ["Note: if performance matters this is the most performant
+---         application function since it doesn't create an internal
+---         function.
+--- ]
+Iter.map = function(it, fn)
+  local li = it._li - 1; it[li] = fn; it._li = li
+  return it
+end
+
+---- emit [$fn(k), v)] for each non-nil result.
+Iter.mapK = function(it, fn) --> it
+  return it:map(function(k, v) k = fn(k); return k, v end)
+end
+
+--- emit [$k, fn(v)] for each non-nil result.
+--- (filtered when [$newK==nil])
+Iter.mapV = function(it, fn)
+  return it:map(function(k, v)
+    v = fn(v); if v ~= nil then return k, v end
+  end)
+end
+
+---- emit only [$if fn(k, v)] results
+Iter.filter = function(it, fn) --> it
+  return it:map(function(k, v)
+    local b = fn(k, v); if b then return k, v end
+  end)
+end
+
+---- emit only [$if fn(k)] results
+Iter.filterK = function(it, fn) --> it
+  return it:map(function(k, v)
+    local b = fn(k); if b then return k, v end
+  end)
+end
+
+---- emit only [$if fn(v)] results
+Iter.filterV = function(it, fn) --> it
+  return it:map(function(k, v)
+    local b = fn(v); if b then return k, v end
+  end)
+end
+
+
+--- emit[$v, $t[k]], looking up the iter's values in the table's keys.
+Iter.lookup = function(it, t) --> it
+  return it:map(function(_, v) return v, t[v] end)
+end
+
+--- emit [$t[k], v] for each non-nil [$t[k]]
+Iter.lookupK = function(it, t) --> it
+  return it:map(function(k, v) return t[k], v end)
+end
+
+--- emit [$k, $t[v]] for each non-nil [$t[v]]
+Iter.lookupV = function(it, t) --> it
+  return it:map(function(k, v)
+    v = t[v]; if v ~= nil then return k, v end
+  end)
+end
+
+--- emit [$k, v] for each non-nil [$t[k]]
+Iter.keyIn = function(it, t) --> it
+  return it:map(function(k, v)
+    if t[k] ~= nil then return k, v end
+  end)
+end
+
+--- emit [$k, v] for each nil [$t[k]]
+Iter.keyNotIn = function(it, t) --> it
+  return it:map(function(k, v)
+    if t[k] == nil then return k, v end
+  end)
+end
+
+--- emit [$k, v] for each non-nil [$t[v]]
+Iter.valIn = function(it, t) --> it
+  return it:map(function(k, v)
+    if t[v] ~= nil then return k, v end
+  end)
+end
+
+--- emit [$k, v] for each nil [$t[v]]
+Iter.valNotIn = function(it, t) --> it
+  return it:map(function(k, v)
+    if t[v] == nil then return k, v end
+  end)
+end
+
+--- emit [$k, v] after calling [$fn(k, v)].
+--- The results of the fn are ignored
+Iter.listen = function(it, fn)
+  return it:map(function(k, v) fn(k, v); return k, v end)
+end
+
+--- emit [$i, k], dropping values. [$i] starts at [$1] and increments each
+--- time called.
+---
+--- [" Note: this is most useful for iterators which don't emit a [$v].
+---    i.e. getting the line number in [$file:lines()]]
+Iter.index = function(it) --> it
+  local i = 0; return it:map(function(_, v) i = i + 1; return i, v end)
+end
+
+--- emit [$v, k] (swaps key and value)
+Iter.swap = function(it) return it:map(swapKV) end --> it
+
+--------------------------------
+-- Collecting Methods
+
+--- run the iterator over all values, calling [$fn(k, v)] for each.
+--- return the first [$k, v] where the fn returns a truthy value.
+Iter.find = function(it, fn) --> k, v
+  local li, k = it._li
+  for key, v in unpack(it) do
+    k = key; for i=-1,li,-1 do
+      k, v = it[i](k, v); if k == nil then goto skip end
+    end
+    if fn(k, v) then return k, v end
+    ::skip::
+  end
+end
+
+
+local allFn = function(k, v) return not v end -- stop on first falsy
+--- return true if any of the values are truthy
+Iter.all = function(it) return not it:find(allFn) end
+
+local anyFn = function(k, v) return v end     -- stop on first true
+--- return true if any of the values are truthy
+Iter.any = function(it) return not not it:find(anyFn) end
+
+--- run the iterator over all values, calling [$fn(k, v)] for each.
+Iter.run = function(it, fn--[[noop]]) --> nil
+  local li, fn, k = it._li, fn or ds.noop
+  for key, v in unpack(it) do
+    k = key; for i=-1,li,-1 do
+      k, v = it[i](k, v); if k == nil then goto skip end
+    end
+    fn(k, v)
+    ::skip::
+  end
+end
+
+
+--- collect non-nil [$k, v] into table-like object [$to]
+Iter.to = function--(it, to={}) --> to
+  (it, to) to = to or {}
+  it:run(function(k, v) to[k] = v end)
+  return to
+end
+
+--- collect emitted [$k] as a list (vals are dropped)
+Iter.keysTo = function--(it, to={}) --> to
+  (it, to) to = to or {}
+  it:run(function(k) push(to, k) end)
+  return to
+end
+
+--- collect emitted [$v] as a list (keys are dropped)
+Iter.valsTo = function--(it, to={}) --> to
+  (it, to) to = to or {}
+  it:run(function(k, v) push(to, v) end)
+  return to
+end
+
+Iter.concat = function(it, sep) return concat(it:to(), sep) end
+
+--- reset the iterator to run from the start
+Iter.reset = function(it) it._nextK = it[3] end
+
+--- use as an iterator.
+Iter.__call = function(it)
+  local li, k, v = it._li, it._nextK
+  ::skip::
+  k, v = it[1](it[2], k); if k == nil then return end
+  it._nextK = k
+  for i=-1,li,-1 do
+    k, v = it[i](k, v); if k == nil then goto skip end
+  end
+  return k, v
+end
+Iter.iter = function(it)
+  it._nextK = it[3]
+  return it
+end
+Iter.__ipairs = ds.nosupport
+
+
+--- create an iterator that returns a single value
+Iter.single = function(k, v) --> fn(): (k, v) .. nil
+  local done = false; return function()
+    if not done then done = true; return k, v end
+  end
+end
+
+--- Used for testing. [$Iter:assertEq(it1, it2)] constructs both
+--- iterators using [$Iter()] and then asserts the results are
+--- identical.
+Iter.assertEq = function(it1, it2)
+  assert(mty.ty(it1) == Iter, 'it1 is not Iter')
+  assert(mty.ty(it2) == Iter, 'it2 is not Iter')
+  local i, T = 0, require'civtest'
+  while true do
+    i = i + 1
+    local r1 = {it1()}
+    local r2 = {it2()}
+    if not mty.eq(r1, r2) then
+      io.fmt:styled('error', 'Result differs at index '..i, '\n')
+      assertEq(r1, r2); error'unreachable'
+    end
+    if rawequal(r1[1], nil) then return end
+  end
+end
+
+return Iter

--- /dev/null
+++ lib/ds/ds/LL.lua
@@ -0,0 +1,125 @@
+local mty = require'metaty'
+--- Doubly Linked List with DSL operators.
+---
+--- Examples: the below examples use [+
+---   * h as the "head", hN is N nodes to it's right (h1=h.r)
+---   * t as the "tail", hN is N nodes to it's left  (t1=t.l)
+---   * u indicates "unused" and is necessary for lua's syntax
+--- ]
+---
+--- '+' is "add value" operator, it returns the added node [{## lang=lua}
+---   t = LL(3) + 4 -- (  3 -> t=4)
+---   h = t:head()  -- (h=3 -> t=4)
+--- ]#
+---
+--- '-' is "link nodes" operator, it puts the nodes on the right
+--- and returns the first node [{## lang=lua}
+---   u = t - (LL(5) + 6) -- (h=3 -> t=4 -> 5 -> 6)
+---   t = t:tail()        -- (h=3 -> 4   -> 5 -> t=6)
+---   h1 = h.r - LL(3.1)  -- (h=3 -> h1=3.1 -> 4 -> 5 -> t=6)
+--- ]##
+---
+--- ':extend' puts a list of values as nodes at onto tail [{## lang=lua}
+---   h = (LL(3) + 4 + 5):head() -- (h=3 -> 4 -> 5)
+---   h:extend{6, 7, 8}          -- (h=3 -> 4 -> 5 -> 6 -> 7 -> 8)
+--- ]##
+local LL = mty'LL' {
+  'l [&LL]: left node', 'r [&LL]: right node', 'v [any]: value',
+}
+
+local ds = require'ds'
+local construct = mty.construct
+local push = table.insert
+
+getmetatable(LL).__call = function(T, v) return construct(T, {v=v}) end
+LL.from = function(T, list) --> (head, tail) from list of vals
+  local len = #list; if len == 0 then return end
+  local h = LL(list[1]); local t = h
+  for i=2,len do
+    local n = LL(list[i]); t.r, n.l = n, t -- create new at end
+    t = n -- new is now tail
+  end
+  return h, t
+end
+
+LL.head = function(ll) while ll.l do ll = ll.l end; return ll end
+LL.tail = function(ll) while ll.r do ll = ll.r end; return ll end
+
+LL.tolist = function(ll) --> {a.v, b.v, c.v, ...}
+  local t = {}; while ll do push(t, ll.v); ll = ll.r end
+  return t
+end
+
+--- create l -> r link
+LL.link = function(l, r) l.r, r.l = r, l end
+
+--- insert LL(v) to right of ll
+--- [$(h -> 2); h:insert(1) ==> (h -> 1 -> 2)]
+LL.insert = function(ll, v)
+  ll.r = construct(getmetatable(ll), {v=v, l=ll, r=ll.r})
+end
+
+--- remove node ll from linked list
+--- if ll was the head, returns the new head (or nil)
+LL.rm = function(ll) --> head?
+  local l, r = ll.l, ll.r
+  if l then
+    if r then l.r, r.l, ll.l, ll.r = r, l -- both left+right
+    else        ll.l, l.r = nil end       -- only left
+  elseif r then -- only right
+    ll.r, r.l = nil
+    return r -- new head
+  end
+end
+
+LL.get = function(ll, i) --> node? (at index +/- i)
+  if i < 0 then
+    for i=1,-i do
+      ll = ll.l; if not ll then return end
+    end
+  else
+    for i=1,i do
+      ll = ll.r; if not ll then return end
+    end
+  end
+  return ll
+end
+
+
+--- Add DSL (ll + v). Puts node with v=v after tail, returns new tail.
+LL.__add = function(ll, v) --> tail
+  local n = getmetatable(ll)(v)
+  ll:tail():link(n)
+  return n
+end
+
+--- Link DSL: l - r ==> l -> r
+--- Links [$l:tail() -> r:head(), return r:tail()]
+---
+--- Note: This is for convienience and expressiveness of small lists.
+---       Use link() or insert() if performance matters.
+---
+--- Example: [{## lang=lua}
+---   l6     = LL(3) - (LL(4) + 5) - L(6) ==> (3 -> 4 -> 5 -> 6)
+---   l3tail = l1 - l2 - l3
+--- ]##
+LL.__sub = function(l, r)
+  local t = r:tail()
+  l, r = l:tail(), r:head()
+  l.r, r.l = r, l -- link
+  return t
+end
+
+LL.__call = function(ll) return ll.r end --> ll.r (use with `for`)
+LL.__pairs  = ds.nosupport
+LL.__ipairs = ds.nosupport
+LL.__fmt = function(ll, f)
+  f:write'LL{'
+  while true do
+    f(ll.v); ll = ll.r
+    if ll then f:write' -> ' else break end
+  end
+  f:write'}'
+end
+
+return LL

--- /dev/null
+++ lib/ds/ds/heap.lua
@@ -0,0 +1,85 @@
+--- Binary Heap implementation
+local M = mod and mod'ds.heap' or {}
+
+local mty = require'metaty'
+local ds  = require'ds'
+local bt = ds.bt
+local push = table.insert
+
+--- Get the index which compares true of all: n, left(n), right(n)
+local function cmpi(h, li, hi, n, cmp)
+  local lefti = bt.lefti(h, n)
+  if lefti > hi then return n end -- node has no children
+  local i, righti = n, bt.righti(h, n)
+  if cmp(h[lefti],  h[i]) then i = lefti  end
+  if righti <= hi and cmp(h[righti], h[i]) then
+    i = righti
+  end
+  return i
+end
+
+--- percolate n (node index) down the tree (left -> right)
+--- n starts at a high index (start of heap) and we fix it.
+local function percDown(h, li, hi, n, cmp)
+  local i = cmpi(h, li, hi, n, cmp)
+  while i ~= n do
+    h[n], h[i] = h[i], h[n] -- swap, parent is largest
+    -- keep following the path of i
+    n, i = i, cmpi(h, li, hi, i, cmp)
+  end
+end
+
+--- percolate n (node index) up
+--- n starts at a high index (end of heap) and we fix it.
+local function percUp(h, li, hi, n, cmp)
+  local p = bt.parenti(h, n)
+  while p >= li do
+    local i = cmpi(h, li, hi, p, cmp)
+    if i == p then break end -- parent is correct
+    h[p], h[i] = h[i], h[p]
+    -- keep following parent up
+    n, p = p, bt.parenti(h, p)
+  end
+end
+
+--- Initialize heap from unstructured table h
+local function init(h, cmp)
+  local li, hi = 1, #h
+  if hi - li <= 0 then return end -- length 1 or 0
+  local n = bt.parenti(h, hi) -- parent of right-most node
+  while n >= li do -- keep fixing nodes until it is a heap
+    percDown(h, li, hi, n, cmp)
+    n = n - 1
+  end
+end
+
+--- Heap(t, cmp) binary heap using a table.
+--- A binary heap is a binary tree where the value of the parent always
+--- satisfies `cmp(parent, child) == true`
+---   Min Heap: cmp = function(p, c) return p < c end (default)
+---   Max Heap: cmp = function(p, c) return p > c end
+---
+--- add and push take only O(log n), making it very useful for
+--- priority queues and similar problems.
+M.Heap = mty'Heap' {
+  'cmp[function]: comparison function to use', cmp=ds.lt
+}
+getmetatable(M.Heap).__call = function(T, t)
+  local h = mty.construct(T, t)
+  init(h, h.cmp)
+  return h
+end
+
+--- [$h:add(v)] add value to the heap.
+M.Heap.add = function(h, v) push(h, v); percUp(h, 1, #h, #h, h.cmp) end
+
+--- [$h:pop() -> v] pop the top node.
+M.Heap.pop = function(h) --> v
+  if #h <= 1 then return table.remove(h) end
+  -- move last child to root and fix
+  local v = h[1]; h[1] = table.remove(h)
+  percDown(h, 1, #h, 1, h.cmp)
+  return v
+end
+
+return M

--- /dev/null
+++ lib/ds/ds/kev.lua
@@ -0,0 +1,45 @@
+local G = G or _G
+--- kev: "Key Equal Value" serialization format.
+---
+--- This is an extremely common format in many unix utilities, "good enough"
+--- for a large number of configuration use cases. The format is simple: a file
+--- containing lines of [$key=value]. The input and output are a table of
+--- key,val strings (though tostring is called for [$to()]). Lines which don't
+--- have [$=] in them are ignored.
+---
+--- Nested data is absolutely not supported. Spaces are treated as literal both
+--- before and after [$=]. If you want a key containing [$=] or key/value
+--- containing newline then use a different format.
+local M = G.mod and mod'ds.kev' or {}
+
+local lines = require'lines'
+local split = require'ds'.split
+local sconcat = string.concat
+local push = table.insert
+local concat, sort = table.concat, table.sort
+local sfmt, find = string.format, string.find
+
+--- convert to a table of [$key=value] lines.
+M.to = function(t)
+  local kv = {}; for k, v in pairs(t) do
+    push(kv, sconcat('=', tostring(k), tostring(v)))
+  end
+  sort(kv)
+  return kv
+end
+
+--- convert [$key=value] lines to a table.
+M.from = function(lines, to)
+  to = to or {}
+  for _, line in ipairs(lines) do
+    local i = find(line, '='); if i then
+      to[line:sub(1, i-1)] = line:sub(i+1)
+    end
+  end
+  return to
+end
+
+M.load = function(f, to) return M.from(lines.load(f), to) end
+M.dump = function(t, f)  return lines.dump(M.to(t), f)    end
+
+return M

--- /dev/null
+++ lib/ds/ds/log.lua
@@ -0,0 +1,81 @@
+local G = G or _G
+
+--- Simple logging library, set i.e. LOGLEVEL=TRACE to enable logging.
+---
+--- This module has the functions [$trace info warn err crit] with the signature:
+--- [$function(fmt, ... [, data])] [+
+--- * the ... are the format args which behave like [$fmt.format] (aka [$%q]
+---   formats tables/etc).
+--- * data is optional arbitrary data that can be serialized/formatted.
+--- ]
+---
+--- To enable logging the user should set a global (or env var) LOGLEVEL
+--- to oneof: C/CRIT/1 E/ERROR/2 W/WARN/3 I/INFO/4 T/TRACE/5
+---
+--- This module also sets (if not already set) the global LOGFN to [$ds.logFn]
+--- which logs to stderr. This fn is called with signature
+--- [$function(level, srcloc, fmt, ...)]
+local M = G.mod and G.mod'ds.log' or {}
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds = require'ds'
+
+local push, sfmt = table.insert, string.format
+local Fmt = fmt.Fmt
+local io = io
+
+M.time = function() return os.date():match'%d%d:%d%d:%d%d' end
+
+local LEVEL = ds.Checked{
+  SLIENT=0, [0]='SILENT',
+  C=1, CRIT=1,
+  E=2, ERROR=2,
+  W=3, WARN=3,
+  I=4, INFO=4,
+  T=5, TRACE=5,
+  'CRIT', 'ERROR', 'WARN', 'INFO', 'TRACE'
+}; M.LEVEL = LEVEL
+
+M.CRIT, M.ERROR, M.WARN = LEVEL.CRIT, LEVEL.ERROR, LEVEL.WARN
+M.INFO, M.TRACE = LEVEL.INFO, LEVEL.TRACE
+
+local SHORT = ds.Checked{'C', 'E', 'W', 'I', 'T'}
+function M.levelInt(lvl)
+  local lvl = tonumber(lvl) or M.LEVEL[lvl]
+  return M.LEVEL[lvl] and lvl or error('invalid lvl: '..tostring(lvl))
+end
+function M.levelStr(lvl) return M.LEVEL[M.levelInt(lvl)] end
+
+--- set the global logging level (default=os.getenv'LOGLEVEL')
+M.setLevel = function(lvl)
+  G.LOGLEVEL = M.levelInt(lvl or os.getenv'LOGLEVEL' or 0)
+end
+M.setLevel(G.LOGLEVEL)
+
+function M.logFn(lvl, loc, fmt, ...)
+  if LOGLEVEL < lvl then return end
+  local f, lasti, i, args, nargs = io.fmt, 1, 0, {...}, select('#', ...)
+  f:write(sfmt('%s %s %s: ', SHORT[lvl], M.time(), loc)); f:flush()
+  f:level(1)
+  local nargs, i = select('#', ...), f:format(fmt, ...)
+  if i == (nargs - 1) then f:write' '; f(args[i + 1]) -- data
+  elseif i ~= nargs then error('invalid #args: '..nargs..' %fmts='..i) end
+  f:level(-1); f:write'\n'; f:flush()
+end
+G.LOGFN = G.LOGFN or M.logFn
+
+local function _log(lvl, fmt, ...)
+  LOGFN(lvl, ds.shortloc(2), fmt, ...)
+end
+
+function M.crit(...)  if LOGLEVEL >= 1 then _log(1, ...) end end
+function M.err(...)   if LOGLEVEL >= 2 then _log(2, ...) end end
+function M.warn(...)  if LOGLEVEL >= 3 then _log(3, ...) end end
+function M.info(...)  if LOGLEVEL >= 4 then _log(4, ...) end end
+function M.trace(...) if LOGLEVEL >= 5 then _log(5, ...) end end
+
+--- used in tests
+M.LogTable = mty.record'LogTable'{}
+M.LogTable.__call = function(lt, ...) push(lt, {...}) end
+
+return M

--- /dev/null
+++ lib/ds/ds/path.lua
@@ -0,0 +1,205 @@
+local G = G or _G
+
+--- working with paths
+--- Call directly to convert a list|str to a list of path components.
+local M = G.mod and mod'ds.path' or setmetatable({}, {__name='ds.path'})
+
+local mty = require'metaty'
+local ds = require'ds'
+local push = table.insert
+local sfmt = string.format
+local update = table.update
+
+local extend, splitList = ds.extend, ds.splitList
+local clear, ds_rmleft  = ds.clear, ds.rmleft
+
+--- read file at path or throw error
+M.read = function(path) --!!> string
+  local f, err, out = io.open(path, 'r'); if not f then error(sfmt(
+    "open %q mode=r: %s", path, err
+  ))end
+  out, err = f:read'a'; f:close()
+  if not out then error(sfmt('read %s: %s', path, err)) end
+  return out
+end
+
+--- write string to file at path or throw error
+M.write = function(path, text) --!!> nil
+  local f, err, out = io.open(path, 'w'); if not f then error(sfmt(
+    "open %q mode=w: %s", path, err
+  ))end
+  out, err = f:write(text); f:close(); assert(out, err)
+end
+
+--- append text to path, adds a newline if text doesn't end in one.
+M.append = function(path, text)
+  local f, err, out = io.open(path, 'a'); if not f then error(sfmt(
+    "open %q mode=a: %s", path, err
+  ))end
+  out, err = f:write(text, text:sub(-1) ~= '\n' and '\n' or '')
+  f:close(); assert(out, err)
+end
+
+getmetatable(M).__call = function(_, p)
+  if type(p) == 'table' then return p end
+  p = splitList(p, '/+')
+  if p[1] == ''  then p[1] = '/' end
+  local len = #p
+  if len > 1 and p[len] == '' then
+    p[len - 1] = p[len - 1]..'/'; p[len] = nil
+  end
+  return p
+end
+
+--- get current working directory
+M.cwd = function() return G.CWD or os.getenv'PWD' or os.getenv'CD' end
+
+--- get the user's home directory
+M.home = function() return G.HOME or os.getenv'HOME'
+                        or os.getenv'HOMEDIR'      end
+
+--- join a table of path components
+M.concat = function(t) --> string
+  if #t == 0 then return '' end
+  local root = (t[1]:sub(1,1)=='/') and '/' or ''
+  local dir  = (t[#t]:sub(-1)=='/') and '/' or ''
+  local out = {}
+  for i, p in ipairs(t) do
+    p = string.match(p, '^/*(.-)/*$')
+    if p ~= '' then push(out, p) end
+  end; return root..table.concat(out, '/')..dir
+end
+
+--- return whether a path has any '..' components
+M.hasBacktrack = function(path) --> bool. path: [str|list]
+  if type(path) == 'string' then
+    return path:match'^%.%.$' or path:match'^%.%./'
+        or path:match'/%.%./' or path:match'/%.%.$'
+  end
+  for _, c in ipairs(path) do
+    if c == '..' then return true end
+  end; return false
+end
+M.ext = function(path) --> string. path: [str|list]
+  if type(path) == 'table' then path = path[#path] end
+  return path:match'.*%.([^/]+)$'
+end
+
+--- E-nsure the path is absolute, using the wd (default=cwd()) if necessary
+---
+--- This preserves the type of the input: str -> str; table -> table
+M.abs = function(path, wd) --> /absolute/path
+  if type(path) == 'string' then
+    if (path:sub(1,1) == '/') then return path end
+    wd = wd or M.cwd()
+    return (wd:sub(-1) == '/') and (wd..path)
+                               or  (wd..'/'..path)
+  end
+  if path[1]:sub(1,1) == '/' then return path end
+  assert(type(wd) == 'string')
+  return extend(M(wd), path)
+end
+
+--- resolve any `..` or `.` path components, making the path
+--- /absolute if necessary.
+M.resolve = function(path, wd) --> list
+  if type(path) == 'table' then path = update({}, path)
+  else path = M(path) end
+
+  -- walk path, resolving . and ..
+  local i, j, len, last = 1, 1, #path, path[#path]
+  local isdir = last:sub(-1) == '/' or last:match'^/?%.%.?$'
+  while j <= len do
+    local c = path[j]
+    if c == '' or c:match'^/?%./?$'   then j = j + 1 -- '.'  skip
+    elseif        c:match'^/?%.%./?$' then           -- '..' backtrack
+      i = i - 1; j = j + 1
+      if i <= 1 then
+        assert(path[1]:sub(-1) ~= '/', '../ backtrack before root')
+      end
+      if i < 1 then
+        local abs = M(wd or M.cwd())
+        len = #abs
+        table.move(path, j, #path + 1, len, abs)
+        i, j      = len, len
+        path, len = abs, #abs
+      end
+    else
+      path[i] = path[j]
+      i = i + 1; j = j + 1
+    end
+  end
+  clear(path, i, len)
+  len = #path; last = path[#path]
+  if isdir and last and last:sub(-1) ~= '/' then
+    path[len] = last..'/'
+  end
+  return path
+end
+
+M.itemeq = function(a, b) --> boolean: path items are equal
+  return a:match'^/*(.-)/*$' == b:match'^/*(.-)/*$'
+end
+
+--- ds.rmleft for path components
+M.rmleft = function(path, rm)
+  return ds_rmleft(path, rm, M.itemeq)
+end
+
+--- return a nice path (string) that is resolved and readable.
+---
+--- It's 'nice' because it has no '/../' or '/./' elements
+--- and has CWD stripped.
+M.nice = function(path, wd) --> string
+  wd = wd or M.cwd()
+  path, wd = M.resolve(path, wd), M(wd)
+  M.rmleft(path, wd)
+  if #path == 0 or path[1] == '' then path[1] = './' end
+  return M.concat(path)
+end
+
+--- Return only the parent dir and final item.
+--- This is often used for documentation/etc
+M.short = function(path, wd)
+  return M.nice(path, wd):match'([^/]*/[^/]+)'
+end
+
+--- [$first/middle/last -> ("first", "middle/last")]
+M.first = function(path)
+  if path:sub(1,1) == '/' then return '/', path:sub(2) end
+  local a, b = path:match('^(.-)/(.*)$')
+  if not a or a == '' or b == '' then return path, '' end
+  return a, b
+end
+
+--- [$first/middle/last -> ("first/middle", "last")]
+M.last = function(path)
+  local a, b = path:match('^(.*/)(.+)$')
+  if not a or a == '/' or b == '' then return '', path end
+  return a, b
+end
+
+--- return whether the path looks like a dir.
+--- Note: civlua tries to make all ftype='dir' paths end in '/'
+---   but other libraries or APIs may not conform to this.
+M.isDir = function(path) return path:sub(-1) == '/' end
+local isDir = M.isDir
+M.toDir = function(path) --> path/
+  return (path:sub(-1) ~= '/') and (path..'/') or path
+end
+
+M.toNonDir = function(path) --> path (without ending /)
+  return (path:sub(-1) == '/') and path:sub(1,-2) or path
+end
+
+--- path comparison function for [$table.sort] that sorts
+--- dirs last, else alphabetically.
+M.cmpDirsLast = function(a, b)
+  if isDir(a) then
+    if isDir(b) then return a < b end
+    return false
+  elseif isDir(b) then return true end
+  return a < b
+end
+
+return M

--- /dev/null
+++ lib/ds/ds/utf8.lua
@@ -0,0 +1,27 @@
+--- utf8 stream decoding.
+--- Get the length by decodelen(firstbyte), then decode the whole character
+--- with decode(dat)
+local M = mod and mod'ds.utf8' or {}
+
+local U8LEN = {}
+do
+  local char, slen = utf8.char, utf8.len
+  for b=0,15 do U8LEN[        b << 3 ] = 1 end -- 0xxxxxxx: 1byte utf8
+  for b=0,3  do U8LEN[0xC0 | (b << 3)] = 2 end -- 110xxxxx: 2byte utf8
+  for b=0,1  do U8LEN[0xE0 | (b << 3)] = 3 end -- 1110xxxx: 3byte utf8
+                U8LEN[0xF0           ] = 4     -- 11110xxx: 4byte utf8
+end
+local U8MSK = {0x7F, 0x1F, 0x0F, 0x07} -- len -> msk
+
+--- given the first byte return the number of bytes in the utf8 char
+M.decodelen = function(firstbyte) return U8LEN[0xF8 & firstbyte] end
+
+--- decode utf8 data (table) into an integer.
+--- Use [$utf8.char] (from lua's stdlib) to turn into a string.
+M.decode = function(dat) --> int
+  local c = U8MSK[#dat] & dat[1]
+  for i=2,#dat do c = (c << 6) | (0x3F & dat[i]) end
+  return c
+end
+
+return M

--- /dev/null
+++ lib/ds/test.lua
@@ -0,0 +1,792 @@
+METATY_CHECK = true
+local function testloc()  return require'ds'.srcloc() end
+local function testshort() return require'ds'.shortloc() end
+local loc1, loc2 = testloc(), testshort()
+local a = function() error'a error' end
+local b = function() a() end; local c = function() b() end
+
+local push, yield = table.insert, coroutine.yield
+local pop = table.remove
+local sfmt = string.format
+
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds = require'ds'; local M = ds
+local lines = require'lines'
+local testing = require'lines.testing'
+
+local T = require'civtest'
+
+local bound, isWithin, sort2, decAbs
+local indexOf, copy, deepcopy
+local trim
+local extend, clear, replace, merge
+local getOrSet, get, set
+local drain, reverse
+local eval
+local Set, Duration, Epoch
+local M = M.auto'ds'
+local d8 = require'ds.utf8'
+local dp = M.dotpath
+local path = require'ds.path'
+local s = M.simplestr
+local LL = require'ds.LL'
+
+---------------------
+-- ds.lua
+
+T.loc = function()
+  T.eq('lib/ds/test.lua:4', loc1)
+  T.eq('ds/test.lua:4', loc2)
+
+  T.eq(   'lib/ds/',          M.srcdir())
+  local function fn()
+     T.eq(   'lib/ds/',          M.srcdir())
+     T.eq(   'lib/ds/',          M.srcdir(1))
+  end; fn()
+end
+
+T.simplestr = function()
+  T.eq('a', [[
+a]])
+  T.eq('this is\n  a simple str.', s[[
+    this is
+      a simple str.]])
+
+  T.eq('easy',    s[[easy]])
+  T.eq('easy  ',  s[[  easy  ]])
+  T.eq('easy\nhi\nthere',  s[[easy
+    hi
+    there]])
+  T.eq('easy',  s[[
+  easy]])
+  T.eq('newline\n\n', s[[
+  newline
+
+  ]])
+end
+
+T.bool_and_none = function()
+  local none = assert(M.none)
+  T.eq(false, M.bool())
+  T.eq(false, M.bool(false))
+  T.eq(false, M.bool(none))
+  T.eq(true, M.bool(true))
+  T.eq(true, M.bool(''))
+  T.eq(true, M.bool(0))
+  T.eq(true, M.bool({}))
+  assert(none) -- truthy, use ds.bool for falsy
+  assert(rawequal(none, none))
+  assert(none == none)
+  T.eq(none, none)
+  assert(none ~= {})
+  assert(not mty.eq(none, {}))
+  T.eq('none', getmetatable(none))
+  T.eq('none', mty.ty(none))
+  T.eq('none', fmt(none))
+  local err = 'invalid operation on sentinel'
+  T.throws(err, function() none.foo = 3 end)
+  T.throws(err, function() return #none end)
+end
+
+T.imm = function()
+  T.eq({}, M.empty)
+  T.eq(nil, next(M.empty))
+  T.eq(0,  #M.empty)
+  T.eq('table', getmetatable(M.empty))
+
+  local t = M.Imm{1, 2, v=3}
+  T.eq(1, t[1])
+  T.eq(3, t.v)
+  T.eq('table', getmetatable(t))
+  assert('table', debug.getmetatable(t).__metatable)
+  T.eq('table', mty.ty(t))
+  T.throws('cannot modify Imm', function() t.b = 8 end)
+  T.throws('cannot modify Imm', function() t.v = 8 end)
+  T.eq('<!imm data!>', next(t))
+  local j = {1, 2, v=3}
+  local k = M.Imm{1, 2, v=4}
+  assert(t == t); assert(t ~= j)
+  T.eq(t, t)
+  T.eq(t, j)
+
+  assert(t ~= k); assert(not mty.eq(t, k))
+  T.eq('{1, k=5}', fmt(M.Imm{1, k=5}))
+  T.eq('table', mty.tyName(M.Imm{}))
+
+  T.eq({1, 2, v=3}, j) -- table vs Imm
+  assert(not mty.eq({1, 2}, j))
+
+  T.eq({kind='Empty'}, M.Imm{kind='Empty'})
+end
+
+T.number = function()
+  assert(0, decAbs(1)); assert(0, decAbs(-1))
+
+  assert(1 == bound(0, 1, 5))
+  assert(1 == bound(-1, 1, 5))
+  assert(3 == bound(3, 1, 5))
+  assert(5 == bound(7, 1, 5))
+  assert(5 == bound(5, 1, 5))
+  assert(    isWithin(1, 1, 5))
+  assert(not isWithin(0, 1, 5))
+  assert(    isWithin(3, 1, 5))
+  assert(    isWithin(5, 1, 5))
+  assert(not isWithin(6, 1, 5))
+
+  local a, b = sort2(1, 2); assert(a == 1); assert(b == 2)
+  local a, b = sort2(2, 1); assert(a == 1); assert(b == 2)
+end
+
+T.str = function()
+  T.eq('hi there', trim('  hi there\n '))
+  T.eq('hi there', trim('hi there'))
+  local multi = [[  one
+
+three
+four
+
+]]
+  T.eq('  one\n\nthree\nfour\n\n', multi)
+  T.eq('one\n\nthree\nfour', trim(multi))
+
+  T.eq('  a b c', M.trimEnd'  a b c')
+  T.eq('  a b c', M.trimEnd'  a b c\n  ')
+
+  T.eq(' a bc d e ', M.squash'  a   bc \td\te ')
+
+  local u8 = "high🫸 five 🫷!"
+  -- test utf8.offset itself
+  local off = utf8.offset
+  T.eq(4, off(u8, 4))
+  T.eq(5, off(u8, 5)) -- start of 🫸
+  T.eq(9, off(u8, 6));     T.eq(' five 🫷!', u8:sub(9))
+  T.eq(9, off(u8, 1, 9))
+  T.eq(19, off(u8, 8, 9)); T.eq('!', u8:sub(19))
+  T.eq(2, off('a', 2))
+
+  T.eq("high", M.usub(u8, 1, 4))
+  T.eq("🫸 f", M.usub(u8, 5, 7))
+  T.eq("🫷!",  M.usub(u8, -2))
+  T.eq("e 🫷", M.usub(u8, -4, -2))
+  T.eq('',     M.usub(u8, 100))
+end
+
+T.table = function()
+  local t1, t2 = {1, 2}, {3, 4}
+  assert(1 == indexOf(t2, 3)); assert(2 == indexOf(t2, 4))
+
+  t1.a = t2
+  local r = deepcopy(t1)
+  assert(r[1] == 1)
+  assert(r.a[1] == 3)
+  t2[1] = 8
+  assert(r.a[1] == 3)
+
+  local t = {a=8, b=9}
+  assert(8 == M.popk(t, 'a')) assert(9 == M.popk(t, 'b'))
+  assert(0 == #t)
+
+  T.eq(5,   getOrSet({a=5}, 'a', function() return 7 end))
+  T.eq(7,   getOrSet({b=5}, 'a', function() return 7 end))
+  T.eq(7,   get({a={b=7}}, {'a', 'b'}))
+  T.eq(nil, get({}, {'a', 'b'}))
+
+  local t = {}
+  set(t, dp'a.b',   4);   T.eq(4, t.a.b)
+  set(t, dp'a.a.a', 5);   T.eq(5, t.a.a.a)
+  set(t, dp'a.a.a', nil); T.eq(nil, t.a.a.a)
+  set(t, dp'a.b',   4);   T.eq(4, t.a.b)
+
+  t = {}; for i, v in M.inext, {4, 5, 8}, 0 do t[i] = v end
+  T.eq({4, 5, 8}, t)
+  t = {}; for i, v in M.iprev, {4, 5, 8}, 4 do t[i] = v end
+  T.eq({4, 5, 8}, t)
+  t = {}; for i, v in M.ireverse{4, 5, 8} do t[i] = v end
+  T.eq({4, 5, 8}, t)
+
+  t = {}; for i, v in M.islice({5, 6, 7, 8, 9}, 2, 4) do push(t, v) end
+  T.eq({6, 7, 8}, t)
+
+  t = {}
+  M.walk(
+    {1, 2, a=3, inner={b=9, c='hi'}},
+    function(k, v) t[k] = v end,
+    function(k, v) t[k] = true end)
+  T.eq({1, 2, a=3, b=9, c='hi', inner=true}, t)
+
+  t = {} for _, v in M.ilast({1, 2, 3, 4, 5}, -3, -1) do push(t, v) end
+  T.eq({3, 4, 5}, t)
+  t = {} for _, v in M.ilast({1, 2, 3, 4, 5}, -3, -2) do push(t, v) end
+  T.eq({3, 4}, t)
+  t = {} for _, v in M.ilast({1, 2, 3, 4, 5}, -2, -2) do push(t, v) end
+  T.eq({4}, t)
+  t = {} for _, v in M.ilast({1, 2, 3, 4, 5}, -2) do push(t, v) end
+  T.eq({4, 5}, t)
+
+  t = M.Forget{a=4}
+  T.eq(4, t.a)
+  t.b = 7; t[1] = 4
+  T.eq(nil, t.b); T.eq(nil, t[1])
+
+  t = {4, 5, 6}
+  T.eq({4, 5, 6, 7, 8}, M.add(t, 7, 8))
+
+  t = {1, a=3, b={4, 5, b1=3}, c=3}
+  T.eq({2, a=4, b={4, 7, 6, b1=3, b2=4}, c=3}, merge(t, {
+    2, a=4, b={[2]=7, [3]=6, b2=4},
+  }))
+
+  T.eq(2, M.pairlen{1, 2})
+  T.eq(3, M.pairlen{1, 2, z=4})
+
+  T.eq({4, 2, 3}, M.icopy{4, 2, 3, a=4})
+
+  T.eq({'a', 'b', 'c'}, M.orderedKeys{a=1, b=2, c=3})
+  T.eq({'a', 'b', 'c', a=1, b=2, c=3}, M.pushSortedKeys{a=1, b=2, c=3})
+
+  T.eq({1}, M.sortUnique{1})
+  T.eq({'a', 'b', 'c'}, M.sortUnique{'c', 'b', 'a'})
+  T.eq({'a', 'b', 'c'}, M.sortUnique{'a', 'c', 'b', 'a'})
+  T.eq({'.', 'h', 's'}, M.sortUnique{'h', '.', 's', 'h'})
+end
+
+T.Slc = function()
+  local Slc = M.Slc
+  local a = Slc{si=2, ei=10}
+  T.eq(9, #a); T.eq('Slc[2:10]', fmt(a))
+  T.eq({Slc{si=2, ei=14}}, {a:merge(Slc{si=4, ei=14})})
+
+  local expect = {Slc{si=2, ei=10}, Slc{si=12, ei=13}}
+  T.eq(expect, {a:merge(Slc{si=12, ei=13})})
+  T.eq(expect, {Slc{si=12, ei=13}:merge(a)})
+end
+
+T.list = function()
+  local t = {4, 5, 6}
+  T.eq(4, M.geti(t, 1))
+  T.eq(6, M.geti(t, -1))
+  T.eq(5, M.geti(t, -2))
+
+  T.eq({1, 2, 3}, extend({1}, {2, 3}))
+  local t = {4, 5}; extend(t, {1, 2})
+  T.eq({4, 5, 1, 2}, t)
+  T.eq({}, clear{1, 2, 3})
+  T.eq({1, 2}, replace({4, 5, 6}, {1, 2}))
+  T.eq({1, 2}, replace({3}, {1, 2}))
+
+  T.eq({1,2,5,7}, M.flatten({1,2},{5},{7}))
+
+  local l = {'a', 'b', 'c', 1, 2, 3}
+  T.eq({1, 2, 3}, drain(l, 3))
+  T.eq({'a', 'b', 'c'}, l)
+  T.eq({}, drain(l, 0))
+  T.eq({'a', 'b', 'c'}, l)
+  T.eq({'c'}, drain(l, 1))
+  T.eq({'a', 'b'}, l)
+  T.eq({'a', 'b'}, drain(l, 7))
+  T.eq({}, l)
+
+  T.eq({2, 1},    reverse({1, 2}))
+  T.eq({3, 2, 1}, reverse({1, 2, 3}))
+
+  T.eq({}, M.inset({}, 1, {}))
+  local t = M.inset({1}, 1, {}, 1)
+  T.eq({}, t) -- remove
+  T.eq({1, 2, 3}, M.inset({1, 3}, 2, {2}))
+  T.eq({1, 2, 3}, M.inset({1, 4, 3}, 2, {2}, 1))
+  T.eq({"ab", "d"}, M.inset({"ab", "c", "", "d"}, 2, {}, 2))
+end
+
+T.eval = function()
+  local env = {}
+  local ok, err = eval('1+', env)
+  assert(not ok); assert(err)
+  local ok, three = eval('return 3', env)
+  assert(ok); T.eq({}, env)
+  T.eq(3, three)
+  local ok, three = eval('seven = 7', env)
+  assert(ok); T.eq({seven=7}, env)
+  assert(not G.seven) -- did not modify globals
+end
+
+T.Set = function()
+  local s = Set{'a', 'b', 'c'}
+  T.eq(Set{'a', 'c', 'b'}, s)
+  T.eq(Set{'a', 'b'}, s:union(Set{'a', 'b', 'z'}))
+  T.eq(Set{'a'}, s:diff(Set{'b', 'c', 'z'}))
+end
+
+T.LL = function()
+  local h, _ = LL(2)
+  T.eq({2}, h:tolist())
+
+  -- '+' and '-'
+  local res = h - LL(4)      T.eq({2, 4}, h:tolist())
+  local t = h:tail();        assert(rawequal(t, res))
+  _= h - (LL(5) + 6);        T.eq({2, 4, 5, 6}, h:tolist())
+
+  -- pop
+  h = LL:from{1, 2, 3, 4};   T.eq({1, 2, 3, 4}, h:tolist())
+  local n2 = h.r
+  local n3 = n2.r
+    assert(not (rawequal(h, n2) or rawequal(h, n3)))
+    assert(rawequal(n2,  h:get(1)))
+    assert(rawequal(h,   n2.l))
+
+  T.eq(nil, n2:rm())
+    T.eq({1, 3, 4}, h:tolist())
+    assert(rawequal(h.r, n3))
+    assert(rawequal(h,   n3.l))
+    assert(rawequal(n3, h:rm())) -- new head
+
+  -- insert
+  h = LL:from{1, 3, 4}
+  h:insert(2);        T.eq({1, 2, 3, 4},    h:tolist())
+    assert(rawequal(h, h.r.l))
+  h:tail():insert(5); T.eq({1, 2, 3, 4, 5}, h:tolist())
+    T.eq(4, h:tail().l.v)
+
+  T.eq('LL{1 -> 3 -> 5}', fmt((LL:from{1, 3, 5})))
+end
+
+T['binary-search'] = function()
+  local bs = M.binarySearch
+  local t = {1, 5, 8, 10, 12, 33}
+  T.eq(0,   bs(t, -1))
+  T.eq(1,   bs(t, 1))  T.eq(1,   bs(t, 4))
+  T.eq(2,   bs(t, 5))  T.eq(2,   bs(t, 7))
+  T.eq(5,   bs(t, 12)) T.eq(5,   bs(t, 32))
+  T.eq(6,   bs(t, 33)) T.eq(6,   bs(t, 1024))
+end
+
+T.time = function()
+  local N = Duration.NANO
+  local d = Duration(3, 500)
+  T.eq(Duration(2, 500),     Duration(3, 500) - Duration(1))
+  T.eq(Duration(2, N - 900), Duration(3, 0)   - Duration(0, 900))
+  T.eq(Duration(2, N - 800), Duration(3, 100) - Duration(0, 900))
+  T.eq(Duration(2), Duration:fromMs(2000))
+  assert(Duration(2) < Duration(3))
+  assert(Duration(2) < Duration(2, 100))
+  assert(not (Duration(2) < Duration(2)))
+  T.eq(Duration(1.5), Duration(1, N * 0.5))
+  T.eq('1.5s', tostring(Duration(1.5)))
+
+  T.eq(Epoch(1) - Duration(1), Epoch(0))
+  T.eq(Epoch(1) - Epoch(0), Duration(1))
+  local e =    Epoch(1000001, 12342)
+  T.eq(e - Epoch(1000000, 12342), Duration(1))
+  T.eq('Epoch(1.5s)', tostring(Epoch(1.5)))
+end
+
+
+local function assertPath(fn, expect, p)
+  T.eq(expect, fn(p))       -- pass in string
+  T.eq(expect, fn(path(p))) -- pass in table
+end
+T.ds_path = function()
+  T.eq({'a', 'b', 'c'},  path('a/b/c'))
+  T.eq({'/', 'b', 'c'},  path('/b/c'))
+  T.eq({'a', 'b', 'c/'}, path('a/b/c/'))
+  T.eq({'a', 'b', 'c'},  path{'a', 'b', 'c'})
+  T.eq({'/', 'b', 'c'},  path{'/', 'b', 'c'})
+
+  local pc = path.concat
+  T.eq('foo/bar',   pc{'foo/', 'bar'})
+  T.eq('/foo/bar',  pc{'/foo/', 'bar'})
+  T.eq('/foo/bar/', pc{'/foo/', 'bar/'})
+  T.eq('',          pc{''})
+  T.eq('a/b',       pc{'a', '', 'b'})
+  T.eq('a/b',       pc{'a/', '', 'b'})
+
+  local pr = path.resolve
+  T.eq({'/', '.a'},      pr('/.a'))
+  T.eq({'/', '..a'},     pr('/..a'))
+  T.eq({'/', 'a.'},      pr('/a.'))
+  T.eq({'/', 'a..'},     pr('/a..'))
+  T.eq({'a/'},           pr'a/b/..')
+  T.eq({'b'},            pr'a/../b')
+  T.eq({'b/'},           pr'a/../b/')
+  T.eq({'/', 'a', 'b/'}, pr('..',       '/a/b/c/'))
+  T.eq({'/', 'a', 'd/'}, pr('../../d/', '/a/b/c/'))
+  T.eq({'/'},            pr('/a/..'))
+  T.eq({},               pr('a/..'))
+  T.throws('before root', function() pr('/..')    end)
+  T.throws('before root', function() pr('/../..') end)
+  T.throws('before root', function() pr('/../../a') end)
+  T.throws('before root', function() pr('/a/../..') end)
+  T.throws('before root', function() pr('/a/../../') end)
+
+  local pn = path.nice
+  T.eq('./',        pn('a/..'))
+  T.eq('/a/b/',     pn('..', '/a/b/c/'))
+  T.eq('d/e',       pn('/a/b/c/d/e',  '/a/b/c'))
+  T.eq('d/e/',      pn('/a/b/c/d/e/', '/a/b/c'))
+  T.eq('a',         pn('./a'))
+
+  local pe = path.ext
+  assertPath(pe, 'foo', 'coo.foo')
+  assertPath(pe, 'foo', 'a/b/c.foo')
+  assertPath(pe, 'bar', 'a/b.c/d.foo.bar')
+
+  local pf = path.first
+  T.eq({'/',  'a/b/c/'}, {pf'/a/b/c/'})
+  T.eq({'a',  'b/c/'},   {pf'a/b/c/'})
+  T.eq({'/',  'a/b/'},   {pf'/a/b/'})
+  T.eq({'/',  'a/b'},    {pf'/a/b'})
+  T.eq({'/',  'b'},      {pf'/b'})
+  T.eq({'b',  ''},       {pf'b'})
+  T.eq({'/',  'b/'},     {pf'/b/'})
+  T.eq({'/',  ''},       {pf'/'})
+
+  local pl = path.last
+  T.eq({'/a/b/', 'c/'}, {pl'/a/b/c/'})
+  T.eq({'a/b/', 'c/'},  {pl'a/b/c/'})
+  T.eq({'/a/', 'b/'},   {pl'/a/b/'})
+  T.eq({'/a/', 'b'},    {pl'/a/b'})
+  T.eq({'', '/b'},      {pl'/b'})
+  T.eq({'', 'b'},       {pl'b'})
+  T.eq({'', '/b/'},     {pl'/b/'})
+  T.eq({'', '/'},       {pl'/'})
+
+  T.eq(true, path.isDir('/'))
+  T.eq('/',  path.toDir('/'))
+  T.eq('a/', path.toDir('a'))
+  T.eq('a',  path.toNonDir('a'))
+  T.eq('a',  path.toNonDir('a/'))
+
+  T.eq({'y', 'z/z', 'a/', 'a/b/'},
+    M.sort({'a/', 'a/b/', 'z/z', 'y'}, path.cmpDirsLast))
+end
+
+local heap = require'ds.heap'
+
+local function pushh(h, t)
+  for i, v in ipairs(t) do h:add(v) end
+end
+
+local function assertPops(expect, h)
+  local t = {}; while #h > 0 do
+    push(t, h:pop())
+  end
+  T.eq(expect, t)
+end
+T.heap = function()
+  local h = heap.Heap{1, 5, 9, 10, 3, 2}
+  assertPops({1, 2, 3, 5, 9, 10}, h)
+  T.eq(0, #h)
+  pushh(h, {8, 111, -1, 333, 42})
+  T.eq(heap.Heap{-1, 42, 8, 333, 111}, h)
+  assertPops({-1, 8, 42, 111, 333}, h)
+
+  h = heap.Heap{1, 5, 9, 10, 3, 2, cmp=M.gt}
+  assertPops({10, 9, 5, 3, 2, 1}, h)
+
+  h = heap.Heap{{3}, {2}, {1}, cmp=function(a, b) return a[1] < b[1] end}
+  assertPops({{1}, {2}, {3}}, h)
+end
+
+T.dag = function()
+  local childrenMap = {
+    a = {'b', 'c'},
+    b = {'c', 'd'},
+    c = {'d'}, d = {},
+  }
+  local parentsMap = M.dag.reverseMap(childrenMap)
+  for _, v in pairs(parentsMap) do table.sort(v) end
+  T.eq({
+    d = {'b', 'c'}, c = {'a', 'b'},
+    b = {'a'},      a = {},
+  }, parentsMap)
+
+  local result = M.dag.reverseMap(parentsMap)
+  for _, v in pairs(result) do table.sort(v) end
+  T.eq(childrenMap, result)
+
+  T.eq({'d', 'c', 'b', 'a'}, M.dag.sort(childrenMap))
+end
+
+T.bimap = function()
+  local bm = M.BiMap{'one', 'two'}
+  T.eq(bm[1], 'one');   T.eq(bm.one, 1)
+  T.eq(bm[2], 'two');   T.eq(bm.two, 2)
+  bm[3] = 'three'
+  T.eq(bm[3], 'three'); T.eq(bm.three, 3)
+  T.eq('BiMap{"one", "two", "three", one=1, three=3, two=2}',
+           fmt(bm))
+
+  local bm = M.BiMap{a='A'}
+  T.eq(bm.a, 'A'); T.eq(bm.A, 'a')
+  bm.b = 'B'
+  T.eq(bm.b, 'B'); T.eq(bm.B, 'b')
+  T.eq('BiMap{A="a", B="b", a="A", b="B"}'
+       , fmt(bm))
+end
+
+T.deq = function()
+  local d = M.Deq()
+  d:pushRight(4); T.eq(1, #d)
+  d:pushRight(5); T.eq(2, #d)
+  d:pushLeft(3);  T.eq(3, #d)
+  T.eq(3, d());          T.eq(2, #d)
+  T.eq(5, d:popRight()); T.eq(1, #d)
+  T.eq(4, d());          T.eq(0, #d)
+
+  d = M.Deq()
+  d:extendRight{1, 2}; d:extendLeft{4, 5}; d:extendRight{6, 7}
+  setmetatable(d, nil)
+  T.eq({[-1]=4, [0]=5, 1, 2, 6, 7, left=-1, right=4},
+    setmetatable(d, nil))
+  T.eq({4, 5, 1, 2, 6, 7}, setmetatable(d, M.Deq):drain())
+  T.eq({left=1, right=0}, setmetatable(d, nil))
+end
+
+local TB = [[
+stack traceback:
+        [C]: in function 'string.gsub'
+        lib/ds/ds.lua:1064: in function 'ds.tracelist'
+        lib/ds/ds.lua:1084: in function <lib/ds/ds.lua:1081>
+]]
+T.error = function()
+  T.throws('expect failure', function()
+    M.check(3, nil, nil, 'expect failure', 'other')
+  end)
+  T.eq({'a', nil, 'c'}, {M.check(2, 'a', nil, 'c')})
+
+  T.eq({
+    "[C]: in function 'string.gsub'",
+    "lib/ds/ds.lua:1064: in function 'ds.tracelist'",
+    "lib/ds/ds.lua:1084: in function <lib/ds/ds.lua:1081>"
+  }, M.tracelist(TB))
+
+  local ok, err = M.try(c); T.eq(false, ok)
+  M.clear(err.traceback, 4)
+  local expect = M.Error{
+    msg='a error',
+    traceback={
+      "lib/ds/test.lua:5: in upvalue 'a'",
+      "lib/ds/test.lua:6: in upvalue 'b'",
+      "lib/ds/test.lua:6: in function <lib/ds/test.lua:6>",
+    },
+  }
+  T.eq(expect, err)
+
+  local cor = coroutine.create(c)
+  local ok, msg = coroutine.resume(cor)
+  assert(not ok)
+  T.eq(expect, M.Error.from(msg, cor))
+end
+
+---------------------
+-- ds/Iter.lua
+T['ds.Iter'] = function()
+  local It = require'ds.Iter'
+  local t = {4, 5, 'six', 7}
+
+  local isNumber = function(v) return type(v) == 'number' end
+  local numberVals = function(k, v) return isNumber(v)    end
+  local plus2 = function(v) return v + 2 end
+  local vToString = function(k, v) return k, tostring(v)  end
+
+  T.eq(t, It:ofList(t):to())
+  T.eq(t, It:of(t):to())
+  T.eq(t, It:ofList(t):valsTo())
+  T.eq({1, 2, 3, 4}, It:ofList(t):keysTo())
+
+  T.eq({4, 5, [4]=7}, It:ofList(t):filter(numberVals):to())
+  T.eq({1, 2, 4}, It:ofList(t):filter(numberVals):keysTo())
+  T.eq({4, 5, 7}, It:ofList(t):filter(numberVals):valsTo())
+
+  T.eq({4, 5, 7}, It:ofList(t):filterV(isNumber):valsTo())
+  T.eq({6, 7, 9},
+    It:ofList(t):filterV(isNumber):mapV(plus2):valsTo())
+
+  local strs = {'4', '5', 'six', '7'}
+  T.eq(strs, It:ofList(t):map(vToString):to())
+  T.eq(strs, It:ofList(t):mapV(tostring):to())
+  T.eq({1, 2, 3, 4}, It:ofList(t):mapV(tostring):keysTo())
+
+  T.eq({['1'] = 4, ['2'] = 5, ['3'] = 'six', ['4'] = 7},
+    It:of(t):mapK(tostring):to())
+
+  local lk = {11, 22, 33, 44, 55, 'unused', 77, six=666}
+  T.eq({11, 22, 33,  44}, It:ofList(t):lookupK(lk):keysTo())
+  T.eq({44, 55, 666, 77}, It:of(t):lookupV(lk):to())
+
+
+  local it = It:ofList(t):lookupK(lk)
+  local res = {}; for k, v in it do push(res, k)end
+  T.eq({11, 22, 33,  44}, res)
+
+  -- local it = It:ofList(t):lookupK(lk)
+  -- local res = {}; for k, v in it:iter() do push(res, k)end
+  -- T.eq({11, 22, 33,  44}, res)
+
+  -- local it = It:ofList(t):lookupV(lk)
+  -- local res = {}; for k, v in it:iter() do res[k] = v end
+  -- T.eq({44, 55, 666, 77}, res)
+
+  -- use a big table
+  local t = {}; for i=100,1,-1 do t[sfmt('%03i', i)] = i end
+  T.eq(t['001'], 1); T.eq(t['100'], 100);
+  local expect = {}; for i=1,100  do expect[i] = i end
+  T.eq(expect, It:ofOrdMap(t):valsTo())
+  T.eq(expect, It:ofOrdMap(t):index():to())
+
+  T.eq({a=1, b=2, c=3}, It:of{'a', 'b', 'c'}:swap():to())
+
+  local t = {10, 20, 30, 40, 50, 60}
+  T.eq({40, 50, 60},             It:ofSlc(t, 4):valsTo())
+  T.eq({[4]=40, [5]=50, [6]=60}, It:ofSlc(t, 4):to())
+
+  T.eq({[2]=20, [4]=40}, It:of(t):keyIn{[2]=1,  [4]=1}:to())
+  T.eq({[2]=20, [4]=40}, It:of(t):valIn{[20]=1, [40]=1}:to())
+
+  T.eq(true,  It:of{true, true, true}:all())
+  T.eq(false, It:of{true, false, true}:all())
+  T.eq(true,  It:of{false, false, true, false}:any())
+  T.eq(false, It:of{false, false, false, false}:any())
+
+  It{ipairs{11, 12, 13}}:assertEq(It{ipairs{11, 12, 13}})
+
+  local i = 0
+  local it = It{function()
+    if i >= 3 then return end
+    i = i + 1; return i, 10 + i
+  end}
+  It{ipairs{11, 12, 13}}:assertEq(it)
+
+  it = It:ofUnpacked{{11, 'first'}, {22, 'second'}}
+  T.eq({11, 'first'},  {it()})
+  T.eq({22, 'second'}, {it()})
+  T.eq(nil, it())
+end
+
+---------------------
+-- ds/utf8.lua
+
+local function testU8(expect, chrs)
+  local len = d8.decodelen(chrs[1]); assert(len, 'len is nil')
+  T.eq(#chrs, len)
+  c = d8.decode(chrs)
+  T.eq(expect, utf8.char(c))
+end
+
+-- chrs were gotten from python:
+--   print('{'+', '.join('0x%X' % c for c in '🙃'.encode('utf-8'))+'}')
+-- Edge case characters are from:
+--   https://design215.com/toolbox/ascii-utf8.php
+T.u8edges = function()
+  testU8('\0', {0})
+  testU8(' ', {0x20})
+  testU8('a', {string.byte('a')})
+  testU8('~', {0x7E})
+
+  testU8('¡', {0xC2, 0xA1})
+  testU8('ƒ', {0xC6, 0x92})
+  testU8('߿', {0xDF, 0xBF})
+
+  testU8('ࠀ', {0xE0, 0xA0, 0x80})
+  testU8('ἰ', {0xE1, 0xBC, 0xB0})
+  testU8('‡', {0xE2, 0x80, 0xA1})
+  testU8('➤', {0xE2, 0x9E, 0xA4})
+  testU8('⮝', {0xE2, 0xAE, 0x9D})
+  testU8('€', {0xE2, 0x82, 0xAC})
+  testU8('�', {0xEF, 0xBF, 0xBD})
+
+  testU8('𒀀',  {0xF0, 0x92, 0x80, 0x80})
+  testU8('🙃', {0xF0, 0x9F, 0x99, 0x83})
+  testU8('🧿', {0xF0, 0x9F, 0xA7, 0xBF})
+end
+
+-----------------
+-- Log
+T.log = function()
+  local L = require'ds.log'
+  local fn, lvl = assert(LOGFN), assert(LOGLEVEL)
+  local logs = {}
+  LOGLEVEL = L.levelInt'INFO'
+  LOGFN = function(lvl, loc, ...)
+    push(logs, {lvl, ...}) -- skip loc
+  end
+  L.info'test info';              T.eq({4, 'test info'}, pop(logs))
+  L.info('test %s', 'fmt')
+    T.eq({4, 'test %s', 'fmt'}, pop(logs))
+
+  L.info('test %s', 'data', {1})
+    T.eq({4, 'test %s', 'data', {1}}, pop(logs))
+
+  LOGLEVEL = L.levelInt'WARN'
+  L.info'test no log'; T.eq(0, #logs)
+  L.warn'test warn';   T.eq({3, 'test warn'}, pop(logs))
+  T.eq(0, #logs)
+  LOGFN = fn
+
+  LOGLEVEL = L.levelInt'INFO'
+  -- test writing
+  local cxt = ' [%d:]+ ds/test.lua:%d+: '
+  local iofmt = io.fmt
+  local f = io.tmpfile()
+  io.fmt = fmt.Fmt:pretty{to=f}
+  local assertLog = function(lvl, expect, fn, ...)
+    f:seek'set'; fn(...); f:seek'set'
+    local res = f:read'a'
+    local m = lvl..cxt; T.matches(m, res)
+    T.eq(expect, res:sub(#res:match(m) + 1))
+  end
+  assertLog('I', 'test 42\n', L.info, 'test %s', 42)
+  assertLog('I', 'test data {1}\n', L.info, 'test %s', 'data', {1})
+  assertLog('I', 't {\n    1, 2, \n    key=42\n  }\n',
+            L.info, 't', {1, 2, key=42})
+  io.fmt = iofmt
+  LOGLEVEL = lvl
+end
+
+-----------------
+-- Grid
+T.Grid = function()
+  local Grid = require'ds.Grid'
+  local g = Grid{h=3, w=20}
+    T.eq('\n\n', fmt(g))
+  g:insert(2, 2, 'hello')
+    T.eq('\n hello\n', fmt(g))
+  g:insert(2, 4, ' is my friend') -- keeps 'he'
+    T.eq('\n he is my friend\n', fmt(g))
+
+  g:clear(); T.eq('\n\n', fmt(g))
+  g:insert(1, 3, 'hi\n  bye\nfin')
+    T.eq('  hi\n'
+           ..'    bye\n'
+           ..'  fin', fmt(g))
+
+  g:insert(1, 10, 'there\nthen\n!')
+    T.eq('  hi     there\n'
+           ..'    bye  then\n'
+           ..'  fin    !', fmt(g))
+
+  g = Grid{h=3, w=20}
+  g:insert(1, 1, {"13 5 7 9", " 2 4 6", ""})
+    T.eq('13 5 7 9\n 2 4 6\n', fmt(g))
+
+  g = Grid{h=3, w=20}
+  g:insert(2, 3, "hi")
+    T.eq('\n  hi\n', fmt(g))
+  g:insert(1, 6, "ab\ncd\nef")
+    T.eq(
+      '     ab\n'
+    ..'  hi cd\n'
+    ..'     ef', fmt(g))
+end
+
+-----------------
+-- kev
+T.kev = function()
+  local kev = require'ds.kev'
+  local t = {a='value a', b='value b', e=''}
+  local r = {'a=value a', 'b=value b', 'e='}
+  T.eq(r, kev.to(t))
+  T.eq(t, kev.from(r))
+  push(r, 'this has no equal sign and is ignored')
+  T.eq(t, kev.from(r))
+end

--- /dev/null
+++ lib/fd/Makefile
@@ -0,0 +1,36 @@
+# Copy/pastable Makefile for Lua C sources.
+
+# Modify these for a new library
+NAME  = fd
+FILES = $(NAME).c $(NAME).h
+OUT   = $(NAME)
+LUA_VERSION = lua
+
+UNAME != uname
+build:  $(UNAME)
+NetBSD: $(OUT).so
+Linux:  $(OUT).so
+Darwin: $(OUT).so
+# Windows: $(OUT).dll
+
+WNO = -Wno-incompatible-function-pointer-types
+	
+$(OUT).so: $(FILES)
+	make Build$(UNAME)
+
+BuildNetBSD:
+	echo "building NetBSD"
+	$(CC) $(FILES) -fPIC -O0 -g -llua -lpthread -I/usr/pkg/include/$(LUA_VERSION) -shared -o $(OUT).so
+
+BuildLinux: $(FILES)
+	$(CC) $(FILES) -fPIC -l$(LUA_VERSION) -I/usr/include/$(LUA_VERSION) -shared -o $(OUT).so
+
+BuildDarwin:
+	$(CC) $(FILES) $(shell pkg-config lua --cflags) -c -O2 -fPIC $(WNO)
+	$(CC) $(OUT).o -bundle -undefined dynamic_lookup -all_load     -o $(OUT).so
+
+# BuildWindows: TODO
+
+clean:
+	rm -f $(OUT).o $(OUT).so $(OUT).dll
+

--- /dev/null
+++ lib/fd/PKG.lua
@@ -0,0 +1,19 @@
+name     = 'fd'
+summary  = "filedescriptor interfaces"
+homepage = "https://lua.civboot.org#Package_fd"
+license  = "UNLICENSE"
+version  = '0.1-7'
+url      = 'git+http://github.com/civboot/civlua'
+doc = 'README.cxt'
+srcs = {
+  'fd.lua',
+  ['fd.sys'] = 'fd.c',
+  'fd/IFile.lua',
+}
+libs = {
+  ['fd.sys'] = 'fd.so',
+}
+deps = {
+  "lua ~> 5.3",
+  "metaty ~> 0.1",
+}

--- /dev/null
+++ lib/fd/README.cxt
@@ -0,0 +1,8 @@
+fd: synchronous and asynchronous file descriptors
+
+fd implements an API identical to lua's [$file] object but with support for
+async operations following the [/lib/lap] protocol.
+
+It also contains a few simple file-backed data structures ([@fd.VFile] and
+[@fd.LLFile]).
+

--- /dev/null
+++ lib/fd/fd.c
@@ -0,0 +1,710 @@
+#include <stdlib.h>
+
+#include <stdio.h>
+#include <string.h>
+#include <errno.h>
+#include <stdbool.h>
+
+#include <lua.h>
+#include <lualib.h>
+#include <lauxlib.h>
+
+#include <unistd.h>
+#include <pthread.h>
+#include <fcntl.h>
+#include <assert.h>
+#include <poll.h>
+#include <sys/stat.h>
+#include "fd.h"
+
+//***********************
+//* APPLE
+#if __APPLE__
+#include <sys/socket.h>
+static char EFD_BUF = 0;
+#define EV_INIT(FDT)    do { int* s = (FDT)->socks; \
+                             s[0] = -1; s[1] = -1; } while(0)
+#define EV_OPEN(FDT) socketpair(AF_UNIX, SOCK_STREAM, 0, (FDT)->socks)
+static void EV_POST(FDT* fdt) {
+  assert( read(fdt->socks[0], &EFD_BUF, 1) == 1);
+  assert(write(fdt->socks[0], &EFD_BUF, 1) == 1);
+}
+static void EV_WAIT(FDT* fdt) {
+  assert(write(fdt->socks[1], &EFD_BUF, 1) == 1);
+  assert( read(fdt->socks[1], &EFD_BUF, 1) == 1);
+}
+#define EV_FILENO(FDT) (FDT)->socks[0]
+#define EV_DESTROY(FDT) if((FDT)->socks[0] >= 0) { \
+  int* s = (FDT)->socks; close(s[0]); close(s[1]); s[0] = -1; s[1] = -1; }
+
+//***********************
+//* Linux / BSD
+#else
+#include <sys/eventfd.h>
+static const uint64_t EFD_WRITE = 0xfffffffffffffffeUL;
+static uint64_t EFD_READ = 0;
+#define EFD_OK 8
+#define EV_INIT(FDT) (FDT)->evfd = -1;
+#define EV_OPEN(FDT) ((FDT)->evfd = eventfd(1, 0))
+#define EV_POST(FDT) assert(read((FDT)->evfd,  &EFD_READ, 8)  == EFD_OK)
+#define EV_WAIT(FDT) assert(write((FDT)->evfd, &EFD_WRITE, 8) == EFD_OK)
+#define EV_FILENO(FDT) (FDT)->evfd
+#define EV_DESTROY(FDT) if((FDT)->evfd >= 0) \
+  { close((FDT)->evfd); (FDT)->evfd = -1; }
+#endif
+
+#define FD_EOF     (-1)
+#define FD_RUNNING (-2)
+#define LEN(FD)  ((FD)->ei - (FD)->si)
+
+typedef lua_State LS;
+
+#define ASSERT(L, OK, ...) \
+  if(!(OK)) { luaL_error(L, __VA_ARGS__); }
+
+// ----------------------
+// -- FD CREATE / CLOSE
+
+// Create a FD object
+static void FD_init(FD* fd) {
+  fd->code = 0; fd->fileno = -1; fd->pos = 0;
+  fd->size = 0; fd->si = 0; fd->ei = 0;
+  fd->buf = NULL;
+}
+FD* FD_create(LS* L) {
+  FD* fd = (FD*)lua_newuserdata(L, sizeof(FD));
+  FD_init(fd);
+  luaL_setmetatable(L, LUA_FD);
+  return fd;
+}
+void FD_free(FD* fd) {
+  if(fd->size) { free((char*)fd->buf); fd->size = 0; }
+}
+
+void FD_close(FD* fd) {
+  if(fd->fileno >= 0) {
+    close(fd->fileno); fd->fileno = -1;
+  }
+  FD_free(fd);
+  fd->code = 0;
+}
+
+// ----------------------
+// -- FDT CREATE / CLOSE
+static void* FDT_run(void* d) {
+  FDT* fdt = (FDT*) d;
+  uint64_t unused;
+  while(true) {
+    EV_WAIT(fdt);
+    if(fdt->stopped) break;
+    fdt->meth(&fdt->fd);
+  }
+  fdt->stopped = 2;
+  return NULL;
+}
+
+FDT* FDT_create(LS* L) {
+  FDT* fdt = (FDT*)lua_newuserdata(L, sizeof(FDT));
+  FD_init(&fdt->fd); fdt->meth = NULL; fdt->stopped = false;
+  EV_INIT(fdt);
+  luaL_setmetatable(L, LUA_FDT);
+  if(EV_OPEN(fdt) < 0) goto error;
+  if (pthread_create(
+        &fdt->th, /*attr=*/ NULL,
+      /*start_routine=*/FDT_run, /*arg=*/(void*)fdt)) {
+    goto error;
+  }
+  return fdt;
+error:
+  fdt->stopped = 3; fdt->fd.code = errno;
+  EV_DESTROY(fdt);
+  return fdt;
+}
+
+// ----------------------
+// -- FD ALLOCATE / DESTROY
+// These methods are the logic used for both the threaded
+// and non-threaded implementaiton of filedescriptors.
+#define IO_SIZE   16384
+
+static void FD_realloc(FD* fd, int size) {
+  if(fd->size == 0) fd->buf = NULL;
+  if(size < IO_SIZE) size = IO_SIZE;
+  char* buf = realloc((char*)fd->buf, size);
+  if(!buf) return FD_free(fd);
+  fd->buf = buf; fd->size = size;
+}
+
+// ----------------------
+// -- METHODS
+// FD calls these semi-directly. FDT calls them through
+// the thread.
+
+// open buf, flags=ctrl
+static void FD_open(FD* fd) {
+  fd->fileno = open((char*)fd->buf, fd->ctrl, 0666);
+  int code = 0, pos = 0;
+  if(fd->fileno >= 0) {
+    if(fd->ctrl & O_APPEND) {
+      pos = lseek(fd->fileno, 0, SEEK_END);
+      if(pos < 0) { pos = 0; code = errno; }
+    }
+  } else code = errno;
+  fd->pos  = pos; fd->code = code;
+}
+
+static void FD_tmp(FD* fd) {
+  FILE* f = tmpfile();         if(!f)             goto error;
+  fd->fileno = dup(fileno(f)); if(fd->fileno < 0) goto error;
+  fclose(f); fd->code = 0;
+  return;
+error:
+  if(f) fclose(f);
+  fd->code = errno;
+}
+
+
+// find character index. If index==ei then not found.
+static size_t FD_findc(FD* fd, size_t si, char c) {
+  for(; si < fd->ei; si++) {
+    if(c == fd->buf[si]) return si;
+  }
+  return fd->ei + 1;
+}
+
+// shift the buffer left, typically done before a
+// read operation.
+static void FD_shift(FD* fd) {
+  if(fd->si == 0) return;
+  if(fd->ei - fd->si > 0) {
+    memmove((char*)fd->buf, (char*)fd->buf + fd->si, fd->ei - fd->si);
+  }
+  fd->ei -= fd->si; fd->si = 0;
+}
+
+// Read into buffer until EOF or error
+// If ctrl < 0 then breaks at that negated character (i.e. '\n').
+// if ctrl > 0 then stops reading when that amount is read
+static void FD_read(FD* fd) {
+  if(fd->size) FD_shift(fd);
+  else         FD_realloc(fd, IO_SIZE);
+  if(!fd->buf) { fd->code = errno; return; }
+  int ctrl = fd->ctrl, code = 0;
+  while(true) {
+    if((ctrl > 0) && (LEN(fd) >= ctrl)) break;
+    if(fd->size - fd->ei == 0) FD_realloc(fd, fd->size * 2);
+    if(!fd->buf) { code = errno; break; }
+    int rem = fd->size - fd->ei;
+    int c = read(fd->fileno, (char*)fd->buf + fd->ei, rem);
+    if(c < 0) { code = errno; break; }
+    fd->ei += c;
+    if(ctrl < 0) {
+      int i = FD_findc(fd, fd->ei - c, (char) -ctrl);
+      if(i <= fd->ei) break;
+    }
+    if(c == 0) { code = FD_EOF; break; } // EOF: signal to findc callers
+  }
+  fd->code = code;
+}
+
+// Write the contents of fd buf[si:ei)
+//
+// Note: size is unused and is typically zero to indicate
+//   that buf is Lua owned.
+static void FD_write(FD* fd) {
+  int c = write(fd->fileno, (char*)fd->buf + fd->si, LEN(fd));
+  if(c >= 0) { fd->si += c; fd->pos += c; fd->code = 0; }
+  else         fd->code = errno;
+}
+
+// attempt to seek using only buffer, else update FD.
+// return true if complete (no syscall needed)
+static bool FD_seekpre(FD* fd, off_t offset, int whence) {
+  if((whence == SEEK_SET) && (offset == 0)) goto hard;
+  off_t want = offset; switch(whence) {
+    case SEEK_CUR: want += fd->pos; // make absolute
+    case SEEK_SET:
+      if((fd->pos <= want) && (want <= fd->pos + LEN(fd))) {
+        fd->si += want - fd->pos; fd->pos = want;
+        return true;
+      } // fallthrough
+    case SEEK_END: break; // rely on syscall
+    default: assert(false);
+  }
+hard:
+  fd->pos = offset; fd->ctrl = whence;
+  return false;
+}
+
+static void FD_seek(FD* fd) {
+  off_t pos = lseek(fd->fileno, fd->pos, fd->ctrl);
+  if(pos == -1) { fd->code = errno; return; }
+  fd->pos = pos;
+  if(fd->size) { fd->si = 0; fd->ei = 0; } // read buffer only
+  fd->code = 0;
+}
+
+static int _FD_flush(FD* fd) {
+  struct stat sbuf = {0};
+  if(fstat(fd->fileno, &sbuf))             return errno;
+  if(sbuf.st_mode != S_IFREG)              return 0;
+  if(fsync(fd->fileno))                    return errno;
+
+  // Discard unused data that was read
+  if((fd->size == 0) || LEN(fd) == 0)      return 0;
+  if(lseek(fd->fileno, fd->pos, SEEK_SET)) return errno;
+  fd->si = 0; fd->ei = 0;
+  return 0;
+}
+static void FD_flush(FD* fd) {
+  fd->code = _FD_flush(fd);
+}
+
+// ----------------------
+// -- FD/T LUA METHODS
+// These are used by both FD and FDT
+
+#define toFD(L) ((FD*)luaL_checkudata(L, 1, LUA_FD))
+#define toFDT(L) ((FDT*)luaL_checkudata(L, 1, LUA_FDT))
+#define fdGetFD(V)  (V)
+#define fdGetFDT(V) (&(V)->fd)
+static FD* asfd(LS* L) {
+  FD* fd = luaL_testudata(L, 1, LUA_FD);  if(fd) return fd;
+      fd = luaL_testudata(L, 1, LUA_FDT); if(fd) return fd;
+  luaL_error(L, "arg 1 not FD or FDT"); return NULL;
+}
+
+static void assertReady(LS* L, FD* fd, const char* name) {
+  ASSERT(L, fd->code >= FD_EOF, "%s while not ready", name);
+}
+
+// (fd, till=-1) -> string
+//
+// pop a string from the buffer. till can be:
+//
+// * zero: pop whole buffer
+// * negative: pop the buffer until that character.
+//     Return nil character not found.
+// * positive: pop exactly that many characters or nil.
+//
+// note: if result would be '' returns nil instead
+static int l_FD_pop(LS* L) {
+  FD* fd = asfd(L); assertReady(L, fd, "pop");
+  int till = luaL_optnumber(L, 2, 0);
+  if(!fd->buf) { return 0; } // nil (no buffer)
+  if(till == 0) till = fd->ei;
+  else if(till < 0) {
+    till = FD_findc(fd, fd->si, (char)(-till));
+    if(till >= fd->ei) return 0; // nil (not found)
+    till++; // include character in found
+  } else {
+    till += fd->si;
+    if(till > fd->ei) return 0; // nil (not enough bytes)
+  }
+  if(till  == fd->si) return 0; // nil instead of empty
+  lua_pushlstring(L, (char*)fd->buf + fd->si, till - fd->si);
+  fd->pos += till - fd->si;
+  fd->si = till;
+  return 1;
+}
+
+static int l_FD_codestr(LS* L) {
+  int code = lua_isnoneornil(L, 2)
+      ? asfd(L)->code : lua_tointeger(L, 2);
+  char* str; switch(code) {
+    case  0: str = "FD_READY";   break;
+    case -1: str = "FD_EOF";     break;
+    case -2: str = "FD_RUNNING"; break;
+    default: str = strerror(code);
+  }
+  lua_pushstring(L, str); return 1;
+}
+
+#define FD_intfield(FIELD) \
+  static int l_FD_##FIELD(LS* L) \
+  { lua_pushinteger(L, asfd(L)->FIELD); return 1; } \
+
+FD_intfield(code);
+FD_intfield(fileno);
+FD_intfield(pos);
+FD_intfield(ctrl);
+static int l_FDT_evfileno(LS* L)
+{ lua_pushinteger(L, EV_FILENO(toFDT(L))); return 1; }
+
+static int l_FD_setfileno(LS* L) {
+  asfd(L)->fileno = luaL_checkinteger(L, 2); return 0;
+}
+
+// ----------------------
+// -- FD LUA METHODS
+
+// return true while still running previous
+#define FDT_READY(FDT) \
+  if((FDT)->fd.code == FD_RUNNING) { \
+    lua_pushboolean(L, true); return 1; \
+  }
+#define FDT_START(FDT, METH) \
+  (FDT)->fd.code = FD_RUNNING; \
+  fdt->meth = METH; EV_POST(fdt); \
+  return 0;
+
+// FD_read(fd, till=0) -> (code)
+// Note: this interacts with FD_pop.
+//
+// read from file into buf. The amount depends on `till`
+// * zero: read till EOF
+// * positive: read at least this amount of bytes
+// * negative: read until the negated character
+//
+// Returns the code for convinience.
+// Note: call l_FD_pop() for the read string.
+static int l_FD_read(LS* L) {
+  FD* fd = toFD(L);
+  fd->ctrl = luaL_optnumber(L, 2, 0);
+  FD_read(fd);
+  lua_pushinteger(L, fd->code); return 1;
+}
+static int l_FDT_read(LS* L) {
+  FDT* fdt = toFDT(L); FDT_READY(fdt);
+  fdt->fd.ctrl = luaL_optnumber(L, 2, 0);
+  FDT_START(fdt, FD_read);
+
+}
+#undef PRE_READ
+
+// FD_write may have to be called multiple times (O_NONBLOCK).
+// It requires passing in the string repeatedly, so we don't
+// need to own the string.
+static int l_FD_write(LS* L) {
+  FD* fd = toFD(L);
+  FD_free(fd);
+  fd->buf = (char*)luaL_checklstring(L, 2, (size_t*)&fd->ei);
+  if(!lua_isnoneornil(L, 3)) fd->si = luaL_checkinteger(L, 3);
+  if(!lua_isnoneornil(L, 4)) fd->ei = luaL_checkinteger(L, 4);
+  FD_write(fd);
+  lua_pushinteger(L, fd->code); return 1;
+}
+
+// FDT_write may only be called once. We copy the string
+// so the pthread owns it
+static int l_FDT_write(LS* L) {
+  FDT* fdt = toFDT(L); FDT_READY(fdt);
+  size_t len; const char* s = luaL_checklstring(L, 2, &len);
+  int si = luaL_optinteger(L, 3, 0);
+  int ei = luaL_optinteger(L, 3, len);
+  FD* fd = &fdt->fd;
+  if(fd->size < ei - si) FD_realloc(fd, ei - si);
+  if(!fd->size) { fd->code = errno; return 0; }
+  memmove((char*)fd->buf, s + si, ei - si);
+  fd->si = 0; fd->ei = ei - si;
+  FDT_START(fdt, FD_write);
+}
+
+// (fd, offset, whence) -> (code)
+// Seek to offset+whence
+static int l_FD_seek(LS* L) {
+  FD* fd = toFD(L);
+  off_t offset = luaL_checkinteger(L, 2);
+  int whence   = luaL_checkinteger(L, 3);
+  if(FD_seekpre(fd, offset, whence)) fd->code = 0;
+  else FD_seek(fd);
+  return 0;
+}
+static int l_FDT_seek(LS* L) {
+  FDT* fdt = toFDT(L); FDT_READY(fdt);
+  off_t offset = luaL_checkinteger(L, 2);
+  int whence   = luaL_checkinteger(L, 3);
+  fdt->fd.code = FD_RUNNING;
+  if(FD_seekpre(&fdt->fd, offset, whence)) fdt->fd.code = 0;
+  else { fdt->meth = FD_seek; EV_POST(fdt); }
+  return 0;
+}
+
+static int l_FD_flush(LS* L) { FD_flush(toFD(L)); return 0; }
+static int l_FDT_flush(LS* L) {
+  FDT* fdt = toFDT(L); FDT_READY(fdt);
+  FDT_START(fdt, FD_flush);
+}
+
+static int l_FD_create(LS* L)  { FD_create(L);  return 1; }
+static int l_FDT_create(LS* L) { FDT_create(L); return 1; }
+
+// open(path, flags) -> FD
+static int l_FD_open(LS* L) {
+  const char* path = luaL_checkstring(L, 1);
+  const int flags = luaL_checkinteger(L, 2);
+  FD* fd = FD_create(L);
+  fd->buf = (char*)path; fd->ctrl = flags;
+  fd->code = FD_RUNNING; FD_open(fd);
+  return 1;
+}
+static int l_FDT_open(LS* L) {
+  const char* path = luaL_checkstring(L, 1);
+  const int flags = luaL_checkinteger(L, 2);
+  FDT* fdt = FDT_create(L); FD* fd = &fdt->fd;
+  fd->buf = (char*)path; fd->ctrl = flags;
+  fd->code = FD_RUNNING;
+  fdt->meth = FD_open; EV_POST(fdt);
+  return 1;
+}
+
+static int l_FD_tmp(LS* L) {
+  FD* fd = FD_create(L);
+  FD_tmp(fd);
+  return 1;
+}
+static int l_FDT_tmp(LS* L) {
+  FDT* fdt = FDT_create(L); FD* fd = &fdt->fd;
+  fdt->meth = FD_tmp; EV_POST(fdt);
+  return 1;
+}
+#undef FD_TMP
+
+static int l_FD_close(LS* L) {
+  FD_close(toFD(L));
+  return 0;
+}
+static int l_FDT_close(LS* L) {
+  FDT* fdt = toFDT(L); assertReady(L, &fdt->fd, "close");
+  fdt->fd.code = FD_RUNNING;
+  fdt->meth = FD_close; EV_POST(fdt);
+  return 0;
+}
+void FDT_destroy(FDT* fdt) {
+  if(!fdt->stopped) {
+    fdt->stopped = 1;
+    EV_POST(fdt); pthread_join(fdt->th, NULL);
+    EV_DESTROY(fdt);
+  }
+  FD_close(&fdt->fd);
+}
+static int l_FDT_destroy(LS* L) { FDT_destroy(toFDT(L)); return 0; }
+
+// (fd) -> code, flags
+static int l_FD_getflags(LS* L) {
+  FD* fd = asfd(L);
+  int fl = fcntl(fd->fileno, F_GETFL);
+  fd->code = (fl < 0) ? errno : 0;
+  lua_pushinteger(L, fd->code);
+  lua_pushinteger(L, fl);
+  return 2;
+}
+
+// (fd, flags) -> code
+static int l_FD_setflags(LS* L) {
+  FD* fd = asfd(L); fd->code = FD_RUNNING;
+  int fl = fcntl(fd->fileno, F_SETFL, luaL_checkinteger(L, 2));
+  fd->code = (fl < 0) ? errno : 0;
+  lua_pushinteger(L, fd->code);
+  return 1;
+}
+
+// () -> (r, w): return read/write pipes
+static int l_pipe(LS* L) {
+  FD *r = FD_create(L); FD *w = FD_create(L);
+  int rw[2]; ASSERT(L, !pipe(rw), "pipe() %s", strerror(errno));
+  r->fileno = rw[0]; w->fileno = rw[1];
+  return 2;
+}
+
+// ---------------------
+// -- PollList
+const char* LUA_PL = "fd.PollList";
+#define toPL(L) \
+  ((PL *)luaL_checkudata(L, 1, LUA_PL))
+
+typedef struct _PL {
+  int size;
+  struct pollfd* fds;
+} PL;
+
+static void PL_realloc(LS* L, PL* pl, int size) {
+  struct pollfd* fds = realloc(pl->fds, size * sizeof(struct pollfd));
+  ASSERT(L, fds, "OOM: realloc pollfds size=%I", size);
+  for(int i=pl->size; i < size; i++) {
+    fds[i].fd = -1; fds[i].revents = 0;
+  }
+  pl->fds = fds; pl->size = size;
+}
+static int l_PL_new(LS* L) {
+  PL* pl = (PL*)lua_newuserdata(L, sizeof(PL));
+  pl->size = 0; pl->fds = NULL;
+  luaL_setmetatable(L, LUA_PL);
+  return 1;
+}
+static int l_PL_resize(LS* L) {
+  PL_realloc(L, toPL(L), luaL_checkinteger(L, 2)); return 0;
+}
+static int l_PL_destroy(LS* L) {
+  PL* pl = toPL(L);
+  if(pl->fds) { free(pl->fds); pl->size = 0; pl->fds = NULL; }
+  return 0;
+}
+static int l_PL_size(LS* L) { lua_pushinteger(L, toPL(L)->size); return 1; }
+
+// (pl, index, fileno, events)
+// Note: indexes are 0-based
+static int l_PL_set(LS* L) {
+  PL* pl = toPL(L);
+  int index  = luaL_checkinteger(L, 2);
+  int fileno = luaL_checkinteger(L, 3);
+  int events = luaL_checkinteger(L, 4);
+  pl->fds[index].fd      = fileno;
+  pl->fds[index].events  = events;
+  pl->fds[index].revents = 0;
+  return 0;
+}
+
+// (pl, timeoutMs) -> {filenos}
+static int l_PL_ready(LS* L) {
+  PL* pl = toPL(L);
+  int timeoutMs = luaL_checkinteger(L, 2);
+  int count = poll(pl->fds, pl->size, timeoutMs);
+  lua_createtable(L, count, 0);
+  int ti = 1;
+  for(int i = 0; i < pl->size; i++) {
+    if(pl->fds[i].revents) {
+      lua_pushinteger(L, pl->fds[i].fd);
+      lua_seti(L, -2, ti); ti++;
+      pl->fds[i].revents = 0;
+    }
+  }
+  return 1;
+}
+
+// ----------------------
+// -- DEFINE LIBRARY
+
+// (io.file) -> (fileno)
+static int l_fileno(LS* L) {
+  luaL_Stream* fs = (luaL_Stream *)luaL_checkudata(L, 1, LUA_FILEHANDLE);
+  lua_pushinteger(L, fileno(fs->f));
+  return 1;
+}
+
+// fmode(fileno) -> st_mode (see fd.fmode())
+static int l_fstmode(LS* L) {
+  int fd = luaL_checkinteger(L, 1); struct stat sbuf = {0};
+  if(fstat(fd, &sbuf)) {
+    lua_pushnil(L);
+    lua_pushstring(L, strerror(errno));
+    return 2;
+  }
+  lua_pushinteger(L, sbuf.st_mode);
+  return 1;
+}
+
+// (fileno) -> (isatty)
+static int l_isatty(LS* L) {
+  lua_pushboolean(L, isatty(luaL_checkinteger(L, 1)));
+  return 1;
+}
+
+
+static const struct luaL_Reg fd_sys[] = {
+  {"openFD", l_FD_open},   {"openFDT", l_FDT_open},
+  {"tmpFD",  l_FD_tmp},    {"tmpFDT",  l_FDT_tmp},
+  {"newFD",  l_FD_create}, {"newFDT",  l_FDT_create},
+  {"pollList", l_PL_new},
+  {"fileno", l_fileno},    {"fstmode", l_fstmode},
+  {"isatty", l_isatty},
+  {"pipe", l_pipe},
+  {NULL, NULL},
+};
+
+#define L_setmethod(L, KEY, FN) \
+  lua_pushcfunction(L, FN); lua_setfield(L, -2, KEY);
+
+int luaopen_fd_sys(LS *L) {
+  luaL_newlib(L, fd_sys);
+
+    #define FD_METHODS  (/*native=*/ 11 + /*lua=*/ 3)
+    luaL_newmetatable(L, LUA_FD);
+      L_setmethod(L, "__gc", l_FD_close);
+      lua_createtable(L, 0, FD_METHODS);
+        // fields
+        L_setmethod(L, "code",     l_FD_code);
+        L_setmethod(L, "fileno",   l_FD_fileno);
+        L_setmethod(L, "pos",      l_FD_pos);
+        L_setmethod(L, "_setfileno", l_FD_setfileno);
+
+        // true methods
+        L_setmethod(L, "close",    l_FD_close);
+        L_setmethod(L, "codestr",  l_FD_codestr);
+        L_setmethod(L, "_write",   l_FD_write);
+        L_setmethod(L, "_getflags",l_FD_getflags);
+        L_setmethod(L, "_setflags",l_FD_setflags);
+        L_setmethod(L, "_read",    l_FD_read);
+        L_setmethod(L, "_seek",    l_FD_seek);
+        L_setmethod(L, "_pop",     l_FD_pop);
+        L_setmethod(L, "_flush",   l_FD_flush);
+      lua_setfield(L, -2, "__index");
+    lua_setfield(L, -2, "FD");
+
+    luaL_newmetatable(L, LUA_FDT);
+      L_setmethod(L, "__gc", l_FDT_destroy);
+      lua_createtable(L, 0, FD_METHODS);
+        // fields
+        L_setmethod(L, "code",     l_FD_code);
+        L_setmethod(L, "fileno",   l_FD_fileno);
+        L_setmethod(L, "pos",      l_FD_pos);
+        L_setmethod(L, "_setfileno", l_FD_setfileno);
+
+        // true methods
+        L_setmethod(L, "_close",   l_FDT_close);
+        L_setmethod(L, "codestr",  l_FD_codestr);
+        L_setmethod(L, "_write",   l_FDT_write);
+        L_setmethod(L, "_getflags",l_FD_getflags);
+        L_setmethod(L, "_setflags",l_FD_setflags);
+        L_setmethod(L, "_read",    l_FDT_read);
+        L_setmethod(L, "_seek",    l_FDT_seek);
+        L_setmethod(L, "_pop",     l_FD_pop);
+        L_setmethod(L, "_flush",   l_FDT_flush);
+        L_setmethod(L, "_evfileno",l_FDT_evfileno);
+      lua_setfield(L, -2, "__index");
+    lua_setfield(L, -2, "FDT");
+
+  luaL_newmetatable(L, LUA_PL);
+    L_setmethod(L, "__gc", l_PL_destroy);
+    lua_createtable(L, 0, 4); // __index table
+      L_setmethod(L, "size",    l_PL_size);
+      L_setmethod(L, "resize",  l_PL_resize);
+      L_setmethod(L, "set",     l_PL_set);
+      L_setmethod(L, "ready",   l_PL_ready);
+    lua_setfield(L, -2, "__index");
+    lua_setfield(L, -2, "PL");
+
+  #define setconstfield(L, CONST) \
+    lua_pushinteger(L, CONST); lua_setfield(L, -2, #CONST)
+  setconstfield(L, FD_EOF);  setconstfield(L, FD_RUNNING);
+
+  // open constants
+  setconstfield(L, O_RDONLY); setconstfield(L, O_WRONLY);
+  setconstfield(L, O_RDWR);   setconstfield(L, O_APPEND);
+  setconstfield(L, O_CREAT);  setconstfield(L, O_TRUNC);
+  setconstfield(L, O_NONBLOCK);
+
+  // st_mode constants
+  setconstfield(L, S_IFMT);
+  setconstfield(L, S_IFSOCK); setconstfield(L, S_IFLNK);
+  setconstfield(L, S_IFREG);  setconstfield(L, S_IFBLK);
+  setconstfield(L, S_IFDIR);  setconstfield(L, S_IFCHR);
+  setconstfield(L, S_IFIFO);
+
+  // seek constants
+  setconstfield(L, SEEK_SET); setconstfield(L, SEEK_CUR);
+  setconstfield(L, SEEK_END);
+
+  // poll constants
+  setconstfield(L, POLLIN);   setconstfield(L, POLLOUT);
+
+  // important errors
+  setconstfield(L, EWOULDBLOCK); setconstfield(L, EAGAIN);
+  setconstfield(L, EBADF);
+
+  // std descriptors
+  setconstfield(L, STDIN_FILENO); setconstfield(L, STDOUT_FILENO);
+  setconstfield(L, STDERR_FILENO);
+
+  return 1;
+}

--- /dev/null
+++ lib/fd/fd.h
@@ -0,0 +1,36 @@
+#ifndef FD_H
+#define FD_H
+#include <lua.h>
+#include <unistd.h>
+#include <pthread.h>
+
+#define LUA_FD    "FD"
+#define LUA_FDT   "FDT"
+
+typedef struct _FD {
+  volatile int code; // 0==ready/done/ok, negative=started, positive=error
+  volatile int ctrl; // control input (function specific)
+  volatile int fileno; volatile off_t pos;
+  volatile size_t size, si, ei; // buffer: size, start index, end index
+  volatile char* buf;
+} FD;
+
+typedef struct _FDT {
+  FD fd;
+  pthread_t th;
+#if __APPLE__
+  int socks[2]; // write socks[0] to unblock, read socks[1] waits
+#else
+  int evfd; // eventfd
+#endif
+  volatile int stopped;
+  volatile void (*meth)(FD*);
+} FDT;
+
+__attribute__ ((visibility ("default"))) FD*  FD_create(lua_State* L);
+FDT* FDT_create(lua_State* L);
+
+__attribute__ ((visibility ("default"))) void FD_close(FD*);
+void FDT_destroy(FDT*);
+
+#endif

--- /dev/null
+++ lib/fd/fd.lua
@@ -0,0 +1,373 @@
+local G = G or _G
+--- filedescriptor: direct control of filedescriptors.
+--- async operations support the LAP (see lib/lap) protocol.
+---
+--- Can override default `io` module for global async mode.
+local M = mod and mod'fd' or {}
+
+--- protocol globals (CIV and LAP protocols)
+G.CWD = G.CWD or os.getenv'PWD' or os.getenv'CD' -- current working dir
+G.LAP_FNS_ASYNC = G.LAP_FNS_ASYNC or {}
+G.LAP_FNS_SYNC  = G.LAP_FNS_SYNC  or {}
+
+local trace = G.LOG and G.LOG.trace or function() end
+local S = require'fd.sys' -- fd.c, fd.h
+local mty = require'metaty'
+local ds = require'ds'
+
+local sfmt      = string.format
+local push, pop = table.insert, table.remove
+local yield     = coroutine.yield
+local NL        = -string.byte'\n'
+local iotype    = io.type
+local sconcat   = string.concat -- note: from metaty
+
+local S_IFMT = S.S_IFMT
+local fstmode = S.fstmode
+
+S.POLLIO = S.POLLIN | S.POLLOUT
+
+M.FMODE = mty.enum'FMODE' {
+  sock = S.S_IFSOCK, link = S.S_IFLNK, file = S.S_IFREG,
+  blk = S.S_IFBLK,  dir = S.S_IFDIR,  chr = S.S_IFCHR,
+  fifo = S.S_IFIFO,
+}
+local fmodeName = M.FMODE.name
+
+local MFLAGS = mty.enum'MFLAGS'{
+  ['r']  = S.O_RDONLY, ['r+']= S.O_RDWR,
+  ['w']  = S.O_WRONLY | S.O_CREAT | S.O_TRUNC,
+  ['a']  = S.O_WRONLY | S.O_CREAT | S.O_APPEND,
+  ['w+'] = S.O_RDWR   | S.O_CREAT | S.O_TRUNC,
+  ['a+'] = S.O_RDWR   | S.O_CREAT | S.O_APPEND,
+}
+local mflagsInt = MFLAGS.id
+
+local AGAIN_CODE = {
+  [S.EWOULDBLOCK] = true, [S.EAGAIN] = true,
+}
+local YIELD_CODE = {
+  [S.EWOULDBLOCK] = true, [S.EAGAIN] = true,
+  [S.FD_RUNNING] = true,
+}
+local DONE_CODE = { [S.FD_EOF] = true, [0] = true }
+
+M.sys = S
+M._sync  = mod and mod'fd(sync)'  or {} -- sync functions
+M._async = mod and mod'fd(async)' or {} -- async functions
+M.io = {}  -- io cache
+
+M.FD=S.FD;         M.FDT=S.FDT
+M.newFD = S.newFD; M.newFDT=S.newFDT
+M.PIPE_BUF = 512 -- POSIX.1
+
+S.FD.__close  = S.FD.__index.close
+S.FD.__name = 'fd.FD'
+S.FD.__tostring = function(fd) return sfmt('FD(%s)', fd:fileno()) end
+S.FDT.__close = S.FDT.__index.close
+S.FDT.__name = 'fd.FDT'
+S.FDT.__tostring = S.FD.__tostring
+
+M.finishRunning = function(fd, kind, ...)
+  while fd:code() == S.FD_RUNNING do yield(kind or true, ...) end
+end
+
+--- return whether two fstat's have equal modification times
+--- FIXME: move this to civix
+M.modifiedEq = function(fs1, fs2)
+  local s1, ns1 = fs1:modified()
+  local s2, ns2 = fs2:modified()
+  return (s1 == s2) and (ns1 == ns2)
+end
+
+----------------------------
+-- WRITE / SEEK
+
+S.FD.__index.write = function(fd, ...)
+  local s = sconcat('', ...)
+  local c = fd:_write(s, 0)
+  while YIELD_CODE[c] do
+    yield('poll', fd:fileno(), S.POLLOUT)
+    c = fd:_write(s)
+  end
+  if c > 0 then return nil, fd:codestr() end
+  return fd
+end
+M.FDT.__index.write = function(fd, ...)
+  local s = sconcat('', ...)
+  fd:_write(s)
+  M.finishRunning(fd, 'poll', fd:_evfileno(), S.POLLIN)
+  if fd:code() > 0 then return nil, fd:codestr() end
+  return fd
+end
+
+local WHENCE = { set=S.SEEK_SET, cur=S.SEEK_CUR, ['end']=S.SEEK_END }
+S.FD.__index.seek = function(fd, whence, offset)
+  whence = assert(WHENCE[whence or 'cur'], 'unrecognized whence')
+  fd:_seek(offset or 0, whence)
+  M.finishRunning(fd, 'poll', fd:getpoll(S.POLLIN | S.POLLOUT))
+  if(fd:code() > 0) then return nil, fd:codestr() end
+  return fd:pos()
+end
+
+S.FD.__index.flush = function(fd)
+  fd:_flush(); M.finishRunning(fd, 'sleep', 0.001)
+  if fd:code() ~= 0 then return nil, fd:codestr() else return true end
+end
+
+S.FD.__index.flags = function(fd)
+  local code, flags = fd:_getflags()
+  if code ~= 0 then error(fd:codestr()) end
+  return flags
+end
+S.FD.__index.toNonblock = function(fd)
+  if fd:_setflags(S.O_NONBLOCK | fd:flags()) ~= 0 then
+    return nil, fd:codestr()
+  end; return fd
+end
+S.FD.__index.toBlock = function(fd)
+  if fd:_setflags(~S.O_NONBLOCK & fd:flags()) ~= 0 then
+    return nil, fd:codestr()
+  end; return fd
+end
+S.FD.__index.isAsync = function(fd)
+  return (fd:flags() & S.O_NONBLOCK) ~= 0
+end
+
+S.FD.__index.getpoll = function(fd, events)
+  return fd:fileno(), events
+end
+S.FDT.__index.getpoll = function(fdt)
+  return fdt:_evfileno(), S.POLLIN
+end
+
+----------------------------
+-- READ
+
+--- FD's read may need to be called multiple times (O_NONBLOCK)
+--- FDT's read CANNOT be called multiple times.
+local function readLap(fd, c)
+  if DONE_CODE[c]    then return end
+  if YIELD_CODE[c]   then
+    yield('poll', fd:getpoll(S.POLLIN))
+    return true
+  end
+  return nil, fd:codestr()
+end
+S.FD.__index._readTill = function(fd, till)
+  while readLap(fd, fd:_read(till)) do end
+end
+S.FDT.__index._readTill = function(fd, till)
+  fd:_read(till)
+  while readLap(fd, fd:code()) do end
+end
+
+--- Different read modes
+local function iden(x) return x end
+local function noNL(s)
+  return s and (s:sub(-1) == '\n') and s:sub(1, -2) or s
+end
+local function readAll(fd) fd:_readTill(); return fd:_pop() or '' end
+local function readLine(fd, lineFn)
+  local s = fd:_pop(NL); if s then return lineFn(s) end
+  fd:_readTill(NL)
+  local out = lineFn(fd:_pop(NL) or fd:_pop())
+  return out
+end
+local function readLineNoNL(fd)  return readLine(fd, noNL) end
+local function readLineYesNL(fd) return readLine(fd, iden) end
+local function readAmt(fd, amt)
+  assert(amt > 0, 'read non-positive amount')
+  local s = fd:_pop(amt); if s then return s end
+  fd:_readTill(amt)
+  return fd:_pop(amt) or fd:_pop()
+end
+
+local READ_MODE = {
+  a=readAll, ['*a']=readAll, l=readLineNoNL, L=readLineYesNL,
+}
+local modeFn = function(mode)
+  local fn = (type(mode) == 'number') and readAmt or READ_MODE[mode or 'l']
+  if not fn then error('mode not supported: '..tostring(mode)) end
+  return fn
+end
+S.FD.__index.read = function(fd, mode)
+  return modeFn(mode)(fd, mode)
+end
+
+S.FD.__index.lines = function(fd, mode)
+  local fn = modeFn(mode or 'l')
+  return function() return fn(fd, mode) end
+end
+
+----------------------------
+-- FDT
+--- Note that FDT is IDENTICAL to FD except it's possible
+--- that code() will be a FD_RUNNING. This is already handled,
+--- as that is included as a YIELD_CODE (FD can be non-blocking)
+S.FDT.__index.seek       = S.FD.__index.seek
+S.FDT.__index.read       = S.FD.__index.read
+S.FDT.__index.lines      = S.FD.__index.lines
+S.FDT.__index.flush      = S.FD.__index.flush
+S.FDT.__index.flags      = S.FD.__index.flags
+S.FDT.__index.toNonblock = function() error'invalid' end
+S.FDT.__index.toBlock    = function() error'invalid' end
+S.FDT.__index.isAsync    = function() return true end
+
+S.FDT.__index.close = function(fd)
+  M.finishRunning(fd, 'sleep', 0.001)
+  fd:_close();
+end
+
+----------------------------
+-- PollList
+M.PollList = setmetatable({
+__name='PollList',
+__index = {
+  __len = function(pl) return pl._pl:size() - #pl.avail end,
+  resize = function(pl, newSize)
+    local size = pl._pl:size(); assert(newSize >= size, 'attempted shrink')
+    pl._pl:resize(newSize); for i=size,newSize-1 do push(pl.avail, i) end
+  end,
+  insert = function(pl, fileno, events)
+    local i = pl.map[fileno] or pop(pl.avail)
+    if not i then
+      pl:resize((pl._pl:size() == 0) and 8 or pl._pl.size() * 2)
+      i = assert(pop(pl.avail), 'failed to resize')
+    end
+    pl._pl:set(i, fileno, events)
+    pl.map[fileno] = i
+  end,
+  ready = function(pl, timeoutSec)
+    return pl._pl:ready(math.floor(timeoutSec * 1000))
+  end,
+  remove = function(pl, fileno)
+    local i = assert(pl.map[fileno])
+    push(pl.avail, i); pl.map[fileno] = nil;
+    pl._pl:set(i, -1, 0)
+  end,
+}}, {
+  __call=function(ty_)
+    return setmetatable({
+      _pl=S.pollList(),
+      map  = {}, -- map of fileno -> pl[index]
+      avail = {}, -- list of available indexes
+    }, ty_)
+  end,
+})
+
+----------------------------
+-- io backfill
+
+M.openWith = function(openFn, path, mode)
+  mode = mode or 'r'
+  local flags = mflagsInt(mode:gsub('b', ''))
+  local f = openFn(path, flags); M.finishRunning(f, 'sleep', 0.005)
+  if f:code() ~= 0 then return nil, f:codestr() end
+  return f
+end
+M.openFD  = function(...) return M.openWith(S.openFD, ...)  end
+M.openFDT = function(...) return M.openWith(S.openFDT, ...) end
+M.open = function(...)
+  return M.openWith((LAP_ASYNC and S.openFDT) or S.openFD, ...)
+end
+M.close   = function(fd) fd:close() end
+M.tmpfileFn = function(sysFn)
+  local f = sysFn(); M.finishRunning(f, 'sleep', 0.005)
+  if f:code() ~= 0 then return nil, f:codestr() end
+  return f
+end
+M._sync.tmpfile  = function() return M.tmpfileFn(S.tmpFD)  end
+M._async.tmpfile = function() return M.tmpfileFn(S.tmpFDT) end
+M.tmpfile = M._sync.tmpfile
+
+M.read    = function(...)
+  local inp = M.input()
+  io.stderr:flush()
+  return inp:read(...)
+end
+M.lines   = function(path, mode)
+  mode = mode or 'l'
+  if not path then return M.input():lines(mode) end
+  local fd = M.open(path)
+  local fn = function()
+    if not fd then return end
+    local l = fd:read(mode)
+    if l then return l end
+    fd:close(); fd = nil
+  end
+  return fn, nil, nil, fd
+end
+M.write = function(...) return M.output():write(...) end
+
+M.openFileno = function(fileno)
+  local fd = S.newFD(); fd:_setfileno(fileno)
+  return fd
+end
+M.stdin  = M.openFileno(S.STDIN_FILENO)
+M.stdout = M.openFileno(S.STDOUT_FILENO)
+
+M.input  = function() return M.stdin end
+M.output = function() return M.stdout end
+M.flush  = function() return M.output():flush() end
+
+local FD_TYPES = {[S.FD] = true, [S.FDT] = true}
+
+M.type   = function(fd)
+  local mt = getmetatable(fd)
+  if mt and FD_TYPES[mt] then
+    return (fd:fileno() >= 0) and 'file' or 'closed file'
+  end
+  return iotype(fd)
+end
+M.fileno = function(fd)
+  if iotype(fd) then return S.fileno(fd) end
+  if type(fd) == 'userdata' then return fd:fileno() end
+  local meth = rawget(getmetatable(fd), 'fileno')
+  return meth and meth(fd)
+end
+local fileno = M.fileno
+M.ftype = function(f)
+  return fmodeName(S_IFMT & fstmode(fileno(f)))
+end
+M.isatty = function(fd)
+  fd = type(fd) == 'number' and fd or fileno(fd)
+  return fd and S.isatty(fd)
+end
+
+----------------------------
+-- To Sync / Async
+
+push(LAP_FNS_ASYNC, function()
+  for k, v in pairs(M._async) do M[k] = v end
+end)
+push(LAP_FNS_SYNC, function()
+  for k, v in pairs(M._sync)  do M[k] = v end
+end)
+
+local IO_KEYS = {}; for k in ([[
+open   close  tmpfile
+read   lines  write
+stdout stdin
+input  output flush
+type
+]]):gmatch'%w+' do push(IO_KEYS, k) end
+
+local function copyKeysM(keys, from, to)
+  for _, k in ipairs(keys) do
+    to[k] = assert(rawget(from, k) or M[k])
+  end
+end
+copyKeysM(IO_KEYS, io, M.io)
+
+M.ioStd = function()
+  assert(not LAP_ASYNC); copyKeysM(IO_KEYS, M.io,    io)
+end
+M.ioSync = function()
+  assert(not LAP_ASYNC); copyKeysM(IO_KEYS, M._sync, io)
+end
+M.ioAsync = function()
+  assert(LAP_ASYNC);     copyKeysM(IO_KEYS, M._async, io)
+end
+
+return M

--- /dev/null
+++ lib/fd/fd/IFile.lua
@@ -0,0 +1,107 @@
+-- FIXME: __index / etc cannot be support for async operations
+--   since they can cause yielding across a C-boundary for
+--   things like table.move. Therefore, don't do them for
+--   these types. Instead, manually support the methods or figure
+--   somethinge else out.
+local mty = require'metaty'
+local ds = require'ds'
+
+--- Indexed File: supports setting and getting fixed-length values (bytes) by
+--- index, implementing the API of a list-like table.
+local IFile = mty'fd.IFile' {
+  'f [file]', 'path [str]',
+  'len [int]', '_i [int]', '_m [str]: r/w mode',
+  'sz [int]: the size of each value',
+}
+
+
+local mtype = math.type
+local pack, unpack = string.pack, string.unpack
+local sfmt = string.format
+local trace = require'ds.log'.trace
+
+local index, newindex = mty.index, mty.newindex
+
+--- seek to index in the "mode" m. Invariant: [$i <= len+1]
+local function iseek(fi, i, m, sz) --!!> nil
+  if fi._i == i and fi._m == m then return end
+  fi._m = m
+  local to = (i-1) * sz
+  local pos = assert(fi.f:seek('set', to))
+  assert(pos % sz == 0, 'pos incorrect')
+end
+
+--- This creates a new index file at path (path=nil uses tmpfile()).
+--- Note: Use load if you want to load an existing index.
+IFile.create = function(T, sz, path) --> IFile?, errmsg?
+  assert(sz, 'must provide sz')
+  local f,e; if path then f,e = io.open(path, 'w+')
+  else                    f,e = io.tmpfile() end
+  if not f then return f,e end
+  return T{sz=sz, f=f, len=0, _i = 1, path=path}
+end
+
+--- reload from path
+IFile.reload = function(fi, mode) --> IFile?, errmsg?
+  local f, err = io.open(fi.path, mode or 'r+')
+  if not f then return nil, err end
+  local sz, bytes = fi.sz, f:seek'end'
+  f:seek('set', bytes - bytes % sz) -- truncate invalid bytes
+  local len = bytes // sz
+  fi.f, fi.len, fi._i = f, len, len + 1
+  return fi
+end
+
+--- load an index file
+IFile.load = function(T, sz, path, mode) --> IFile?, errmsg?
+  assert(sz, 'must provide sz')
+  return mty.construct(T, {sz=sz, path=path}):reload(mode)
+end
+
+IFile.flush   = function(fi) return fi.f:flush() end
+IFile.__len   = function(fi) return fi.len       end
+IFile.__pairs = ipairs
+
+IFile.close = function(fi)
+  if fi.f then fi.f:close(); fi.f = false end
+end
+
+--- get bytes. If index out of bounds return nil.
+--- Panic if there are read errors.
+IFile.getbytes = function(fi, i) --!!> str?
+  if i > fi.len then return end
+  local sz = fi.sz; iseek(fi, i, 'r', sz)
+  local v = assert(fi.f:read(sz))
+  assert(#v == sz, 'did not read sz bytes')
+  fi._i = i + 1
+  return v
+end
+IFile.__index = function(fi, i)
+  if type(i) == 'string' then
+    local mt = getmetatable(fi)
+    return rawget(mt, i) or index(mt, i)
+  end
+  return fi:getbytes(i)
+end
+
+IFile.setbytes = function(fi, i, v)
+  local len = fi.len; assert(i <= len + 1, 'newindex OOB')
+  local sz = fi.sz
+  if #v ~= sz then error(sfmt('failed to write %i bytes', #v)) end
+  iseek(fi, i, 'w', sz); assert(fi.f:write(v))
+  if i > len then fi.len = i end
+  fi._i = i + 1
+end
+
+IFile.__newindex = function(fi, i, v)
+  if type(i) == 'string' then return newindex(fi, i, v) end
+  return fi:setbytes(i, v)
+end
+
+IFile.__fmt = function(fi, fmt)
+  fmt:write('IFile(sz=', tostring(fi.sz), ' ')
+  if fi.path then fmt:write(fi.path) end
+  fmt:write')'
+end
+
+return IFile

--- /dev/null
+++ lib/fd/test.lua
@@ -0,0 +1,201 @@
+local iotype = io.type
+
+local T   = require'civtest'
+local M   = require'fd'
+local ds = require'ds'
+local ix = require'civix'
+local ixt = require'civix.testing'
+local info = require'ds.log'.info
+
+local S   = M.sys
+
+local io_open = io.open
+T.eq(M.io.open, io_open)
+
+M.ioSync()
+assert(io.open ~= io_open)
+
+local p = '.out/fd.text'
+
+---------------------
+-- non-general tests
+
+T.bitops = function()
+  T.eq(0xFF00, 0xFFFF & (~0x00FF))
+  T.eq(0xF0F0, 0xFFFF & (~0x0F0F))
+end
+
+T['open -> _write -> _read'] = function()
+  local f = M.open(p, 'w'); T.eq(0, f:code())
+  print'opened'
+  T.eq(0, f:_write'line 1\nline 2\n'); print'wrote lines'
+  f:close(); print'closed'
+  f = M.open(p, 'r'); T.eq(0, f:code()) print'opened'
+  T.eq(S.FD_EOF, f:_read()) print'read EOF'
+  T.eq('line 1\nline 2\n', f:_pop())
+  T.eq('file', M.type(f)); print'got type'
+  f:flush();              print'flushed'
+  f:close(); T.eq('closed file', M.type(f))
+end
+
+--------------------
+-- General tests (sync or async with any io impl)
+local fin = false
+
+local generalTest = function()
+T.openWriteRead = function()
+  local f = assert(io.open(p, 'w'))
+  assert(f:write'line 1\nline 2\n'); f:close()
+
+  f = assert(io.open(p, 'r'))
+  T.eq('line 1\nline 2\n', f:read'a')
+  T.eq('file', M.type(f))
+  f:close();
+  for _=1,10 do
+    if M.type(f) ~= 'closed file' then ix.sleep(0.001) end
+  end
+  T.eq('closed file', M.type(f))
+end
+
+T.append = function()
+  local f = assert(io.open(p, 'a'))
+  T.eq(14, f:seek'cur')
+  f:write'line 3\n'; T.eq(21, f:seek'cur')
+end
+
+T.read = function()
+  local f = assert(io.open(p, 'r'))
+  T.eq('line 1\nline 2\nline 3\n', f:read'a')
+  T.eq(21, f:seek'cur')
+  f:close()
+end
+
+T.readLine = function()
+  local f = io.open(p, 'r')
+  T.eq('line 1',   f:read'l')
+  T.eq('line 2',   f:read'l')
+  T.eq('line 3\n', f:read'L')
+  T.eq(nil,        f:read'L')
+  f:close()
+end
+
+--- check that both files behave the same
+T.generalFile = function()
+  local f = io.open(p, 'w+')
+  f:write'hello!'
+    -- TODO: try read'a' here for odd results
+    T.eq(nil, f:read());
+    T.eq(6, f:seek'cur')
+
+  T.eq(0, f:seek'set')
+    T.eq('hello!', f:read'a')
+    T.eq(6, f:seek'cur')
+    T.eq(nil, f:read())
+    T.eq('',  f:read'a')
+
+  T.eq(3, f:seek('set', 3))
+    T.eq('lo!', f:read(3))
+    T.eq(6, f:seek'cur'); T.eq(nil, f:read()) -- TODO: read'a' is weird here
+
+  T.eq(0, f:seek'set');
+    T.eq('hel', f:read(3)); T.eq(3, f:seek'cur')
+    T.eq('lo!', f:read(3)); T.eq(6, f:seek'cur')
+    T.eq('',  f:read'a')
+    T.eq(nil, f:read())
+end
+
+T.fileno_and_friends = function()
+  T.eq(type(io.stderr), 'userdata')
+  assert(iotype(io.stderr))
+  T.eq(0, M.fileno(io.stdin))
+  T.eq(2, M.fileno(io.stderr))
+  T.eq(false, M.isatty(io.tmpfile()))
+  T.eq(false, M.isatty(M.tmpfile()))
+  T.eq(true,  M.isatty(io.stderr))
+  T.eq(true,  M.isatty(2))
+
+  T.eq('chr', M.ftype(io.stdin))
+  T.eq('chr', M.ftype(io.stdout))
+  -- FIXME:
+  -- T.eq('file', M.ftype(io.tmpfile()))
+end
+
+-- Note: most test coverage is in things that
+-- use IFile (i.e. U3File).
+T.IFile = function()
+  if G.LAP_ASYNC then return 'FIXME: IFile async' end
+  local IFile = require'fd.IFile'
+  local fi = IFile:create(1)
+  ds.extend(fi, {'a', 'b', 'c'})
+  T.eq({'a', 'b', 'c'}, ds.icopy(fi))
+  fi[2] = 'B'
+  T.eq({'a', 'B', 'c'}, ds.icopy(fi))
+
+  local fi = IFile:create(2)
+  ds.extend(fi, {'aa', 'bb', 'cc'})
+  T.eq({'aa', 'bb', 'cc'}, ds.icopy(fi))
+end
+
+fin=true; end ----------------- end generalTest
+
+T.SUBNAME = '[ioStd]'; M.ioStd()
+fin=false; generalTest(); assert(fin)
+
+T.SUBNAME = '[ioSync]'; M.ioSync()
+fin=false; generalTest(); assert(fin)
+
+T.SUBNAME = ''
+
+---------------------
+-- Targeted tests (async)
+local pipeTest = function(r, w)
+  w:write'hi there'
+  T.eq('hi', r:read(2)); T.eq(' there', r:read(6))
+end
+
+T.pipe = function() pipeTest(S.pipe()) end
+
+fin = 0
+ixt.runAsyncTest(function()
+T.pipe_async = function()
+  local r, w = S.pipe()
+  pipeTest(r:toNonblock(), w:toNonblock())
+  T.eq(S.EWOULDBLOCK, r:_read(1))
+  w:write'bye'
+  T.eq('b', r:read(1)); T.eq('ye', r:read(2))
+  fin = fin + 1
+end
+
+local text = 'line 1\nline 2\nline 3\nline 4\n'
+T.FDT_write = function()
+  local f = assert(M.openFDT(p, 'w')); info'opened'
+  T.eq(M.FDT, getmetatable(f))
+  T.eq(0, f:code())
+  assert(f:write(text))
+  f:close()
+  fin = fin + 1
+end
+
+T.FDT_read = function()
+  info'started test'
+  local f = assert(M.openFDT(p)); info'opened'
+  T.eq(M.FDT, getmetatable(f))
+  T.eq(0, f:code())
+  f:_read(); info'started read'
+  while f:code() == S.FD_RUNNING do end
+  T.eq(S.FD_EOF, f:code())
+  T.eq(text, f:_pop())
+  f:close()
+  fin = fin + 1
+end
+end) -------------- runAsyncTest
+T.eq(3, fin)
+
+--- Now run the general test in async mode
+T.SUBNAME = '[ioAsync]'
+fin=false
+ixt.runAsyncTest(generalTest)
+assert(fin)
+
+T.SUBNAME = ''
+M.ioStd()

--- /dev/null
+++ lib/fmt/PKG.lua
@@ -0,0 +1,15 @@
+name     = 'fmt'
+version  = '0.1-0'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "format and style anything"
+homepage = "https://lua.civboot.org#Package_fmt"
+license  = "UNLICENSE"
+deps = {
+  "lua    ~> 5.3",
+  "metaty ~> 0.1",
+}
+srcs = {
+  'fmt.lua',
+  ['fmt.binary'] = 'binary.lua',
+}
+

--- /dev/null
+++ lib/fmt/README.cxt
@@ -0,0 +1,41 @@
+[{h1}fmt module: format and style anything]
+
+The fmt module is a small (~200 lines of code) module which formats arbitrary
+lua types as well as enables users to define formatting for their own
+[<#Package_metaty>metatypes] via the [$function __fmt(self, fmter)] method.
+
+It also provides several helper methods such as [$print], [$assertf] and
+[$errorf], making it more convienent to print or format types. In addition, it
+sets [$io.fmt = io.fmt or Fmt{to=io.stderr}], providing a default hook for
+[<#ds.log>] and command line utilities to write formatted text to.
+
+The [<#fmt.Fmt>] interface (which is passed to a metaty's [$__fmt] method if
+present) accepts both [$write] (like a file) and
+[$styled("style", "styled text", ..."non-styled text")], enabling the
+[<$Package_asciicolor>asciicolor] library (or your own library!) to provide
+user-configurable colors for specific styles which integrate with the
+[<#Package_vt100>vt100] library and the [<#Package_cxt>cxt] libraries. This
+is used throughout civlua to provide user-configurable (and optional) color
+to the terminal, web-pages and the civlua editor.
+
+[{h2}API / Architecture]
+
+[<#fmt.Fmt>] defines the formatter which has methods/settings: [+
+* [$to [file|Styler]] (argument): where to write to. Default is to push to
+  self, treating Fmt as a list of strings (which you can call [$table.concat]
+  on).
+
+* [$style [boolean]] to enable/disable styling. Set to [$true] if [$to=styler]
+  AND you want color/etc.
+
+* [$__call(f, v)]: call with any value to use [$__fmt] method or default.
+
+* [$write(...)]: write like a normal file
+
+* [$styled(style, text, ...)]: style [$text] and [$write(...)] using a
+  provided styler (i.e. [<#asciicolor.style.Styler])
+
+* [$level(add)] to increase/decrease the indentation level.
+]
+
+See the documentation of each function for more details.

--- /dev/null
+++ lib/fmt/binary.lua
@@ -0,0 +1,100 @@
+local G = G or _G
+
+--- format binary text
+--- When called directly returns the result of
+--- [$binary.columns(fmt.Fmt{}, ...)]
+local M = G.mod and mod'fmt.binary' or setmetatable({}, {})
+G.MAIN = G.MAIN or M
+
+local mty = require'metaty'
+local shim = require'shim'
+local Fmt = require'fmt'.Fmt
+
+local concat = table.concat
+local byte, srep, sfmt = string.byte, string.rep, string.format
+local min = math.min
+
+local FMT = '%.2x '
+
+--- Command: [${'path.bin', width=16, '--', 'literal binary'}]
+--- Use [$-] to format stdin
+M.Args = mty'Args' {
+  'width [int]: column width in bytes',  width=16,
+  'fmt [string]: format string for hex', fmt=FMT,
+  'to [file]: (lua only) file to output to (default=stdout)',
+  'i [int]: starting index to use', i=0,
+}
+
+M.format = function(f, str, fmt)
+  fmt = fmt or FMT
+  local b
+  for i=1,#str do
+    b = byte(str, i,i)
+    if 32 <= b and b <= 127 then f:write(sfmt(fmt, b))
+    else f:styled('literal', sfmt(fmt, b)) end
+  end
+  f:write''
+end
+local format = M.format
+
+M.ascii = function(f, str)
+  for c=1,#str do
+    local b = byte(str,c,c)
+    if 32 <= b and b <= 127 then f:write(str:sub(c,c))
+    else f:styled('empty', ' ') end
+  end
+end
+local ascii = M.ascii
+
+local formatCols = function(f, str, fmt, offset)
+  f:styled('line', sfmt('% 6i: ', offset));
+  format(f, str, fmt)
+end
+
+M.columns = function(f, str, width, si, fmt)
+  fmt, width, si = fmt or FMT, width or 16, si or 0
+  local i, len, s = 1, #str
+  if len == 0 then return end
+  if len <= width then goto last end -- only 1 line
+  -- first line
+  s = str:sub(i, i+width-1)
+  formatCols(f, s, fmt, i+si-1); f:styled('meta', ' | '); ascii(f, s)
+  i = i + width
+  while i <= len-width do -- middle lines
+    s = str:sub(i, i+width-1); f:write'\n'
+    formatCols(f, s, fmt, i+si-1); f:styled('meta', ' | '); ascii(f, s)
+    i = i + width
+  end
+  ::last::
+  if i <= len then -- last line (with padding)
+    if len > width then f:write'\n' end
+    s = str:sub(i)
+    formatCols(f, s, fmt, i+si-1)
+    f:write(srep(' ', #sfmt(fmt, 1) * (width - #s)))
+    f:styled('meta', ' | '); ascii(f, s)
+  end
+  return f
+end
+local columns = M.columns
+
+getmetatable(M).__call = function(_, ...) return concat(columns(Fmt{}, ...)) end
+
+M.main = function(args)
+  args = M.Args(shim.parseStr(args))
+  assert(#args > 0, 'fmt.binary: must provide at least one argument')
+  local raw = shim.popRaw(args)
+  local fmt, width, si = args.fmt, args.width, args.i
+  local f = require'civ'.Fmt{to=args.to or io.stdout}
+  local read = require'ds.path'.read
+  for _, path in ipairs(args) do
+    columns(f, (path=='-') and io.stdin:read'a' or read(path), width, si, fmt)
+  end
+  if #args > 0 then f:write'\n' end
+  if raw then
+    for _, r in ipairs(raw) do columns(f, r, width, si, fmt) f:write'\n' end
+  end
+end
+local main = M.main
+
+if M == MAIN then os.exit(main(shim.parse(G.arg))) end
+return M

--- /dev/null
+++ lib/fmt/fmt.lua
@@ -0,0 +1,297 @@
+local G = G or _G
+
+--- format module: format any type into a readable string
+local M = G.mod and G.mod'fmt' or setmetatable({}, {})
+
+local mty = require'metaty'
+
+local getmt = getmetatable
+local sfmt, srep = string.format, string.rep
+local push, concat = table.insert, table.concat
+local sort = table.sort
+local mathtype = math.type
+local sconcat = string.concat
+local split = mty.split
+
+
+local DEPTH_ERROR = '{!max depth reached!}'
+
+--- Compares two values of any type.
+---
+--- Note: [$nil < bool < number < string < table]
+M.cmpDuck = function(a, b)
+  local aTy, bTy = type(a), type(b)
+  if aTy ~= bTy then return aTy < bTy end
+  return a < b
+end
+local cmpDuck = M.cmpDuck
+
+--- keywords https://www.lua.org/manual/5.4/manual.html
+M.KEYWORD = {}; for kw in string.gmatch([[
+and       break     do        else      elseif    end
+false     for       function  goto      if        in
+local     nil       not       or        repeat    return
+then      true      until     while
+]], '%w+') do M.KEYWORD[kw] = true end
+local KEYWORD = M.KEYWORD
+
+--- Return a list of the table's keys sorted using [$cmpDuck]
+M.sortKeys = function(t) --> list
+  local len, keys = #t, {}
+  for k, v in pairs(t) do
+    if not (mathtype(k) == 'integer' and (1 <= k) and (k <= len)) then
+      push(keys, k)
+    end
+  end; sort(keys, cmpDuck)
+  return keys
+end
+
+--- The Fmt formatter object.
+---
+--- This is the main API of this module. It enables formatting any
+--- type by simply calling it's instance, appending the result to [$f] (i.e.
+--- self) or (if present) writing the result to [$f.to].
+---
+--- If [$f.to] is not provided, you can get the resulting string by calling
+--- [$tostring(f)]
+M.Fmt = mty'Fmt' {
+  'style     [bool]: enable styling. If true, set [$to=Styler]',
+  "to        [file?]: if set calls write",
+  "keyEnd    [string]",  keyEnd     = ', ',
+  "keySet    [string]",  keySet     = '=',
+  "indexEnd  [string]",  indexEnd   = ', ',
+  "tableStart[string]",  tableStart = '{',
+  "tableEnd  [string]",  tableEnd   = '}',
+  "listEnd   [string] separator between list/map", listEnd    = '',
+  "indent    [string]",  indent     = '  ',
+  "maxIndent [int]",     maxIndent  = 20,
+  "numfmt    [string]",  numfmt     = '%q',
+  "strfmt    [string]",  strfmt     = '%q',
+  "_level    [int]",     _level     = 0,
+ [[_nl [string] (default='\n') newline, indent is added/removed]],
+   _nl = '\n',
+
+  -- overrideable methods
+  'table [function]', 'string [function]',
+}
+local Fmt = M.Fmt
+
+--- Create a new Formatter object with default "pretty" settings.
+--- Generally, this means line-separated and indented tables.
+Fmt.pretty = function(F, t)
+  t.tableStart = t.tableStart or '{\n'
+  t.tableEnd   = t.tableEnd   or '\n}'
+  t.listEnd    = t.listEnd    or '\n'
+  t.keyEnd     = t.keyEnd     or ',\n'
+  t.indent     = t.indent     or '  '
+  return F(t)
+end
+
+--- Add to the indent level and get the new value
+--- call with [$add=nil] to just get the current level
+Fmt.level = function(f, add) --> int: current level
+  local l = f._level
+  if add then
+    l = l + add; assert(l >= 0, 'fmt._level cannot be negative')
+    f._level, f._nl = l, '\n'..srep(f.indent, l)
+  end
+  return l
+end
+
+Fmt.flush = function(f) if f.to then f.to:flush() end end
+Fmt._write = function(f, str)
+  if f.to then f.to:write(str) else rawset(f, #f + 1, str) end
+end
+--- Same as [$file:write].
+Fmt.write = function(f, ...)
+  local str = sconcat('', ...)
+  local doIndent = false
+  for _, line in split(str, '\n') do
+    if doIndent then f:_write(f._nl) end
+    f:_write(line); doIndent = true
+  end
+end
+
+--- Call [$to:styled(...)] if it is enabled, else simply [$f:write(text, ...)].
+--- This allows for configurable styling of output, both for objects as well
+--- as command-line utilities/etc.
+Fmt.styled = function(f, style, text, ...)
+  if not f.style then f:write(text, ...); return end
+  local to, doIndent = f.to, false
+  for _, line in split(text, '\n') do
+    if doIndent then f:_write(f._nl) end
+    to:styled(style, line); doIndent = true
+  end
+  doIndent = false
+  for _, line in split(sconcat('', ...), '\n') do
+    if doIndent then f:_write(f._nl) end
+    to:write(line); doIndent = true
+  end
+end
+
+Fmt.__newindex = function(f, k, v)
+  assert(type(k) == 'string', 'cannot set Fmt index')
+  return rawset(f, k, v)
+end
+
+--- Format like a table key. This can be overriden by type extensions to
+--- provide other behavior.
+Fmt.tableKey = function(f, k)
+  if type(k) ~= 'string' or KEYWORD[k]
+     or tonumber(k) or k:find'[^_%w]' then
+    f:styled('meta', '[')
+    if type(k) == 'string' then f:styled('string', sfmt('%q', k))
+    else                        f(k) end
+    f:styled('meta', ']', '')
+  else f:styled('key', k, '') end
+end
+
+--- format a nil value.
+Fmt['nil']      = function(f)
+  f:styled('literal', 'nil', '')
+end
+--- format a boolean value.
+Fmt.boolean     = function(f, b)
+  f:styled('literal', tostring(b), '')
+end
+--- format a number value.
+Fmt.number      = function(f, n)
+  f:styled('number', sfmt(f.numfmt, n), '')
+end
+--- format a string value.
+Fmt.string      = function(f, s)
+  f:styled('string', sfmt(f.strfmt, s), '')
+end
+--- format a thread value.
+Fmt.thread      = function(f, th)
+  f:styled('literal', tostring(th), '')
+end
+--- format a userdata value.
+Fmt.userdata    = function(f, ud)
+  f:styled('literal', tostring(ud), '')
+end
+--- format a function value.
+Fmt['function'] = function(f, fn)
+  f:styled('path', sfmt('fn%q[%s]', mty.fninfo(fn)), '')
+end
+
+--- format items in table "list"
+Fmt.items = function(f, t, hasKeys, listEnd)
+  local len = #t; for i=1,len do
+    f(t[i])
+    if (i < len) or hasKeys then f:write(f.indexEnd) end
+  end
+  if listEnd then f:write(listEnd) end
+end
+
+--- format key/vals in table "map"
+Fmt.keyvals = function(f, t, keys)
+  local klen, kset, kend = #keys, f.keySet, f.keyEnd
+  for i, k in ipairs(keys) do
+    f:tableKey(k); f:write(kset)
+    local v = t[k]
+    if rawequal(t, v) then f:styled('keyword', 'self', '')
+    else                   f(v) end
+    if i < klen then f:styled('meta', kend, '') end
+  end
+end
+
+--- Recursively format a table.
+--- Yes this is complicated. No, there is no way to really improve
+--- this while preserving the features.
+Fmt.table = function(f, t)
+  if f._level >= f.maxIndent then return f:write(DEPTH_ERROR) end
+  local mt = getmt(t)
+  if (mt ~= 'table') and (type(mt) == 'string') then
+    return f:write(tostring(t))
+  end
+  if type(mt) == 'table' then
+    local fn = rawget(mt, '__fmt'); if fn then return fn(t, f) end
+    fn = rawget(mt, '__tostring');  if fn then return f:write(fn(t)) end
+    local name = rawget(mt, '__name'); if name then f:write(name) end
+  end
+  local keys = M.sortKeys(t)
+  local multi = #t + #keys > 1 -- use multiple lines
+  f:level(1)
+  f:write(multi and f.tableStart or '{')
+  f:items(t, next(keys), multi and (#t>0) and (#keys>0) and f.listEnd)
+  f:keyvals(t, keys)
+  f:level(-1)
+  f:write(multi and f.tableEnd or '}')
+end
+Fmt.__call = function(f, v) f[type(v)](f, v); return f end
+
+--- like string.format but use [$Fmt] for [$%q].
+--- Doesn't return the string, instead writes to [$Fmt]
+Fmt.format = function(f, fmt, ...) --> varargsUsed
+  local i, lasti, args = 0, 1, {...}
+  fmt:gsub('()(%%.)', function(si, m)
+    f:write(fmt:sub(lasti, si-1)); lasti = si + #m
+    if m == '%%' then f:write'%'
+    else
+      i = i + 1;
+      if m == '%q' then f(args[i]) else f:write(sfmt(m, args[i])) end
+    end
+  end)
+  f:write(fmt:sub(lasti))
+  return i
+end
+
+--- fmt ... separated by sep
+Fmt.concat = function(f, sep, ...) --> f
+  f(select(1, ...))
+  for i=2,select('#', ...) do
+    f:write(sep); f(select(i, ...))
+  end
+  return f
+end
+--- fmt ... separated by tabs
+Fmt.tabulated = function(f, ...) return f:concat('\t', ...) end
+
+--- fmt ... separated by newlines
+Fmt.lined = function(f, ...) return f:concat('\n', ...) end
+
+Fmt.__tostring = function(f)
+  assert(not f.to, 'tostring called while storing to object')
+  return concat(f)
+end
+Fmt.tostring = Fmt.__tostring
+
+
+M.tostring = function(v, fmt)
+  fmt = fmt or Fmt{}; assert(#fmt == 0, 'non-empty Fmt')
+  return concat(fmt(v))
+end
+
+M.format = function(fmt, ...)
+  local f = Fmt{}
+  assert(f:format(fmt, ...) == select('#', ...),
+         'invalid number of %args')
+  return concat(f)
+end
+local format = M.format
+
+M.errorf  = function(...)    error(format(...), 2)             end
+M.assertf = function(a, ...) return a or error(format(...), 2) end
+
+io.fmt = io.fmt or Fmt{to=io.stderr}
+
+M.fprint = function(f, ...)
+  local len = select('#', ...)
+  for i=1,len do
+    local v = select(i, ...)
+    if type(v) == 'string' then f:write(v) else f(v) end
+    if i < len then f:write'\t' end
+  end; f:write'\n'
+end
+local fprint = M.fprint
+
+--- [$print(...)] but using [$io.fmt]
+M.print  = function(...) return fprint(io.fmt, ...) end
+
+--- pretty format the value
+M.pretty = function(v) return concat(Fmt:pretty{}(v)) end --> string
+
+--- directly call fmt for better [$tostring]
+getmt(M).__call = function(_, v) return concat(Fmt{}(v)) end
+return M

--- /dev/null
+++ lib/fmt/show.lua
@@ -0,0 +1,9 @@
+MAIN={}; require'civ'.setupFmt()
+
+io.fmt {
+  string='this is a string',
+  int = 442,
+  bool=true,
+  fn=function() end,
+  [42]='the answer',
+}

--- /dev/null
+++ lib/fmt/test.lua
@@ -0,0 +1,72 @@
+
+local T = require'civtest'
+local mty = require'metaty'
+local M = require'fmt'
+local fmt = M
+
+T.tostring = function()
+  T.eq('"a123"',    fmt("a123"))
+  T.eq('"123"',     fmt("123"))
+  T.eq('"abc def"', fmt("abc def"))
+  T.eq('423',       fmt(423))
+  T.eq('1A',        M.tostring(26, M.Fmt{numfmt='%X'}))
+  T.eq('true',      fmt(true))
+  T.matches('fn"fmt.errorf"%[.*/fmt%.lua:%d+%]', fmt(M.errorf))
+  T.matches('{hi=4}', fmt{hi=4})
+  T.matches('{hi=4}',
+    fmt(setmetatable({hi=4}, {}))
+  )
+end
+
+T.fmt = function()
+  T.eq("{1, 2, 3}", M.tostring{1, 2, 3})
+
+  local t = {1, 2}; t[3] = t
+  T.matches('{!max depth reached!}',    M.tostring(t))
+
+  T.eq( [[{baz="boo", foo="bar"}]],
+    M.tostring{foo="bar", baz="boo"})
+  local result = M.tostring({a=1, b=2, c=3}, M.Fmt:pretty{})
+  T.eq('{\n  a=1,\n  b=2,\n  c=3\n}', result)
+  T.eq('{1, 2, a=12}', M.tostring{1, 2, a=12})
+  T.eq('{["a b"]=5}', M.tostring{['a b'] = 5})
+  T.eq('{\n  1, 2, \n  a=12\n}',
+           M.tostring({1, 2, a=12}, M.Fmt:pretty{}))
+end
+
+T.format = function()
+  T.eq('hi "Bob"! Goodbye',
+    M.format('hi %q! %s', 'Bob', 'Goodbye'))
+  T.eq('running point: {x=3, y=7}...',
+    M.format('%s point: %q...', 'running', {x=3, y=7}))
+end
+
+T.record = function()
+  local A = mty'A'{'a2[any]', 'a1[any]'}
+  local B = mty'B'{
+    'b1[number]', 'b2[number] (default=32)',
+    'a[A]'
+  }
+  T.eq('A{a2=5, a1="hi"}', fmt(A{a1='hi', a2=5}))
+  T.eq('B{b1=5, b2=7, a=A{a2=4, a1="hi"}}', fmt(B{
+    b1=5, b2=7, a=A{a1='hi', a2=4},
+  }))
+end
+
+T.binary = function()
+  local bin = require'fmt.binary'
+  local format = function(...)
+    local f = M.Fmt{}; bin.format(f, ...); return table.concat(f)
+  end
+
+  T.eq("68 65 6c 6c 6f ", format('hello'))
+  T.eq("68 00 6c fa 6f ", format('h\0l\xFAo'))
+  T.eq(
+"     0: 68 69 20 74  | hi t\
+     4: 68 65 72 65  | here\
+     8: 20 62 6f 62  |  bob\
+    12: 21           | !"
+  , bin('hi there bob!', 4))
+  T.eq(
+"     0: 68 69        | hi", bin('hi', 4))
+end

--- /dev/null
+++ lib/lap/PKG.lua
@@ -0,0 +1,17 @@
+name     = 'lap'
+version  = '0.1-3'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "Lua Asynchronous Protocol and helper library"
+homepage = "https://lua.civboot.org#Package_lap"
+license  = "UNLICENSE"
+doc      = 'README.cxt'
+deps = {
+  "lua    ~> 5.3",
+  "metaty ~> 0.1",
+  "fmt    ~> 0.1",
+  "ds     ~> 0.1",
+}
+srcs = {
+  'lap.lua',
+}
+

--- /dev/null
+++ lib/lap/README.cxt
@@ -0,0 +1,119 @@
+LAP: Lua Asynchronous Protocol
+
+Lua has one of the coolest yet most underutilized asynchronous programming
+tools: the [$coroutine] module, specifically [$coroutine.yield]. Lua's [$yield]
+can be called from any depth, resuming execution at the callsite upon
+[$coroutine.resume]. This means that if we swap out traditionally blocking APIs
+like [$file:read] with ones that are non-blocking and yielding (i.e. by running
+IO in a separate thread or using unix's [$aio] interface) we use most libraries
+asynchronously without changing a single line of code.
+
+["For an example of implementing the LAP protocol see [<#Package_fd>]]
+
+LAP is a lightweight zero-dependency asynchronous protocol which aims to take
+advantage of Lua's awesomeness. It is architected to allow libraries to provide
+a lightweight "asynchronous mode" so that they can be used asynchronously by a
+coroutine executor. This allows users and library authors to write code that
+looks synchronous but which can be executed asynchronously at the application
+author's discression.
+
+This folder also contains the [$lap.lua] library, see the Library section.
+Library authors [*do not] need to depend on this library to work with the LAP
+protocol.
+
+The LAP protocol has two components: [+
+* yielding protocol: An ultra simple yet optionally-performant to communicate
+  with the executor loop (example: see [$lap.Lap])
+* two global tables which libraries can use to schedule coroutines ([$LAP_READY])
+  and register their asynchronous API ([$LAP_FNS_ASYNC] and [$LAP_FNS_SYNC])
+]
+Library authors can fully support the protocol by following the
+Yielding Protocol below and copy/pasting the following:
+[{## lang=lua}
+LAP_FNS_SYNC  = LAP_FNS_SYNC  or {}
+LAP_FNS_ASYNC = LAP_FNS_ASYNC or {}
+
+// register functions to switch modes, see end of lap.lua for example
+table.insert(LAP_FNS_SYNC,  function() ... end)
+table.insert(LAP_FNS_ASYNC, function() ... end)
+
+// implement your asynchronous functions by following the protocol.
+]##
+
+Library authors should make their default API [*synchronous] (blocking) by
+default, except for items that cannot be used synchronously.
+
+[{h3}[$LAP_READY] Global Table]
+[$LAP_READY] is a global key/value table where the keys are the coroutines which
+should be run at some later time (by the executor). The values are arbitrary
+(typically a string identifier for debugging).
+
+This means that a coroutine can schedule another coroutine [$cor] by simply doing
+[$LAP_READY[cor] = "my_identifier"]. This simple feature can be used for many
+purposes such as creating Channel datastructures as well as handling any/all
+behavior. See the Library section for details.
+
+[{h3 name=lap-protocol}Yielding Protocol]
+LAP's yielding protocol makes it trivial for Lua libraries to interface with
+executors. Libraries can simply call [$coroutine.yield] with one of the
+following and a compliant executor will perform the behavior specified if it is
+supported (else it will run the coroutine on the next loop). [+
+* [$yield(nil)] or [$yield(false)]: forget the coroutine, the executor will not
+  run it.
+
+* [$yield(true)]: run the corroutine again as soon as possible. [+
+  * Should prevent the executor loop from sleeping.
+  * Equivalent to: [$LAP_READY[coroutine.running()] = true; coroutine.yield()]
+]
+* [$yield("sleep", sleepSec)]: run the coroutine again after [$sleepSec] seconds
+  (a float).
+
+* [$yield("poll", fileno, events)]: tell the coroutine to use unix's
+  [$poll(fileno, events)] syscall to determine when ready.
+
+* Other yield values may be defined by application-specific executors.
+  If the executor doesn't recognize a value it can either throw an error or
+  treat it as [$true] (aka "ready"), depending on the application requirements.
+]
+
+[{h4 name=lap-globals}Global Variables]
+
+There are four global variables defined by the LAP protocol: [+
+* [$LAP_READY]: contains the currently ready coroutines for the executor loop to
+  resume.
+* [$LAP_FNS_SYNC] / [$LAP_FNS_ASYNC]: contains functions to switch lua to synchronous /
+  asynchronous modes, respectively.
+* [$LAP_ASYNC]: is set to true when in async mode to determine behavior at
+  runtime.
+]
+
+The sync/async tables allows a user to write code in a blocking style yet it
+can be run asynchronously, such as the following. You can even switch back and
+forth so that tests can be run in both modes.
+
+[{## lang=lua}
+function getLines(path, fn)
+  local lines = {}
+  for line in io.lines(path) do
+    table.insert(lines, line)
+  end
+  return lines
+end
+]##
+
+["Recomendation: use [<#lap.async>] and [<#lap.sync>] to switch modes]
+
+[{h3}[$lap.lua] Library]
+The (pure lua) [<#lap>] library implements: [+
+* [<#lap.Lap>] default implementation of a single loop (aka "lap") in an
+  executor.
+
+* [<#lap.Any>] and [<lap.all>] for interacting with lists of coroutines.
+
+* [<#lap.channel()>] which creates the [<#lap.Recv>] and [<#lap.Send>] channel types to send
+  values between coroutines.
+
+* [<#lap.async>] / [<#lap.sync>]: switches all registered libraries to
+  async/sync mode (just calls every function in [<#lap.LAP_FNS_SYNC>] or
+  [<#LAP_FNS_ASYNC>])
+]

--- /dev/null
+++ lib/lap/lap.lua
@@ -0,0 +1,418 @@
+local G = G or _G
+
+--- superpower your libraries run either sync or async
+local M = G.mod and G.mod'lap' or {}
+
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds = require'ds'
+local heap = require'ds.heap'
+
+local sfmt = string.format
+local push = table.insert
+local yield, create  = coroutine.yield, coroutine.create
+local resume, status = coroutine.resume, coroutine.status
+local log = require'ds.log'
+local errorFrom = ds.Error.from
+local TRACE = log.LEVEL.TRACE
+local update = table.update
+
+M._async = {}; M._sync = {}
+
+-- lap protocol globals
+G.LAP_READY     = G.LAP_READY or {}
+G.LAP_FNS_SYNC  = G.LAP_FNS_SYNC  or {}
+G.LAP_FNS_ASYNC = G.LAP_FNS_ASYNC or {}
+G.LAP_TRACE     = G.LAP_TRACE or {}
+G.LAP_CORS      = G.LAP_CORS or ds.WeakKV{}
+G.LAP_ASYNC     = G.LAP_ASYNC or false
+
+M.reset = function()
+  assert(not LAP_ASYNC, "don't clear while still running")
+  G.LAP_READY, G.LAP_TRACE = {}, {}
+  G.LAP_CORS = ds.WeakKV{}
+end
+
+M.formatCorErrors = function(corErrors)
+  local f = fmt.Fmt{}
+  for i, ce in ipairs(corErrors) do
+    f:write(sfmt('Coroutine Error #%s:\n', i))
+    f(ce); f:write'\n'
+  end
+  return table.concat(f)
+end
+
+--- Switch lua to synchronous mode
+M.sync  = function()
+  if not LAP_ASYNC then return end
+  for _, fn in ipairs(LAP_FNS_SYNC)  do fn() end
+  assert(not LAP_ASYNC)
+end
+
+--- Switch lua to asynchronous (yielding) mode
+M.async = function()
+  if LAP_ASYNC then return end
+  for _, fn in ipairs(LAP_FNS_ASYNC) do fn() end
+  assert(LAP_ASYNC)
+end
+
+--- yield(fn) [+
+--- * sync: noop
+--- * async: coroutine.yield
+--- ]
+M._async.yield, M._sync.yield = yield, function() end
+
+local aySchedule = function(fn, ...)
+  assert(select('#', ...) == 0, 'only function supported')
+  local cor = create(fn)
+  LAP_READY[cor] = 'scheduled'
+  LAP_CORS[cor] = fn
+  log.trace('schedule %s [%q]', cor, fn)
+  return cor
+end
+local sySchedule = function(fn, ...) fn(...) end
+
+--- [$schedule(fn) -> coroutine?] [+
+--- * sync:  run the fn immediately and return nil
+--- * async: create and schedule returned coroutine
+--- ]
+M._async.schedule, M._sync.schedule = aySchedule, sySchedule
+
+----------------------------------
+-- Ch: channel sender and receiver (Send/Recv)
+
+--- [$Recv() -> recv] the receive side of channel.
+---
+--- Is considered closed when all senders are closed.
+---
+--- Notes: [+
+--- * Use [$recv:sender()] to create a sender. You can create
+---   multiple senders.
+--- * Use [$recv:recv()] or simply [$recv()] to receive a value
+---   (or block)
+--- * User [$sender:send(v)] or simply [$sender(v)] to send a value.
+--- * [$recv:close()] when done. Also closes all senders.
+--- * [$#recv] gets number of items buffered.
+--- * [$recv:isDone()] returns true when either recv is closed
+---   OR all senders are closed and [$#recv == 0]
+--- ]
+M.Recv = mty'Recv'{
+  'deq    [Deq]',
+  '_sends [WeakKV]',
+  'cor    [thread]',
+}
+getmetatable(M.Recv).__call = function(T)
+  return mty.construct(T, {deq=ds.Deq(), _sends=ds.WeakKV{}})
+end
+--- Close read side and all associated sends.
+M.Recv.close =
+(function(r)
+  local sends = r._sends; if not sends then return end
+  for s in pairs(update({}, sends)) do s:close() end
+  r._sends = nil
+end)
+M.Recv.__close  = M.Recv.close
+M.Recv.__len    = function(r) return #r.deq          end
+M.Recv.isClosed = function(r) return r._sends == nil end
+M.Recv.isDone = function(r)
+  return (#r.deq == 0)
+     and (not r._sends or ds.isEmpty(r._sends))
+end
+M.Recv.sender = function(r)
+  local s = M.Send(r)
+  assert(r._sends, 'sender on closed channel')[s] = true
+  return s
+end
+M.Recv.hasSender = function(r)
+  return r._sends and next(r._sends) and true or false
+end
+M.Recv.wait = function(r)
+  while (#r.deq == 0) and (r._sends and not ds.isEmpty(r._sends)) do
+    r.cor = coroutine.running(); yield'forget'
+  end
+end
+M.Recv.recv = function(r) r:wait() return r.deq() end
+M.Recv.__call = M.Recv.recv
+--- drain the recv. This does NOT wait for new items.
+M.Recv.drain = function(r) return r.deq:drain() end
+M.Recv.__fmt = function(r, f)
+  f:write(sfmt('Recv{%s len=%s hasSender=%s}',
+    r:isClosed() and 'closed' or 'active',
+    #r.deq, r:hasSender() and 'yes' or 'no'))
+end
+
+local function recvReady(r)
+  if r.cor then LAP_READY[r.cor] = 'ch.push' end
+end
+--- Sender, created through [$recv:sender()]
+--- Is considered closed if the receiver is closed.  The receiver will
+--- automatically close if it is garbage collected.
+M.Send = mty'Send'{'_recv[Recv]'}
+getmetatable(M.Send).__call = function(T, recv)
+  return mty.construct(T, { _recv=assert(recv, 'missing Recv') })
+end
+M.Send.__mode = 'kv'
+M.Send.close = function(send)
+  local r = send._recv; if r then
+    local sends = assert(r._sends)
+    sends[send] = nil; send._recv = nil
+    if r.cor and ds.isEmpty(sends) then
+      LAP_READY[r.cor] = 'ch.close'
+    end
+  end
+end
+M.Send.__close = M.Send.close
+M.Send.isClosed = function(s) return s._recv == nil end
+M.Send.push = function(send, val)
+  local r = assert(send._recv, 'recv closed')
+  r.deq:push(val); recvReady(r)
+end
+M.Send.extend = function(send, vals)
+  local r = assert(send._recv, 'recv closed')
+  r.deq:extendRight(vals); recvReady(r)
+end
+-- preemtive send
+M.Send.pushLeft = function(send, val)
+  local r = assert(send._recv, 'recv closed')
+  r.deq:pushLeft(val); recvReady(r)
+end
+-- put vals at left (order preserved)
+M.Send.extendLeft = function(send, vals)
+  local r = assert(send._recv, 'recv closed')
+  r.deq:extendLeft(vals); recvReady(r)
+end
+M.Send.__call = M.Send.push
+M.Send.__len = function(send)
+  local r = send._recv; return r and #r or 0
+end
+M.Send.__fmt = function(send, f)
+  f:write('Send{active=%s}', send:isClosed() and 'no' or 'yes')
+end
+
+----------------------------------
+-- all / Any
+
+local ayAll = function(fns)
+  local rcor, count, len = coroutine.running(), 0, #fns
+  for _, fn in ipairs(fns) do
+    assert(type(fn) == 'function')
+    local cor = coroutine.create(function()
+      fn(); count = count + 1
+      if count == len then LAP_READY[rcor] = 'all-done' end
+    end)
+    LAP_READY[cor] = 'all-item'
+  end
+  yield'forget' -- forget until resumed by last completed child
+end
+local syAll = function(fns) for _, f in ipairs(fns) do f() end end
+--- all(fns): resume when all of the functions complete
+M._async.all, M._sync.all = ayAll, syAll
+
+-- Any(fns): handle resuming and restarting multiple fns.
+--
+-- Call [$any:ignore()] to stop the child threads from resuming
+-- the current thread. This does NOT stop the child threads.
+--
+-- Example which handles multiple fns running simultaniously: [{## lang=lua}
+-- local any = lap.Any{fn1, fn2}:schedule()
+-- while true do
+--   local i = any:yield()
+--   -- do something related to index i
+--   any:restart(i) -- restart i to run again
+-- end
+-- ]##
+M.Any = mty'Any'{
+  'cor[thread]', 'fns[table]',
+  'done[table]',
+}
+getmetatable(M.Any).__call = function(T, fns)
+  local self = { cor = coroutine.running(), fns = {}, done = {} }
+  for i, fn in ipairs(fns) do
+    assert(type(fn) == 'function')
+    push(self.fns, function()
+      fn(); self.done[i] = true
+      if self.cor then
+        LAP_READY[self.cor] = 'any-done'
+      end
+    end)
+    self.done[i] = true
+  end
+  return mty.construct(T, self)
+end
+M.Any.ignore = function(self) self.cor = nil end
+--- ensure all fns are scheduled
+M.Any.schedule = function(self) --> self
+  for i in pairs(self.done) do self:restart(i) end
+end
+
+-- yield until a fn index is done
+M.Any.yield = function(self) --> fnIndex
+  while not next(self.done) do yield'forget' end
+  return next(self.done)
+end
+-- restart fn at index
+M.Any.restart = function(self, i)
+  LAP_READY[coroutine.create(self.fns[i])] = 'any-item'
+  self.done[i] = nil
+end
+
+----------------------------------
+-- Lap
+M.lt1  = function(a, b) return a[1] < b[1] end
+local LAP_UPDATE = {
+  [true] = function(lap, cor) LAP_READY[cor] = true end,
+  forget = ds.noop,
+  sleep = function(lap, cor, sleepSec)
+    if type(sleepSec) ~= 'number' then
+      return sfmt('non-number sleep: %s', sleepSec)
+    end
+    lap.monoHeap:add{lap:monoFn() + sleepSec, cor}
+  end,
+  poll = function(lap, cor, fileno, events)
+    if lap.pollMap[fileno] then return string.format(
+      'two coroutines are both attempting to listen to fileno=%s\n'
+      ..'Existing traceback:\n  %s',
+      fileno,
+      table.concat(ds.tracelist(debug.traceback(lap.pollMap[fileno])), '\n  ')
+    )end
+    lap.pollList:insert(fileno, events)
+    lap.pollMap[fileno] = cor
+  end,
+}; M.LAP_UPDATE = LAP_UPDATE
+
+--- A single lap of the executor loop
+---
+--- Example [{## lang=lua}
+---   -- schedule your main fn, which may schedule other fns
+---   lap.schedule(myMainFn)
+---
+---   -- create a Lap instance with the necessary configs
+---   local Lap = lap.Lap{
+---     sleepFn=civix.sleep, monoFn=civix.monoSecs, pollList=fd.PollList()
+---   }
+---
+---   -- run repeatedly while there are coroutines to run
+---   while next(LAP_READY) do
+---     errors = Lap(); if errors then
+---       -- handle errors
+---     end
+---     -- do other things in your application's executor loop
+---   end
+--- ]##
+M.Lap = mty'Lap' {
+  'sleepFn [function]',
+  'monoFn  [function]',
+  'monoHeap [Heap]',
+  'defaultSleep [float]',
+  'pollMap [table]',
+[[pollList [PollList] Poll list data structure. Required methods:
+* __len                   to get length with `#`
+* insert(fileno, events)  insert the fileno+events into the poll list
+* remove(fileno)          remove the fileno from poll list
+* ready(self, durationSec) -> {filenos}
+    poll for durationSec (float), return any ready filenos.
+]],
+}
+M.Lap.defaultSleep = 0.01
+getmetatable(M.Lap).__call = function(T, ex)
+  ex.monoHeap = ex.monoHeap or heap.Heap{cmp = M.lt1}
+  ex.pollMap  = ex.pollMap  or {}
+  return mty.construct(T, ex)
+end
+M.Lap.sleep = M.LAP_UPDATE.sleep
+M.Lap.poll  = M.LAP_UPDATE.poll
+M.Lap.execute = function(lap, cor, note) --> errstr?
+  if LOGLEVEL >= TRACE and LAP_TRACE[cor] then
+    log.trace("execute %s %s %q [%q]", cor, status(cor), note, LAP_CORS[cor])
+  end
+  local ok, kind, a, b = resume(cor)
+  if not ok then return kind end -- error
+  local fn = LAP_UPDATE[kind]
+  if fn then return fn(lap, cor, a, b)
+  elseif kind then return 'unknown kind: '..kind end
+  return (status(cor) ~= 'dead')
+     and 'non-dead coroutine yielded false/nil' or nil
+end
+
+M.Lap.__call = function(lap)
+  local errors = nil
+  if next(LAP_READY) then
+    local ready = LAP_READY; LAP_READY = {}
+    for cor, note in pairs(ready) do
+      local err = lap:execute(cor, note)
+      if err then
+        errors = errors or {}
+        push(errors, errorFrom(err, cor))
+      end
+    end
+  end
+  if errors then return errors end
+
+  -- Check for asleep coroutines
+  local mh = lap.monoHeap; local hpop = mh.pop
+  local now, till = lap:monoFn()
+  if next(LAP_READY) then till = now -- no sleep when there are ready
+  else                    till = now + lap.defaultSleep end
+  while true do -- handle mono (sleep)
+    -- keep popping from the minheap until it is before 'now'
+    local e = hpop(mh); if not e then break end
+    if e[1] > now then
+      mh:add(e); till = math.min(till, e[1])
+      break
+    end
+    LAP_READY[e[2]] = 'sleep'
+  end
+
+  -- Poll or sleep before next loop
+  local sleep = math.max(0, till - now)
+  if next(lap.pollMap) then
+    local pl, pm = lap.pollList, lap.pollMap
+    for _, fileno in ipairs(pl:ready(sleep)) do
+      local cor = ds.popk(pm, fileno); pl:remove(fileno)
+      if LOGLEVEL >= TRACE and LAP_TRACE[cor] then
+        log.trace('scheduling fileno=%s %q', fileno, LAP_CORS[cor])
+      end
+      LAP_READY[cor] = 'poll'
+    end
+  else lap.sleepFn(sleep) end
+end
+M.Lap.isDone = function(lap)
+  return not (next(LAP_READY) or (#lap.monoHeap > 0) or next(lap.pollMap))
+end
+M.Lap.run = function(lap, fns, async, sync)
+  local errors; async, sync = async or M.async, sync or M.sync
+  assert(lap:isDone(), "cannot run non-done Lap")
+  assert(not LAP_ASYNC, 'already in async mode')
+  if type(fns) == 'function' then LAP_READY[coroutine.create(fns)] = 'run'
+  else; for i, fn in ipairs(fns) do
+    LAP_READY[coroutine.create(fn)] = 'run'
+  end ; end
+  async()
+  while not lap:isDone() do
+    errors = lap(); if errors then break end
+  end
+  sync()
+  if errors then
+    errors = M.formatCorErrors(errors)
+    log.info('coroutine errors: %s', errors)
+    error(errors)
+  else log.info('Lap:run done. ready=%q, pm=%q', LAP_READY, lap.pollMap) end
+  return lap, errors
+end
+
+----------------------
+-- Global Modifiers
+
+local function toAsync()
+  for k, v in pairs(M._async) do M[k] = v end
+  LAP_ASYNC = true
+end; push(LAP_FNS_ASYNC, toAsync)
+
+local function toSync()
+  for k, v in pairs(M._sync)  do M[k] = v end
+  LAP_ASYNC = false
+end; push(LAP_FNS_SYNC,  toSync)
+
+if LAP_ASYNC then toAsync() else toSync() end
+
+return M

--- /dev/null
+++ lib/lap/test.lua
@@ -0,0 +1,83 @@
+METATY_CHECK = true
+
+local T = require'civtest'
+local mty = require'metaty'
+local ds = require'ds'
+local M  = require'lap'
+
+local push, yield = table.insert, coroutine.yield
+local co = coroutine
+
+T.execute = function()
+  local l = M.Lap{}
+  local v = 0
+  local res = l:execute(co.create(
+    function() v = 3; yield'forget' end
+  ))
+  T.eq(3, v)
+  T.eq(nil, res)
+  local res = l:execute(co.create(
+    function() yield'foo' end
+  ))
+  T.eq('unknown kind: foo', res)
+
+  local errFn = function() error'bar' end
+  local res = l:execute(co.create(errFn))
+  T.matches(': bar', res)
+end
+
+local finished = 0
+local slept, mono = 0, 0
+local l = M.Lap {
+  sleepFn=function() slept = slept + 1 end,
+  monoFn=function() mono = mono + 1; return mono end,
+  pollList=ds.nosupport,
+}
+
+local _, errors = l:run{function()
+T.schedule =  function()
+  local i = 0
+  local cor = M.schedule(function()
+    for _=1,3 do i = i + 1; yield(true) end
+    i = 99
+  end)
+  T.eq('scheduled', LAP_READY[cor])
+  for ei=0, 3 do
+    assert(LAP_READY[cor])
+    T.eq(ei, i); yield(true)
+  end
+  T.eq(nil, LAP_READY[cor])
+  T.eq(99, i)
+  finished = finished + 1
+end
+
+T.ch = function()
+  local r = M.Recv(); local s = r:sender()
+
+  local t = {}
+  M.schedule(function()
+    for v in r do push(t, v) end
+  end)
+  T.eq({}, t);
+  yield(true); T.eq({}, t)
+  s(10);       T.eq({}, t)
+  yield(true); T.eq({10}, t)
+
+  s(11); s(12); T.eq({10}, t)
+  yield(true);  T.eq({10, 11, 12}, t)
+  T.eq({}, r:drain())
+
+  ds.clear(t)
+  s(13); T.eq({13}, r:drain())
+  yield(true); T.eq({}, t)
+  finished = finished + 1
+end
+end} -- end l:run
+
+if errors then error('lap found errors:\n'..fmt(errors)) end
+assert(l:isDone())
+T.eq(2, finished)
+M.reset()
+
+-- note: update when necessary. These just prove determinism
+T.eq(9, slept); T.eq(9, mono)

--- /dev/null
+++ lib/lines/PKG.lua
@@ -0,0 +1,25 @@
+name     = 'lines'
+version  = '0.1-0'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "Data structures for mixed media (memory/fs) lines of text"
+homepage = "https://lua.civboot.org#Package_lines"
+license  = "UNLICENSE"
+deps = {
+  "lua    ~> 5.3",
+  "metaty ~> 0.1",
+  "ds     ~> 0.1",
+}
+srcs = {
+  'lines.lua',
+  'lines/diff.lua',
+  'lines/Writer.lua',
+  'lines/Gap.lua',
+  'lines/U3File.lua',
+  'lines/File.lua',
+  'lines/EdFile.lua',
+  'lines/testing.lua',
+  'lines/futils.lua',
+  'lines/motion.lua',
+  'lines/buffer.lua',
+}
+

--- /dev/null
+++ lib/lines/lines.lua
@@ -0,0 +1,294 @@
+--- lines module, when called splits a string into lines.
+---   [$require'lines'(text) -> table of lines]
+---
+--- sub-modules include several data structures with more performant
+--- mechanisms to insert/remove/etc based on real-world workloads
+--- (i.e. editor, parser, etc)
+local M = mod and mod'lines' or {}
+
+local mty = require'metaty'
+local ds  = require'ds'
+local push, pop = table.insert, table.remove
+local concat    = table.concat
+local max, min, bound = math.max, math.min, ds.bound
+local sort2 = ds.sort2
+local rawsplit = mty.rawsplit
+local inset = ds.inset
+
+M.CMAX = 999
+M.CHUNK = 0x4000 -- 16KiB
+
+local new = function(_, text, index)
+  local t = {}
+  for _, line in rawsplit, text, {'\n', index or 1} do
+    push(t, line)
+  end; return t
+end
+setmetatable(M, {__call=new})
+
+--- concat strings and return lines table
+M.args = function(...) --> lines
+  local len = select('#', ...)
+  if     len == 0 then return {}
+  elseif len == 1 then return new(nil, select(1, ...))
+  else                 return new(nil, concat{...}) end
+end
+local args = M.args
+
+--- join a table with newlines
+M.join = function(t) return concat(t, '\n') end --> string
+local join = M.join
+
+local sinsert = function (s, i, v) return s:sub(1, i-1)..v..s:sub(i) end
+
+--- insert string at l, c
+---
+--- Note: this is NOT performant (O(N)) for large tables.
+--- See: lib/rebuf/gap.lua (or similar) for handling real-world workloads.
+M.inset = function(t, s, l, c) --> nil
+  inset(t, l, M(sinsert(t[l] or '', c or 1, s)), 1)
+end
+
+--- Address lines span via either (l,l2) or (l,c, l2,c2)
+local function span(l, c, l2, c2)
+  if      l2 and c2 then return l, c, l2, c2    end --(l,c, l2,c2)
+  if not (l2 or c2) then return l, nil, c, nil  end --(l,   l2)
+  if not (c  or c2) and (l and l2) then
+    return l, nil, l2, nil
+  end --(l,   l2)
+  error'span must be 2 or 4 indexes: (l, l2) or (l, c, l2, c2)'
+end
+M.span = span
+
+--- sort the span
+M.sort = function(...) --> l1, c1, l2, c2
+  local l, c, l2, c2 = span(...)
+  if l > l2 then l, c, l2, c2 = l2, c2, l, c
+  elseif c and (l == l2) and (c > c2) then c, c2 = c2, c end
+  return l, c, l2, c2
+end
+
+local function _lsub(sub, slen, t, ...)
+  local l, c, l2, c2 = span(...)
+  local len = #t
+  local lb, lb2 = ds.bound(l, 1, len), ds.bound(l2, 1, len+1)
+  if lb  > l  then c = 1 end
+  if lb2 < l2 then c2 = nil end -- EoL
+  l, l2 = lb, lb2
+  local s = {} -- s is sub
+  for i=l,l2 do push(s, t[i]) end
+  if    nil == c then -- skip, only lines
+  elseif #s == 0 then s = '' -- empty
+  elseif l == l2 then
+    assert(1 == #s); local line = s[1]
+     s = sub(line, c, c2)
+    if c2 > slen(line) and l2 < len then s = s..'\n' end
+  else
+    local last = s[#s]
+    s[1] = sub(s[1], c); s[#s] = sub(last, 1, c2)
+    if c2 > #last and l2 < len then push(s, '') end
+    s = join(s)
+  end
+  return s
+end
+
+M.sub  = function(...) return _lsub(string.sub, string.len, ...) end
+M.usub = function(...) return _lsub(ds.usub,     utf8.len,   ...) end
+
+--- create a table of lineText -> {lineNums}
+M.map = function(lines) --> table
+  local map = {}; for l, line in ipairs(lines) do
+    push(ds.getOrSet(map, line, ds.emptyTable), l)
+  end
+  return map
+end
+
+--- bound the line/col for the gap
+M.bound = function(t, l, c, len, line) --> l, c
+  len = len or #t
+  l = bound(l, 1, len)
+  if not c then return l end
+  return l, bound(c, 1, #(line or t[l]) + 1)
+end
+
+--- Get the [$l, c] with the +/- offset applied
+M.offset=function(t, off, l, c) --> l, c
+  local len, m, llen, line = #t
+  -- 0 based index for column
+  l = bound(l, 1, len); c = bound(c - 1, 0, #t[l])
+  while off > 0 do
+    line = t[l]
+    if nil == line then return len, #t[len] + 1 end
+    llen = #line + 1 -- +1 is for the newline
+    c = bound(c, 0, llen); m = llen - c
+    if m > off then c = c + off; off = 0;
+    else l, c, off = l + 1, 0, off - m
+    end
+    if l > len then return len, #t[len] + 1 end
+  end
+  while off < 0 do
+    line = t[l]
+    if nil == line then return 1, 1 end
+    llen = #line
+    c = bound(c, 0, llen); m = -c - 1
+    if m < off then c = c + off; off = 0
+    else l, c, off = l - 1, M.CMAX, off - m
+    end
+    if l <= 0 then return 1, 1 end
+  end
+  l = bound(l, 1, len)
+  return l, bound(c, 0, #t[l]) + 1
+end
+
+--- get the byte offset 
+M.offsetOf=function(t, l, c, l2, c2) --> int
+  local off, len, llen = 0, #t
+  l, c = M.bound(t, l, c, len);  l2, c2 = M.bound(t, l2, c2, len)
+  c, c2 = c - 1, c2 - 1 -- column math is 0-indexed
+  while l < l2 do
+    llen = #t[l] + 1
+    c = bound(c, 0, llen)
+    off = off + (llen - c)
+    l, c = l + 1, 0
+  end
+  while l > l2 do
+    llen = #t[l] + ((l==len and 0) or 1)
+    c = bound(c, 0, llen)
+    off = off - c
+    l, c = l - 1, M.CMAX
+  end
+  llen = #t[l] + ((l==len and 0) or 1)
+  c, c2 = bound(c, 0, llen), bound(c2, 0, llen)
+  off = off + (c2 - c)
+  return off
+end
+
+--- find the pattern starting at l/c
+--- Note: matches are only within a single line.
+M.find = function(t, pat, l, c) --> (l, c)
+  l, c = l or 1, c or 1
+  while true do
+    local s = t[l]
+    if not s then return nil end
+    c = s:find(pat, c); if c then return l, c end
+    l, c = l + 1, 1
+  end
+end
+
+local findBack = function(s, pat, end_)
+  local s, fs, fe = s:sub(1, end_), nil, 0
+  assert(#s < 256)
+  while true do
+    local _fs, _fe = s:find(pat, fe + 1)
+    if not _fs then break end
+    fs, fe = _fs, _fe
+  end
+  if fe == 0 then fe = nil end
+  return fs, fe
+end
+
+--- find the pattern (backwards) starting at l/c
+M.findBack = function(t, pat, l, c)
+  while true do
+    local s = t[l]
+    if not s then return nil end
+    c = findBack(s, pat, c)
+    if c then return l, c end
+    l, c = l - 1, nil
+  end
+end
+
+--- remove span (l, c) -> (l2, c2), return what was removed
+M.remove = function(t, ...) --> string|table
+  local l, c, l2, c2 = span(...);
+  local len = #t
+  if l2 > len then l2, c2 = len, #t[len] + 1 end
+  local rem, new = {}, {}
+  if l > l2 then -- empty span
+  elseif c then -- includes column info
+    if l == l2 then -- same line
+      if c <= c2 then
+        if c2 <= #t[l] then -- no newline
+          new[1] = t[l]:sub(1, c-1)..t[l]:sub(c2+1)
+          rem[1]  = t[l]:sub(c, c2)
+        else -- include newline in removal
+          l2 = l2 + 1 -- inset removes additional line
+          new[1]         = t[l]:sub(1, c-1)..(t[l2] or '')
+          rem[1], rem[2] = t[l]:sub(c, c2), ''
+        end
+      end
+    else -- spans multiple lines
+      local l1 = l
+      if c <= #t[l] then new[1] = t[l]:sub(1, c - 1)
+      else l1 = l+1;     new[1] = t[l]..(t[l1] or '') end
+      rem[1] = t[l]:sub(c)
+      for i=l1+1,l2-1 do push(rem, t[i]) end
+      if l1 < l2 then
+        if c2 > #t[l2] then push(rem, t[l2]) -- include newline
+        else
+          push(rem, t[l2]:sub(1, c2)); push(new, t[l2]:sub(c2 + 1))
+        end
+      end
+    end
+  else -- only lines, no col info
+    for i=l,l2 do push(rem, t[i]) end
+  end
+  ds.inset(t, l, new, l2 - l + 1)
+  return rem
+end
+
+-- return the box bounded top-left(l1,c1) and bot-right(l2,c2)
+M.box = function(t, l1, c1, l2, c2) --> lines
+  local b = {}; for l=l1,l2 do
+    local line = t[l]
+    push(b, line and line:sub(c1, c2) or '')
+  end
+  return b
+end
+
+-------------------------
+-- Save / Load from file
+
+--- load lines from file or path. On error return (nil, errstr)
+M.load = function(f, close) --> (table?, errstr?)
+  local err
+  if type(f) == 'string' then close, f, err = true, io.open(f, 'r') end
+  if f == nil then return nil, err or 'load(f=nil)' end
+  local i, t = 1, {}
+  for line in f:lines() do t[i] = line; i = i + 1 end
+  if close then f:close() end
+  return t
+end
+
+--- write lines [$t] to file [$f] in chunks (default = 16KiB)
+--- if f is a string then it is opened as a file and closed when done
+M.dump = function(t, f, close, chunk)
+  local dat, len, chunk = {}, 0, chunk or M.CHUNK
+  if type(f) == 'string' then
+    f = assert(io.open(f, 'w')); close = true
+  end
+  for i, line in ipairs(t) do
+    push(dat, line); len = len + #line + 1
+    if len >= chunk then
+      assert(f:write(concat(dat, '\n'))); ds.clear(dat); len = 0
+    end
+  end
+  if #dat > 0 then assert(f:write(concat(dat, '\n'))) end
+  if close then f:close() end
+end
+
+--- Logic to make a table behave like a [$file:write(...)] method.
+---
+--- This is NOT performant, especially for large lines.
+M.write = function(t, ...) --> true
+  local w = args(...); if #w == 0 then return true end
+  local len, first = #t, w[1]
+  if first ~= '' then
+    if len == 0 then t[1] = first
+    else             t[len] = t[len]..first end
+  end
+  for i=2,#w do t[len + i - 1] = w[i] end
+  return true
+end
+
+return M

--- /dev/null
+++ lib/lines/lines/EdFile.lua
@@ -0,0 +1,277 @@
+local mty = require'metaty'
+--- EdFile: an editable file object, optimized for indexed and consequitive
+--- reads and writes
+local EdFile = mty'EdFile' {
+  'lf   [lines.File]: indexed file',
+  'dats [list]: list of Slc | Gap',
+  'lens [list]: rolling sum of dat lengths',
+  'readonly [bool]',
+}
+
+local ds = require'ds'
+local log = require'ds.log'
+local U3File = require'lines.U3File'
+local Gap = require'lines.Gap'
+local File = require'lines.File'
+local U3File = require'lines.U3File'
+
+local push = table.insert
+local getmt = getmetatable
+local min, MAXINT = math.min, math.maxinteger
+local index, newindex = mty.index, mty.newindex
+local construct = mty.construct
+local gt, binsearch = ds.lt, ds.binarySearch
+local Slc = ds.Slc
+local extend, inset, clear = ds.extend, ds.inset, ds.clear
+local move, EMPTY = table.move, {}
+
+getmetatable(EdFile).__call = function(T, v, mode)
+  local lf, err = File{path=v, mode=mode or 'a+'}
+  if not lf then return nil, err end
+
+  return construct(T, {
+    lf=lf, dats={Slc{si=1, ei=#lf}}, lens={},
+  })
+end
+
+EdFile._updateLens = function(ef, max)
+  max = max or MAXINT
+  local lens, dats, len = ef.lens, ef.dats
+  for i=#lens+1, #dats do
+    len = (lens[i - 1] or 0) + #dats[i]
+    lens[i] = len
+    if len >= max then return end
+  end
+end
+
+EdFile.__len = function(ef)
+  ef:_updateLens()
+  local l = ef.lens; return l[#l]
+end
+
+--- get the index into dats where [$ef[i]] is located
+EdFile._datindex = function(ef, i) --> di
+  if i < 1 then return end
+  local lens = ef.lens; local len = lens[#lens]
+  if not len or i > len then ef:_updateLens(i) end
+  if i > lens[#lens] then return end
+  return binsearch(lens, i, gt) + 1
+end
+
+EdFile.__index = function(ef, i) --!!> string
+  if type(i) == 'string' then
+    local mt = getmt(ef)
+    return rawget(mt, i) or index(mt, i)
+  end
+  local di = ef:_datindex(i); if not di then return end
+  local dat = ef.dats[di]
+  i = i - (ef.lens[di-1] or 0) -- i is now index into dat
+  return (getmt(dat) == Slc) and ef.lf[dat.si + i - 1]
+      or dat[i]
+end
+
+EdFile.write = function(ef, ...) --> self?, errmsg?
+  assert(not ef.readonly, 'attempt to modify readonly file')
+  local dats = ef.dats
+  local last = dats[#dats]
+  ef.lens[#dats] = nil
+  local ok, errmsg
+  if getmt(last) == Slc then
+    ok, errmsg = ef.lf:write(...)
+    last.ei = #ef.lf.idx
+  else ok, errmsg = last:write(...) end
+  return ok and self or nil, errmsg
+end
+
+EdFile.__newindex = function(ef, i, v) --!!> nil
+  if type(i) == 'string' then return newindex(ef, i, v) end
+  ef:__inset(i, {v}, 1)
+end
+
+local EdIter = mty'EdIter' {
+  'dats',
+  'i [int]: (next) index into EdFile',
+  'dati [int]',
+  'di [int]: index of dat[dati]',
+  'lf [lines.File]: reader of file',
+}
+getmetatable(EdIter).__call = function(T, ef, si)
+  si = si or 1
+  local dati = ef:_datindex(si)
+  if not dati then return construct(T, {}) end -- empty
+  local di = si - (ef.lens[si-1] or 0)
+  return construct(T, {
+    dats=ef.dats, i=si, dati=dati, di=di, lf=ef.lf:reader(),
+  })
+end
+EdIter.close = function(ei)
+  ei.i, ei.di, ei.dati = false
+  if ei.lf then ei.lf:close(); ei.lf = nil end
+end
+EdIter.__call = function(ei) --> iterate
+  local i = ei.i; if not i then return end
+  local di, dati, dats = ei.di, ei.dati, ei.dats
+  local d = dats[dati]
+  local r = (getmt(d) == Slc) and ei.lf[d.si + di - 1]
+         or d[di]
+  assert(r)
+  if di < #d          then di       = di + 1
+  elseif dati < #dats then di, dati = 1     , dati + 1, 1
+  else ei:close(); return i, r end
+  ei.i, ei.dati, ei.di = i + 1, dati, di
+  return i, r
+end
+
+EdFile.iter = function(ef)   return EdIter(ef) end
+
+--- Flush the .lf member (which can only be extended).
+--- To write all data to disk use :dump()
+EdFile.flush = function(ef) return ef.lf:flush() end
+
+--- Dump EdFile to file or path
+EdFile.dumpf = function(ef, f)
+  local ef, efx = ef.lf.f, ef.lf.idx
+  for i, d in ipairs(ef.dats) do
+    if getmt(d) == Slc then
+      local sp, ep = efx[d.si], efx[d.si + 1]
+      assert(sp == ef:seek('set', sp))
+      assert(f:write(ef:read(ep and (ep - sp + 1) or nil)))
+    else
+      assert(f:write(concat(d, '\n')))
+      if i < #ef.dats then assert(f:write'\n') end
+    end
+  end
+end
+
+--- appends to lf for extend when possible.
+EdFile.__extend = function(ef, values)
+  if #values == 0 then return end
+  local dlen = #ef.dats
+  local last = ef.dats[dlen]
+  if getmt(last) == Slc then
+    local lf = ef.lf
+    extend(lf, values); last.ei = #lf
+  else extend(last, values) end
+  local lens = ef.lens
+  if dlen == #lens then
+    lens[dlen] = lens[dlen] + #values
+  end
+  return ef
+end
+
+----------------------------
+-- EdFile.__inset
+-- This is the major logic for mutating an EdFile
+
+--- inset the dat, pushing to dats the values that have to be
+--- reinserted into the EdFile.dats
+local insetDat = function(dats, dat, i, values, rmlen)
+  if getmt(dat) ~= Slc then
+    inset(dat, i, values, rmlen)
+    push(dats, dat)
+    return
+  end
+  local dlen, vlen = #dat, values and #values or 0
+  if (vlen == 0) and (rmlen == 0 or i > dlen) then
+    push(dats, dat) -- no change
+    return
+  end
+  if i > 1 then
+    push(dats, Slc{si=dat.si, ei=i - 1})
+  end
+  if vlen > 0 then push(dats, Gap(values)) end
+  if i + rmlen <= dat.ei then
+    push(dats, Slc{si=i + rmlen, ei=dat.ei})
+  end
+end
+
+--- insert into EdFile's dats.
+EdFile.__inset = function(ef, i, values, rmlen)
+  assert(not ef.readonly, 'attempt to modify readonly file')
+  rmlen = rmlen or 0
+
+  -- General algorith:
+  -- * Get the first and last dats in [i:i+rmlen]. Inner dats are dropped.
+  -- * Handle Slc types by splitting them
+  -- * Handle rmlen for each section individually
+  -- * Handle Gaps by joining them
+  local lens, df, dl = ef.lens, ef:_datindex(i), nil
+  if not df then
+    -- special case: extend. This is special because it writes to the file.
+    assert(i == #ef + 1, 'i > len+1')
+    return ef:__extend(values)
+  end
+
+  if rmlen > 0 then -- find last dat to remove (and in-between)
+    dl = ef:_datindex(i + rmlen - 1)
+    if dl then if (dl - df > 1) then
+      -- update rmlen with dropped dats
+      rmlen = rmlen - (lens[dl-1]-lens[df + 1])
+    elseif df == dl then dl = nil end end
+  end
+
+  local dats, rdats, ldat = ef.dats, {}, nil
+  local first, fi, ei = dats[df], i - (lens[df-1] or 0)
+
+  -- We handle the first and last items separately. By the end of these
+  -- blocks we want them to be of type Gap with the rmlen values removed.
+  if getmt(first) == Slc then
+    -- split up first slice
+    if 1 < fi then
+      local slc = Slc{si=first.si, ei=first.si + fi - 2}
+      push(rdats, slc)
+    end
+    if dl then
+      rmlen = rmlen - (#first - fi)
+      assert(rmlen > 0, 'programmer error')
+    elseif (fi + rmlen) <= first.ei then -- put Slc at end
+      local slc = Slc{si=(first.si+fi-1) + rmlen, ei=first.ei}
+      rmlen, ldat = 0, slc
+    end
+    fi, first = 1, nil
+  else
+    local rmfirst = min(rmlen, #first - fi + 1)
+    if rmfirst > 0 then
+      first:__inset(fi, nil, rmfirst)
+      rmlen = rmlen - rmfirst
+    end
+  end
+
+  local last, li
+  if dl then
+    last = dats[dl]
+    if getmt(last) == Slc then
+      if rmlen < #last then
+        ldat = Slc{si=last.si + rmlen, ei=last.ei}
+      end
+      last = nil
+    elseif rmlen > 0 then
+      last:__inset(1, nil, rmlen); rmlen = 0
+    end
+  end
+
+  if last then
+    if first then first:__extend(last) -- join first+last
+    else          first, fi = last, 1 end
+  end
+  if values and #values > 0 then
+    first = first or Gap()
+    first:__inset(fi, values, 0)
+  end
+  if first then push(rdats, first) end
+  if ldat  then push(rdats, ldat) end
+
+  -- consolodate Gap objects
+  first = dats[df-1]
+  if (getmt(first) == Gap) and (getmt(rdats[1]) == Gap) then
+    first:__extend(rdats[1]); rdats[1], df = first, df - 1
+  end
+  local last = rdats[#rdats]
+  if dl and (getmt(last) == Gap) and (getmt(dats[dl+1]) == Gap) then
+    last:__extend(dats[dl+1]); dl = dl + 1
+  end
+  move(EMPTY, df, #lens, df, lens) -- clear end lens
+  inset(dats, df, rdats, (dl or df) - df + 1)
+end
+
+return EdFile

--- /dev/null
+++ lib/lines/lines/File.lua
@@ -0,0 +1,166 @@
+local mty = require'metaty'
+
+--- (read|append)-only line based file (indexed and cached)
+---
+--- Note: use EdFile if you need to do non-append edits
+---
+--- Initialize with File{path=path?, mode=mode?}
+local File = mty'File' {
+  'path [string]', 'mode [string]',
+  'f   [file]: open file',
+  'idx [U3File]: line index of f',
+  'cache [WeakV]: cache of lines',
+  '_ln  [int]:  current line num (false=end)',
+  '_pos [bool]: current file pos',
+}
+
+local ds = require'ds'
+local pth = require'ds.path'
+local lines = require'lines'
+local U3File = require'lines.U3File'
+local fd = require'fd'
+local ix = require'civix'
+local loadIdx = require'lines.futils'.loadIdx
+
+local trace = require'ds.log'.trace
+local largs = lines.args
+local push, concat = table.insert, table.concat
+local getmt = getmetatable
+local split, construct = mty.split, mty.construct
+local index, newindex = mty.index, mty.newindex
+local check, WeakV = ds.check, ds.WeakV
+
+
+File.IDX_DIR = pth.concat{pth.home(), '.data/lines'}
+
+File._initnew = ds.noop -- empty file: do nothing
+File._reindex = function(f, idx, l, pos) --!!> nil
+  l, pos = l or 1, pos or 0
+  if f:seek'end' == 0 then return end
+  assert(f:seek('set', pos))
+  local lines = f:lines'L'
+  local prev = lines()
+  while true do
+    idx[l] = pos; l = l + 1
+    local line = lines(); if not line then break end
+    pos, prev = pos + #prev, line
+  end
+  pos = pos + #prev
+  if prev:sub(-1) == '\n' then
+    idx[l] = pos
+  end
+  return pos
+end
+
+getmetatable(File).__call = function(T, t) --> File?, errmsg?
+  t = t and assert(type(t) == 'table') and t or {}
+  trace('%s.init%q', mty.tyName(T), t)
+  local f, err, idx, fstat, xstat
+  if not t.path then
+    f, err   = io.tmpfile();    if not f   then return nil, err end
+    idx, err = U3File:create(); if not idx then return nil, err end
+    T._initnew(f, idx)
+  elseif type(t.path) == 'string' then
+    trace('reloading path %s', t.path)
+    t.mode = t.mode or 'r'
+    f, err = io.open(t.path, t.mode); if not f then return nil, err end
+    idx, err = loadIdx(f, pth.concat{T.IDX_DIR, t.path}, t.mode, T._reindex)
+    if not idx then return nil, err end
+  else error'invalid path' end
+  t.f, t.idx, t.cache = f, idx, WeakV{}
+  return construct(T, t)
+end
+
+File.close = function(lf)
+  if lf.idx then lf.idx:close()             end
+  if lf.f   then lf.f:close(); lf.f = false end
+end
+File.flush = function(lf) --> ok, errmsg?
+  local o,e = lf.idx:flush(); if not o then return o,e end
+  o,e = lf.f:flush()          if not o then return o,e end
+  local fstat, e = ix.stat(lf.f)
+  if not fstat then return nil,e end
+  return ix.setModified(lf.idx.f, fstat:modified())
+end
+
+--- append to file
+File.write = function(lf, ...) --> ok, errmsg?
+  local f, idx, cache, pos, o,e = lf.f, lf.idx, lf.cache
+  local t = largs(...)
+  local tlen = #t
+  if tlen == 0 then return end
+  if lf._ln or not lf._pos then
+    pos,e = f:seek'end'; if not pos then return pos,e end
+    lf._ln = false
+  else pos = lf._pos end
+  lf._pos = false
+  o,e = f:write(t[1]); if not o then return o,e end
+  pos = pos + #t[1]
+  local len = #idx -- start length
+  if len == 0 then len = 1; idx[1] = 0 end
+  cache[len] = nil
+  for l=2,tlen do
+    local line = t[l];
+    o,e = f:write('\n', line); if not o then return o,e end
+    len = len + 1; idx[len] = pos + 1
+    pos = pos + 1 + #line
+  end
+  lf._pos = pos
+end
+
+File.__len = function(lf) return #lf.idx end
+
+getmetatable(File).__index = nil
+File.__index = function(lf, i) --!!> string
+  if type(i) == 'string' then
+    local mt = getmt(lf)
+    return rawget(mt, i) or index(mt, i)
+  end
+  local cache = lf.cache
+  local line = cache[i]; if line then return line end
+  local f, idx, pos, err = lf.f, lf.idx, lf._pos
+  if i > #idx then return end -- line num OOB
+  if not pos or i ~= lf._ln then -- update file pos
+    pos = assert(lf.idx[i])
+    assert(f:seek('set', pos))
+  end
+  line = check(2, f:read'L') or ''
+  lf._pos = pos + #line
+  if line:sub(-1) == '\n' then line = line:sub(1, -2) end
+  lf._ln, cache[i] = i + 1, line
+  return line
+end
+
+File.__newindex = function(lf, i, v)
+  if type(i) == 'string' then return newindex(lf, i, v) end
+  local f, idx, cache, pos = lf.f, lf.idx, lf.cache, lf._pos
+  local len = #idx; assert(i == len + 1, 'only append allowed')
+  if not pos or lf._ln then pos = assert(f:seek'end') end
+  lf._ln, lf._pos = false, false
+  if pos == 0 then
+    assert(f:write(v))
+    lf._pos = pos + #v
+  else
+    assert(f:write('\n', v))
+    lf._pos = pos + #v + 1
+    pos = pos + 1
+  end
+  idx[i], cache[i] = pos, v
+end
+
+File.__fmt = function(lf, f)
+  f:write'lines.File('
+  if lf.path then f:write(lf.path) end
+  f:write')'
+end
+
+File.reader = function(lf) --> lines.File (readonly)
+  local path = assert(lf.path, 'path not set')
+  local idx, err = assert(
+    getmt(lf.idx):load(assert(lf.idx.path, 'idx path not set'), 'r'))
+  return construct(getmt(lf), {
+    f=assert(io.open(path, 'r')), path=path, cache=lf.cache, idx=idx,
+  })
+end
+
+return File

--- /dev/null
+++ lib/lines/lines/Gap.lua
@@ -0,0 +1,115 @@
+local mty = require'metaty'
+--- line-based gap buffer. The buffer is composed of two lists (stacks) of
+--- lines [+
+--- 1. The "bot" (aka bottom) contains line 1 -> curLine.
+---    curLine is at #bot. Data gets added to bot.
+--- 2. The "top" buffer is used to store data in lines
+---    after "bot" (aka after curLine). If the cursor is
+---    moved to a previous line then data is moved from top to bot
+--- ]
+local Gap = mty'Gap' { 'bot[table]', 'top[table]', 'path [string]' }
+
+local ds, lines  = require'ds', require'lines'
+local lload = lines.load
+local largs = lines.args
+local span = lines.span
+
+local push, pop, concat = table.insert, table.remove, table.concat
+local move              = table.move
+local sub = string.sub
+local max = math.max
+local getmt = getmetatable
+
+local EMPTY = {}
+
+getmetatable(Gap).__call = function(T, t, path)
+  return mty.construct(T, {
+    bot=(type(t) == 'string') and lines(t) or t or {},
+    top={}, path=path
+  })
+end
+
+--- Load gap from file, which can be a path.
+--- returns nil, err on error
+Gap.load = function(T, f, close) --> Gap?, err?
+  local dat, err = lload(f, close)
+  if not dat then return nil, err end
+  return T(dat, type(f) == 'string' and f or nil)
+end
+
+Gap.__len = function(g) return #g.bot + #g.top end
+Gap.__index = function(g, l)
+  if type(l) ~= 'number' then return getmetatable(g)[l] end
+  local bl = #g.bot
+  if l <= bl then return g.bot[l]
+  else            return g.top[#g.top - (l - bl) + 1] end
+end
+
+Gap.__fmt = function(g, f)
+  local len = #g
+  for i, l in ipairs(g.bot) do
+    f:write(l); if i < len then f:write'\n' end
+  end
+  for i=#g.top,1,-1 do
+    f:write(g.top[i]); if i > 1 then f:write'\n' end
+  end
+end
+Gap.__pairs = ipairs
+
+--------------------------
+-- Mutations
+
+Gap.__newindex = function(g, i, v)
+  assert(i == #g + 1, 'can only set at len+1')
+  g:setGap(i); g.bot[i] = v
+end
+
+--- see lines.inset
+--- This has much better performance than lines.inset when operations
+--- are performed close together.
+Gap.__inset = function(g, i, values, rmlen)
+  values, rmlen = values or EMPTY, rmlen or 0
+  g:setGap(max(0, i + rmlen - 1))
+  move(values, 1, max(#values, rmlen), i, g.bot)
+  return g
+end
+
+Gap.__extend = function(g, l)
+  g:setGap(#g); local bot = g.bot
+  move(l, 1, #l, #bot + 1, bot)
+  return g
+end
+
+--- set the gap to the line
+Gap.setGap = function(g, l)
+  local bot, top = g.bot, g.top
+  local blen = #bot
+  l = l or (blen + #g.top)
+  assert(l >= 0)
+  if l == blen then return end -- do nothing
+  if l < blen then
+    while l < #bot do
+      local v = pop(bot)
+      if nil == v then break end
+      push(top, v)
+    end
+  else -- l > #g.bot
+    while l > #bot do
+      local v = pop(top)
+      if nil == v then break end
+      push(bot, v)
+    end
+  end
+end
+
+Gap.write = function(g, ...)
+  local t = largs(...)
+  local len = #t; if len == 0 then return end
+  g:setGap()
+  local bot = g.bot; local blen = #bot
+  if blen == 0 then bot[1] = t[1]
+  else              bot[blen] = bot[blen]..t[1] end
+  for i=2, #t do push(bot, t[i]) end
+end
+
+return Gap

--- /dev/null
+++ lib/lines/lines/U3File.lua
@@ -0,0 +1,40 @@
+local mty = require'metaty'
+local IFile = require'fd.IFile'
+
+--- A file that holds 3 byte (24 bit) integers. These are commonly
+--- used for indexing lines.
+---
+--- This object supports get/set index operations including appending.
+--- Every operation (except consecutive writes) requires a file seek.
+local U3File = mty.extend(IFile, 'lines.U3File', {})
+
+local pack, unpack = string.pack, string.unpack
+local sfmt = string.format
+local index, newindex = mty.index, mty.newindex
+
+local icreate, ireload, iload = IFile.create, IFile.reload, IFile.load
+local getbytes, setbytes = IFile.getbytes, IFile.setbytes
+
+U3File.create = function(T, ...) return icreate(T, 3, ...)  end
+U3File.load = function(T, ...) return iload(T, 3, ...) end
+U3File.__index = function(u3, k)
+  if type(k) == 'string' then
+    local mt = getmetatable(u3)
+    return rawget(mt, k) or index(mt, k)
+  end
+  local str = getbytes(u3, k)
+  return str and unpack('>I3', str) or nil
+end
+
+U3File.__newindex = function(u3, k, v)
+  if type(k) == 'string' then return newindex(u3, k, v) end
+  return setbytes(u3, k, pack('>I3', v))
+end
+
+U3File.__fmt = function(u3, fmt)
+  push(fmt, 'U3File(')
+  if u3.path then push(fmt, u3.path) end
+  push(fmt, ')')
+end
+
+return U3File

--- /dev/null
+++ lib/lines/lines/Writer.lua
@@ -0,0 +1,16 @@
+local mty = require'metaty'
+
+--- A lines table with a write method and a few other file-like methods.
+---
+--- This is NOT performant, especially for small writes or large lines. It is
+--- useful for tests and cases where simplicity is more important than
+--- performance.
+local Writer = mty'lines.Writer' {}
+
+local ds = require'ds'
+local lines = require'lines'
+
+Writer.write = lines.write
+Writer.flush = ds.noop
+
+return Writer

--- /dev/null
+++ lib/lines/lines/buffer.lua
@@ -0,0 +1,193 @@
+local mty = require'metaty'
+local ds = require'ds'
+local lines = require'lines'
+local motion  = require'lines.motion'
+local Gap  = require'lines.Gap'
+local log = require'ds.log'
+
+local M = {}
+local push, ty = table.insert, mty.ty
+
+M.ChangeId = 0
+M.nextChangeId = function() M.ChangeId = M.ChangeId + 1; return M.ChangeId end
+
+M.ChangeStart = mty'ChangeStart' {
+  'l1[int]',       'c1[int]',
+  'l2[int]',       'c2[int]',
+}
+
+M.Change = mty'Change' {
+  'k[string]', 's[string]',
+  'l[int]',    'c[int]',
+}
+
+M.Buffer = mty'Buffer' {
+  'id  [int]',
+  'dat [Gap]',
+
+  -- recorded changes from update (for undo/redo)
+  'changes',
+  'changeMax [int]',    changeMax=0,
+  'changeStartI [int]', changeStartI=0,
+  'changeI [int]',      changeI=0,
+
+  'tmp[parents]: if set, delete when parents are empty',
+}
+
+getmetatable(M.Buffer).__call=function(T, t)
+  assert(t.dat)
+  if #t.dat == 0 then push(t.dat, '') end
+  t.changes = t.changes or {}
+  return mty.construct(T, t)
+end
+
+local Buffer, Change, ChangeStart = M.Buffer, M.Change, M.ChangeStart
+
+local function redoRm(ch, b)
+  local len = #ch.s - 1; if len < 0 then return ch end
+  local dat = b.dat
+  local l2, c2 = lines.offset(dat, len, ch.l, ch.c)
+  lines.remove(dat, ch.l, ch.c, l2, c2)
+  return ch
+end
+
+local function redoIns(ch, b)
+  lines.inset(b.dat, ch.s, ch.l, ch.c)
+  return ch
+end
+
+local CHANGE_REDO = { ins=redoIns, rm=redoRm, }
+local CHANGE_UNDO = { ins=redoRm, rm=redoIns, }
+
+Buffer.new=function(s)
+  return Buffer{ dat=Gap(s) }
+end
+
+Buffer.__fmt = function(b, fmt)
+  push(fmt, ('Buffer{%sid=%s, path=%q}'):format(
+    b.tmp and (#b.tmp == 0) and '(closed) ',
+    b.id, b.dat.path))
+end
+Buffer.__len = function(b) return #b.dat end
+Buffer.__index = function(b, i)
+  if type(i) == 'string' then return Buffer[i] end
+  return b.dat[i]
+end
+
+Buffer.addChange=function(b, ch)
+  b.changeI = b.changeI + 1; b.changeMax = b.changeI
+  b.changes[b.changeI] = ch
+  return ch
+end
+Buffer.discardUnusedStart=function(b)
+  if b.changeI ~= 0 and b.changeStartI == b.changeI then
+    local ch = b.changes[b.changeI]
+    assert(ty(ch) == ChangeStart)
+    b.changeI = b.changeI - 1
+    b.changeMax = b.changeI
+    b.changeStartI = 0
+  end
+end
+Buffer.changeStart=function(b, l, c)
+  local ch = ChangeStart{l1=l, c1=c}
+  b:discardUnusedStart()
+  b:addChange(ch); b.changeStartI = b.changeI
+  return ch
+end
+Buffer.getStart=function(b)
+  if b.changeStartI <= b.changeMax then
+    return b.changes[b.changeStartI]
+  end
+end
+Buffer.printChanges=function(b)
+  for i=1,b.changeMax do
+    pnt(b.changes[i], (i == b.changeI) and "<-- changeI" or "")
+  end
+end
+
+Buffer.changeIns=function(b, s, l, c)
+  return b:addChange(Change{k='ins', s=s, l=l, c=c})
+end
+Buffer.changeRm=function(b, s, l, c)
+  return b:addChange(Change{k='rm', s=s, l=l, c=c})
+end
+
+Buffer.canUndo=function(b) return b.changeI >= 1 end
+-- TODO: shouldn't it be '<=' ?
+Buffer.canRedo=function(b) return b.changeI < b.changeMax end
+
+Buffer.undoTop=function(b)
+  if b:canUndo() then return b.changes[b.changeI] end
+end
+Buffer.redoTop=function(b)
+  if b:canRedo() then return b.changes[b.changeI + 1] end
+end
+
+Buffer.undo=function(b)
+  local ch = b:undoTop(); if not ch then return end
+  b:discardUnusedStart(); b.changeStartI = 0
+
+  local done = {}
+  while ch do
+    b.changeI = b.changeI - 1
+    push(done, ch)
+    if ty(ch) == ChangeStart then break
+    else
+      assert(ty(ch) == Change)
+      CHANGE_UNDO[ch.k](ch, b)
+    end
+    ch = b:undoTop()
+  end
+  local o = ds.reverse(done)
+  return o
+end
+
+Buffer.redo=function(b)
+  local ch = b:redoTop(); if not ch then return end
+  b:discardUnusedStart(); b.changeStartI = 0
+  assert(ty(ch) == ChangeStart)
+  local done = {ch}; b.changeI = b.changeI + 1
+  ch = b:redoTop(); assert(ty(ch) ~= ChangeStart)
+  while ch and ty(ch) ~= ChangeStart do
+    b.changeI = b.changeI + 1
+    push(done, ch)
+    CHANGE_REDO[ch.k](ch, b)
+    ch = b:redoTop()
+  end
+  return done
+end
+
+Buffer.append=function(b, s)
+  local ch = b:changeIns(s, #b.dat + 1, 1)
+  b.dat:append(s)
+  return ch
+end
+
+Buffer.insert=function(b, s, l, c)
+  l, c = lines.bound(b.dat, l, c)
+  local ch = b:changeIns(s, l, c)
+  lines.inset(b.dat, s, l, c)
+  return ch
+end
+
+Buffer.remove=function(b, ...)
+  local l, c, l2, c2 = lines.span(...)
+  local lt, ct = motion.topLeft(l, c, l2, c2)
+  local dat = b.dat
+  lt, ct = lines.bound(dat, lt, ct)
+  local ch = lines.sub(dat, l, c, l2, c2)
+  ch = (type(ch)=='string' and ch) or table.concat(ch, '\n')
+  ch = b:changeRm(ch, lt, ct)
+  log.info('remove %s.%s : %s.%s', l, c, l2, c2)
+  lines.remove(dat, l, c, l2, c2)
+  return ch
+end
+
+ChangeStart.__tostring = function(c)
+  return string.format('[%s.%s -> %s.%s]', c.l1, c.c1, c.l2, c.c2)
+end
+Change.__tostring = function(c)
+  return string.format('{%s %s.%s %q}', c.k, c.l, c.c, c.s)
+end
+
+return M

--- /dev/null
+++ lib/lines/lines/diff.lua
@@ -0,0 +1,263 @@
+local G = G or _G
+
+--- Diffing module and command
+--- Example command: [$lines.diff{'file/path1.txt', 'file/path2.txt'}]
+--- Note: the arguments can be a string (path) or list of lines.
+local M = G.mod and mod'lines.diff' or setmetatable({}, {})
+G.MAIN = G.MAIN or M
+
+local mty = require'metaty'
+local ds  = require'ds'
+local push = table.insert
+local clear = ds.clear
+local construct = mty.construct
+local str, sfmt = tostring, string.format
+
+--- Line-based diff.
+--- The default algorithm uses patience diff. Special thanks to:
+--- [<https://blog.jcoglan.com/2017/09/19/the-patience-diff-algorithm>]
+---
+--- The basic algorithm on before/after line lists: [+
+--- * skip unchanged lines on both top and bottom
+--- * find unique lines in both sets and "align" them with
+---   using "longest increasing sequence"
+--- * repeat for each aligned section
+--- ]
+---
+--- Example: [$io.fmt(Diff(linesA, linesB))]
+M.Diff = mty'Diff' {
+  'b [lines]: base, aka original lines',
+  'c [lines]: change, aka new lines',
+  'di [int]: len of noc/rem/add',
+  'noc [ints]: nochange range (in both)',
+  'rem [ints]: removed from b',
+  'add  [ints]: added from c',
+}
+local Diff = M.Diff
+
+--- [$c] is a table of [$lineStr -> lineNum].
+--- The first time [$lineStr] is found the line number [$l] is stored.
+--- If found again, the stored line is set to false (and remains false)
+---
+--- The [$line] string is also pushed to [$c] so that it can be iterated
+--- in-order
+local function countLine(c, l, line, pushl)
+  local r = c[line]
+  if     r == nil   then c[line] = l; if pushl then push(c, line) end
+  elseif r ~= false then c[line] = false end
+end
+
+--- return lists of line numbers which are unique in both [$b] and [$c],
+--- ordered by when the appear in b.
+local uniqueMatches = function(bLines, cLines, b, b2, c, c2) --> bList, cList
+  local bcount, ccount = {}, {}
+  for i=b,b2 do countLine(bcount, i, bLines[i], true) end
+  for i=c,c2 do countLine(ccount, i, cLines[i]) end
+  local bl, cl = {}, {}
+  for _, line in ipairs(bcount) do
+    local b, c = bcount[line], ccount[line]
+    if b and c then push(bl, b); push(cl, c); end
+  end
+  return bl, cl
+end
+
+--- Find the stack to the left of where we should place
+--- using binary search.
+local findLeftStack = function(stacks, mc, c)
+  local low, high, mid = 0, #stacks + 1
+  while low + 1 < high do
+    mid = (low + high) // 2
+    if mc[stacks[mid]] < c then low  = mid
+    else                        high = mid end
+  end
+  return low
+end
+
+--- Get the longest increasing sequence (in reverse order)
+local patienceLIS = function(mb, mc) --> bList, cList
+  local stacks = {}
+  local prev, c, i = {}
+  for mi, b in ipairs(mb) do
+    i = findLeftStack(stacks, mc, mc[mi])
+    if i > 0 then prev[mi] = stacks[i] end
+    stacks[i+1] = mi
+  end
+  local mi = stacks[#stacks]; if not mi then return end
+  local b, c = {}, {}
+  while prev[mi] do push(b, mb[mi]); push(c, mc[mi]); mi = prev[mi] end
+  push(b, mb[mi]); push(c, mc[mi])
+  return b, c
+end
+
+----------------------------
+-- Compute the diff
+
+local skipEqLinesTop = function(linesB, linesC, b, b2, c, c2) --> bi, ci
+  while b <= b2 and c <= c2 do
+    if linesB[b] ~= linesC[c] then return b, c end
+    b, c = b + 1, c + 1
+  end
+  return b, c
+end
+
+local skipEqLinesBot = function(linesB, linesC, b, b2, c, c2) --> bi, ci
+  while b <= b2 and c <= c2 do
+    if linesB[b2] ~= linesC[c2] then return b2, c2 end
+    b2, c2 = b2 - 1, c2 - 1
+  end
+  return b2, c2
+end
+
+Diff._calc = function(d, b, b2, c, c2)
+  local bSt, b2St, cSt, c2St = b, b2, c, c2
+  local bNext, cNext
+  b,  c  = skipEqLinesTop(d.b, d.c, b, b2, c, c2)
+  b2, c2 = skipEqLinesBot(d.b, d.c, b, b2, c, c2)
+  assert((c - cSt) == (b - bSt))
+
+  local di
+  if c > cSt then di = d.di + 1; d.noc[di] = c - cSt; d.di = di end
+  local bl, cl = patienceLIS(uniqueMatches(d.b, d.c, b, b2, c, c2))
+  if not bl or #bl == 0 then
+    local rm, ad = b2 - b + 1, c2 - c + 1
+    if rm == 0 and ad == 0 then -- skip
+    else
+      di = d.di + 1; d.di = di
+      if rm > 0 then d.rem[di] = rm end
+      if ad > 0 then d.add[di] = ad end
+    end
+    goto bottom
+  end
+
+  for i=#bl,0,-1 do
+    local bm = bl[i]
+    if bm then bNext, cNext = bm-1, cl[i]-1
+    else       bNext, cNext = b2, c2 end
+    d:_calc(b, bNext, c, cNext)
+    if not bm then break end
+    local cm = cl[i]
+    di = d.di + 1; d.noc[di], d.di = 1, di
+    b, c = bm + 1, cm + 1
+  end
+  ::bottom::
+  c2 = c2 + 1 -- c2:c2St are unchanged lines (bot)
+  if c2 <= c2St then di = d.di + 1; d.noc[di], d.di = c2St - c2 + 1, di end
+end
+
+--- accumulate list[i] = list[i]+list[j], treating 0 as nil
+local acc = function(list, i, j)
+  local v = (list[i] or 0) + (list[j] or 0)
+  if v ~= 0 then list[i] = v end
+end
+
+--- compress all like-fields together
+Diff._compress = function(d)
+  local add, rem, noc, len = d.add, d.rem, d.noc, d.di
+  -- scan the items, accumulating into i from j
+  local i, j = 1, 1
+  local clearj = function() add[j], rem[j], noc[j] = nil, nil, nil end
+  while j <= len do
+    if j <= i then j = i + 1 end
+    if not (noc[i] or add[i] or rem[i]) then -- empty i
+      acc(noc, i, j); acc(add, i, j); acc(rem, i, j)
+      clearj(); j = j + 1
+    elseif noc[i] then -- accumulate nochanges
+      if noc[j] then acc(noc, i, j); noc[j] = nil; j = j + 1
+      else i = i + 1 end
+    else -- accumulate add/rem
+      if add[j] or rem[j] then
+         acc(add, i, j); acc(rem, i, j)
+         clearj(); j = j + 1
+      else i = i + 1 end
+    end
+  end
+  d.di = i
+  i = i + 1; clear(add, i, len); clear(rem, i, len); clear(noc, i, len)
+end
+
+getmetatable(Diff).__call = function(T, linesB, linesC) --> Diff
+  if type(linesB) == 'string' then linesB = ds.splitList(linesB, '\n') end
+  if type(linesC) == 'string' then linesC = ds.splitList(linesC, '\n') end
+
+  local d = mty.construct(T, {
+    b=linesB, c=linesC, di=0, noc={}, rem={}, add={}
+  })
+  d:_calc(1, #linesB, 1, #linesC)
+  d:_compress()
+  return d
+end
+
+--- iterate through nochange and change blocks, calling the functions for each
+--- [+
+--- * [$nocFn(baseStart, numUnchanged, changeStart, numUnchanged)]
+--- * [$chgFn(baseStart, numRemoved,   changeStart, numAdded)]
+--- ]
+--- Note that the num removed/added will be nil if none were added/removed.
+Diff.map = function(d, nocFn, chgFn)
+  local noc, add, rem = d.noc, d.add, d.rem
+  local bl, cl, n, a, r = 1, 1 -- bl=base-line cl=changed-line
+  for i=1,d.di do
+    n = noc[i]
+    if n then -- unchanged lines
+      nocFn(bl, n, cl, n)
+      bl, cl = bl + n, cl + n
+    else
+      a, r = add[i], rem[i]
+      if a or r then
+        chgFn(bl, r, cl, a)
+        if r then bl = bl + r end
+        if a then cl = cl + a end
+      end
+    end
+  end
+end
+
+local function styleNoc(f, base, bl, cl)
+  f:styled('line', sfmt('% 5i % 5i ', bl, cl))
+  f:styled('meta', base[bl] or '<eof>', '\n')
+end
+Diff.__fmt = function(d, f)
+  local base, chan = d.b, d.c
+  d:map(
+    function(bl, n, cl) -- nochange
+      if n > 0 then styleNoc(f, base, bl, cl)         end
+      if n > 1 then styleNoc(f, base, bl+n-1, cl+n-1) end
+    end,
+    function(bl, r, cl, a) -- change
+      for l=0,(r or 0)-1 do
+        f:styled('basel', sfmt('% 5i       ', bl+l))
+        f:styled('base', base[bl+l], '\n')
+      end
+      for l=0,(a or 0)-1 do
+        f:styled('changel', sfmt('% 11i ', cl+l))
+        f:styled('change', chan[cl+l], '\n')
+      end
+    end)
+end
+
+M._toTest = {
+  uniqueMatches = uniqueMatches,
+  findLeftStack = findLeftStack,   patienceLIS    = patienceLIS,
+  skipEqLinesTop = skipEqLinesTop, skipEqLinesBot = skipEqLinesBot,
+}
+
+M.main = function(args)
+  local b, c = table.unpack(require'shim'.parseStr(args))
+  assert(b and c, 'must provide args {base, change}')
+  local paths
+  if type(b) == 'string' then
+    io.fmt:styled('base', b)
+    b = assert(require'lines'.load(b))
+    paths = true
+  end
+  if type(c) == 'string' then
+    if paths then io.fmt:styled('meta', ' :: ') end
+    io.fmt:styled('change', c, '\n')
+    c = assert(require'lines'.load(c))
+  elseif paths then io.fmt:write'\n' end
+  io.fmt(M.Diff(b, c))
+end
+
+getmetatable(M).__call = function(_, args) return M.main(args) end
+if M == MAIN then os.exit(M.main(require'shim'.parse(G.arg))) end
+return M

--- /dev/null
+++ lib/lines/lines/futils.lua
@@ -0,0 +1,33 @@
+local G = G or _G
+--- utilities for file loading of lines.
+local M = G.mod and mod'lines.futils' or {}
+
+local fd = require'fd'
+local ix = require'civix'
+local U3File = require'lines.U3File'
+local pth = require'ds.path'
+local trace = require'ds.log'.trace
+
+local TRUNC = {w=true, ['w+']=true}
+
+--- load or reindex the file at path to/from idxpath.
+M.loadIdx = function(f, idxpath, fmode, reindex) --> idxFile
+  trace('loadIdx idxpath=%s mode=%s reindex=%q', idxpath, fmode, reindex)
+  local fstat, xstat = assert(ix.stat(f))
+  if TRUNC[fmode] then goto createnew end
+  xstat = ix.stat(idxpath)
+  if xstat and fd.modifiedEq(fstat, xstat) then
+    return U3File:load(idxpath)
+  end
+  ::createnew::
+  trace('loadIndex createnew')
+  ix.mkDirs(pth.last(idxpath))
+  local idx, err = U3File:create(idxpath)
+  if not idx then return nil, err end
+  reindex(f, idx)
+  f:flush(); idx:flush()
+  ix.setModified(idx.f, fstat:modified())
+  return idx
+end
+
+return M

--- /dev/null
+++ lib/lines/lines/motion.lua
@@ -0,0 +1,119 @@
+G = G or _G
+--- module with helper methods for moving a cursor
+--- around a lines-like 2D grid.
+local M = mod and mod'rebuf.motion' or {}
+
+local mty = require'metaty'
+local ds = require'ds'
+local sort2, bound, isWithin; ds.auto'ds'
+local min, max = math.min, math.max
+
+local byte, char = string.byte, string.char
+
+--- decrease distance (start -> end) by 1
+M.decDistance = function(s, e) --> int
+  if s == e then return e end
+  return (s < e) and (e - 1) or (e + 1)
+end
+
+--- return whether l.c is <= l2.c2
+M.lcLe = function(l, c, l2, c2) --> bool
+  if l == l2 then return c <= c2 end
+  return l < l2
+end
+
+--- return whether l.c is >= l2.c2
+M.lcGe = function(l, c, l2, c2) --> bool
+  if l == l2 then return c >= c2 end
+  return l > l2
+end
+
+--- return the top-left of two points
+M.topLeft = function(l, c, l2, c2) --> (l, c)
+  if not c then
+    assert(not c2); return sort2(l, l2)
+  end
+  if l == l2 then return l, min(c, c2) end
+  if l <  l2 then return l, c end
+  return l2, c2
+end
+
+-- return whether a cursor is within a range
+M.lcWithin = function(l, c, l1, c1, l2, c2) --> bool
+  if l1 > l2 then l1, c1, l2, c2 = l2, c2, l1, c1
+  elseif l1 == l2 then
+    c1, c2 = sort2(c1, c2)
+    return l == l1 and isWithin(c, c1, c2)
+  end
+  if isWithin(l, l1, l2) then
+    if l == l1 then return c >= c1 end -- bottom
+    if l == l2 then return c <= c2 end -- top
+    return true
+  end
+  return false
+end
+
+local WordKind = {}; M.WordKind = WordKind -- ws, sym, let
+for c=0, 127 do
+  local ch, kind = char(c), nil
+  if 0 <= c and ch <= ' '        then kind = 'ws'
+  elseif '1' <= ch and ch <= '9' then -- let, leave
+  elseif 'a' <= ch and ch <= 'z' then -- let, leave
+  elseif 'A' <= ch and ch <= 'Z' then -- let, leave
+  elseif ch == '_'               then -- let, leave
+  else kind = 'sym' end
+  WordKind[ch] = kind
+end
+WordKind['('] = '()'; WordKind[')'] = '()'
+WordKind['['] = '[]'; WordKind[']'] = '[]'
+WordKind['{'] = '{}'; WordKind['}'] = '{}'
+WordKind['"'] = '"'   WordKind["'"] = "'"
+
+local function wordKind(ch) return WordKind[ch] or 'let' end
+M.wordKind = wordKind --> string
+
+--- Go forward to find the start of the next word
+M.forword = function(s, begin) --> int
+  begin = begin or 1
+  local i, kStart = begin+1, wordKind(s:sub(begin,begin))
+  for ch in string.gmatch(s:sub(begin+1), '.') do
+    local k = wordKind(ch)
+    if k ~= kStart then
+      if kStart ~= 'ws' and k == 'ws' then
+        kStart = 'ws' -- find first non-whitespace
+      else return i end
+    end
+    i = i + 1
+  end
+end
+
+--- Go backward to find the start of this (or previous) word
+M.backword = function(s, end_) --> int
+  s = s:sub(1, end_-1):reverse()
+  local i, kStart = 2, wordKind(s:sub(1,1))
+  for ch in string.gmatch(s:sub(2), '.') do
+    local k = wordKind(ch)
+    if k ~= kStart then
+      if kStart == 'ws' then kStart = k
+      else return #s - i + 2 end
+    end
+    i = i + 1
+  end
+end
+
+--- find backwards
+--- this searches for the pattern and returns the LAST one found.
+--- This is HORRIBLY non-performant, only use for small amounts of data
+M.findBack = function(s, pat, end_, plain) --> int
+  local s, fs, fe = s:sub(1, end_), nil, 0
+  assert(#s < 256)
+  while true do
+    local _fs, _fe = s:find(pat, fe + 1, plain)
+    if not _fs then break end
+    fs, fe = _fs, _fe
+  end
+  if fe == 0 then fe = nil end
+  return fs, fe
+end
+
+return M

--- /dev/null
+++ lib/lines/lines/testing.lua
@@ -0,0 +1,118 @@
+--- testing helpers for ds related data structures
+local M = mod and mod'lines.testing' or {}
+
+local T = require'civtest'
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds, lines = require'ds', require'lines'
+local log = require'ds.log'
+M.DATA = {}
+
+--- test round-trip offset
+local function offsetRound(t, l, c, off, expect, expectOff)
+  local l2, c2 = lines.offset(t, off, l, c)
+  T.eq(expect, {l2, c2})
+  local res = lines.offsetOf(t, l, c, l2, c2)
+  T.eq(expectOff or off, res)
+end
+M.DATA.offset = '12345\n6789\n'
+M.testOffset = function(t)
+  local l, c
+  offsetRound(t, 1, 2, 0,   {1, 2})
+  offsetRound(t, 1, 2, 1,   {1, 3})
+  offsetRound(t, 1, 3, -1,  {1, 2})
+  offsetRound(t, 1, 2, -1,  {1, 1})
+  T.eq({1, 1}, {lines.offset(t, -1, 1, 1)})
+
+  -- here
+  offsetRound(t, 1, 1, 3,   {1, 4})
+  offsetRound(t, 1, 1, 4,   {1, 5}) -- '5'
+  offsetRound(t, 1, 1, 5,   {1, 6}) -- '\n'
+  offsetRound(t, 1, 1, 6,   {2, 1}) -- '6'
+  offsetRound(t, 1, 1, 9,   {2, 4}) -- '9'
+  offsetRound(t, 1, 1, 10,  {2, 5}) -- '\n'
+  offsetRound(t, 1, 1, 11,  {3, 1}) -- ''
+  offsetRound(t, 1, 1, 12,  {3, 1}, 11) -- EOF
+
+  offsetRound(t, 1, 5, -3,  {1, 2}) -- '2'
+  offsetRound(t, 1, 5, -4,  {1, 1}) -- '1'
+  offsetRound(t, 1, 5, -5,  {1, 1}, -4) -- '1'
+
+  offsetRound(t, 3, 1, -1,  {2, 5}) -- '\n'
+  offsetRound(t, 3, 1, -2,  {2, 4}) -- '9'
+  offsetRound(t, 3, 1, -3,  {2, 3}) -- '8'
+  offsetRound(t, 3, 1, -4,  {2, 2}) -- '7'
+  offsetRound(t, 3, 1, -5,  {2, 1}) -- '6'
+  offsetRound(t, 3, 1, -6,  {1, 6}) -- '\n'
+  offsetRound(t, 3, 1, -11, {1, 1}) -- '\n'
+  offsetRound(t, 3, 1, -12, {1, 1}, -11) -- BOF
+
+  -- Those are all "normal", let's do some OOB stuff
+  offsetRound(t, 1, 6 , 1, {2, 1})
+  offsetRound(t, 1, 10, 1, {2, 1}) -- note (1, 6) is EOL
+end
+
+--- Test lines.remove on object. new must accept either a string or table of
+--- lines to create a new object (does NOT need to be copied)
+--- called for various data structures which implement lines
+M.testLinesRemove = function(new, assertEq, assertEqRemove)
+  local assertEqR = assertEqRemove or T.eq
+  local assertEq = assertEq or T.eq
+  local t = new''
+  lines.inset(t, 'foo bar', 1, 0)
+  assertEqR({'o b'}, lines.remove(t, 1, 3, 1, 5))
+  assertEq(new{'foar'}, t)
+
+  lines.inset(t, 'ab\n123', 1, 4)
+  assertEq(new{'foaab', '123r'}, t)
+  assertEqR({'aab', '12'}, lines.remove(t, 1, 3, 2, 2))
+  assertEq(new{'fo', '3r'}, t)
+
+  t = new'a\nb'
+  assertEqR({''}, lines.remove(t, 1, 2, 2, 0)) -- remove newline
+  assertEq(new{'ab'}, t)
+  assertEqR({'ab', ''}, lines.remove(t, 1, 1, 2, 1))
+  assertEq(new{''}, t)
+
+  t = new'a\nb'
+  assertEqR({'', ''}, lines.remove(t, 1, 2, 1, 2)) -- alternate remove newline
+  assertEq(new{'ab'}, t)
+
+  t = new'ab\nc'
+  assertEqR({'b', 'c'}, lines.remove(t, 1, 2, 2, 1))
+  assertEq(new{'a', ''}, t)
+
+  t = new'ab\nc'
+  assertEqR({'b', 'c'}, lines.remove(t, 1, 2, 2, 2))
+  assertEq(new{'a'}, t)
+
+  t = new'ab\nc\n\nd'
+  assertEqR({'c', ''}, lines.remove(t, 2, 3))
+  if rawget(t, 'dats') then
+    t:flush()
+  end
+  assertEq(new{'ab', 'd'}, t)
+
+  t = new'ab\nc'
+
+  assertEqR({'c'}, lines.remove(t, 2, 1, 2, 1)) -- remove c
+  assertEq(new{'ab', ''}, t)
+  assertEqR({''}, lines.remove(t, 1, 3, 2, 0)) -- remove \n (lineskip)
+  assertEq(new{'ab'}, t)
+
+  t = new'ab\nc'
+  assertEqR({'', ''}, lines.remove(t, 1, 3, 1, 3)) -- remove \n (single)
+  assertEq(new{'abc'}, t)
+
+  t = new'ab\nc\nde\n'
+  -- remove \n (single)
+  assertEqR({'', ''}, lines.remove(t, 1, 3, 1, 3))
+  assertEq(new{'abc', 'de', ''}, t)
+
+  t = new'a b c\nd e\nf g\nh i\n'
+  fmt.print('t:', t)
+  assertEqR({'d e', 'f g'}, lines.remove(t, 2, 3))
+  assertEq(new{'a b c', 'h i', ''}, t)
+end
+
+return M

--- /dev/null
+++ lib/lines/test.lua
@@ -0,0 +1,197 @@
+
+local fmt = require'fmt'
+local lines = require'lines'
+local ds = require'ds'
+local testing = require'lines.testing'
+local Gap = require'lines.Gap'
+local T = require'civtest'
+
+T.new = function()
+  T.eq({'one', 'two 2', ''}, lines'one\ntwo 2\n')
+  T.eq({'one', 'two 2', ''}, lines.args'one\ntwo 2\n')
+  T.eq({'one', 'two 2', ''}, lines.args('one\n', 'two 2\n'))
+end
+
+T.sort = function()
+  local sort = lines.sort
+  T.eq({1, 1, 2, 2}, {sort(1, 1, 2, 2)})
+  T.eq({1, 1, 2, 2}, {sort(2, 2, 1, 1)})
+  T.eq({1, 5, 2, 1}, {sort(1, 5, 2, 1)})
+  T.eq({1, 5, 2, 1}, {sort(2, 1, 1, 5)})
+end
+
+T.sub = function()
+  local lsub = lines.sub
+  local l = lines'ab\nc\n\nd'
+  T.eq({'ab'},      lsub(l, 1, 1))
+  T.eq({'ab', 'c'}, lsub(l, 1, 2))
+  T.eq({'c', ''},   lsub(l, 2, 3))
+  T.eq('ab\n',      lsub(l, 1, 1, 1, 3))
+  T.eq('ab\n',      lsub(l, 1, 1, 2, 0))
+  T.eq('b\nc',      lsub(l, 1, 2, 2, 1))
+
+  l = lines"4     It's nice to have some real data"
+  T.eq('It',     lsub(l, 1, 7, 1, 8))
+  T.eq("'",      lsub(l, 1, 9, 1, 9))
+  T.eq("s",      lsub(l, 1, 10, 1, 10))
+  T.eq(" nice",  lsub(l, 1, 11, 1, 15))
+end
+
+T.find = function()
+  local t = lines'12345\n6789\n98765\n'
+  T.eq({1, 3}, {lines.find(t, '34', 1, 1)})
+  T.eq({2, 1}, {lines.find(t, '67', 1, 3)})
+  T.eq({2, 1}, {lines.find(t, '6', 1, 3)})
+  T.eq({3, 4}, {lines.find(t, '6', 2, 2)})
+
+  T.eq({3, 4}, {lines.findBack(t, '6', 3)})
+  T.eq({3, 4}, {lines.findBack(t, '6', 3, 4)})
+  T.eq({2, 1}, {lines.findBack(t, '6', 3, 3)})
+end
+
+T.offset = function()
+  testing.testOffset(lines(testing.DATA.offset))
+end
+
+T.inset = function()
+  local t = {''}
+  T.eq(1, #t)
+  lines.inset(t, 'foo bar', 1, 0)
+  T.eq('foo bar', lines.join(t))
+  lines.inset(t, 'baz ', 1, 5)
+  T.eq('foo baz bar', lines.join(t))
+
+  lines.inset(t, '\nand', 1, 4)
+  T.eq('foo\nand baz bar', lines.join(t))
+  lines.inset(t, 'buz ', 2, 5)
+  T.eq('foo\nand buz baz bar', lines.join(t))
+
+  t = {''}
+  lines.inset(t, 'foo\nbar', 1, 1)
+  T.eq('foo\nbar', lines.join(t))
+end
+
+T.remove = function()
+  testing.testLinesRemove(function(t)
+    return type(t) == 'string' and lines(t) or t
+  end)
+end
+
+T.box = function()
+  local l = lines(
+    '1 3 5 7 9\n'
+  ..' 2 4 6\n'
+  ..'a c d e f g h')
+  T.eq({'1 3', ' 2 '        }, lines.box(l, 1,1, 2,3))
+  T.eq({' 3 ', '2 4'        }, lines.box(l, 1,2, 2,4))
+  T.eq({'7 9', '',   'e f g'}, lines.box(l, 1,7, 3,11))
+end
+
+------------------------
+-- Gap Tests
+
+T['Gap.set'] = function()
+  local g = Gap'ab\nc\n\nd'
+  T.eq('ab\nc\n\nd', fmt(g))
+  T.eq({'ab', 'c', '', 'd'}, g.bot)
+  g:setGap(3)
+  T.eq({'ab', 'c', ''}, g.bot)
+  T.eq({'d'},           g.top)
+  T.eq('ab\nc\n\nd', fmt(g))
+end
+
+T['Gap.inset'] = function()
+  T.eq(1, #Gap'')
+  local g = Gap(); T.eq(0, #g)
+  lines.inset(g, 'foo bar', 1, 0)
+  T.eq('foo bar', fmt(g))
+  g:setGap(1)
+  T.eq(1, #g); T.eq(1, #g.bot)
+
+  lines.inset(g, 'baz ', 1, 5)
+  T.eq('foo baz bar', fmt(g))
+
+  lines.inset(g, '\nand', 1, 4)
+  T.eq('foo\nand baz bar', fmt(g))
+  lines.inset(g, 'buz ', 2, 5)
+  T.eq('foo\nand buz baz bar', fmt(g))
+
+  g = Gap()
+  lines.inset(g, 'foo\nbar', 1, 1)
+  T.eq('foo\nbar', fmt(g))
+end
+
+T['Gap.remove'] = function()
+  testing.testLinesRemove(Gap)
+end
+
+local function subTests(g)
+  T.eq({'ab'},      lines.sub(g, 1, 1))
+  T.eq({'ab', 'c'}, lines.sub(g, 1, 2))
+  T.eq({'c', ''},   lines.sub(g, 2, 3))
+  T.eq('ab\n',      lines.sub(g, 1, 1, 1, 3))
+  T.eq('b\nc',      lines.sub(g, 1, 2, 2, 1))
+end
+T['Gap.sub'] = function()
+  local g = Gap'ab\nc\n\nd'
+  g:setGap(4); subTests(g)
+  g:setGap(1); subTests(g)
+  g:setGap(2); subTests(g)
+
+  g = Gap"4     It's nice to have some real data"
+  T.eq('It',     lines.sub(g, 1, 7, 1, 8))
+  T.eq("'",      lines.sub(g, 1, 9, 1, 9))
+  T.eq("s",      lines.sub(g, 1, 10, 1, 10))
+  T.eq(" nice",  lines.sub(g, 1, 11, 1, 15))
+end
+
+T['Gap.offset'] = function()
+  local testOffset = testing.testOffset
+  local g = Gap(testing.DATA.offset)
+  testOffset(g)
+  g:setGap(1); testOffset(g)
+  g:setGap(2); testOffset(g)
+  g:setGap(4); testOffset(g)
+end
+
+T['Gap.find'] = function()
+  local g = Gap'12345\n6789\n98765\n'
+  T.eq({1, 3}, {lines.find(g, '34', 1, 1)})
+  T.eq({2, 1}, {lines.find(g, '67', 1, 3)})
+  T.eq({2, 1}, {lines.find(g, '6', 1, 3)})
+  T.eq({3, 4}, {lines.find(g, '6', 2, 2)})
+end
+
+T['Gap.ipairs'] = function()
+  local g = Gap'12345\n6789\n98765\n'
+  local t = {}; for i, v in ipairs(g) do
+    T.eq(g[i], g[i]) t[i] = v
+  end
+  T.eq({'12345', '6789', '98765', ''}, t)
+end
+
+T['Gap.extend'] = function()
+  local g = Gap'123'
+  ds.extend(g, {'456', '7'})
+  T.eq('123\n456\n7', fmt(g))
+end
+
+T['Gap.write'] = function()
+  local g = Gap''
+  g:write'hi'; T.eq('hi', fmt(g))
+  g:write' there\n'; T.eq('hi there\n', fmt(g))
+  g:write'  next\nline'; T.eq('hi there\n  next\nline', fmt(g))
+end
+
+T.Writer = function()
+  local W = require'lines.Writer'; local w = W{}
+  w:write'hi there'
+  T.eq(W{'hi there'}, w)
+  w:write' bob'
+  T.eq(W{'hi there bob'}, w)
+  w:write'\nand jane'
+  T.eq(W{'hi there bob', 'and jane'}, w)
+  w:write' and sue\nand zebe\n'
+  T.eq(W{'hi there bob', 'and jane and sue',
+             'and zebe', ''}, w)
+end

--- /dev/null
+++ lib/lines/test_buffer.lua
@@ -0,0 +1,103 @@
+METATY_CHECK = true
+
+local mty = require'metaty'
+local fmt = require'fmt'
+local T = require'civtest'
+
+local buffer = require'lines.buffer'
+
+local Buffer = buffer.Buffer
+local C, CS = buffer.Change, buffer.ChangeStart
+
+T.undoIns = function()
+  local b = Buffer.new(''); local g = b.dat
+
+  local ch1 = C{k='ins', s='hello ', l=1, c=1}
+  local ch2 = C{k='ins', s='world!', l=1, c=7}
+  b:changeStart(0, 0)
+  local ch = b:insert('hello ', 1, 2)
+  T.eq(ch1, ch)
+  T.eq('hello ', fmt(g))
+
+  b:changeStart(0, 1)
+  ch = b:insert('world!', 1, 7)
+  T.eq(ch2, ch)
+  T.eq('hello world!', fmt(g))
+
+  -- undo + redo + undo again
+  local chs = b:undo()
+  T.eq({CS{l1=0, c1=1}, ch2}, chs)
+  T.eq('hello ', fmt(g))
+
+  chs = b:redo()
+  T.eq({CS{l1=0, c1=1}, ch2}, chs)
+  T.eq('hello world!', fmt(g))
+
+  chs = b:undo()
+  T.eq({CS{l1=0, c1=1}, ch2}, chs)
+  T.eq('hello ', fmt(g))
+
+  -- undo final, then redo twice
+  chs = b:undo()
+  T.eq({CS{l1=0, c1=0}, ch1}, chs)
+  T.eq('', fmt(g))
+  b:redo(); chs = b:redo()
+  T.eq({CS{l1=0, c1=1}, ch2}, chs)
+  T.eq('hello world!', fmt(g))
+end
+
+T.undoInsRm = function()
+  local b = Buffer.new(''); local g, ch = b.dat
+  local ch1 = C{k='ins', s='12345\n', l=1, c=1}
+  local ch2 = C{k='rm', s='12', l=1, c=1}
+  b:changeStart(0, 0)
+  ch = b:insert('12345\n', 1, 2); T.eq(ch1, ch)
+
+  b:changeStart(0, 1)
+  ch = b:remove(1, 1, 1, 2);      T.eq(ch2, ch)
+  T.eq('345\n', fmt(g))
+
+  ch = b:undo()[2]                T.eq(ch2, ch)
+  T.eq('12345\n', fmt(g))
+
+  ch = b:redo()[2]                T.eq(ch2, ch)
+  T.eq('345\n', fmt(g))
+end
+
+T.undoReal = function() -- undo/redo word deleting
+  local START = "4     It's nice to have some real data"
+  local b = Buffer.new(START); local g, ch = b.dat
+  local ch1 = C{k='rm', s='It',  l=1, c=7}
+  local ch2 = C{k='rm', s="'",   l=1, c=7}
+  local ch3 = C{k='rm', s="'s ", l=1, c=7}
+  b:changeStart(0, 0)
+  ch = b:remove(1, 7, 1, 8); T.eq(ch1, ch)
+  T.eq("4     's nice to have some real data", fmt(g))
+  ch = b:remove(1, 7, 1, 7); T.eq(ch2, ch)
+  T.eq("4     s nice to have some real data", fmt(g))
+
+  local chs = b:undo();      T.eq({CS{l1=0, c1=0}, ch1, ch2}, chs)
+  T.eq("4     It's nice to have some real data", fmt(g))
+  ch = b:redo();             T.eq({CS{l1=0, c1=0}, ch1, ch2}, chs)
+  T.eq("4     s nice to have some real data", fmt(g))
+end
+
+T.undoMulti = function() -- undo/redo across multi lines
+  local START = '123\n456\n789\nabc'
+  local b = Buffer.new(START); local g, ch = b.dat
+  T.eq(START, fmt(g))
+  local ch1 = C{k='rm', s='\n', l=1, c=4}
+  local ch2 = C{k='rm', s='\n', l=1, c=7}
+  b:changeStart(0, 0)
+  ch = b:remove(1, 4, 1, 4); T.eq(ch1, ch)
+  T.eq('123456\n789\nabc', fmt(g))
+  b:changeStart(0, 0)
+  ch = b:remove(1, 7, 1, 7); T.eq(ch2, ch)
+  T.eq('123456789\nabc', fmt(g))
+
+  ch = b:undo()[2]                T.eq(ch2, ch)
+  T.eq('123456\n789\nabc', fmt(g))
+
+  ch = b:undo()[2]                T.eq(ch1, ch)
+  T.eq(START, fmt(g))
+end

--- /dev/null
+++ lib/lines/test_diff.lua
@@ -0,0 +1,135 @@
+local mty = require'metaty'
+local ds = require'ds'
+local Iter = require'ds.Iter'
+local fmt = require'fmt'
+local lines = require'lines'
+local T = require'civtest'
+local Keep, Change, toChanges; ds.auto'vcds'
+local add, concat = table.insert, table.concat
+local diff = require'lines.diff'
+
+local dt = diff._toTest
+local sfmt = string.format
+local unpack = table.unpack
+local push = table.insert
+
+local function B(b) return {-1, b} end
+
+T.skip = function()
+  T.eq({3, 3}, {dt.skipEqLinesTop({1,1,1}, {1,1,2}, 1,3, 1,3)})
+  T.eq({2, 3}, {dt.skipEqLinesTop({1,1,1}, {1,1,2}, 1,3, 2,3)})
+  T.eq({1, 3}, {dt.skipEqLinesTop({1,1,1}, {1,1,2}, 1,3, 3,3)})
+  T.eq({4, 4}, {dt.skipEqLinesTop({1,1,1}, {1,1,1}, 1,3, 1,3)})
+
+  T.eq({3, 3}, {dt.skipEqLinesBot({1,1,1}, {1,1,2}, 1,3, 1,3)})
+  T.eq({1, 0}, {dt.skipEqLinesBot({1,1,1}, {1,1,2}, 1,3, 1,2)})
+end
+
+T.findStack = function()
+  local mb     = {3, 5, 12, 20, 30, 50, 60, 70, 90}
+  local stacks = {1, 2, 3,  4,  5,  6,  7,  8,  9}
+  T.eq(0, dt.findLeftStack(stacks, mb, 2))
+  T.eq(1, dt.findLeftStack(stacks, mb, 4))
+  T.eq(3, dt.findLeftStack(stacks, mb, 15))
+  T.eq(7, dt.findLeftStack(stacks, mb, 69))
+end
+
+local function uniqueMatches(aLines, bLines, a, a2, b, b2)
+  if not a then a, a2, b, b2 = 1, #aLines, 1, #bLines end
+  return dt.uniqueMatches(aLines, bLines, a, a2, b, b2)
+end
+
+T.example = function()
+  --                          1     2   3        4     5      6     6      7
+  local linesA = ds.splitList'david a   electric gil slits    faust sonics sonics'
+  local linesB = ds.splitList'slits gil david    a   electric faust sonics sonics'
+
+  local res = diff.Diff(linesA, linesB)
+  local matches = {uniqueMatches(linesA, linesB)}
+  T.eq({
+    {1, 2, 3, 4, 5, 6},
+    {3, 4, 5, 2, 1, 6}}, matches)
+
+  T.eq({{6, 3, 2, 1},
+            {6, 5, 4, 3}},
+           {dt.patienceLIS(unpack(matches))})
+
+  T.eq({nil, 3,   nil, 3  }, res.noc)
+  T.eq({nil, nil, 2  , nil}, res.rem)
+  T.eq({2,   nil, nil, nil}, res.add)
+
+  T.eq(
+"          1 slits\
+          2 gil\
+    1     3 david\
+    3     5 electric\
+    4       gil\
+    5       slits\
+    6     6 faust\
+    8     8 sonics\
+", fmt(res))
+end
+
+T.complex = function()
+  local linesA = ds.splitList'b c d e'
+  local linesB = ds.splitList'X c d X'
+
+  local matches = {uniqueMatches(linesA, linesB)}
+  T.eq({{2, 3}, {2, 3}}, matches)
+
+  local lis = {dt.patienceLIS(unpack(matches))}
+  T.eq({{3, 2}, {3, 2}}, lis)
+
+  local res = diff.Diff(linesA, linesB)
+  T.eq({1,   nil, 1  }, res.rem)
+  T.eq({1,   nil, 1  }, res.add)
+  T.eq({nil, 2  , nil}, res.noc)
+end
+
+--- Create base and build line tables from the diff.
+--- This is only really useful for asserting that the
+--- diff was correct
+local function rebuild(d) --> base, change
+  local b, c, base, chan = d.b, d.c, {}, {}
+  d:map(
+    function(bl, n, cl) -- nochange
+      for l=0,(n or 0)-1 do
+        local bline, cline = b[bl+l], c[cl+l]
+        assert(bline == cline)
+        push(base, bline); push(chan, cline)
+      end
+    end,
+    function(bl, r, cl, a) -- change
+      for l=0,(r or 0)-1 do push(base, b[bl+l]) end
+      for l=0,(a or 0)-1 do push(chan, c[cl+l]) end
+    end)
+  return b, c
+end
+
+local function checkDiff(d)
+  local b, c = rebuild(d)
+  T.eq(d.b, b)
+  T.eq(d.c, c)
+end
+
+local function assertDiff(expect, a, b)
+  local d = diff.Diff(lines(a), lines(b))
+  checkDiff(d)
+  if expect then T.eq(expect, fmt(d)) end
+  return d
+end
+
+local L = function(b, c) return sfmt('%5s %5s ', b or '', c or '') end
+T.smallDiffs = function()
+  assertDiff(L('',1)..'peasy\n'
+           ..L(1, 2)..'easy\n',
+    'easy',
+    'peasy\neasy')
+  assertDiff(L(1, 1)..'abc\n'
+           ..L(2, 2)..'123\n'
+           ..L('',3)..'456\n'
+           ..L('',4)..'\n',
+    'abc\n123',
+    'abc\n123\n456\n')
+end
+

--- /dev/null
+++ lib/lines/test_file.lua
@@ -0,0 +1,260 @@
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds = require'ds'
+local pth = require'ds.path'
+
+local T = require'civtest'
+local lines = require'lines'
+local testing = require'lines.testing'
+local U3File  = require'lines.U3File'
+local File    = require'lines.File'
+local EdFile  = require'lines.EdFile'
+local Gap     = require'lines.Gap'
+
+local push, icopy = table.insert, ds.icopy
+
+local TXT, IDX = '.out/lines.txt', '.out/lines.idx'
+local SMALL = ds.srcdir()..'testdata/small.txt'
+
+local loadu3s = function(f)
+  local pos, t = f:seek'cur', {}
+  assert(pos)
+  f:seek'set'
+  for u3 in f:lines(3) do push(t, (('>I3'):unpack(u3))) end
+  f:seek('set', pos) -- reset
+  return t
+end
+
+T.U3File = function()
+  local u = U3File:create()
+  u[1] = 11
+  u[2] = 22; u[3] = 33
+  T.eq(11, u[1])
+  T.eq(22, u[2])
+  T.eq(33, u[3]); T.eq(nil, rawget(u, 3))
+  T.eq({11, 22, 33}, loadu3s(u.f))
+  T.eq(11, u[1]) -- testing loadu3s
+  T.eq(3, #u)
+
+  u[2] = 20; T.eq({11, 20, 33}, loadu3s(u.f))
+  T.eq(20, u[2])
+  T.eq(33, u[3])
+
+  u[1] = 10; u[4] = 44; u[5] = 55
+  T.eq({10, 20, 33, 44, 55}, loadu3s(u.f))
+  T.eq(10, u[1])
+  T.eq(55, u[5])
+
+  local l = {}; for i, v in ipairs(u) do l[i] = v end
+  T.eq({10, 20, 33, 44, 55}, l)
+  T.eq(5, #u)
+
+  u = U3File:create(IDX)
+  ds.extend(u, {0, 3, 5, 7})
+  T.eq(0, u[1])
+  T.eq(7, u[4])
+end
+
+T.reindex = function()
+  local reindex = File._reindex
+  local idx, f = {}, io.tmpfile()
+  local txt = 'hi\nthere\nindex'
+  f:write(txt); f:flush(); f:seek'set'
+  T.eq(#txt, reindex(f, idx))
+    T.eq({0, 3, 9}, idx)
+
+  idx = {} f:write'\n'; f:flush(); f:seek'set'
+  T.eq(#txt + 1, reindex(f, idx))
+    T.eq({0, 3, 9, 15}, idx)
+
+  -- test indexing from a l,pos
+  idx = {0, 3}; f:seek('set', 9)
+  T.eq(#txt + 1, reindex(f, idx, 3, 9))
+    T.eq({0, 3, 9, 15}, idx)
+end
+
+T.File = function()
+  local f = assert(File()); f.cache = ds.Forget{}
+  T.eq('lines.File()', fmt(f))
+  T.eq(0, #f); T.eq({}, ds.icopy(f))
+
+  local dat = {'one', 'two', 'three'}
+  ds.extend(f, dat)
+    T.eq({0, 4, 8}, ds.icopy(f.idx))
+    T.eq('one',   f[1])
+    T.eq('three', f[3])
+    T.eq(dat, ds.icopy(f))
+
+  T.eq('one', f[1])
+  push(f, 'four'); push(dat, 'four')
+    T.eq(dat, ds.icopy(f))
+  T.eq(4, #f); T.eq('four', f[#f])
+
+  f:write': still in line four'; f:flush()
+  T.eq('four: still in line four',          f[4])
+  f:write' and this'
+  T.eq('four: still in line four and this', f[4])
+
+  T.eq('one\ntwo\nthree\n', pth.read(SMALL))
+  f = assert(File{path=SMALL}); f.cache = ds.Forget{}
+  T.eq({'one', 'two', 'three', ''}, ds.icopy(f))
+  T.eq('two', f[2])
+
+  f = File{path=TXT, mode='w+'}
+  f:write'line 1\nline 2\nline 3'
+  T.eq({0, 7, 14}, ds.icopy(f.idx))
+  T.eq({'line 1', 'line 2', 'line 3'}, ds.icopy(f))
+  f:flush()
+
+  local r = f:reader()
+  T.eq({'line 1', 'line 2', 'line 3'}, ds.icopy(r))
+end
+
+local function edEq(a, b)
+  T.eq(EdFile, getmetatable(a))
+  T.eq(EdFile, getmetatable(b))
+  T.eq(ds.icopy(a), ds.icopy(b))
+end
+
+T.EdFile_index = function()
+  local ef = mty.construct(EdFile, {lens={}, dats={
+    ds.Slc{si=1, ei=2},
+    ds.Slc{si=3, ei=6},
+  }})
+
+  -- test indexing logic itself
+  T.eq(1, ef:_datindex(1))
+  T.eq(1, ef:_datindex(2))
+  T.eq({2}, ef.lens)
+
+  T.eq(2, ef:_datindex(3))
+  T.eq({2, 6}, ef.lens)
+  T.eq(2, ef:_datindex(6))
+  T.eq(6, #ef)
+
+  ef.lens[2] = nil
+  T.eq(nil, ef:_datindex(7))
+  T.eq({2, 6}, ef.lens)
+  T.eq(nil, ef:_datindex(0))
+
+  -- test getting the index
+  ef.dats = {
+    {'one', 'two'},
+    {'three', 'four', 'five', 'six'},
+  }
+  ef.lens = {}
+  T.eq('one',   ef[1]); T.eq({2},    ef.lens)
+  T.eq('three', ef[3]); T.eq({2, 6}, ef.lens)
+  T.eq('six',   ef[6])
+  T.eq(6, #ef)
+end
+
+T.EdFile_newindex = function()
+  local S = function(si, ei) return ds.Slc{si=si, ei=ei} end
+  local ef = EdFile()
+  T.eq(0, #ef)
+  T.eq({S(1, 0)},    ef.dats)
+
+  push(ef, 'one')
+  T.eq({S(1,1)}, ef.dats)
+  T.eq({1},      ef.lens)
+  T.eq('one', ef[1])
+
+  push(ef, 'two')
+  T.eq({S(1,2)}, ef.dats)
+  T.eq({2}, ef.lens)
+  T.eq('one', ef[1])
+  T.eq('two', ef[2])
+
+  ef[1] = 'one 1'
+  T.eq({Gap'one 1', S(2,2)}, ef.dats)
+  T.eq({}, ef.lens)
+  T.eq({'one 1', 'two'}, icopy(ef))
+  T.eq({1, 2}, ef.lens); T.eq(2, #ef)
+end
+
+T.EdIter = function()
+  local ed = EdFile(SMALL)
+  local small = {'one', 'two', 'three', ''}
+  T.eq(small, ds.icopy(ed))
+
+  local ln, t = {}, {};
+  for i, line in ed:iter() do push(ln, i); push(t, line) end
+  T.eq({1, 2, 3, 4}, ln)
+  T.eq(small, t)
+end
+
+T.EdFile_write = function()
+  local ed = EdFile(TXT, 'w+')
+  ed:write'one\nthree\nfive'
+  ed:flush()
+  T.eq(3, #ed)
+  T.eq('one\nthree\nfive', pth.read(TXT))
+  T.eq({ds.Slc{si=1, ei=3}}, ed.dats)
+  ed:write' 5'
+  T.eq('five 5', ed[3])
+
+  ds.inset(ed, 2, {'two'})
+  local expect = {'one', 'two', 'three', 'five 5'}
+  T.eq(expect, ds.icopy(ed))
+  ds.inset(ed, 1, {'zero'})
+  T.eq({
+    'zero', 'one', 'two', 'three', 'five 5'
+  }, ds.icopy(ed))
+  T.eq({
+    Gap'zero',
+    ds.Slc{si=1, ei=1}, -- one
+    Gap'two',
+    ds.Slc{si=2, ei=3}, -- three\nfive 5
+  }, ed.dats)
+
+  ds.inset(ed, 1, {'zero 0', 'one 1'}, 2)
+  expect = {
+    'zero 0', 'one 1',
+    'two', 'three', 'five 5'
+  }
+  T.eq(expect, ds.icopy(ed))
+  T.eq({
+    Gap'zero 0\none 1\ntwo',
+    ds.Slc{si=2, ei=3}, -- three\nfive 5
+  }, ed.dats)
+  T.eq(5, #ed)
+  ed[1] = 'zero 0' -- same
+  T.eq(expect, ds.icopy(ed))
+end
+
+T.EdFile_big = function()
+  local ed = EdFile(TXT, 'w+')
+  for i=1,100 do push(ed, 'line '..i) end
+  T.eq(100, #ed)
+
+  T.eq(ed[3], 'line 3')
+  T.eq({ds.Slc{si=1, ei=100}}, ed.dats)
+
+  ed[3] = 'line 3.0'
+  T.eq(ed[2], 'line 2')
+  T.eq(ed[3], 'line 3.0')
+  T.eq(ed[4], 'line 4')
+
+  ds.inset(ed, 7, {'line 7.0', 'line 7.1', 'line 7.2'}, 1)
+  T.eq(ed[6], 'line 6')
+  T.eq(ed[7], 'line 7.0')
+  T.eq(ed[10], 'line 8')
+  T.eq(102, #ed)
+end
+
+local function newEdFile(text, ...)
+  local ed = EdFile()
+  if type(text) == 'string' then ed:write(text)
+  else ds.extend(ed, text) end
+  ed:flush()
+  return ed
+end
+
+T.EdFile_linesOffset = function()
+  testing.testOffset(newEdFile(testing.DATA.offset))
+end
+
+T.EdFile_linesRemove = function()
+  testing.testLinesRemove(newEdFile, edEq, ds.noop)
+end

--- /dev/null
+++ lib/lines/test_motion.lua
@@ -0,0 +1,71 @@
+METATY_CHECK = true
+
+local mty = require'metaty'
+local ds  = require'ds'
+local T = require'civtest'
+
+local decDistance, lcLe, lcGe, lcWithin
+local forword, backword, findBack
+local wordKind
+ds.auto'lines.motion'
+
+T.distance = function()
+  T.eq(3, decDistance(1, 4))
+  T.eq(2, decDistance(5, 1))
+  T.eq(5, decDistance(5, 5))
+end
+
+T.lc = function()
+  assert(    lcLe(1,1,   1,3))
+  assert(    lcLe(1,2,   1,3))
+  assert(    lcLe(1,3,   1,3))
+  assert(not lcLe(1,4,   1,3))
+
+  assert(not lcGe(1,1,   1,3))
+  assert(not lcGe(1,2,   1,3))
+  assert(    lcGe(1,3,   1,3))
+  assert(    lcGe(1,4,   1,3))
+
+  assert(not lcWithin(1, 0,   1, 1,   1, 5))
+  assert(    lcWithin(1, 1,   1, 1,   1, 5))
+  assert(    lcWithin(1, 3,   1, 1,   1, 5))
+  assert(    lcWithin(1, 5,   1, 1,   1, 5))
+  assert(not lcWithin(1, 6,   1, 1,   1, 5))
+  assert(not lcWithin(2, 3,   1, 1,   1, 5))
+
+  assert(not lcWithin(1, 1,  1, 4,   3, 3))
+  assert(not lcWithin(1, 3,  1, 4,   3, 3))
+  assert(    lcWithin(1, 4,  1, 4,   3, 3))
+  assert(    lcWithin(2, 4,  1, 4,   3, 3))
+  assert(    lcWithin(3, 1,  1, 4,   3, 3))
+  assert(    lcWithin(3, 3,  1, 4,   3, 3))
+  assert(not lcWithin(3, 4,  1, 4,   3, 3))
+  assert(not lcWithin(4, 1,  1, 4,   3, 3))
+end
+
+T.wordKind = function()
+  T.eq('let', wordKind('a'))
+  T.eq('()',  wordKind('('))
+  T.eq('()',  wordKind(')'))
+  T.eq('sym', wordKind('+'))
+end
+
+T.forword = function()
+  T.eq(3, forword('a bcd'))
+  T.eq(3, forword('  bcd'))
+  T.eq(2, forword(' bcd'))
+  T.eq(3, forword('--bcd'))
+  T.eq(2, forword('a+ bcd'))
+  T.eq(5, forword('+12 +de', 2))
+end
+
+T.backword = function()
+  T.eq(3,   backword('a bcd', 4))
+  T.eq(3,   backword('  bcd', 4))
+  T.eq(nil, backword('  bcd', 3))
+end
+
+T.findBack = function()
+  T.eq({7, 8},   {findBack('12 45 12 ', '12')})
+  T.eq({1, 2},   {findBack('12 45 12 ', '12', 6)})
+end

--- /dev/null
+++ lib/lines/testdata/small.txt
@@ -0,0 +1,3 @@
+one
+two
+three

--- /dev/null
+++ lib/lson/PKG.lua
@@ -0,0 +1,15 @@
+name     = 'lson'
+version  = '0.1-0'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "JSON+ de/serializer in pure lua"
+homepage = "https://lua.civboot.org#Package_lson"
+license  = "UNLICENSE"
+doc      = 'README.cxt'
+deps = {
+  "lua    ~> 5.3",
+  "metaty ~> 0.1",
+  "ds     ~> 0.1",
+}
+srcs = {
+  'lson.lua'
+}

--- /dev/null
+++ lib/lson/README.cxt
@@ -0,0 +1,31 @@
+JSON+ de/serializer in pure lua
+
+This folder defines an LSON spec and an example public domain pure-lua
+implementation of LSON/JSON encoder and decoder.
+
+[{h3}Lua Library]
+lson is a pure-lua JSON+ de/serialization library. The main functions are
+the encoding functions [$json()] and [$lson()] and the  [$decode()] function
+(which decodes either encoder's output).
+
+See also the types [<#lson.Json>], [<#lson.Lson>] and [<#lson.Decoder>] and
+their documentation to have more control of the usage, including pretty printing
+and a decoding iterator.
+
+["Note: If you want highly performant or compliant JSON library then use a
+  different one. This library is part of the civlua project and is optimized for
+  simplicy and improved features.]
+
+[{h3 name=lson-spec}LSON spec]
+LSON is a strict superset of JSON: all valid JSON is valid LSON but not vice
+versa. The difference is: [+
+* LSON ignores commas (it treats them as whitespace). List and map entries can
+  be separated by any whitespace (including commas). This makes it easier for
+  a human to write and vcs to diff.
+
+* LSON adds binary syntax for bytes [$|any binary data|]. The data within
+* [$|...|] is arbitrary bytes except the following will be converted:
+  [$\\ -> \   \| -> |    \n -> newline]
+  Other "escapes" are preserved, i.e. [$\d -> \d]. This makes encoding binary
+  data in LSON MUCH more compact (and possible) than JSON.
+]

--- /dev/null
+++ lib/lson/lson.lua
@@ -0,0 +1,271 @@
+
+local M = mod and mod'lson' or {}
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds = require'ds'
+local log = require'ds.log'
+local pod = require'pod'
+
+local empty = ds.empty
+local push, concat = table.insert, table.concat
+local sfmt, rep = string.format, string.rep
+local sortKeys = fmt.sortKeys
+local toPod, fromPod = pod.toPod, pod.fromPod
+local Json, Lson, De
+local none = ds.none
+
+--- classify none as pod
+local podSet = pod.Pod{
+  mtPodFn=function(v, mt) return v == none end
+}
+
+--------------------
+-- Main Public API
+
+--- Encode lua value to JSON string
+M.json = function(v, pretty) --> string
+  local enc = pretty and Json:pretty{} or Json{}
+  return concat(enc(v))
+end
+
+--- Encode lua value to LSON string
+M.lson = function(v, pretty) --> string
+  local enc = pretty and Lson:pretty{} or Lson{}
+  return concat(enc(v))
+end
+
+-- Decode JSON/LSON string to lua value
+M.decode = function(s, podder, pset) return De(s)(podder, pset) end --> obj
+
+------------------
+-- JSON Encoder
+
+--- Json Encoder (via fmt.Fmt)
+--- This works identically to metaty.Fmt except it overrides
+--- how tables are formatted to use JSON instead of printing them.
+M.Json = mty.extend(fmt.Fmt, 'Json', {
+  'null [any]: value to use for null', null=none,
+  'listStart [string]', listStart = '[',
+  'listEnd [string]',   listEnd   = ']',
+  indexEnd = ',',  keyEnd = ',',
+  keySet   = ':',
+})
+M.Json.pretty = function(E, t)
+  t.listStart = t.listStart or '[\n'
+  t.listEnd   = t.listEnd   or '\n]'
+  t.keySet    = t.keySet    or ': '
+  return fmt.Fmt.pretty(E, t)
+end
+
+---- note: [$%q] formats ALL newlines with a [$'\'] in front of them
+---- it also uses [$\9] instead of [$\t] for some strange reason, fix that
+local CTRL_SUB = {
+  ['\\\n'] = '\\n', ['\\9'] = '\\t',
+  ['\n'] = true, -- "invalid replacement value" but unreachable
+}
+M.Json.string = function(enc, s)
+  enc:write( (sfmt('%q', s):gsub('\\?[\n9]', CTRL_SUB)) )
+end
+M.Json.table = function(f, t)
+  if rawequal(t, f.null) then return f:write'null' end
+  if f._level >= f.maxIndent then error'max depth reached (recursion?)' end
+  local keys = sortKeys(t)
+  f:level(1)
+  if #keys == 0 then
+    f:write((#t > 1) and f.listStart or '[')
+    f:items(t, next(keys)); f:level(-1)
+    f:write((#t > 1) and f.listEnd   or ']')
+  else -- has non-list keys
+    for i in ipairs(t) do push(keys, i) end
+    f:write((#keys > 1) and f.tableStart or '{')
+    f:keyvals(t, keys); f:level(-1)
+    f:write((#keys > 1) and f.tableEnd or '}')
+  end
+end
+M.Json.__call = function(f, v, podder, pod)
+  log.trace('Json.__call %q', v)
+  if v ~= none then
+    v = toPod(v, podder, pod or podSet)
+  end
+  f[type(v)](f, v); return f
+end
+M.Json.tableKey = M.Json.__call
+
+-------------------------------
+-- LSON
+
+local ENC_BYTES = {
+  ['\n'] = '\\n', ['|'] = [[\|]], ['\\'] = '\\',
+  n='n',
+}
+--- Implementation: basically we need convert newline -> \n
+--- and | -> \|. The decoder treats \x (where x is not n or |)
+--- as the literal \x, so we also replace \n -> \\n and \| -> \\\|
+local function mbytes(backs, esc)
+  return rep('\\', #backs * 2)..ENC_BYTES[esc]
+end
+-- encode as |bytes| instead of "string" for lson
+-- You can set Enc.string = lson.bytes for this behavior
+M.bytes = function(f, s)
+  f:write('|', s:gsub('(\\*)([\\\n|n])', mbytes), '|')
+end
+
+--- Similar to JSON but no commas and strings are encoded as [$|bytes|]
+M.Lson = mty.extend(M.Json, 'Lson', {
+  indexEnd = ' ', keyEnd=' ',
+})
+M.Lson.string = M.bytes
+M.Lson.pretty = function(E, t)
+  t.listStart = t.listStart or '[\n'
+  t.listEnd   = t.listEnd   or '\n]'
+  t.indexEnd  = t.indexEnd  or '\n'
+  t.keyEnd    = t.keyEnd    or '\n'
+  t.keySet    = t.keySet    or ': '
+  return fmt.Fmt.pretty(E, t)
+end
+
+-------------------------------
+-- Decoder
+local eval = function(s) return load('return '..s, nil, 't', empty) end
+
+M.deNull  = function(de) de:consume'^null';  return de.null end
+M.deTrue  = function(de) de:consume'^true';  return true    end
+M.deFalse = function(de) de:consume'^false'; return false   end
+M.deNumber = function(de)
+  local str = de:consume'^[^%s:,%]}]+'
+  local n = de:assert(eval(str))()
+  assert(type(n) == 'number')
+  return n
+end
+M.deString = function(de)
+  local c, line, q1, c2 = de.c + 1, de.line
+  while true do
+    q1, c2 = line:find('\\*"', c)
+    if not q1 then de:error[[no matching '"' found]] end
+    if (c2 - q1) % 2 == 0 then break end -- len of escapes before quote
+    c = c2 + 1
+  end
+  local s = de:assert(eval(line:sub(de.c, c2)))()
+  de.c = c2 + 1
+  return s
+end
+local DE_BYTES = {
+  ['\\\n'] = '\\\n', ['\\n'] = '\n',
+  ['\\|']  = '|',    ['\\']  = '\\', ['\\\\'] = '\\',
+}
+M.deBytes = function(de) -- |binary data|
+  local b, l, c, line = {}, de.l, de.c + 1, de.line
+  local c1, c2 = c
+  while true do
+    while c <= #line do
+      c1, c2 = line:find('\\*|', c1); if c1 then
+        if (c2 - c1) % 2 == 0 then
+          push(b, line:sub(c, c2-1))
+          c = c2 + 1
+          goto done
+        else c1 = c2 + 1 end
+      else break end -- no | detected, next line
+    end
+    push(b, line:sub(c)); push(b, '\n')
+    l, c = d.l + 1, 1
+    line = d.dat[l]; if not line then error(sfmt(
+      "%s.%s: '|' never closed (reached EOF)", de.l, de.c
+    ))end
+  end
+  ::done::
+  de.l, de.c, de.line = l, c, line
+  return concat(b):gsub('\\[\nn|\\]?', DE_BYTES)
+end
+M.deArray = function(de)
+  de.c = de.c + 1
+  local arr, value, line, c = {}
+  while true do
+    ::cont::
+    de:skipWs(); line, c = de.line, de.c
+    if line:find('^%]', c) then break end
+    push(arr, de())
+  end
+  de.c = de.c + 1
+  return arr
+end
+M.deObject = function(de)
+  de.c = de.c + 1
+  local obj, key, val, line, c = {}
+  while true do
+    ::cont::
+    de:skipWs(); line, c = de.line, de.c
+    if line:find('^,', c) then de.c = de.c + 1; goto cont end
+    if line:find('^}', c) then break end
+    key = de(); de:assert(key ~= nil, 'expected key')
+    de:skipWs(); de:consume'^:'; de:skipWs()
+    val = de(); de:assert(val ~= nil, 'expected value')
+    obj[key] = val
+  end
+  de.c = de.c + 1
+  return obj
+end
+
+--- starting characters indicating what to parse
+local DE_FNS = {
+  n=M.deNull, t=M.deTrue, f=M.deFalse, ['-'] = M.deNumber,
+  ['"']=M.deString, ['|']=M.deBytes,
+  ['{']=M.deObject, ['[']=M.deArray,
+}; for c=string.byte'0',string.byte'9' do
+  DE_FNS[string.char(c)] = M.deNumber
+end
+
+--- [$De(string or lines) -> value-iter]
+--- [$for val in De'["my", "lson"]' do ... end]
+M.De = mty'De' {
+  'dat [lines]: lines-like data to parse',
+  'null [any]: value to use for null', null=none,
+
+  -- mostly internal
+  'l [int]', 'c [int]', 'line [string]',
+}
+getmetatable(M.De).__call = function(T, dat)
+  if type(dat) == 'string' then dat = {dat} end
+  return mty.construct(T, {dat=dat, l=1, c=1, line=dat[1]})
+end
+
+M.De.assert = function(de, ok, msg)
+  return ok or error(sfmt('%s.%s: %s', de.l, de.c, msg))
+end
+M.De.skipWs  = function(de, eofOkay)
+  local l, c, line, dat = de.l, de.c, de.line, de.dat
+  while true do
+    while c > #line do
+      l, c, line = l+1, 1, dat[l+1]
+      if not line then
+        de:assert(eofOkay, 'unexpected end of file')
+        goto done
+      end
+    end
+    c = line:find('[^%s,]', c); if c then break end
+    l, c, line = l + 1, 1, dat[l+1]
+  end
+  ::done::
+  de.l, de.c, de.line = l, c, line
+end
+-- consume the pattern returning the consumed string
+M.De.consume = function(de, pat, context)
+  local line = de.line
+  local c1, c2 = line:find(pat, de.c)
+  if not c1 then error(sfmt(
+    '%s.%s: missing %s %q', de.l, de.c,
+    context or 'pattern', pat:gsub('[%^%%]', '')
+  ))end
+  de.c = c2 + 1
+  return line:sub(c1, c2)
+end
+M.De.__call = function(de, podder, pset)
+  de:skipWs(true)
+  local l, c = de.l, de.c
+  if l > #de.dat then return end
+  local fn = DE_FNS[de.line:sub(c, c)] or error(sfmt(
+    'unrecognized character: %q', de.line:sub(c,c)))
+  return fromPod(fn(de), podder, pset or podSet)
+end
+
+Json, Lson, De = M.Json, M.Lson, M.De -- locals
+return M

--- /dev/null
+++ lib/lson/test.lua
@@ -0,0 +1,107 @@
+
+local T = require'civtest'
+local M = require'lson'
+local mty = require'metaty'
+local ds  = require'ds'
+local pod = require'pod'
+local lines = require'lines'
+
+local Tm = mod'Tm'
+
+local function testString(encoded, decoded)
+  local de = mty.construct(M.De, {l=1, c=1, line=encoded})
+  T.eq(decoded, M.deString(de))
+end
+T.string = function()
+  testString([["example string"]],     [[example string]])
+  testString([["example \"string\""]], [[example "string"]])
+end
+
+T.skipWs = function()
+  local de = M.De(lines'  a\n  b')
+  de:skipWs(); T.eq('a', de.line:sub(de.c,de.c))
+  de.c = de.c + 1
+  de:skipWs(); T.eq('b', de.line:sub(de.c,de.c))
+end
+
+local function ltest(t, enc, expectEncoding, P)
+  enc = enc or M.Json{}
+  enc(t, P)
+  local encoded = table.concat(enc)
+  if expectEncoding then
+    T.eq(expectEncoding, encoded)
+  end
+  local de = M.De(lines(encoded))
+  print(encoded)
+  local decoded = de(P)
+  T.eq(t, decoded)
+  return enc, de
+end
+
+T.lax = function()
+  T.eq({1, 2},   M.decode'[1 2]')
+  T.eq({a=2, 1}, M.decode'{1:1 "a":2}')
+  T.throws('1.4: missing pattern ":"',
+    function() M.decode'{1 "a":2}' end)
+end
+
+T.bytes = function()
+  T.eq('abc',     M.decode '|abc|')
+  T.eq('a\nc',    M.decode '|a\\nc|')
+  T.eq('a\\nc',   M.decode[[|a\\nc|]])
+  T.eq('a\\nc |', M.decode[[|a\\nc \||  ]])
+end
+
+T.round = function()
+  local L = M.Lson
+  ltest({1, 2, 3},      nil,  '[1,2,3]')
+  ltest({1, 2, 3},      L{},  '[1 2 3]')
+
+  ltest({1, a=2},       nil,  '{"a":2,1:1}')
+  ltest({1, a=2},       L{},  '{|a|:2 1:1}')
+
+  ltest({1, a={3,4}},   nil,  '{"a":[3,4],1:1}')
+  ltest({1, a={3,4}},   L{},  '{|a|:[3 4] 1:1}')
+
+  ltest({1, a={b=3,4}}, nil,  '{"a":{"b":3,1:4},1:1}')
+  ltest('abc',          nil,  '"abc"')
+  ltest('abc',          L{},  '|abc|')
+
+  ltest('hi\n\there',   nil,  '"hi\\n\\there"')
+  ltest('hi\n\there',   L{},  '|hi\\n\there|')
+
+  ltest('hi\\th|ere',    nil,  [["hi\\th|ere"]])
+  ltest('hi\\th|ere',    L{},  [[|hi\th\|ere|]])
+
+  ltest('hello "happy bob"', nil,  [["hello \"happy bob\""]])
+  ltest('hello "happy bob"', L{},  [[|hello "happy bob"|]])
+
+  ltest([[\p \s]],    nil, [["\\p \\s"]])
+  ltest([[\p \s \n]], L{}, [[|\p \s \\n|]])
+
+  ltest(true,              nil,  'true')
+  ltest(ds.none,           nil,  'null')
+  ltest({[ds.none]=false}, nil, '{null:false}')
+end
+
+T.lson_pod = function()
+  Tm.A = mty'A' { 'a1 [builtin]', 'a2 [Tm.A]' }
+  pod(Tm.A)
+  local a = Tm.A{ a1='hi'}
+  ltest(a, nil, [[{"a1":"hi"}]], Tm.A)
+  a = Tm.A{a1={key='bye'}}
+  ltest(a, nil, [[{"a1":{"key":"bye"}}]], Tm.A)
+  ltest({
+      a=Tm.A{a1='a1value'}
+    }, nil,
+    [[{"a":{"a1":"a1value"}}]],
+    pod.Map{K=pod.str, V=Tm.A})
+end
+
+T.lson_run_testing_pod = function()
+  local tp = require'pod.testing'
+  local encLson = function(v, P) return table.concat(Lson{}(v, P)) end
+  local encJson = function(v, P) return table.concat(Json{}(v, P)) end
+  tp.testAll(M.lson, M.decode)
+  tp.testAll(M.json, M.decode)
+end

--- /dev/null
+++ lib/luck/PKG.lua
@@ -0,0 +1,14 @@
+name    = 'luck'
+version = '0.1-0'
+url     = 'git+http://github.com/civboot/civlua'
+homepage = "https://lua.civboot.org#Package_luck"
+srcs = { 'luck.lua' }
+doc = 'README.cxt'
+deps = {
+  "lua     ~> 5.3",
+  "pkg     ~> 0.1",
+  "metaty  ~> 0.1",
+  "ds      ~> 0.1",
+  "pegl    ~> 0.1",
+}
+

--- /dev/null
+++ lib/luck/README.cxt
@@ -0,0 +1,77 @@
+Luck: Lua Configuration Language It's syntax and execution is literally Lua,
+but with it's [$_ENV] (it's accessible global variables) stripped to only a
+few safe and deterministic modules and functions.
+
+The values it exports are it's globals. For instance: [{## lang=lua}
+name    = "Rett Berg"
+date    = "2023-12-20"
+version = {1, 2, 3},
+project = {
+  name = "Civboot",
+  url = "civboot.org",
+}
+]##
+
+Is equivalent to the JSON [{## lang=json}
+{
+  "name": "Rett Berg",
+  "date": "2023-12-20",
+  "version": [1, 2, 3],
+  "project": {
+    "name": "Civboot",
+    "url": "civboot.org",
+  }
+}
+]##
+
+Unlike JSON, Luck supports everything Lua supports, including: [+
+* precomputing local values
+* referencing local and global values
+* defining and calling functions
+* [<#Dependencies>dependencies]
+]
+
+[{h2}API]
+
+The available functions are (TODO: give linked table instead):
+
+[{## lang=lua}
+luck=luck,
+sfmt=string.format, push=table.insert,
+
+string=string, table=table,   utf8=utf8,
+type=type,     select=select,
+pairs=pairs,   ipairs=ipairs, next=next,
+error=error,   assert=assert,
+
+tonumber=tonumber,
+abs=math.abs, ceil=math.ceil, floor=math.floor,
+max=math.max, min=math.min,
+maxinteger=math.maxinteger,
+]##
+
+[{h2}Dependencies]
+
+The first symbol of a luck file CAN be a call to the [$meta] function
+which specifies the package name and any dependencies.
+
+The build system (which can simply be a Lua script which calls
+[$luck.loadall]) must give the paths to all needed luck files. It will
+then load only the leading [$meta] call to build the dependency graph
+before loading the entire tree in the correct order.
+
+When executed, each luck file will receive a clone of its dependency's values
+assigned to the keys it specifies.
+
+[{## lang=lua}
+meta {
+  'my.pkg.name',           -- package name
+  dep1 = 'some.pkg.name',  -- a dependency
+  dep2 = 'other.pkg.name', -- another dependnecy
+}
+
+-- export value
+value1 = dep1.someFunction(dep1.someValue, dep2.otherValue * 3)
+]##
+
+[{!:href=http://lua.org}Lua]

--- /dev/null
+++ lib/luck/luck.lua
@@ -0,0 +1,135 @@
+local G = G or _G
+
+--- luck: lua configuration language
+local M = G.mod and G.mod'luck' or {}
+
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds, lines  = require'ds', require'lines'
+local LFile = require'lines.File'
+local pegl = require'pegl'
+local lua = require'pegl.lua'
+
+local sfmt, push = string.format, table.insert
+
+M.LUCK = {
+  meta = function() end,
+  sfmt=sfmt, push=push,
+
+  string=string, table=table, utf8=utf8,
+  type=type,   select=select,
+  pairs=pairs, ipairs=ipairs, next=next,
+  error=error, assert=assert,
+
+  -- Note: cannot include math because of random
+  abs=math.abs, ceil=math.ceil, floor=math.floor,
+  max=math.max, min=math.min,
+  maxinteger=math.maxinteger, tonumber=tonumber,
+}
+M.LUCK.__index = function(e, i) return M.LUCK[i] end
+
+M.createEnv = function(env)
+  env.__index = function(e, i) return env[i] end
+  setmetatable(env, M.LUCK)
+  return env
+end
+
+M.loadraw = function(dat, env, path)
+  local res = setmetatable({}, env and M.createEnv(env) or M.LUCK)
+  ds.check(2, load(ds.lineschunk(dat), path, 'bt', res))()
+  setmetatable(res, nil)
+  return res
+end
+
+M.loadMeta = function(dat, path)
+  local r = ds.copy(lua.root)
+  local p = pegl.Parser:new(dat, r)
+  local name = p:parse(lua.name)
+  if not name or p:tokenStr(name) ~= 'meta' then return end
+  local meta = p:parse(lua.call); if not meta then return end
+  local metaDat = {'return'}
+  local ok, res = ds.eval(
+    'return '..lines.sub(dat, pegl.nodeSpan(meta)),
+    {}, 'luck metadata of '..path)
+  fmt.assertf(ok, 'Failed to load luck metadata: %s\nError:%s', path, meta)
+  return res
+end
+
+M.Luck = mty'Luck' {
+  'name[string]',
+  'deps', 'dat', 'path',
+}
+
+--- internal "luck" variants of error/assertf
+local function lerror(l, msg) error(sfmt('ERROR %s\n%s', l.path, msg)) end
+local function lassertf(chk, l, fmt, ...)
+  if not chk then lerror(l, sfmt(fmt, ...)) end
+end
+
+M.Luck.fromMeta = function(T, meta, dat, path)
+  local l = meta; l.dat, l.path = dat, path
+  lassertf(not (l.name and l[1]), l, "name provided as both position and key")
+  l.name = l.name or l[1]; l[1] = nil
+  lassertf(l.name, 'must have a name')
+  l.deps = l.deps or {}
+  for k, v in pairs(l.deps) do
+    lassertf(type(k) == 'string', l, 'dep name %s is not a string', k)
+    lassertf(type(v) == 'string', l, 'value of dep %q is not a string', k)
+  end
+  return mty.construct(T, l)
+end
+
+M.loadMetas = function(paths)
+  local lucks = {}
+  for _, path in ipairs(paths) do
+    local dat = assert(LFile{path=path})
+    local l = M.loadMeta(dat, path) or {}
+    l = M.Luck:fromMeta(l, dat, path)
+    if lucks[l.name] then
+      lerror(l, sfmt('name %s also used at %s (or path is repeated)',
+                l.name, lucks[l.name].path))
+    end
+    lucks[l.name] = l
+  end
+  return lucks
+end
+
+M.loadall = function(paths, allenv) --> built, lucks, sorted
+  allenv = allenv or {}
+  local lucks = M.loadMetas(paths)
+  local depsMap = {}
+  for n, l in pairs(lucks) do depsMap[n] = ds.values(l.deps) end
+  local missing = ds.dag.missing(depsMap)
+  if not ds.isEmpty(missing) then error(
+    'Unknown dependencies: '..fmt(missing)
+  )end
+  local sorted = ds.dag.sort(depsMap)
+  local built = {}
+  for _, name in ipairs(sorted) do
+    local env, l = ds.copy(allenv), lucks[name]
+    if not l then error(fmt.format(
+      'Cyclic dependency detected involving %q. Sorted: %q',
+      name, sorted
+    ))end
+    for localName, depName in pairs(l.deps) do
+      local dep = built[depName]
+      if not dep then error(fmt.format(
+        'Cyclic dependency detected involving %q and %q. Sorted: %q',
+        name, depName, sorted
+      ))end
+      env[localName] = ds.deepcopy(dep)
+    end
+    built[name] = assert(M.loadraw(l.dat, env))
+  end
+  return built, lucks, sorted
+end
+
+--- Load a single path which has no dependencies.
+M.load = function(path, env) --> table
+  local dat = assert(LFile{path=path})
+  local meta = M.loadMeta(dat, path)
+  assert(not meta or not meta.deps, 'single must have no deps')
+  return assert(M.loadraw(dat, env))
+end
+
+return M

--- /dev/null
+++ lib/luck/test.lua
@@ -0,0 +1,58 @@
+METATY_CHECK = true
+local mty = require'metaty'
+local ds = require'ds'
+local T = require'civtest'
+local LFile = require'lines.File'
+local M = require'luck'
+local D = 'lib/luck/'
+
+T.meta = function()
+  local path = D..'testdata/small.luck'
+  local f = assert(LFile{path=path}); f.cache = ds.Forget{}
+  local meta = M.loadMeta(f, path)
+  T.eq({'small'}, meta)
+  f:close()
+
+  local path = D..'testdata/withdeps.luck'
+  local f = assert(LFile{path=path}); f.cache = ds.Forget{}
+  local meta = M.loadMeta(f, path)
+  T.eq({
+    'test.withdeps',
+    deps = {
+      vals = 'test.vals',
+      small = 'small',
+    }
+  }, meta)
+  f:close()
+end
+
+T.load = function()
+  local smallPath = D..'testdata/small.luck'
+  local valsPath  = D..'testdata/vals.luck'
+  local res = M.load(smallPath)
+  local small = {i=8, s="hello", t={1, 2, v=3}}
+  T.eq(small, res)
+
+  local res = M.loadall{D..'testdata/small.luck'}
+  T.eq({small=small}, res)
+
+  local resVals = M.load(valsPath)
+  local vals = {val1 = 'first val', val2 = 222, val3 = 7}
+  T.eq(vals, resVals)
+
+  local withDeps = M.loadall{
+    D..'testdata/withdeps.luck',
+    smallPath, valsPath,
+  }
+  T.eq({
+    small=small,
+    ['test.vals'] = vals,
+    ['test.withdeps'] = {
+      gotVal1="got: first val",
+      modVal1="only modified here, not test.vals",
+      small = small,
+      val2Plus3 = 229,
+    }
+  }, withDeps)
+end
+

--- /dev/null
+++ lib/luck/testdata/small.luck
@@ -0,0 +1,5 @@
+meta { 'small' }
+
+i = 8
+s = "hello"
+t = {1, 2, v=3}

--- /dev/null
+++ lib/luck/testdata/vals.luck
@@ -0,0 +1,5 @@
+meta { 'test.vals' }
+
+val1 = 'first val'
+val2 = 222
+val3 = 7

--- /dev/null
+++ lib/luck/testdata/withdeps.luck
@@ -0,0 +1,16 @@
+-- this is a luck file with metadata
+
+meta {
+  'test.withdeps',
+  deps = {
+    vals = 'test.vals',
+    small = 'small',
+  }
+}
+
+gotVal1   = 'got: '..vals.val1
+val2Plus3 = vals.val2 + vals.val3
+small = small -- rexport
+
+vals.val1 = "only modified here, not test.vals"
+modVal1 = vals.val1

--- /dev/null
+++ lib/metaty/Makefile
@@ -0,0 +1,38 @@
+# Copy/pastable Makefile for Lua C sources.
+
+# Modify these for a new library
+NAME  = metaty
+FILES = $(NAME).c
+OUT   = $(NAME)
+LUA_VERSION = lua
+
+UNAME != uname
+build:  $(UNAME)
+NetBSD: $(OUT).so
+Linux:  $(OUT).so
+Darwin: $(OUT).so
+# Windows: $(OUT).dll
+
+WNO = -Wno-incompatible-function-pointer-types
+
+debug:
+	echo uname=$(UNAME)
+	echo out=$(OUT)
+
+$(OUT).so: $(FILES)
+	make Build$(UNAME)
+
+BuildNetBSD:
+	$(CC) $(FILES) -fPIC -llua -I/usr/pkg/include/$(LUA_VERSION) -shared -o $(OUT).so
+
+BuildLinux:
+	$(CC) $(FILES) -fPIC -l$(LUA_VERSION) -I/usr/include/$(LUA_VERSION) -shared -o $(OUT).so
+
+BuildDarwin:
+	$(CC) $(FILES) $(shell pkg-config lua --cflags) -c -O2 -fPIC $(WNO)
+	$(CC) $(OUT).o -bundle -undefined dynamic_lookup -all_load     -o $(OUT).so
+
+# BuildWindows: TODO
+
+clean:
+	rm -f $(OUT).o $(OUT).so $(OUT).dll smol_test

--- /dev/null
+++ lib/metaty/PKG.lua
@@ -0,0 +1,17 @@
+name     = 'metaty'
+version  = '0.1-15'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "Simple but effective Lua type system using metatables"
+homepage = "https://lua.civboot.org#Package_metaty"
+license  = "UNLICENSE"
+doc      = 'README.cxt'
+deps = {
+  "lua ~> 5.3",
+}
+srcs = {
+  'metaty.lua',
+  ['metaty.native'] = 'metaty.c',
+}
+libs = {
+  ['metaty.native'] = 'metaty.so',
+}

--- /dev/null
+++ lib/metaty/README.cxt
@@ -0,0 +1,113 @@
+simple but effective Lua type system using metatables
+
+Metatype is a library and specification for creating performant, documented, and
+typo-safe Lua record-types which can be formatted.
+
+[" Turn on typo checking by setting the global [$METATY_CHECK=true] before
+   requiring any modules that require metaty.]
+
+[{## lang=lua}
+local G = G or _G
+--- module documentation
+local M = G.mod and mod'myMod' or {} -- (see pkg)
+
+local mty = require'metaty'
+
+-- Documentation for Pos (position)
+M.Pos = mty'Pos' {
+  'x[int]: x coordinate',
+  'y[int]: y coordinate', y = 0,
+}
+
+local p1 = Pos{x=4}
+local p1 = Pos{x=4, y=3, z=5} -- error if checking turned on
+]##
+
+The above expands to the following. Note that the "typosafe" elements
+are removed when [$not METATY_CHECK] [{## lang=lua}
+local M = {}
+local metaty = require'metaty'
+
+local Pos = setmetatable({
+  __name='Pos',
+  y = 0,
+  -- used with metaty.Fmt and help()
+  __fields={'x', 'y', x='[int]', y='[int]'},
+  __newindex = metaty.newindex, -- typosafe setting
+}, {
+  __call = function(T, t)
+    metaty.fieldsCheck(T.__fields, t) -- typosafe constructor
+    return setmetatable(t, T)
+  end,
+  __index = metaty.index, -- typosafe getting
+})
+Pos.__index = Pos
+
+-- `mod` gives documentation reflection
+PKG_LOCS[M.myFn]         = 'path/to/file.lua:123'
+PKG_NAMES[M.myFn]        = 'mymod.Pos'
+PKG_LOOKUP['myMod.Pos'] = M.Pos
+]##
+
+[{h3 name=metaty-API}API] [+
+* [$ty(v)] return the metaty of [$v]. For tables this is [$getmetatable(v)],
+  else it is [$type(v)].
+* [$metaty'name' {'field1[type] documentation', 'field2[type]'}]
+  creates a documented and typo-safe record type (see examples) [+
+    * the [$[type]] field can also be in the form [${type}] for a list
+      of the type or [${string: type}] for a map of the type.
+    * [$@<decimal>] (i.e. [$@2]) can be put after the type to specify the
+      decimal value to use for the field when de/serializing.
+
+      It is recommended that once you assign a field to a decimal value to
+      never change it if there is any chance it is stored or being used
+      by an RPC service/etc with the previous version.
+  ]
+]
+
+See also: [<#Package_fmt>]
+
+[{h3 name=metaty-why}Why?]
+
+Lua is a fast and fun language. However it often lacks the ability to express
+intent when it comes to the structure of data. Also, not only is it not
+type-safe but it is also TYPO-unsafe -- small mistakes in the name of a field
+can easily result in hard to diagnose bugs, even when they occur in one's
+unit-test suite.
+
+Checking for typos incurrs a small performance cost, so it is disabled by
+default. However, it is well-worth the cost in your unit tests.
+
+[{h3 name=metaty-spec}Spec]
+For a type to be considered a "metaty" the only requirement is that it has a
+metatable set and that metatable has a [$__name] field.
+
+The following fields can optionally be set on the metatable: [+
+* [$__fmt]: used with [<#Package_fmt>]
+* [$__fields]: should contain a table of [$fieldName -> fieldtype].
+  [$fieldType] can be an arbitrary string and is only for documentation, though
+  future libraries/applications (type checkers) may eventually wish to consume
+  it. [$metaty] (the library) uses the format [$"fieldName [user-specified-type]"] [+
+  * This is used by formatting libraries when printing the types (so the fields
+    are printed in deterministic order).
+  ]
+* default values (i.e. [$y] in the example) are assigned directly to the type.
+  Documentation formatters may use these to format help messages.
+* [$__fieldIds]: set using the [$@<decimal>] syntax after the type, used
+  for de/serializing.
+]
+
+In addition, there is runtime type specification defined below.
+
+[{h3 name=metaty-typoe-check}Runtime typo checking (optional)]
+["Note: Runtime typo checking has a cost and so is [*optional]
+  (default=false)]
+
+To enable runtime checking set the global value [$METATY_CHECK = true] at the
+top of your application or test file (before executing ANY [$require] calls).
+
+You can override the typo-checking behavior of a single type with [{## lang=lua}
+getmetatable(MyType).__call  = myConstructor
+getmetatable(MyType).__index = myIndex
+MyType.__newindex            = myNewIndex
+]##

--- /dev/null
+++ lib/metaty/metaty.c
@@ -0,0 +1,68 @@
+#include <lua.h>
+#include <lualib.h>
+#include <lauxlib.h>
+#include <string.h>
+#include <assert.h>
+
+typedef lua_State LS;
+
+#define ASSERT(L, OK, ...) \
+  if(!(OK)) { luaL_error(L, __VA_ARGS__); }
+
+// concat(sep, ...) --> string
+// concatenate all values (calling tostring on them) separated by sep.
+static inline int l_concat(LS* L) {
+  size_t slen; uint8_t const* sep = luaL_checklstring(L, 1, &slen);
+  int lasti = lua_gettop(L);
+  if(lasti == 1) { lua_pushstring(L, ""); return 1; }
+  size_t vlen;
+  // First compute the size and allocate the exact space we need
+  size_t size = slen * (lasti - 2);  // size of all separators
+  for(int i=2; i <= lasti; i++) {
+    ASSERT(L, lua_tolstring(L, i, &vlen), "arg[%I] is not a string or number", i)
+    size += vlen;
+  }
+  luaL_Buffer lb;
+  char* b = luaL_buffinitsize(L, &lb, size); ASSERT(L, b, "OOM");
+  const char* v = lua_tolstring(L, 2, &vlen);
+  memcpy(b, v, vlen); b += vlen;
+  for(int i = 3; i <= lasti; i++) {
+    memcpy(b, sep, slen); b += slen;
+    v = lua_tolstring(L, i, &vlen);
+    memcpy(b, v, vlen); b += vlen;
+  }
+  luaL_pushresultsize(&lb, size);
+  return 1;
+}
+
+// (t, update) -> t
+static int l_update(LS* L) {
+  if(!lua_istable(L, 1)) luaL_error(L, "arg[1] must be table");
+  if(!lua_istable(L, 2)) luaL_error(L, "arg[2] must be table");
+  lua_settop(L, 3); lua_pushnil(L); // stack: t, upd, k, nil
+  while(lua_next(L, 2)) { // iterate through update
+    lua_copy(L, 4, 3); lua_settable(L, 1);
+    lua_pushnil(L);    lua_copy(L, 3, 4);
+  }
+  lua_settop(L, 1);
+  return 1;
+}
+
+// push v to the end of table, returning the index
+// (t, v) --> index
+static int l_push(LS* L) {
+  if(!lua_istable(L, 1)) luaL_error(L, "arg[1] must be table");
+  lua_len(L, 1); lua_Integer i = lua_tointeger(L, -1) + 1;
+  lua_settop(L, 2); lua_seti(L, 1, i);
+  lua_pushinteger(L, i); return 1;
+}
+
+static const struct luaL_Reg metaty_native[] = {
+  {"concat", l_concat},
+  {"update", l_update},
+  {"push",   l_push},
+  {NULL, NULL},
+};
+
+int luaopen_metaty_native(LS *L) { luaL_newlib(L, metaty_native); return 1; }
+

--- /dev/null
+++ lib/metaty/metaty.lua
@@ -0,0 +1,427 @@
+local G = G or _G
+
+--- metaty: simple but effective Lua type system using metatable
+local M = G.mod and G.mod'metaty' or setmetatable({}, {})
+local concat = table.concat
+local getmt = getmetatable
+
+do
+  local treq = function(n) --> try to require n from metaty.native
+    local ok, o = pcall(function() return require'metaty.native'[n] end)
+    if ok then return o end
+  end
+  string.concat = treq'concat'
+  or function(sep, ...) return concat({...}, sep) end
+
+  table.update = table.update or treq'update'
+  or function(t, update)
+    for k, v in pairs(update) do t[k] = v end; return t
+  end
+
+  table.push = table.push or treq'push'
+  or function(t, v) local i = #t + 1; t[i] = v; return i end
+end
+
+local srep = string.rep
+local sfmt = string.format
+
+local push, update = table.push, table.update
+
+---------------
+-- Pre module: environment variables
+local IS_ENV = { ['true']=true,   ['1']=true,
+                 ['false']=false, ['0']=false, ['']=false }
+local EMPTY = {}
+
+--- isEnv: returns boolean for below values, else nil
+M.isEnv = function(var)
+  var = os.getenv(var); if var then return IS_ENV[var] end
+end
+M.isEnvG = function(var) -- is env or globals
+  local e = M.isEnv(var); if e ~= nil then return e end
+  return G[var]
+end
+local CHECK  = M.isEnvG'METATY_CHECK' or false -- private
+M.getCheck = function() return CHECK end
+
+--- get method of table if it exists.
+--- This first looks for the item directly on the table, then the item
+--- in the table's metatable. It does NOT use the table's normal [$__index].
+M.getmethod = function(t, method)
+  return rawget(t, method) or rawget(getmt(t) or EMPTY, method)
+end
+
+---------------
+-- general functions and constants
+M.DEPTH_ERROR = '{!max depth reached!}'
+
+M.ty = function(o) --> Type: string or metatable
+  local t = type(o)
+  return t == 'table' and getmt(o) or t
+end
+
+--- Given a type return it's name
+M.tyName = function(T, default) --> string
+  local Tty = type(T)
+  return Tty == 'string' and T
+    or ((Tty == 'table') and rawget(T, '__name'))
+    or default or Tty
+end
+
+--- Given an object (function, table, userdata) return its name.
+--- return nil if it's not one of the above types
+M.name = function(o)
+  local ty = type(o)
+  return ty == 'function' and M.fninfo(o)
+      or ty == 'table'    and M.tyName(M.ty(o))
+      or ty == 'userdata' and M.tyName(getmt(o), 'userdata')
+      or ty
+end
+
+M.callable = function(obj) --> bool: return if obj is callable
+  if type(obj) == 'function' then return true end
+  local m = getmt(obj)
+  return m and rawget(m, '__call') and true
+end
+M.metaget = function(t, k)   return rawget(getmt(t), k) end
+
+--- keywords https://www.lua.org/manual/5.4/manual.html
+M.KEYWORD = {}; for kw in string.gmatch([[
+and       break     do        else      elseif    end
+false     for       function  goto      if        in
+local     nil       not       or        repeat    return
+then      true      until     while
+]], '%w+') do M.KEYWORD[kw] = true end
+
+M.validKey = function(s) --> boolean: s=value is valid syntax
+  return type(s) == 'string' and
+    not (M.KEYWORD[s] or tonumber(s)
+         or s:find'[^_%w]')
+end
+
+M.fninfo = function(fn)
+  local info
+  local name = PKG_NAMES[fn]; if not name then
+    info = debug.getinfo(fn)
+    name = info.name
+  end
+  local loc = PKG_LOC[fn]; if not loc then
+    info = info or debug.getinfo(fn, 'Sl'); loc = info.source
+    if loc:sub(1,1) == '@' then
+      loc = loc:sub(2)..':'..info.linedefined
+    else loc = nil end
+  end
+  return name or 'function', loc
+end
+
+--- You probably want split instead.
+--- Usage: [$for ctx, line in rawsplit, text, {'\n', 1} do]
+M.rawsplit = function(subj, ctx) --> (state, splitstr)
+  local pat, i = table.unpack(ctx)
+  if not i then return end
+  if i > #subj then
+    ctx.si, ctx.ei, ctx[2] = #subj+1, #subj, nil
+    return ctx, ''
+  end
+  local s, e = subj:find(pat, i)
+  ctx.si, ctx.ei, ctx[2] = i, (s and (s-1)) or #subj, e and (e+1)
+  return ctx, subj:sub(ctx.si, ctx.ei)
+end
+
+--- split the subj by pattern. [$ctx] has two keys: [$si] (start index) and
+--- [$ei] (end index)
+--- [{## lang=lua}
+--- for ctx, line in split(text, '\n') do -- split lines
+---   ... do something with line
+--- end
+--- ]##
+M.split = function(subj, pat--[[%s+]], index--[[1]]) --> (cxt, str) iter
+  return M.rawsplit, subj, {pat or '%s+', index or 1}
+end
+
+--- The default __fmt method.
+M.fmt = function(self, f)
+  local mt = getmt(self)
+  local fields = rawget(mt, '__fields')
+  local multi = #fields > 1 -- use multiple lines
+  f:write(rawget(mt, '__name'));
+  f:level(1);  f:write(multi and f.tableStart or '{')
+  f:keyvals(self, fields)
+  f:level(-1); f:write(multi and f.tableEnd or '}')
+end
+
+--- The default __tostring method.
+M.tostring = function(self)
+  local mt = getmt(self)
+  return sfmt('%s@%p', rawget(mt, '__name'), self)
+end
+
+-----------------------------
+-- Equality
+M.nativeEq = function(a, b) return a == b end
+local NATIVE_TY_EQ = {
+  number   = rawequal,   boolean = rawequal, string = rawequal,
+  userdata = M.nativeEq, thread  = M.nativeEq,
+  ['nil']  = rawequal,   ['function'] = rawequal,
+  ['table'] = function(a, b)
+    if a == b then return true end
+    local mt = getmt(a)
+    if type(mt) == 'table' and rawget(mt, '__eq') then
+      return false -- true equality already tested
+    end
+    return M.eqDeep(a, b)
+  end,
+}
+M.eqDeep = function(a, b)
+  if rawequal(a, b)     then return true   end
+  if M.ty(a) ~= M.ty(b) then return false  end
+  local aLen, eq = 0, M.eq
+  for aKey, aValue in pairs(a) do
+    local bValue = b[aKey]
+    if not M.eq(aValue, bValue) then return false end
+    aLen = aLen + 1
+  end
+  local bLen = 0
+  -- Note: #b only returns length of integer indexes
+  for bKey in pairs(b) do bLen = bLen + 1 end
+  return aLen == bLen
+end
+
+--- compare tables or anything else
+M.eq = function(a, b) return NATIVE_TY_EQ[type(a)](a, b) end --> bool
+
+-----------------------
+-- record
+M.indexError = function(R, k, lvl) -- note: can use directly as mt.__index
+  error(R.__name..' does not have field '..k, lvl or 2)
+end
+M.index = function(R, k) -- Note: R is record's metatable
+  if type(k) == 'string' and not rawget(R, '__fields')[k] then
+    M.indexError(R, k, 3)
+  end
+end
+M.newindex = function(r, k, v)
+  if type(k) == 'string' and not M.metaget(r, '__fields')[k] then
+    M.indexError(getmt(r), k, 3)
+  end
+  rawset(r, k, v)
+end
+
+M.fieldsCheck = function(T, fields, t)
+  local tkey; while true do
+    tkey = next(t, tkey); if not tkey then return end
+    if type(tkey) == 'string' and not fields[tkey] then
+      error(sfmt('[%s] unrecognized field: %s', T.__name, tkey))
+    end
+  end
+end
+M.constructChecked = function(T, t)
+  M.fieldsCheck(T, rawget(T, '__fields'), t)
+  return setmetatable(t, T)
+end
+M.constructUnchecked = function(T, t)
+  return setmetatable(t, T)
+end
+M.construct = (CHECK and M.constructChecked) or M.constructUnchecked
+M.extendFields = function(fields, ids, docs, R)
+  for i=1,#R do
+    local spec = rawget(R, i); rawset(R, i, nil)
+    -- name [type] : some docs, but [type] and ':' are optional.
+    local name, tyname, fdoc =
+        spec:match'^([%w_]+)%s*(%b[])%s*:?%s*(.*)$'
+    if not name then -- check for {type}
+      name, tyname, fdoc =
+        spec:match'^([%w_]+)%s*(%b{})%s*:?%s*(.*)$'
+    end
+    if not name then
+      name, fdoc = spec:match'^([%w_]+)%s*:?%s*(.*)$'
+    end
+    assert(name,      'invalid spec')
+    assert(#name > 0, 'empty name')
+    push(fields, name); fields[name] = tyname or true
+    local id, iddoc = fdoc:match'^%s*#(%d+)%s*:?%s*(.*)$'
+    if id then
+      id = tonumber(id); fdoc = iddoc
+      if ids[id] or ids[name] then
+        error('id specified multiple times: '..name)
+      end
+      ids[name] = id; ids[id] = name
+    end
+    docs[name] = (fdoc ~= '') and fdoc or nil
+  end
+  return fields, ids, docs
+end
+
+M.namedRecord = function(name, R, loc)
+  rawset(R, '__name', name)
+  local fieldIds = {}; for id in ipairs(R.reserved or {}) do
+    fieldIds[id] = id
+  end; R.reserved = nil
+  R.__fields, R.__fieldIds, R.__docs = M.extendFields({}, fieldIds, {}, R)
+  R.__fmt      = rawget(R, '__fmt')      or M.fmt
+  R.__tostring = rawget(R, '__tostring') or M.tostring
+  R.__index    = rawget(R, '__index')    or R
+  local mt = {
+    __name     = 'Ty<'..R.__name..'>',
+    __newindex = mod and mod.__newindex,
+    __tostring = function() return R.__name end,
+  }
+  local R = setmetatable(R, mt)
+  if G.METATY_CHECK then
+    mt.__call    = M.constructChecked
+    mt.__index   = M.index
+    rawset(R, '__newindex', rawget(R, '__newindex') or M.newindex)
+  else
+    mt.__call = M.constructUnchecked
+  end
+  return R
+end
+
+M.record = function(name)
+  assert(type(name) == 'string' and #name > 0,
+         'must set name to string')
+  return function(R) return M.namedRecord(name, R) end
+end
+
+M.isRecord = function(t)
+  if type(t) ~= 'table' then return false end
+  local mt = getmt(t)
+  return mt and mt.__name and mt.__name:find'^Ty<'
+end
+
+--- Extend the Type with (optional) new name and (optional) additional fields.
+M.extend = function(Type, name, fields)
+  name, fields = name or Type.__name, fields or {}
+  local E, mt = update({}, Type), update({}, getmt(Type))
+  E.__name, mt.__name = name, 'Ty<'..name..'>'
+  E.__index = E
+  E.__fields   = update({}, E.__fields);
+  E.__fieldIds = update({}, E.__fieldIds);
+  E.__fields, E.__fieldIds, E.__docs = M.extendFields(
+    update({}, E.__fields),
+    update({}, E.__fieldIds),
+    update({}, E.__docs),
+    fields
+  )
+  for k, v in pairs(fields) do E[k] = v end
+  return setmetatable(E, mt)
+end
+
+M.enum_tostring = function(E) return E.__name end
+M.enum_toPod = function(E, pset, e)
+  if pset.enumIds then return E.id(e) else return E.name(e) end
+end
+M.enum_fromPod = function(E, pset, e) return E.name(e) end
+M.enum_partialMatcher = function(E, fnMap)
+  for name, fn in pairs(fnMap) do
+    if not E.__names[name] then error(name..' is not in enum '..E.__name) end
+    if not M.callable(fn) then error(name ..'is not callable') end
+  end
+  for name, id in pairs(E.__names) do
+    if fnMap[name] then fnMap[id] = fnMap[name] end
+  end
+  return fnMap
+end
+M.enum_matcher = function(E, fnMap)
+  local missing = {}
+  for name in pairs(E.__names) do
+    if not fnMap[name] then push(missing, name) end
+  end
+  if #missing > 0 then
+    error('missing variants (or set default): '
+          ..table.concat(missing, ' '))
+  end
+  return E:partialMatcher(fnMap)
+end
+
+local ENUM_INVALID = {id=1, name=1, matcher=1, partialMatcher=2}
+M.namedEnum = function(ename, nameIds)
+  local names, ids = {}, {}
+  for name, id in pairs(nameIds) do
+    assert(type(name) == 'string' and #name > 0,
+      'keys must be string names')
+    assert(math.type(id) == 'integer' and id >= 0,
+      'values must be integer ids greater >= 0')
+    assert(not ENUM_INVALID[name], 'must not name variant id, name')
+    assert(name:sub(1,2) ~= '__', "name must not start with '__'")
+    names[name] = name; names[id] = name
+    ids[name]   = id;   ids[id]   = id
+  end
+  local errmsg = ' is not a variant of enum '..ename
+  local E = {
+    __name = ename,
+    __names=nameIds,
+    name = function(v) return names[v]
+                       or error(tostring(v)..errmsg) end,
+    id = function(v) return ids[v]
+                     or error(tostring(v)..errmsg) end,
+    __tostring = M.enum_tostring,
+    matcher = M.enum_matcher, partialMatcher = M.enum_partialMatcher,
+  }
+  for name in pairs(nameIds) do E[name] = name end
+  E.__toPod, E.__fromPod = M.enum_toPod, M.enum_fromPod
+  return setmetatable(E, {
+    __name = ename, __tostring = E.__tostring,
+    __index = function(k) error(sfmt(
+      'enum %s has no method %s', ename, k
+    )) end
+  })
+end
+
+--- Create an enum type which can convert between string and integers.
+---
+--- This "type" is mainly to allow typosafe enums, both when creating the variant
+--- (i.e. [$v = MyEnum.VARIANT]) and when matching using the [$matcher] method below.
+--- It also allows using checked enums in [$ds.pod].
+---
+--- One of the main benefits of using an enum is to ensure that when you are
+--- matching you don't make a typo mistake (i.e. WOKER instead of WORKER). In
+--- lua there is no native [$switch] statement (or similar), but table lookup
+--- on functions can be equally as good -- see the example below.
+---
+--- [{h2}Example]
+--- [{### lang=lua}
+--- M.Job = enum'Job' {
+---   OWNER   = 1,
+---   MANAGER = 2,
+---   COOK    = 3,
+---   WAITER  = 4,
+--- }
+---
+--- assert('OWNER', M.Job.OWNER)
+---
+--- -- either string or id will return string
+--- assert('OWNER', M.Job.name(1))
+--- assert('OWNER', M.Job.name('OWNER'))
+---
+--- -- either string or id will return id
+--- assert(1, M.Job.id(1))
+--- assert(1, M.Job.id('OWNER'))
+---
+--- -- create a table that converts a variant (name or id) -> function.
+--- local doJob = M.Job:matcher {
+---   OWNER   = function() print'tell them to get to work' end,
+---   MANAGER = function() print'get to work!'             end,
+---   COOK    = function() print'order up!'                end,
+---   WAITER  = function() print'they want spam and eggs'  end,
+---
+---   -- Removing any of the above will cause an error that not all variants
+---   -- are covered. You can use :partialMatcher if you want to
+---   -- return nil instead.
+---   --
+---   -- Below will cause an error: no variant DISHWASHER
+---   DISHWASHER = function() end
+--- }
+---
+--- -- call in your own function like:
+--- doJob[job](my, args)
+--- ]###
+---
+M.enum = function(name)
+  assert(type(name) == 'string' and #name > 0,
+        'must name the enum using a string')
+  return function(nameIds) return M.namedEnum(name, nameIds) end
+end
+
+getmt(M).__call = function(T, name) return M.record(name) end
+return M

--- /dev/null
+++ lib/metaty/test.lua
@@ -0,0 +1,218 @@
+G.METATY_CHECK = true
+
+local ge = {}; for k in pairs(_G) do table.insert(ge, k) end
+local M = require'metaty'
+assert(M.getCheck())
+
+local mty, split = M, M.split
+
+local add, sfmt = table.insert, string.format
+
+local Tm = mod'Tm'
+
+local function test(name, fn)
+  print('# Test', name)
+  fn()
+end
+
+local function assertEq(expect, result)
+  if M.eq(expect, result) then return end
+  error('Values not mty.eq: '..
+    require'fmt'.Fmt:pretty{}:concat('',
+      "! EXPECT: ", expect, '\n',
+      "! RESULT: ", result, '\n'):tostring())
+end
+
+local function assertMatch(expectPat, result)
+  if not result:match(expectPat) then
+    M.errorf('Does not match pattern:\nPattern: %q\n Result:  %s',
+           expectPat, result)
+  end
+end
+
+local function assertErrorPat(errPat, fn, plain)
+  local ok, err = pcall(fn)
+  if ok then M.errorf('! No error received, expected: %q', errPat) end
+  if not err:find(errPat, 1, plain) then M.errorf(
+    '! Expected error %q but got %q', errPat, err
+  )end
+end
+
+test('string.concat', function()
+  local sc = string.concat
+  assertEq('',             sc(''))
+  assertEq('one',          sc(' ', 'one'))
+  assertEq('1 2',          sc(' ', '1', 2))
+  assertEq('12',           sc('', '1', 2))
+  assertEq('one-two-true', sc('-', 'one', 'two', 'true'))
+end)
+
+test('table.update', function()
+  local tu = table.update
+  assertEq({},       tu({},  {}))
+  assertEq({1},      tu({},  {1}))
+  assertEq({1, a=3}, tu({1}, {a=3}))
+  assertEq({1, a=3, b=44, c=5},
+        tu({1, a=3, b=4}, {b=44, c=5}))
+end)
+
+test('table.push', function()
+  local tp = table.push
+  local t = {1, 2, a=3}
+  assertEq(3, tp(t, 3)); assertEq({1, 2, 3, a=3}, t)
+end)
+
+local function splitT(...)
+  local t = {}; for st, item in split(...) do
+    add(t, {item, st.si, st.ei})
+  end
+  return t
+end
+local LINES = '\nhi\n\nthere\nyou\n', '\n'
+
+test('split', function()
+  assertEq({
+    {'hi',    1, 2},
+    {'there', 4, 8},
+    {'jane',  10, 13},
+  }, splitT('hi there\njane'))
+
+  assertEq({
+    {'',      1,  0},
+    {'hi',    2,  3},
+    {'',      5,  4},
+    {'there', 6,  10},
+    {'you',   12, 14},
+    {'',      16, 15},
+  }, splitT(LINES, '\n'))
+end)
+
+test('ty', function()
+  assert('string' == M.ty('hi'))
+  assert('number' == M.ty(4))
+  assert('table'  == M.ty({}))
+  local mt = {}
+  assert(mt       == M.ty(setmetatable({}, mt)))
+end)
+
+test('name', function()
+  assertEq('string', M.tyName('string'))
+  assertEq('string', M.tyName(M.ty('hi')))
+
+  assertEq('number', M.tyName('number'))
+  assertEq('number', M.tyName(M.ty(4)))
+
+  assertEq('table',  M.tyName('table'))
+  assertEq('table',  M.tyName(M.ty({})))
+
+  local mt = {__name='F'}
+  assertEq('F', M.tyName(mt))
+  assertEq('F', M.tyName(M.ty(setmetatable({}, mt))))
+
+  assertEq('string', M.name'hi')
+  assertEq('table',  M.name{})
+  assertEq('foo',    M.name(setmetatable({}, {__name='foo'})))
+
+  Tm.A = mty'A'
+  assertEq('Tm.A',   M.name(Tm.A))
+  assertEq('Tm.A',   PKG_NAMES[Tm.A])
+end)
+
+test('record', function()
+  local A = M'A'{'a2[any]', 'a1[any]'}
+  local B = mty'B'{
+    'b1[number]#1',
+    'b2[number]#2: has default', b2 = 32,
+    'a[A]#3'
+  }
+
+  local a = A{a1='hi', a2=5}
+  assert(A == getmetatable(a))
+  assertEq('[any]', A.__fields.a1)
+  assertEq('[any]', getmetatable(a).__fields.a2)
+  assert(A == M.ty(a))
+  assert('hi' == a.a1); assert(5 == a.a2)
+  a.a2 = 4;             assert(4 == a.a2)
+
+  local b = B{b1=5, a=a}
+  assert(B == getmetatable(b))
+  assertEq(5, b.b1); assertEq(32, b.b2) -- default
+  b.b2 = 7;          assertEq(7, b.b2)
+
+  assertErrorPat('A does not have field a3',
+    function() local x = a.a3 end)
+  assertErrorPat('A does not have field a3',
+    function() a.a3 = 7 end)
+
+  A.meth = function() end
+  assertEq(A.meth, M.getmethod(A,   'meth'))
+  assertEq(A.meth, M.getmethod(A{}, 'meth'))
+  assertEq(nil,    M.getmethod(A{}, 'does-not-exist'))
+
+  assertEq({'b1', 'b2', 'a', b1=1, b2=2, a=3}, B.__fieldIds)
+end)
+
+test('record maybe', function()
+  local A = mty'A' {'a1[string]', 'a2[number]'}
+
+  local a = A{a1='hi'}
+    assertEq('hi', a.a1);   assertEq(nil, a.a2);
+    assertEq(A{a1='hi'}, a)
+  a.a2 = 4;   assertEq(4, a.a2);
+              assertEq(A{a1='hi', a2=4}, a)
+  a.a2 = nil; assertEq(nil, a.a2)
+end)
+
+test('extend type', function()
+  local A = mty'A' {'a1[string]', 'a2[number]'}
+  local a = A{}; assertEq('A', a.__name)
+
+  local B = M.extend(A, 'B', {'b1[string]', b1='default'})
+  assertEq('B', B.__name)
+  local b = B{}; assertEq('B', b.__name)
+  assertEq('default', b.b1)
+end)
+
+test('globals', function()
+  local gr = {}; for k in pairs(_G) do table.insert(gr, k) end
+  table.sort(ge); table.sort(gr);
+  assertEq(ge, gr)
+end)
+
+test('enum', function()
+  local E = M.enum'E' {
+    A = 1, B = 2, C = 3,
+  }
+  assertEq('A', E.A); assertEq('B', E.B)
+  assertEq('A', E.name'A'); assertEq('A', E.name(1))
+  assertEq('C', E.name'C'); assertEq('C', E.name(3))
+
+  assertEq(1, E.id'A'); assertEq(1, E.id(1))
+
+  local fn = function() end
+  assertErrorPat('missing variants',
+    function() E:matcher {A=fn, B=fn} end)
+
+  local var, val
+  local m = E:matcher{
+    A=function(v) var, val = 'A', v end,
+    B=function(v) var, val = 'B', v end,
+    C=function(v) var, val = 'C', v end,
+  }
+  m.A(22);  assertEq('A', var);  assertEq(22, val)
+  m.B(33);  assertEq('B', var);  assertEq(33, val)
+  m[3](44); assertEq('C', var); assertEq(44, val)
+  assertEq(nil, m.D)
+
+  local T = M'T' { 'i [int]', 'e [E]', e=E.A}
+  assertEq(T{i=3, e=E.A}, T{i=3, e=E.A})
+  assert(not M.eq(T{i=3}, T{i=3, e=E.A}))
+end)
+
+-- test('fmtFile', function()
+--   local f = Fmt{file=io.open('.out/TEST', 'w+')}
+--   f:fmt{1, 2, z='bob', a='hi'}
+--   f.file:flush(); f.file:seek'set'
+--   assertEq('{1,2 :: a="hi" z="bob"}', f.file:read'a')
+--   f.file:close()
+-- end)

--- /dev/null
+++ lib/pegl/PKG.lua
@@ -0,0 +1,17 @@
+name    = 'pegl'
+version = '0.1-2'
+summary  = "PEG-like recursive descent parsing in Lua"
+url     = 'git+http://github.com/civboot/civlua'
+homepage = "https://lua.civboot.org#Package_pegl"
+doc = 'README.cxt'
+srcs = {
+  'pegl.lua',
+  'pegl/lua.lua',
+}
+deps = {
+  "lua     ~> 5.3",
+  "pkg     ~> 0.1",
+  "metaty  ~> 0.1",
+  "ds      ~> 0.1",
+  "civtest ~> 0.1",
+}

--- /dev/null
+++ lib/pegl/README.cxt
@@ -0,0 +1,113 @@
+PEG like recursive descent Parser for Lua.
+
+PEG stands for "Parsing Expression Grammar" and is one of the simplest parsing
+grammars since it maps very-closesly to recursive descent -- which is a
+hand-rolled parser that uses recursion. This library is a pure-LUA
+recursive-descent parser which exports types and functions to create a PEG-like
+DSL that is still just recursive descent under the hood.
+
+The benefits of this library are: [+
+* [,vs hand-rolled recursive descent] is more concise and readable, as well as
+  providing automatic error messages (i.e. symbol locations in your stack) and
+  debugging.
+* [,vs PEG] is nearly as concise while maintaining the ability to hand-roll any
+  logic needed.
+]
+
+[{h2 name=pegl-resources}Resources]
+If you are completely new to parsers and especially if you want to write your
+own language with an AST then I cannot recommend
+[<http://www.craftinginterpreters.com>] enough. It might be a better place to
+start than this library.
+
+[{h2 name=pegl-intro}Introduction]
+A parser is a way to convert text into structured node objects so that the text
+can be compiled or annotated by a program. For example you might want to convert
+some source code like:
+
+[{## lang=lua}
+x = 1 + 2
+]##
+
+Into something like:
+
+[{## lang=lua}
+{'x', '=', {'1', '+', '2', kind='op'}, kind='assign'}
+]##
+
+A recursive descent parser does so via hand-rolled functions which typically
+[,recurse] into eachother. Each function attempts to parse from the current
+parser position using its spec (which may be composed of calling other parsing
+functions) and returns either the successfully parsed node or [$nil] (or
+returns/throws an error if it finds a syntax error).
+
+PEGL is a Lua library for writing the common-cases of a recursive descent parser
+in a (pure Lua) syntax similar to PEG, while still being able to easily fallback
+to hand-rolled recursive descent when needed.
+
+Most traditional PEG parsers (as well as other parsers) struggle with
+complicated syntax such as Lua's [#[===[raw string syntax]===]]#, python's
+whitespace denoted syntax or C's lookahead requirements ([$(U2)*c**h] --
+recursive descent can solve a lot of these problems relatively easily and
+performantly.  However, recursive descent parsers can be very verbose and
+sometimes difficult to understand. Below is a comparison of the above example
+in both PEG, PEGL and a "traditional" (though not very good) recursive descent
+implementation.
+
+[{h3}Examples]
+
+[*PEG]: most concise but harder to fallback to hand-rolled recursive descent
+[##
+grammar = [[
+num    <- '%d'
+name   <- '%w'
+setVar <- num '=' name
+expr   <- setVar / ... other valid expressions
+]]
+p:parse(grammar)
+]##
+
+[*PEGL]: very concise and easy to fallback to hand-rolled recursive descent.
+Things like `kind` and `name` make debug printing easier. [{## lang=lua}
+num    = Pat{'%d+', kind='num'} -- kind=num sets the node name
+name   = Pat{'%w+', kind='name'}
+-- Note: UNPIN and PIN are used for when errors should be raised
+setVar = {UNPIN, name, '=', PIN, num, kind='setVar'}
+expr   = Or{setVar, ... other valid expressions, name='expr'}
+p:parse(expr)
+]
+
+[*Recursive Descent]: not very concise, harder to debug. [{## lang=lua}
+-- Note: p=parser, an object which tracks the current position
+-- in it's `state`
+
+function parseNum(p)
+  local num = p:consume('%d+') -- return result and advance position
+  if num then -- found
+    return {num, kind='num'} end
+  end
+end
+
+function parseSetVar(p)
+  local state = p.state()
+  local name = p:consume('%w+')
+  if not name then return end
+  local eq, num = p:consume('='), parseNum(p)
+  if not (eq and num) then
+    -- didn't match, reset state and return
+    p.setState(state)
+    return
+  end
+  return {{name, kind='name'}, eq, num, kind='setVar'}
+end
+
+function expression(p)
+  local expr = parseSetVar(p)
+  if expr then return expr end
+  -- ... other possible expressions
+end
+
+expression(p)
+]##
+
+See [<#pegl.Seq>] for the basic API of parsing specs.

--- /dev/null
+++ lib/pegl/pegl.lua
@@ -0,0 +1,727 @@
+local G = G or _G
+
+--- pegl: peg-like lua parser
+local M = G.mod and G.mod'pegl' or {}
+
+local mty     = require'metaty'
+local fmt     = require'fmt'
+local ds      = require'ds'
+local lines   = require'lines'
+local T       = require'civtest'
+local extend  = ds.extend
+local push, pop = table.insert, table.remove
+local concat, unpack = table.concat, table.unpack
+local sfmt    = string.format
+local srep = string.rep
+local ty = mty.ty
+
+local function zero() return 0 end
+
+--- Tokens use a packed span to preserve space.
+--- Maximums: line start|len = 2^24|2^16. cols=255
+M.SPAN_PACK = '>I3I2I2I2'
+M.encodeSpan = function(l1, c1, l2, c2)
+  return string.pack(M.SPAN_PACK, l1, c1, l2-l1, c2)
+end
+M.decodeSpan = function(s)
+  local l, c, l2, c2 = string.unpack(M.SPAN_PACK, s)
+  return l, c, l + l2, c2
+end
+
+M.Token = mty'Token'{'kind [string]: optional, used for debugging'}
+M.Token.span = function(t, dec) return M.decodeSpan(t[1]) end
+M.Token.encode=function(ty_, p, l, c, l2, c2, kind)
+  return M.Token{M.encodeSpan(l, c, l2, c2), kind=kind}
+end
+M.Token.decode = function(t, dat) return lines.sub(dat, M.decodeSpan(t[1])) end
+M.Token.__fmt = function(t, f)
+  f:write'Tkn'; if t.kind then f:write(sfmt('<%s>', t.kind)) end
+  f:write(sfmt('(%s.%s %s.%s)', t:span()))
+end
+
+local TOKEN_TY = {string=true, [M.Token]=true}
+M.firstToken = function(list) --> t, listWithToken
+  if TOKEN_TY[ty(list)] then return list, nil end
+  local t = list[1]; while not TOKEN_TY[ty(t)] do
+    list = t; t = list[1]
+  end
+  return t, list
+end
+M.lastToken = function(list) --> t, listWithToken
+  if TOKEN_TY[ty(list)] then return list, nil end
+  local t = list[#list]; while t and not TOKEN_TY[ty(t)] do
+    list = t; t = list[#list]
+  end
+  return t, list
+end
+
+M.nodeSpan = function(t)
+  local fst, lst = M.firstToken(t), M.lastToken(t)
+  local l1, c1 = fst:span()
+  return l1, c1, select(3, lst:span())
+end
+
+--- The root spec defines custom behavior for your spec. It's attributes
+--- can be set to change how the parser skips empty (whitespace) and handles comments.
+--- TODO: rename this.
+M.RootSpec = mty'RootSpec' {
+[==[skipEmpty [fn(p) -> nil]: default=skip whitespace [+
+    * must be a function that accepts the `Parser`
+      and advances it's `l` and `c` past any empty (white) space. It must also set
+      `p.line` appropriately when `l` is moved.
+    * The return value is ignored.
+    * The default is to skip all whitespace (spaces, newlines, tabs, etc). This
+      should work for _most_ languages but fails for languages like python.
+    * Recommendation: If your language has only a few whitespace-aware nodes (i.e.
+      strings) then hand-roll those as recursive-descent functions and leave
+      this function alone.
+  ]]==],
+
+  'skipComment [function]: fn(p) -> Token for found comment',
+
+[==[tokenizer [fn(p) -> nil] Requires: [+
+    * must return one token. The default is to return a single punctuation character
+      or a whole word ([$_%w])
+    * Objects like [$Key] can use the single punctuation characters in a Trie-like
+      performant data structure.
+    ]]==],
+
+  'dbg [boolean]',
+}
+
+--- The parser tracks the current position of parsing in `dat` and has several
+--- convienience methods for hand-rolling your own recursive descent functions.
+---
+--- [" Note: the location is **line/col based** (not position based) because it
+---    is designed to work with an application that stores the strings as lines
+---    (a text editor) ]
+M.Parser = mty'Parser'{
+  'dat [lines]: reference to the underlying data.\n'
+..'Must look like a table of lines',
+  'l [int]: line, incremented when [$c] is exhausted',
+  'c [int]: column in [$line]',
+  'line [string]: the current line ([$dat[l]])',
+  'lines',
+  'root [RootSpec]',
+  'stack [list]', 'stackL [list]', 'stackC [list]',
+  'stackLast [{item, l, c}]',
+  'commentLC [table]: table of {line={col=CommentToken}}',
+  'dbgLevel [number]', dbgLevel = 0,
+  'path [string]',
+}
+
+M.fmtSpec = function(s, f)
+  if type(s) == 'string'   then return f(s) end
+  if type(s) == 'function' then return f(s) end
+  if s.name or s.kind then
+    return f:write('<', s.name or s.kind, '>')
+  end
+  if ty(s) ~= 'table' then f:write(mty.tyName(ty(s))) end
+
+  f:level(1); f:write(f.tableStart)
+  for i, sub in ipairs(s) do
+    f(sub); if i < #s then f:write' ' end
+  end
+  f:level(-1); f:write(f.tableEnd)
+end
+M.specToStr = function(s, fmt)
+  local fmt = fmt or fmt.Fmt:pretty()
+  M.fmtSpec(s, fmt)
+  return concat(fmt)
+end
+
+--- Create a parser spec record. These have the fields [$kind] and [$name]
+--- and must define the [$parse] method.
+M.specTy = function(name)
+  return mty(name){'kind [string]', 'name [string]', __fmt=M.fmtSpec}
+end
+
+--- [$Pat{'%w+', kind='word'}] will create a Token with the span matching the
+--- [$%w+] pattern and the kind of [$word] when matched.
+M.Pat = M.specTy'Pat'
+getmetatable(M.Pat).__call = function(T, t)
+  if type(t) == 'string' then t = {t} end
+  assert(#t > 0, 'must specify a pattern')
+  return mty.construct(T, t)
+end
+
+local KEY_FORM =
+  "construct Keys like Keys{{'kw1', 'kw2', kw3=true, kw4={sub-keys}, kind=...}"
+
+local function constructKeys(keys)
+  assert(ty(keys) == 'table', KEY_FORM)
+  for i=1,#keys do
+    keys[keys[i]] = true;
+    keys[i] = nil end
+  for k, v in pairs(keys) do
+    if k == true then assert(v == true)
+    else fmt.assertf(
+      type(k) == 'string', 'number key after list items: %s', k)
+    end
+    if ty(v) == 'table' then keys[k] = constructKeys(v)
+    elseif v ~= true then fmt.errorf('%s: %q', KEY_FORM, v) end
+  end
+  return keys
+end
+
+--- The table given to [$Key] forms a Trie which is extremely performant. Key depends
+--- strongly on the [$tokenizer] passed to RootSpec.
+---
+--- Example: [$Key{{'myKeword', ['+']={'+'=true}}, kind='kw'}] will match tokens "myKeyword"
+--- and "+" followed by "+" (but not "+" not followed by "+").
+---
+--- To also match "+" use [$['+']={true, '+'=true}]
+---
+--- ["Note: The `Key` constructor converts all list items into
+---         [$value=true], so [${'a', 'b'}] is converted to [${a=true, b=true}]]
+M.Key = mty'Key' {
+  'keys [table]', 'name [string]', 'kind [string]',
+  __fmt = M.fmtSpec,
+}
+getmetatable(M.Key).__call = function(T, t)
+  local keys = assert(table.remove(t, 1), 'must provide keys at index 1')
+  t['keys'] = constructKeys(keys)
+  return mty.construct(T, t)
+end
+
+--- choose one spec
+---
+--- Example: [$Or{'keyword', OtherSpec, Empty}] will match one of the three
+--- specs given.  Note that [$Empty] will always match (and return
+--- [$pegl.EMPTY]).  Without [$Empty] this could return [$nil], causing a
+--- parent [$Or] to match a different spec.
+---
+--- ["Note: [$Maybe(spec)] literally expands to [$Or{spec, Empty}]]
+---
+--- Prefer [$Key] if selecting among multiple string or token paths as [$Or] is
+--- not performant ([$O(N)] vs Key's [$O(1)])
+M.Or = M.specTy'Or'
+M.Maybe = function(spec) return M.Or{spec, M.Empty} end
+--- match a Spec multiple times
+--- Example: [$Many{'keyword', OtherSpec, min=1, kind='myMany'}] will match the
+--- given sequence one or more times ([$min=0] times by default). The parse
+--- result is a list with [$kind='myMany'].
+M.Many = mty'Many' {
+  'min [int]', min = 0,
+  'kind [string]', 'name [string]',
+  __fmt = M.fmtSpec,
+}
+
+--- A Sequence of parsers. Note that [$Parser] treats [$Seq{'a'}] and [${'a'}]
+--- identically (you can use plain tables instead).
+---
+--- Raw strings are treated as keywords (the are parsed literally and have
+--- [$key] set to themselves). Functions are called with the [$parser] as the
+--- only argument and must return the node/s they parsed or [$nil] for a
+--- non-error match.
+---
+--- A sequence is a list of either other parsers
+--- ([$Seq, {}, "keyword", fn(p), Not, Or, etc]} and/or plain strings which are
+--- treated as keywords and will have [$kind] be set to themselves when parsed.
+---
+--- If the first spec matches but a later one doesn't an [$error] will be thrown
+--- (instead of [$nil] returned) unless [$UNPIN] is used. See the PIN/UNPIN
+--- docs for details.
+---
+--- [{h4}PIN/UNPIN: Syntax Error Reporting]
+--- PEGL implements syntax error detection ONLY in Sequence specs (table specs i.e.
+--- `{...}`) by throwing an [$error] if a "pinned" spec is missing. [+
+---
+--- * By default, no error will be raised if the first spec is missing. After the
+---   first spec, [$pin=true] and any missing specs to throw an error with context.
+---
+--- * [$PIN] can be used to force [$pin=true] until [$UNPIN] is (optionally)
+---   specified.
+---
+--- * [$UNPIN] can be used to force [$pin=false] until [$PIN] is (optionally)
+---   specified.
+---
+--- * PIN / UNPIN only affect the [,current] sequence (they do not pin
+---   sub-sequences).
+--- ]
+M.Seq = M.specTy'Seq'
+M.Not = M.specTy'Not'
+M.Not.parse = function(self, p) return not M.parseSeq(p, self) end
+
+-- Used in Seq to "pin" or "unpin" the parser, affecting when errors
+-- are thrown.
+M.PIN   = ds.sentinel('PIN',   {name='PIN',   kind=false})
+M.UNPIN = ds.sentinel('UNPIN', {name='UNPIN', kind=false})
+
+-- Denotes a missing node. When used in a spec simply returns Empty.
+-- Example: Or{Integer, String, Empty}
+M.EMPTY = ds.sentinel('EMPTY', {kind='EMPTY', __len=zero})
+M.Empty = ds.sentinel('Empty', {parse = function() return M.EMPTY end})
+
+-- Denotes the end of the file
+M.EOF = ds.sentinel('EOF', {kind='EOF', __len=zero})
+M.Eof = ds.sentinel('Eof', {
+  __tostring=function() return 'Eof' end,
+  parse=function(self, p)
+    p:skipEmpty(); if p:isEof() then return M.EOF end
+  end
+})
+
+-------------------
+-- Root and Utilities
+
+M.skipWs1 = function(p)
+  if p.c > #p.line then p:incLine(); return
+  else
+    local c, c2 = p.line:find('^%s+', p.c)
+    if c then p.c = c2 + 1; return end
+  end
+  return true
+end
+
+M.skipEmpty = function(p)
+  local loop, sc, cmt, cL = true, p.root.skipComment
+  while loop and not p:isEof() do
+    loop = not M.skipWs1(p)
+    if sc then
+      cL = p.commentLC[p.l]; cmt = (cL and cL[p.c]) or sc(p)
+      if cmt then -- cache for later and advance
+        p:dbg('COMMENT: %s.%s', p.l, p.c)
+        cL = p.commentLC[p.l]
+        if not cL then cL = {}; p.commentLC[p.l] = cL end
+        cL[p.c] = cmt
+        p.l, p.c = select(3, cmt:span()); p.c = p.c + 1
+      end
+    end
+  end
+end
+M.RootSpec.skipEmpty = M.skipEmpty
+
+M.skipEmptyMinimal = function(p)
+  while not p:isEof() do
+    if p.c > #p.line then p:incLine()
+    else return end
+  end
+end
+
+M.defaultTokenizer = function(p)
+  if p:isEof() then return end
+  return p.line:match('^%p', p.c) or p.line:match('^[_%w]+', p.c)
+end
+M.RootSpec.tokenizer = M.defaultTokenizer
+
+local UNPACK_SPECS = ds.Set{'table', M.Seq, M.Many, M.Or}
+local function shouldUnpack(spec, t)
+  local r = (
+    type(t) == 'table'
+    and UNPACK_SPECS[ty(spec)]
+    and ty(t) ~= M.Token
+    and not spec.kind
+    and not t.kind
+  )
+  return r
+end
+
+-- Create node with optional kind
+local function node(spec, t, kind)
+  if type(t) ~= 'boolean' and t and kind then
+    if type(t) == 'table' and not t.kind then t.kind = kind
+    else t = {t, kind=kind} end
+  end
+  if shouldUnpack(spec, t) and #t==1 then t = t[1] end
+  return t
+end
+
+-------------------
+-- Key
+
+M.Key.parse = function(key, p)
+  p:skipEmpty()
+  local c, keys, found = p.c, key.keys, false
+  while true do
+    local k = p.root.tokenizer(p); if not k    then break end
+    keys = keys[k];                if not keys then break end
+    p.c = p.c + #k
+    if keys == true then found = true; break end
+    found = keys[true]
+  end
+  if found then
+    local kind = key.kind or lines.sub(p.dat, p.l, c, p.l, p.c - 1)
+    return M.Token:encode(p, p.l, c, p.l, p.c -1, kind)
+  end
+  p.c = c
+end
+
+-------------------
+-- Pat
+
+M.Pat.parse = function(self, p)
+  p:skipEmpty()
+  for _, pat in ipairs(self) do
+    local t = p:consume(pat)
+    if t then
+      t.kind = self.kind
+      p:dbgMatched(t.kind or pat)
+      return t
+    end
+  end
+end
+
+-------------------
+-- Seq (table)
+local function _seqAdd(p, out, spec, t)
+  if type(t) == 'boolean' then -- skip
+  elseif shouldUnpack(spec, t) then
+    p:dbgUnpack(spec, t)
+    extend(out, t)
+  else push(out, t) end
+end
+
+M.parseSeq = function(p, seq)
+  p:skipEmpty()
+  local out, pin = {}, nil
+  p:dbgEnter(seq)
+  for i, spec in ipairs(seq) do
+    if     spec == M.PIN   then pin = true;  goto continue
+    elseif spec == M.UNPIN then pin = false; goto continue
+    end
+    local t = p:parse(spec)
+    if not t then
+      p:dbgMissed(spec)
+      p:dbgLeave()
+      return p:checkPin(pin, spec)
+    end
+    _seqAdd(p, out, spec, t)
+    pin = (pin == nil) and true or pin
+    ::continue::
+  end
+  local out = node(seq, out, seq.kind)
+  p:dbgLeave(out)
+  return out
+end
+
+M.Seq.parse = function(seq, p) return M.parseSeq(p, seq) end
+
+-------------------
+-- Or
+
+M.Or.parse = function(or_, p)
+  p:skipEmpty()
+  p:dbgEnter(or_)
+  local state = p:state()
+  for _, spec in ipairs(or_) do
+    local t = p:parse(spec)
+    if t then
+      t = node(spec, t, or_.kind)
+      p:dbgLeave(t)
+      return t
+    end
+    p:setState(state)
+  end
+  p:dbgLeave()
+end
+
+-------------------
+-- Many
+
+M.Many.parse = function(many, p)
+  p:skipEmpty()
+  local out = {}
+  p:dbgEnter(many)
+  while true do
+    local t = M.parseSeq(p, many)
+    if not t then break end
+    if ty(t) ~= M.Token and #t == 1 then push(out, t[1])
+    else _seqAdd(p, out, many, t) end
+  end
+  if #out < many.min then
+    p:dbgMissed(many, ' got count=%s', #out)
+    out = nil
+  end
+  p:dbgLeave(many)
+  return node(many, out, many.kind)
+end
+
+-------------------
+-- Misc
+
+local SPEC_TY = {
+  ['function']=function(p, fn) p:skipEmpty() return fn(p) end,
+  string=function(p, kw)
+    p:skipEmpty();
+    local tk = p.root.tokenizer(p)
+    if kw == tk then
+      local c = p.c; p.c = c + #kw
+      return M.Token:encode(p, p.l, c, p.l, p.c - 1, kw)
+    end
+  end,
+  table=function(p, tbl) return M.parseSeq(p, tbl) end,
+}
+
+--- Parse a spec, returning the nodes or throwing a syntax error.
+---
+--- [$root] is used to define settings of the parser such as how to skip
+--- comments and whether to use debug mode.
+M.parse = function(dat, spec, root) --> list[Node]
+  local p = M.Parser:new(dat, root)
+  return p:parse(spec), p
+end
+
+M.Parser.assertNode = function(p, expect, node, root)
+  local result = p:toStrTokens(node)
+  if not mty.eq(expect, result) then
+    local eStr = concat(p.root.newFmt()(expect))
+    local rStr = concat(p.root.newFmt()(result))
+    if eStr ~= rStr then
+      print('\n#### EXPECT:'); print(eStr)
+      print('\n#### RESULT:'); print(rStr)
+      print()
+      civtest.showDiff(io.fmt, eStr, rStr)
+    else
+      print('\n#### FORMATTED:'); print(eStr)
+      print('## Note: They format the same but they differ')
+      T.eq(t.expect, result)
+    end
+    error'failed parse test'
+  end
+  return result
+end
+
+--- Parse the [$dat] with the [$spec], asserting the resulting "string tokens"
+--- are identical to [$expect].
+---
+--- the input is a table of the form: [{# lang=lua}
+---   {dat, spec, expect, dbg=nil, root=default} --> nil
+--- ]#
+M.assertParse = function (t) --> nil
+  assert(t.dat, 'dat'); assert(t.spec, 'spec')
+  local root = (t.root and ds.copy(t.root)) or M.RootSpec{}
+  root.dbg   = t.dbg or root.dbg
+  local node, parser = M.parse(t.dat, t.spec, root)
+  if not t.expect and t.parseOnly then return end
+  local result = parser:assertNode(t.expect, node)
+  return result, node, parser
+end
+
+M.assertParseError=function(t)
+  T.throws(
+    t.errPat,
+    function() M.parse(assert(t.dat), assert(t.spec)) end,
+    t.plain)
+end
+
+-------------------
+-- Parser Methods
+
+M.Parser.__tostring=function() return 'Parser()' end
+M.Parser.new = function(T, dat, root)
+  dat = (type(dat)=='string') and lines(dat) or dat
+  return mty.construct(T, {
+    dat=dat, l=1, c=1, line=dat[1], lines=#dat,
+    root=root or M.RootSpec{},
+    stack={}, stackL={}, stackC={}, stackLast={},
+    commentLC={},
+  })
+end
+
+--- the main entry point and used recursively.
+--- Parses the spec, returning the node, which is a table of nodes that are
+--- eventually tokens.
+M.Parser.parse = function(p, spec) --> node
+  local Ty = ty(spec)
+  local specFn = SPEC_TY[Ty]
+  if specFn then return specFn(p, spec)
+  else           return spec:parse(p) end
+end
+--- consume the pattern, advancing the column if found
+M.Parser.consume = function(p, pat, plain) --> Token
+  local t = p:peek(pat, plain)
+  if t then p.c = select(4, t:span()) + 1 end
+  return t
+end
+--- identical to `consume` except it does not advance the column
+M.Parser.peek = function(p, pat)
+  if p:isEof() then return nil end
+  local c, c2 = p.line:find(pat, p.c)
+  if c == p.c then
+    return M.Token:encode(p, p.l, c, p.l, c2)
+  end
+end
+M.Parser.sub =function(p, t) -- t=token
+  return lines.sub(p.dat, t:span())
+end
+M.Parser.incLine=function(p)
+  p.l, p.c = p.l + 1, 1
+  p.line = p.dat[p.l]
+end
+M.Parser.isEof=function(p) return not p.line end --> isAtEndOfFile
+M.Parser.skipEmpty=function(p)
+  p.root.skipEmpty(p)
+  return p:isEof()
+end
+--- get the current parser state [${l, c, line}]
+M.Parser.state   =function(p) return {l=p.l, c=p.c, line=p.line} end
+--- restore the current parser state [${l, c, line}]
+M.Parser.setState=function(p, st) p.l, p.c, p.line = st.l, st.c, st.line end
+-- convert to token strings for test assertion
+M.Parser.toStrTokens=function(p, n)
+  if not n then return nil end
+  if ty(n) == M.Token then
+    local t = p:tokenStr(n)
+    return n.kind and {t, kind=n.kind} or t
+  elseif #n == 0 then return n end
+  local t={} for _, n in ipairs(n) do push(t, p:toStrTokens(n)) end
+  t.kind=n.kind
+  return t
+end
+--- recursively mutate table converting all Tokens to strings
+M.Parser.makeStrTokens = function(p, t) --> t
+  for k, v in pairs(t) do
+    if ty(v) == M.Token       then t[k] = p:tokenStr(v)
+    elseif type(v) == 'table' then p:makeStrTokens(v) end
+  end
+  return t
+end
+M.Parser.tokenStr = function(p, t) return t:decode(p.dat) end --> string
+-- recurse through the start of list and trim the start of first token
+M.Parser.trimTokenStart = function(p, list)
+  local t, list = M.firstToken(list); assert(list)
+  if type(t) == 'string' then return end
+  local l1, c1, l2, c2 = t:span()
+  local line = p.dat[l1]
+  local s = p:tokenStr(t); c1 = line:find('[^ ]', c1) or c1
+  list[1] = M.Token:encode(p, l1, c1, l2, c2)
+end
+
+-- recurse through the end of list and trim the end of last token
+M.Parser.trimTokenLast = function(p, list, trimNl)
+  local t, list = M.lastToken(list); assert(list)
+  if not t or type(t) == 'string' then return end
+  local l1, c1, l2, c2 = t:span()
+  local line = p.dat[l2]
+  while line:sub(c2,c2) == ' ' do c2 = c2 - 1 end
+  if trimNl and l2 > l1 and c2 == 0 then
+    l2 = l2 - 1; c2 = #p.dat[l2]
+  end
+  list[#list] = M.Token:encode(p, l1, c1, l2, c2)
+end
+
+local function fmtStack(p)
+  local b = {}; for i, v in ipairs(p.stack) do
+    if v == true then -- skip
+    else
+      if type(v) ~= 'string' then v = fmt(v) end
+      push(b, sfmt('%s(%s.%s)', v, p.stackL[i], p.stackC[i]))
+    end
+  end
+  push(b, sfmt('%s(%s.%s)', unpack(p.stackLast)))
+  return concat(b, '\n  ')
+end
+M.Parser.checkPin=function(p, pin, expect)
+  if not pin then return end
+  if p.line then p:error(fmt.format(
+    "parser expected: %q\nGot: %s",
+    expect, p.line:sub(p.c))
+  )else p:error(
+    "parser reached EOF but expected: "..fmt(expect)
+  )end
+end
+M.Parser.error=function(p, msg)
+  local lmsg = sfmt('[LINE %s.%s]', p.l, p.c)
+  fmt.errorf("ERROR %s\n%s%s\n%s\nCause: %s\nParse stack:\n  %s",
+    rawget(p.dat, 'path') or '(rawdata)',
+    lmsg, p.line, srep(' ', #lmsg + p.c - 2)..'^',
+    msg, fmtStack(p))
+end
+M.Parser.parseAssert=function(p, spec)
+  local n = p:parse(spec); if not n then p:error(fmt.format(
+    "parser expected: %q\nGot: %s",
+    spec, p.line:sub(p.c))
+  )end
+  return n
+end
+
+M.Parser.dbgEnter=function(p, spec)
+  push(p.stack, spec.kind or spec.name or true)
+  push(p.stackL, p.l); push(p.stackC, p.c)
+  if not p.root.dbg then return end
+  p:dbg('ENTER: %s', fmt(spec))
+  p.dbgLevel = p.dbgLevel + 1
+end
+
+M.Parser.dbgLeave=function(p, n)
+  local sl = p.stackLast
+  sl[1], sl[2], sl[3] = pop(p.stack), pop(p.stackL), pop(p.stackC)
+  if not p.root.dbg then return n end
+  p.dbgLevel = p.dbgLevel - 1
+  p:dbg('LEAVE: %s(%s.%s)', fmt(n or sl[1]), sl[2], sl[3])
+  return n
+end
+M.Parser.dbgMatched=function(p, spec)
+  if p.root.dbg then p:dbg('MATCH: %s', fmt(spec)) end
+end
+M.Parser.dbgMissed=function(p, spec, note)
+  if p.root.dbg then p:dbg('MISS: %s%s', fmt(spec), (note or '')) end
+end
+M.Parser.dbgUnpack=function(p, spec, t)
+  if p.root.dbg then p:dbg('UNPACK: %s :: %s', fmt(spec), fmt(t)) end
+end
+M.Parser.dbg=function(p, fmtstr, ...)
+  if not p.root.dbg then return end
+  local msg = sfmt(fmtstr, ...)
+  fmt.print(sfmt('%%%s%s (%s.%s)',
+    string.rep('* ', p.dbgLevel), msg, p.l, p.c))
+end
+
+local _n10, _hpat = M.Pat'[0-9]+', '[a-fA-F0-9]+'
+local n10 = {kind='n10', -- base 10 number
+  M.UNPIN, M.Maybe'-',  _n10, M.Maybe{'.', _n10}
+}
+local n16 = {kind='n16', -- base 16 number
+  M.UNPIN, M.Maybe'-',  M.Pat('0x'.._hpat),
+  M.Maybe{'.', M.Pat(_hpat)},
+}
+local num = M.Or{name='num', n16, n10}
+M.common = {num=num, n10=n10, n16=n16}
+
+M.isKeyword = function(t) return #t == 1 and t.kind == t[1] end
+
+-- Debugging keywords(KW), names(N) and numbers(NUM/HEX)
+M.testing = {}
+local KW = function(kw)    return {kw, kind=kw} end -- keyword
+local neg, dot = KW'-', KW'.'
+local function NumT(kind, t)
+  if type(t) == 'string' then t = {t} end; assert(#t <= 3)
+  return ds.extend({kind=kind, (t.neg and neg) or M.EMPTY, tostring(t[1])},
+    t[2] and {dot, tostring(t[2])} or {M.EMPTY})
+end
+M.testing.N = function(name) return {name, kind='name'} end -- name
+M.testing.NUM = function(t)  return NumT('n10', t) end
+M.testing.HEX = function(t)  return NumT('n16', t) end
+M.testing.KW = KW
+
+-- formatting parsed so it can be copy/pasted
+local fmtKindNum = function(name, f, t)
+  f:write(name..sfmt('{%s%s%s}',
+    mty.eq(t[1],M.EMPTY) and '' or 'neg=1 ', t[2],
+    (mty.eq(t[3],M.EMPTY) and '') or (','..t[4])
+  ))
+end
+M.fmtKinds = {
+  EOF   = function(f, t) f:write'EOF'   end,
+  EMPTY = function(f, t) f:write'EMPTY' end,
+  name  = function(f, t) f:write(sfmt('N%q', t[1])) end,
+  n10   = function(...) fmtKindNum('NUM', ...) end,
+  n16   = function(...) fmtKindNum('HEX', ...) end,
+}
+-- Override Fmt.table with an instance of this for copy/paste debugging
+M.FmtPegl = mty'FmtPegl' {
+  'kinds [table]: kind -> fmtFn', kinds=M.fmtKinds,
+}
+M.FmtPegl.__call = function(ft, f, t)
+  if M.isKeyword(t) then f:write(sfmt('KW%q', t[1])); return end
+  local fmtK = t.kind and ft.kinds and ft.kinds[t.kind]
+  if fmtK then fmtK(f, t) else fmt.Fmt.table(f, t) end
+end
+M.RootSpec.newFmt = function()
+  local f = fmt.Fmt:pretty{}
+  f.table = M.FmtPegl{}
+  return f
+end
+
+return M

--- /dev/null
+++ lib/pegl/pegl/lua.lua
@@ -0,0 +1,267 @@
+local G = G or _G
+
+--- Lua syntax in PEGL
+---
+--- http://parrot.github.io/parrot-docs0/0.4.7/html/languages/lua/doc/lua51.bnf.html
+--- was used as a reference.
+local M = G.mod and G.mod'pegl.lua' or {}
+
+local mty = require'metaty'
+local ds  = require'ds'
+local add, sfmt = table.insert, string.format
+
+local Key
+local Pat, Or, Not, Many, Maybe
+local Token, Empty, Eof, PIN, UNPIN
+local EMPTY, common
+local pegl = ds.auto'pegl'
+local num = common.num
+
+local stmt = Or{name='stmt'}
+
+local keyW = Key{name='keyw', {
+  'end', 'if', 'else', 'elseif', 'while', 'do', 'repeat', 'local', 'until',
+  'then', 'function', 'return',
+}}
+local name = {UNPIN, Not{keyW}, Pat{'[%a_][%w_]*', kind='name'}}
+
+-- uniary and binary operations
+local op1 = Key{name='op1', {'-', 'not', '#'}}
+local op2 = Key{name='op2', {
+  -- standard binops
+  '+', '-', '*', '/', '^', '%', 'and', 'or',
+  ['.'] = {true, '.'},                      -- .    ..
+  ['<'] = {true, '='}, ['>'] = {true, '='}, --  <   <=   >   >=
+  ['='] = {'='}, ['~'] = {'='}              --  ==  ~=
+}}
+
+-----------------
+-- Expression (exp)
+
+-- We do exp a little different from the BNF. We create an `exp1` which is a
+-- non-operated expression and then have `exp` implement a list of expression
+-- operations.
+--
+-- The BNF uses a (confusing IMO) recursive definition which weaves
+-- exp with var and prefixexp. Our definition deviates significantly because
+-- you cannot do non-progressive recursion in recursive-descent (or PEG):
+-- recursion is fine ONLY if you make "progress" (attempt to parse some tokens)
+-- before you recurse.
+--
+-- exp1 ::=  nil       |  false      |  true       |  ...        |
+--           Number    | unop exp    | String      | tbl         |
+--           function  | name
+
+local exp1 = Or{name='exp1', Key{{'nil', 'false', 'true'}}, Pat'%.%.%.', num}
+add(exp1, {op1, exp1})
+
+local exp = {name='exp'}    -- defined just below
+add(exp1, {'(', exp, ')', kind='group'})
+
+local call     = Or{kind='call'} -- function call (defined much later)
+local methcall = {UNPIN, ':', name, PIN, call, kind='methcall'}
+local index    = {kind='index',
+  UNPIN, '[', Not{Or{'[', '='}}, PIN, exp, ']'
+}
+local postexp  = Or{name='postexp', methcall, index, call}
+ds.extend(exp, {exp1, Many{ Or{postexp, {name='op2exp', op2, exp}} }})
+
+-- laststat ::= return [explist1]  |  break
+-- block    ::= {stat [`;´]} [laststat[`;´]]
+local explist  = Maybe{exp, Many{',', exp}}
+local return_ = {'return', explist, kind='return'}
+local laststmt = Or{name='laststmt', return_, 'break'}
+local block = {name='block',
+  Many{stmt, Maybe(';')},
+  Maybe{laststmt, Maybe(';')}
+}
+
+-----------------
+-- String (+exp1)
+local quoteImpl = function(p, char, pat, kind)
+  p:skipEmpty()
+  local l, c = p.l, p.c
+  if not p:consume(char) then return end
+  while true do
+    local c1, c2 = p.line:find(pat, p.c)
+    if c2 then
+      p.c = c2 + 1
+      local bs = string.match(p.line:sub(c1, c2), pat)
+      if ds.isEven(#bs) then
+        return Token:encode(p, l, c, p.l, c2, kind)
+      end
+    else
+      if p.line:sub(#p.line) == '\\' then
+        p:incLine(); if p:isEof() then error("Expected "..kind..", reached EOF") end
+      else error("Expected "..kind..", reached end of line") end
+    end
+  end
+end
+
+local singleStr = function(p) return quoteImpl(p, "'", "(\\*)'", 'singleStr') end
+local doubleStr = function(p) return quoteImpl(p, '"', '(\\*)"', 'doubleStr') end
+
+local bracketStrImpl = function(p)
+  local l, c = p.l, p.c
+  local start = p:consume('%[=*%['); if not start then return end
+  local _, cs, _, cs2 = start:span()
+  local pat = '%]'..string.rep('=', cs2 - cs - 1)..'%]'
+  l, c = p.l, p.c
+  while true do
+    local c2, ce = p.line:find(pat, p.c) if c2 then
+      local t = {kind='bracketStr', start,
+        Token:encode(p, l,   c,  p.l, c2-1),
+        Token:encode(p, p.l, c2, p.l, ce),
+      }; p.c = ce + 1
+      return t
+    else
+      p:incLine()
+      if p:isEof() then error(
+        "Expected closing "..pat:gsub('%%', '')..", reached EOF"
+      )end
+    end
+  end
+end
+local bracketStr     = function(p)
+  p:skipEmpty()
+  return bracketStrImpl(p)
+end
+local str     = Or{name='str', singleStr, doubleStr, bracketStr}
+add(exp1, str)
+
+
+-----------------
+-- Table (+exp1)
+
+-- field ::= `[´ exp `]´ `=´ exp  |  Name `=´ exp  |  exp
+local fieldsep = Key{{',', ';'}}
+local field = Or{kind='field',
+  {UNPIN, '[', exp, ']', '=', exp},
+  {UNPIN, name, '=', exp},
+  exp,
+}
+-- fieldlist ::= field {fieldsep field} [fieldsep]
+-- tableconstructor ::= `{´ [fieldlist] `}´
+local fieldlist = {name='fieldlist',
+  field, Many{UNPIN, fieldsep, field}, Maybe(fieldsep)}
+local tbl = {kind='table', '{', Maybe(fieldlist), '}'}
+add(exp1, tbl)
+
+-- fully define function call
+-- call ::=  `(´ [explist1] `)´  |  tableconstructor  |  String
+ds.extend(call, {
+  {kind='call', '(', explist, ')'},
+  {kind='callParen', tbl},
+  {kind="callStr", str},
+})
+
+-----------------
+-- Function (+exp1)
+
+-- namelist ::= Name {`,´ Name}
+-- parlist1 ::= namelist [`,´ `...´]  |  `...´
+-- funcbody ::= `(´ [parlist1] `)´ block end
+-- function ::= `function` funcbody
+local namelist = {name, Many{',', name}}
+local parlist = Or{name='parlist',
+  Pat'%.%.%.',
+  -- NeedLint: `...` only valid at the end
+  {name, Many{ ',', Or{Pat'%.%.%.', name} }},
+  Empty
+}
+local fnbody = {name='fnbody', '(', parlist, ')', block, 'end'}
+local fnvalue = {'function', fnbody, kind='fnvalue'}
+add(exp1, fnvalue)
+add(exp1, name)
+
+-----------------
+-- Statement (stmt)
+local elseif_  = {'elseif', {kind='cond', exp}, 'then', block, kind='elseif'}
+local else_    = {'else', block, kind='else'}
+local funcname = {name, Many{'.', name}, Maybe{UNPIN, ':', name}, kind='funcname'}
+
+-- varlist `=´ explist
+-- NeedLint: check that all items in first explist are var-like
+local varset = {UNPIN, explist, '=', PIN, explist, kind='varset'}
+
+ds.extend(stmt, {
+  {Pat'::', name, Pat'::', kind='loc'},
+
+  -- do block end
+  {'do', block, 'end', kind='do'},
+
+  -- while exp do block end
+  {'while', exp, 'do', block, 'end', kind='while'},
+
+  -- repeat block until exp
+  {'repeat', block, 'until', exp, kind='repeat'},
+
+  -- if exp then block {elseif exp then block} [else block] end
+  {'if', {kind='cond', exp}, 'then', block,
+    Many{elseif_}, Maybe(else_), 'end', kind='if'},
+
+  -- for Name `=´ exp `,´ exp [`,´ exp] do block end
+  {kind='fori',
+    UNPIN, 'for', name, '=', PIN,
+    exp, ',', exp, Maybe{',', exp}, 'do', block, 'end',
+  },
+
+  -- for namelist in explist1 do block end
+  {kind='for',
+    'for', namelist, 'in', explist, 'do', block, 'end'
+  },
+
+  -- funcname ::= Name {`.´ Name} [`:´ Name]
+  -- function funcname funcbody
+  {'function', funcname, fnbody, kind='fndef'},
+
+  -- local function Name funcbody
+  {UNPIN, 'local', 'function', PIN, name, fnbody, kind='fnlocal'},
+
+  -- local namelist [`=´ explist1]
+  {'local', namelist, Maybe{'=', explist}, kind='varlocal'},
+
+  varset,
+
+  -- catch-all exp
+  -- NeedLint: only a fncall is actually valid syntax
+  {exp, kind='stmtexp'},
+})
+
+local function skipComment(p)
+  if not p.line then return end
+  local c, c2 = p.line:find('^%-%-', p.c)
+  if not c then return end
+  local l = p.l; p.c = c2+1
+  local t = bracketStrImpl(p)
+  if t and mty.ty(t) ~= Token then
+    local l1, c1 = t[1]:span()
+    return Token:encode(p, l1, c1, select(3, t[#t]:span()))
+  end
+  if t then t.c = c; return t
+  else
+    p.l, p.line = l, p.dat[l]
+    local _, c2 = p.line:find('^.*', c2+1)
+    return Token:encode(p, l, c, l, c2)
+  end
+end
+
+local src = {name='src', block, Eof}
+M.root = pegl.RootSpec{skipComment=skipComment}
+local parse = function(dat, spec, root)
+  root = root or M.root
+  -- FIXME: this is mutating the global!
+  if not root.skipComment then root.skipComment = skipComment end
+  return pegl.parse(dat, spec, root)
+end
+
+return ds.update(M, {
+  src=src,
+  skipComment=skipComment,
+  exp=exp, exp1=exp1, stmt=stmt,
+  num=num, str=str,
+  field=field,
+  explist=explist,
+  varset=varset,
+  name=name, call=call,
+})

--- /dev/null
+++ lib/pegl/tests/test_lua.lua
@@ -0,0 +1,367 @@
+METATY_CHECK = true
+
+local mty = require'metaty'
+local ds = require'ds'
+local pth = require'ds.path'
+local T = require'civtest'
+
+local RootSpec, Token
+local testing, EMPTY, EOF, assertParse, assertParseError
+local pegl = ds.auto'pegl'
+
+local num, str, exp1, exp, field, varset
+local root, src
+local M = ds.auto'pegl.lua'
+local D = 'lib/pegl/'
+
+local KW, N, NUM, HEX; ds.auto(testing)
+local SRC = function(...) return {..., EMPTY, EMPTY, EOF} end
+
+T.easy = function()
+  assertParse{dat='42  0x3A', spec={num, num}, expect={
+    NUM'42', HEX'0x3A',
+  }, root=root}
+  assertParse{dat='  nil\n', spec={exp1}, expect=KW('nil')}
+  assertParse{
+    dat='true  \n false', spec={exp1, exp1},
+    expect={KW('true'), KW('false')}}
+
+  -- use exp instead
+  assertParse{dat='  nil\n', spec={exp}, expect=KW('nil')}
+end
+
+T.str = function()
+  assertParse{dat=' "hi there" ', spec={str},
+    expect={kind='doubleStr', '"hi there"'}}
+  assertParse{dat=[[  'yo\'ya'  ]], spec={str},
+    expect={kind='singleStr', [['yo\'ya']]}}
+  assertParseError{dat=[[  'yo\'ya"  ]], spec={exp},
+    errPat='Expected singleStr, reached end of line'
+  }
+  assertParse{dat=[[  'single'  ]], spec={str},
+    expect={kind='singleStr', [['single']]}}
+  assertParse{dat=[[  'single'  ]], spec={str},
+    expect={kind='singleStr', [['single']]}}
+
+  assertParse{dat="[[a ['string'] ]]", spec=str, root=root,
+    expect={kind='bracketStr', "[[", "a ['string'] ", "]]"}}
+  assertParse{dat="[====[\n[=[\n[[ wow ]]\n]=]\n]====]",
+    spec=str, root=root,
+    expect={kind='bracketStr',
+      "[====[", "\n[=[\n[[ wow ]]\n]=]\n", "]====]",
+    }}
+end
+
+T.decimal = function()
+  assertParse{dat='-42 . 3343', spec={num}, expect=
+    NUM{neg=true, '42','3343'}
+  , root=root}
+end
+
+
+T.field = function()
+  assertParse{dat=' 44 ',     spec={field},
+    expect={kind='field', NUM'44'}}
+  assertParse{dat=' hi ',     spec={field},
+    expect={kind='field', {kind='name', 'hi'}}}
+  assertParse{dat=' hi="x" ', spec={field},
+    expect={kind='field',
+      {kind='name', 'hi'}, KW('='), {kind='doubleStr', '"x"'},
+    }
+  }
+  assertParse{dat='[hi] = 4', spec={field},
+    expect = {
+      kind='field',
+      KW('['), {'hi', kind='name'}, KW(']'),
+      KW('='), NUM'4',
+    }
+  }
+end
+
+T.table = function()
+  assertParse{dat='{}', spec={exp}, 
+    expect={kind='table',
+      KW('{'), EMPTY, KW('}'),
+    },
+  }
+  assertParse{dat='{4}', spec={exp},
+    expect={kind='table',
+      KW('{'),
+      {kind='field', NUM'4'},
+      EMPTY,
+      KW('}'),
+    },
+  }
+  assertParse{dat='{4, x="hi"}', spec={exp},
+    expect={ kind='table',
+      KW('{'),
+      {kind='field', NUM'4'},
+      KW(','),
+      {kind='field',
+        {kind='name', 'x'}, KW('='), {kind='doubleStr', '"hi"'}},
+      EMPTY,
+      KW('}'),
+    },
+  }
+end
+
+T.fnValue = function()
+  assertParse{dat='function() end', spec={exp},
+    expect = { kind='fnvalue',
+      KW('function'), KW('('), EMPTY, KW(')'),
+      EMPTY,
+      KW('end'),
+    },
+  }
+end
+
+T.expression = function()
+  assertParse{dat='x+3', spec=exp,
+    expect={N'x', KW'+', NUM'3'},
+  }
+  assertParse{dat='x()+3', spec=exp,
+    expect= {
+      N"x", {kind='call',
+        KW"(", EMPTY, KW")",
+      }, KW"+", NUM'3'
+    },
+  }
+end
+
+T.require = function()
+  assertParse{dat='local F = require"foo"', spec=src,
+    expect = SRC(
+      { kind='varlocal',
+        KW('local'),
+        {kind='name', 'F'},
+        KW('='),
+        {kind='name', 'require'}, {kind='callStr',
+          {kind='doubleStr', '"foo"'},
+        },
+      }
+    ),
+  }
+end
+
+T.varset = function()
+  local code1 = 'a = 7'
+  local expect1 = {kind='varset', N'a', KW'=', NUM'7',
+  }
+  assertParse{dat=code1, spec=varset, expect=expect1}
+end
+
+T.comment = function()
+  local expect = SRC(
+    {kind='varset',
+      N"x", KW"=", {kind="table",
+        KW"{", EMPTY, KW"}",
+      },
+    })
+  assertParse{dat='x = --line\n  {}', spec=src,
+    expect=expect, root=root,
+  }
+  assertParse{dat='x = -- block{}\n{}', spec=src,
+    expect = expect, root=root,
+  }
+  assertParse{dat='x\n=\n-- \n--block\n\n{}--hi\n--EOF', spec=src,
+    expect = expect, root=root,
+  }
+end
+
+T.function_ = function()
+  assertParse{ spec=src, root=root,
+    dat=[[ local function f(a) end ]],
+    expect = {
+      {kind="fnlocal",
+        KW"local", KW"function", N"f", KW"(", N"a", KW")", EMPTY, KW"end",
+      }, EMPTY, EMPTY, EOF
+    },
+  }
+end
+
+T.fncall = function()
+  local r, n, p = assertParse{dat='foo(4)', spec=src, root=root,
+    expect = SRC({ kind="stmtexp",
+      N"foo", {kind='call',
+        KW"(", NUM'4', KW")",
+      },
+    })
+  }
+  local expect = [[{
+  {
+    N"foo", {
+      KW"(", NUM{4}, KW")", 
+      kind="call"
+    }, 
+    kind="stmtexp"
+  }, EMPTY, EMPTY, EOF
+}]]
+  T.eq(expect, table.concat(root.newFmt()(r)))
+
+  assertParse{dat='foo({__tostring=4})', spec=src, root=root,
+    expect = SRC({ kind="stmtexp",
+      N"foo", { kind='call',
+        KW"(", { kind="table",
+          KW"{",
+            {N"__tostring", KW"=", NUM'4', kind="field"}, EMPTY,
+          KW"}",
+        }, KW")",
+      },
+    })
+  }
+
+  assertParse{dat='foo"4"', spec=src, root=root,
+    expect = SRC({ kind="stmtexp",
+      N"foo", {kind='callStr',
+        {"\"4\"", kind="doubleStr"}
+      },
+    })
+  }
+
+  assertParse{dat='foo[[4]]', spec=src, root=root,
+    expect = SRC({ kind="stmtexp",
+      N"foo", {kind='callStr',
+        {"[[", "4", "]]", kind="bracketStr"}
+      },
+    }),
+  }
+end
+
+T.if_elseif_else = function()
+  assertParse{dat='if n==nil then return "" end', spec=src, root=root,
+    expect=SRC(
+    { kind='if',
+      KW"if",
+        { kind='cond',
+          N"n", KW"==", KW"nil",
+        }, KW"then", { kind='return',
+        KW"return", {
+          "\"\"", kind="doubleStr"
+        },
+      }, EMPTY, EMPTY, KW"end",
+    })
+  }
+end
+
+T.fnChain = function()
+  assertParse{dat='x(1)(3)', spec=src, root=root,
+    expect=SRC{ kind="stmtexp", N"x",
+      { KW"(", NUM{1}, KW")", kind="call" },
+      { KW"(", NUM{3}, KW")", kind="call" },
+    }
+  }
+
+  local DAT=[[x "a ['string'] "]]
+  assertParse{dat=DAT, spec=src, root=root,
+    expect = SRC { kind="stmtexp",
+        N"x", { kind="callStr",
+        { "\"a ['string'] \"", kind="doubleStr" },
+      },
+    }
+  }
+end
+
+T.src1 = function()
+  local code1 = 'a.b = function(y, z) return y + z end'
+  local expect1 = SRC({kind='varset',
+    N'a', KW'.', N'b', KW'=', {kind='fnvalue',
+      KW'function', KW'(', N'y', KW',', N'z', KW')',
+      {kind='return', KW'return', N'y', KW'+', N'z'},
+      EMPTY,
+      KW'end',
+    },
+  })
+  assertParse{dat=code1, spec=src, expect=expect1}
+
+  local code2 = code1..'\nx = y'
+  local expect2 = ds.copy(expect1)
+  table.remove(expect2) -- EOF
+  table.remove(expect2) -- EMPTY
+  ds.extend(expect2, SRC({kind='varset',
+    N'x', KW'=', N'y',
+  }))
+  assertParse{dat=code2, spec=src, expect=expect2}
+end
+
+local function extendExpectAssert(code, spec, expect, extend, dbg)
+  T.eq(EOF, table.remove(expect))
+  T.eq(EMPTY, table.remove(expect))
+  T.eq(EMPTY, table.remove(expect))
+  ds.extend(expect, extend)
+  table.insert(expect, EMPTY)
+  table.insert(expect, EMPTY)
+  table.insert(expect, EOF)
+  assertParse{dat=code, spec=spec, expect=expect, root=root, dbg=dbg}
+end
+
+T.src2 = function()
+  local code = '-- this is a comment\n--\n-- and another comment\n'
+  assertParse{dat=code, spec=src, expect={EMPTY, EOF}, root=root}
+
+  local expect = {EMPTY, EMPTY, EOF}
+  local code = code..'\nlocal add = table.insert\n'
+  extendExpectAssert(code, src, expect, {{kind='varlocal',
+    KW'local', N'add', KW'=', N'table', KW'.', N'insert'
+  }})
+
+  local code = code..'\nlocal add = table.insert\n'
+  extendExpectAssert(code, src, expect, {EMPTY, {kind='varlocal',
+    KW'local', N'add', KW'=', N'table', KW'.', N'insert'
+  }})
+
+  local code = code..'local last = function(t) return t[#t] end\n'
+  extendExpectAssert(code, src, expect, {EMPTY, {kind='varlocal',
+    KW'local', N'last', KW'=',
+      {kind='fnvalue',
+        KW'function', KW'(', N't', KW')',
+        {kind='return',
+          KW'return', N't', {kind='index',
+            KW'[', KW'#', N't', KW']',
+          }
+        },
+        EMPTY, KW'end',
+      },
+    },
+  })
+end
+
+local ERR_EXPECT = [===[
+[LINE 2.20]        x = 1 + {2 3} -- '2 3' is invalid
+                             ^
+Cause: parser expected: "}"
+Got: 3} -- '2 3' is invalid
+Parse stack:
+  src(1.7)
+  block(1.7)
+  stmt(1.7)
+  fnlocal(1.7)
+  fnbody(1.23)
+  block(2.9)
+  stmt(2.9)
+  varset(2.9)
+  exp(2.13)
+  op2exp(2.15)
+  exp(2.17)
+  exp1(2.17)
+  table(2.17)]===]
+
+T.error = function()
+  T.throws(ERR_EXPECT, function()
+    pegl.parse([[
+      local function x()
+        x = 1 + {2 3} -- '2 3' is invalid
+      end
+    ]], src, RootSpec{dbg=false})
+  end)
+end
+
+local function testLuaPath(path)
+  local text = pth.read(path)
+  assertParse{dat=text, spec=src, root=root, parseOnly=true}
+end
+
+T.parseSrc = function()
+  -- testLuaPath('/patience/patience2.lua')
+  testLuaPath(D..'pegl.lua')
+  testLuaPath(D..'pegl/lua.lua')
+end

--- /dev/null
+++ lib/pegl/tests/test_pegl.lua
@@ -0,0 +1,107 @@
+METATY_CHECK = true
+
+local mty = require'metaty'
+local T = require'civtest'
+local ds = require'ds'
+local Set = ds.Set
+
+local RootSpec, Key
+local Pat, Or, Not, Many, Maybe, Seq
+local Empty, Eof, PIN, UNPIN
+local testing, EMPTY, EOF, assertParse, assertParseError
+local pegl = ds.auto'pegl'
+
+local KW, N = testing.KW, testing.N
+
+local function testEncode(d, e, ...)
+  T.eq({...}, {d(e(...))})
+end
+
+T.lc_encode = function()
+  local e, d = pegl.encodeSpan, pegl.decodeSpan
+  testEncode(d, e, 1, 2, 3, 4)
+  local bigL = 0x1FFFF
+  testEncode(d, e, bigL, 1, bigL+100, 20)
+end
+
+T.keywords = function()
+  assertParse{
+    dat='hi there bob',
+    spec=Seq{'hi', 'there', 'bob', Eof},
+    expect={KW('hi'), KW('there'), KW('bob'), EOF}
+  }
+
+  -- keyword search looks for token break
+  assertParse{
+    dat='hitherebob',
+    spec=Seq{'hi', 'there', 'bob', Eof},
+    expect=nil,
+  }
+
+  assertParse{
+    dat='hi+there',
+    spec=Seq{'hi', '+', 'there', Eof},
+    expect={KW('hi'), KW('+'), KW('there'), EOF},
+  }
+end
+
+T.key = function()
+  local kws = Key{{'hi', 'there', 'bob'}, kind='kw'}
+  assertParse{
+    dat='hi there', spec={kws, kws},
+    expect={{kind='kw', 'hi'}, {kind='kw', 'there'}},
+  }
+  local kws = Key{{'x', ['+']={true, '+'}}}
+  assertParse{
+    dat='x + x ++ x', spec={kws, kws, kws, kws, kws},
+    expect={KW'x', KW'+', KW'x', KW'++', KW'x'},
+  }
+end
+
+T.pat = function()
+  assertParse{
+    dat='hi there bob',
+    spec={'hi', Pat('%w+'), 'bob', Eof},
+    expect={KW('hi'), 'there', KW('bob'), EOF},
+  }
+end
+
+T.or_ = function()
+  assertParse{
+    dat='hi +-',
+    spec={'hi', Or{'-', '+'}, Or{'-', '+', Empty}, Or{'+', Empty}, Eof},
+    expect={KW('hi'), KW('+'), KW('-'), EMPTY, EOF},
+  }
+end
+
+T.many = function()
+  assertParse{
+    dat='hi there bob',
+    spec=Seq{Many{Pat'%w+', kind='words'}},
+    expect={'hi', 'there', 'bob', kind='words'},
+  }
+end
+
+T.pin = function()
+  assertParseError{
+    dat='hi there jane',
+    spec={'hi', 'there', 'bob', Eof},
+    errPat='expected: "bob"',
+  }
+  assertParseError{
+    dat='hi there jane',
+    spec={UNPIN, 'hi', 'there', PIN, 'bob', Eof},
+    errPat='expected: "bob"',
+  }
+
+  assertParse{
+    dat='hi there jane',
+    spec=Seq{UNPIN, 'hi', 'there', 'bob', Eof},
+    expect=nil,
+  }
+  assertParse{
+    dat='hi there jane',
+    spec=Seq{UNPIN, 'hi', 'there', 'bob', PIN, Eof},
+    expect=nil,
+  }
+end

--- /dev/null
+++ lib/pkg/PKG.lua
@@ -0,0 +1,16 @@
+-- Note: this is only for demonstration and working with the pkgrock utility.
+-- Obviously you cannot import pkg using pkg (you must require'pkglib')
+
+name     = 'pkg'
+version  = '0.1-15'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "local and recursive require"
+homepage = "https://lua.civboot.org#Package_pkg"
+license  = "UNLICENSE"
+doc      = 'README.cxt'
+srcs = {
+  'pkglib.lua',
+}
+deps = {
+  "lua ~> 5.3",
+}

--- /dev/null
+++ lib/pkg/README.cxt
@@ -0,0 +1,123 @@
+[{h1}pkg: local and recursive require]
+
+This directory exports one lua module ([$pkglib.lua]) and enables [$PKG.lua]
+files to be used for looking up [$require'someModule'] statements in lua.
+
+Why: [+
+* local development: set [$LUA_PKGS=./] and it will only search for pkgs in your
+  current directory. You can define a [$PKG.lua] with a [$pkgs] variable to
+  recursively search for other locally defined packages (see [/PKG.lua])
+* concise [$LUA_PKGS] environment variables: you no longer have to maintain a huge
+  and impossible to read [$LUA_PATH] variable with a bunch of obtuse [$?].
+* performance: the [$PKG.lua] locations are cached for future lookups whereas
+  [$LUA_PATH] must perform a complete search every time.
+* explicitness: (optional) adds global [$G] to allow explicit globals and makes
+  using implicit globals an error.
+]
+
+[" civlua uses this library to maintain 10+ projects at
+   [<http://github.com/civboot/civlua>civlua]. PKG files can be converted to
+   rockspec using [$./civ.lua pkgrock --help]]
+
+
+[{:h3 name=pkg-install}Installation]
+In your [$~/.bashrc] or equiavalent add: [{## lang=sh}
+LUA_PATH="path/to/civlua/lib/pkg/?.lua;..."
+LUA_PKGS="path/to/civlua;path/to/other/pkg;..."
+]##
+
+You can get an interactive lua prompt with
+[$lua -e \"require'pkglib'()\"; G.MAIN = {}" -i]
+(Note: however, you must use [$G.foo] for setting globals, so you may want to
+do it slightly different for the shell)
+
+Alternatively, you can put the following at the top of your lua scripts and they
+will be executed with pkg require installed (this is what [/civ.lua] does): [##
+#!/usr/bin/env -S lua -e "require'pkglib'()"
+]##
+
+[{h3 name=define-pkg}Define PKG]
+
+Your libraries (packages) should have a `PKG.lua` in their root:
+[{## lang=lua}
+name    = 'myLib'
+version = '0.1-0'
+url     = 'git+http://github.com/my/repo'
+srcs    = {
+    'myLib.lua',      -- require'myLib'
+    'myLib/sub1.lua', -- require'myLib.sub1'
+
+    -- require'myLib.sub2'
+    ['myLib.sub2'] = 'lib/myLib/submodule.lua'}, 
+}
+pkgs = {
+  'path/to/subpkg/',
+}
+
+-- (optional) provide initial rockspec for external tooling
+-- https://github.com/luarocks/luarocks/wiki/Rockspec-format
+rockspec = {}
+]##
+
+
+[{h3 name=pkg-protocol}PKG Protocol]
+pkg exports a few OPTIONAL global variables. Other libraries which override
+[$require] or want to create self-documenting code are encouraged to use these
+in the following way in order to support both normal and pkglib environments: [+
+* [$local G = G or _G] to define/get undefined globals in a typosafe way [+
+  * pkglib sets a metatable to [$_G] so that access to [*undefined] globals
+    throw an error. Note that **defined** globals behave normally with no
+    performance penalty.
+  * Usage: `G.myGlobal = G.myGlobal or true` will define the global `myGlobal`
+    as `true` if it is not already defined.
+  ]
+* [$local M = G.mod and mod'myModName' or {}] to initialize your module. This
+  enables self-documenting modules (global [$mod]).
+
+* [$G.MAIN = G.MAIN or M] should be run before you [$require] other libraries,
+  but only if your module is runnable from the command line. [+
+  * Why: later (at the bottom of your script) you can do
+    [$if M == MAIN then M.main(arg); os.exit(0) end] to make your library run as
+    a script when called directly.
+  * This is never required for libraries. It is REQUIRED if your script can be
+    run from the command line and installs pkg-protocol libraries in it's
+    dependency tree, as many libraries behave differently when called directly
+    (i.e. they will run a command and exit).
+  ]
+]
+
+[{h3 name=pkg-script}Example Script] [{## lang=lua}
+#!/usr/bin/env -S lua -e "require'pkglib'()"
+local G = G or _G -- typosafe globals
+
+--- this module is self documenting from pkglib.
+--- Get documentation with [$doc 'myModName.item']
+local M = G.mod and mod'myModName' or {} -- self-documenting module
+G.MAIN = G.MAIN or M                     -- (cmdline script only)
+
+--- docs for myFn
+M.myFn = function() ... end --> returnType
+
+--- docs for main function when run directly
+M.main = function(args) --> int
+  ... use as a script
+end
+
+if M == MAIN then os.exit(M.main(arg)) end
+return M -- return as a library
+]##
+
+See also: [<#Package_doc>], [<#Package_shim>]
+
+[{h3}How do PKG.lua files work?]
+PKG.lua files are executed in a sandbox. Their environment has access to only
+the following globals: [+
+* [$pairs ipairs error assert]
+* from string: [$format]
+* from table: [$insert sort concat]
+]
+
+It also has the globals [$UNAME, LIB_EXT] which can be values such as
+[$"Linux",".so"] or [$"Windows",".dll"] and are for loading C libraries.
+
+Any globals that the PKG.lua script defines are used as the configuration.

--- /dev/null
+++ lib/pkg/pkglib.lua
@@ -0,0 +1,281 @@
+-- pkg: better lua pkg creation and importing
+-- usage:
+--   require'pkglib'()
+
+local push, sfmt = table.insert, string.format
+local M = setmetatable({}, {
+  __name='Mod<pkglib>',
+  __index = function(_, k) error('pkglib does not have field: '..k) end,
+})
+
+-- cache globals / fallback
+M.require = require
+
+-- Documentation globals
+local weakk = {__mode='k'}
+PKG_NAMES  = PKG_NAMES  or setmetatable({}, weakk)        -- obj -> name
+PKG_LOC   = PKG_LOC     or setmetatable({}, weakk)        -- obj -> path:loc
+PKG_LOOKUP = PKG_LOOKUP or setmetatable({}, {__mode='v'}) -- name -> obj
+
+-- pkg.UNAME is the platform, typically: Windows, Linux or Darwin
+if package.config:sub(1,1) == '\\' then
+  M.UNAME = 'Windows'
+else
+  local f = io.popen'uname'; M.UNAME = f:read'*a':match'%w+'; assert(f:close())
+end
+
+-------------------
+-- Internal utility functions
+
+local function pexists(p)
+  local f = io.open(p)
+  return f and (f:close() or true) or false
+end
+local function passert(p)
+  if type(p) == 'table' then return p end -- no validation on tables
+  if #p == 0           then error('empty path')                          end
+  if p:sub(1,1) == '/' then error('root path (/a/b) not permitted: '..p) end
+  if p:match('%.%.')   then error('backtrack (/../) not permitted: '..p) end
+  return p
+end
+local function pjoin(a, b) --> a/b
+  if b:sub(1,1) then sfmt('root path not permitted: %s', b) end
+  a = a:sub(-1) == '/' and a:sub(1, -2) or a
+  return sfmt('%s/%s', a, b)
+end
+
+-------------------
+-- Library constants / etc
+
+--- Helper for PKG.lua files loading compiled dynamic libraries
+M.LIB_EXT = '.so'; if M.UNAME == 'Windows' then M.UNAME = '.dll' end
+
+-- discover() sets this as table[name, dir]
+M.PKGS = false
+
+-- These are modified before loading the package.
+-- The package can inspect it to (for example) know it's version string,
+-- i.e. local version = require'pkglib'.PKG.version
+--
+-- It is recommended to do this before executing any other `pkg()` calls!
+M.PKG  = nil -- PKG.lua being loaded
+M.PATH = nil -- path to lua file being loaded
+
+M.ENV = {
+  UNAME=UNAME,   LIB_EXT=M.LIB_EXT,
+  format=string.format,
+  insert=table.insert, sort=table.sort, concat=table.concat,
+  pairs=pairs,   ipairs=ipairs,
+  error=error,   assert=assert,
+}; M.ENV.__index = M.ENV
+
+--- Compile + Run (load) paths
+local loaderr = function(name, path, err)
+  error(string.format('loading pkg %s at %s: %s', name, path, err))
+end
+
+--- load(path) -> globals
+M.load = function(name, path); assert(name and path)
+  local env = setmetatable({}, M.ENV)
+  local pkg, err = loadfile(path, nil, env)
+  if not pkg then loaderr(name, path, err) end
+  pkg()
+  return env
+end
+
+--- load the PKG from dir, return it and it's path
+M.loadpkg = function(dir, name) --> (PKG, pkgpath)
+  local path = pjoin(dir, 'PKG.lua')
+  if not pexists(path) then return nil, 'pkg DNE' end
+  local pkg = M.load(name or 'PKG', path)
+  if pkg.name:find'%.' then
+    error("pkg name cannot contain '.': "..pkg.name)
+  end
+  pkg.PKG_DIR = dir; pkg.dir = dir
+  return pkg, path
+end
+
+--- load a native library (i.e. so, dll) and return loaded module
+M.loadlib = function(name, path) --> mod
+  local mod, err = package.loadlib(path, 'luaopen_'..name:gsub('%.', '_'))
+  if not mod then loaderr(name, path, err) end
+  return mod()
+end
+
+-------------------
+-- Finding
+local function _discover(pkgdir)
+  local pkg, pkgpath = M.loadpkg(pkgdir)
+  if not pkg then return end
+  M.PKGS[pkg.name] = pkgdir
+  if not pkg.pkgs then return end
+  for _, dir in ipairs(pkg.pkgs) do
+    _discover(pjoin(pkgdir, passert(dir)))
+  end
+end
+M.discover = function(luapkgs)
+  M.PKGS = {}
+  local pkgs = {'.'}; for d in luapkgs:gmatch'[^;]+' do push(pkgs, d) end
+  for _, dir in ipairs(pkgs) do _discover(dir) end
+end
+
+-------------------
+-- Loading
+
+-- modules(PKG.srcs) -> map[name -> path]
+M.modules = function(pkgsrcs) --> table[name -> path]
+  local mods = {}
+  for mname, mpath in pairs(pkgsrcs) do
+    if     type(mname) == 'string' then -- already set
+    elseif type(mname) == 'number' then
+       mname = mpath:gsub('%.lua$', ''):gsub('/', '.')
+    else error('invalid srcs key type: '..type(mname)) end
+    mods[mname] = passert(mpath)
+  end
+  return mods
+end
+
+
+--- get pkg's PKG.lua values
+M.getpkg = function(pkgname) --> PKG, pkgdir
+  if not M.PKGS then M.discover(os.getenv'LUA_PKGS' or '') end
+  local pkgdir = M.PKGS[pkgname]; if not pkgdir then return end
+  local pkg = M.loadpkg(pkgdir, pkgname)
+  return pkg, pkgdir
+end
+
+--- get the package. The API is identical to 'require' except
+--- it uses LUA_PKGS to search.
+M.get = function(name, fallback)
+  fallback = (fallback == nil) and M.require or fallback
+  local mod = package.loaded[name]; if mod then return mod end
+  -- use fallback if pkg doesn't exist
+  local pkgname = name:match'(.*)%.' or name
+  local pkg, pkgdir = M.getpkg(pkgname)
+  if not pkg then
+    if fallback then return fallback(name) end
+    error(sfmt('name %s (pkgname=%s) not found', name, pkgname))
+  end
+  -- search in srcs for lua modules
+  for mname, mpath in pairs(M.modules(pkg.srcs)) do
+    if mname == name and type(mpath) == 'string' and mpath:match'%.lua$' then
+      package.loaded[mname] = dofile(pjoin(pkgdir, mpath))
+      return package.loaded[mname]
+    end
+  end
+  -- search in libs for dynamic libraries
+  for mname, mpath in pairs(pkg.libs or {}) do
+    if mname == name then
+      passert(mpath)
+      package.loaded[mname] = M.loadlib(mname, pjoin(pkgdir, mpath))
+      return package.loaded[mname]
+    end
+  end
+  error(sfmt('PKG %q found but not sub-module %q', pkgname, name))
+end
+
+--- get any path separated by '.' including both [$require'some'.thing] and
+--- [$require'some.thing']
+M.getpath = function(dotpath) --> obj
+  if type(dotpath) == 'string' then -- split by '.'
+    local t = {}; for m in dotpath:gmatch'[^.]+' do push(t, m) end
+  end
+  local obj
+  for i=1,#dotpath do
+    local v = obj and ds.get(obj, ds.slice(dotpath, i))
+    if v then return v end
+    obj = pget(table.concat(dotpath, '.', 1, i))
+  end
+  return obj
+end
+
+
+-----------------------
+-- MOD
+local CONCRETE_TYPE = {
+  ['nil']=true, bool=true, number=true, string=true,
+}
+local srcloc = function(level)
+  local info = debug.getinfo(2 + (level or 0), 'Sl')
+  local loc = info.source; if loc:sub(1,1) ~= '@' then return end
+  return loc:sub(2)..':'..info.currentline
+end
+
+-- mod(name) -> Mod{}: create a typosafe mod
+do local modloc = srcloc()
+  M.mod = {}
+  PKG_LOC[M.mod] = modloc; PKG_NAMES[M.mod] = 'mod'; PKG_LOOKUP.mod = M.mod
+  M.mod.__name='Mod'
+  M.mod.__index=function(m, k) error('mod does not have: '..k, 2) end
+  M.mod.__newindex=function(t, k, v)
+    rawset(t, k, v)
+    if type(k) ~= 'string' then return end
+    local n = rawget(t, '__name')
+    M.mod.save(t.__name..'.'..k, v)
+  end
+
+  -- member function (not method)
+  -- save v with name to PKG variables
+  M.mod.save = function(name, v)
+    if CONCRETE_TYPE[type(v)] then return end
+    PKG_LOC[v]  = PKG_LOC[v]  or srcloc(2)
+    PKG_NAMES[v] = PKG_NAMES[v] or name
+    PKG_LOOKUP[name] = PKG_LOOKUP[name] or v
+  end
+
+  setmetatable(M.mod, {
+    __name='Mod',
+    __call=function(T, name)
+      assert(type(name) == 'string', 'must provide name str')
+      local m = setmetatable({__name=name}, {
+        __name=sfmt('Mod<%s>', name),
+        __index=M.mod.__index,
+        __newindex=M.mod.__newindex,
+      })
+      M.mod.save(name, m)
+      return m
+    end,
+  })
+end
+
+M.isPkg = function(t)
+  return type(t) == 'table' and rawget(t, 'PKG_DIR') and true
+end
+
+M.isMod = function(t)
+  if type(t) ~= 'table' then return false end
+  local mt = getmetatable(t)
+  return mt and mt.__name and mt.__name:find'^Mod<'
+end
+
+M.G = setmetatable({}, {
+  __name='G(init globals)',
+  __index    = function(_, k)    return rawget(_G, k)    end,
+  __newindex = function(g, k, v) return rawset(_G, k, v) end,
+})
+
+local noG = function(_, k)
+  error(sfmt(
+    'global %s is nil/unset. Initialize with G.%s = non_nil_value', k, k
+  ), 2)
+end
+
+--- make globals typosafe
+M.safeGlobal = function()
+  -- define method for explicit access
+  rawset(_G, 'G', rawget(_G, 'G') or M.G)
+  -- override _G (globals table) to throw error on undefined access
+  setmetatable(_G, {__name='_G(globals)', __index=noG, __newindex=noG})
+end
+
+--- call pkglib directly to "install" it, making [$require] use [$pkglib.get]
+--- and adding [$G] and [$mod] globals.
+getmetatable(M).__call = function()
+  if require == M.get then return end
+  M.safeGlobal()
+  G.mod     = G.mod or M.mod
+  G.require = M.get
+end
+
+getmetatable(M).__newindex = function() error'do not modify pkg' end
+return M

--- /dev/null
+++ lib/pod/Makefile
@@ -0,0 +1,39 @@
+# Copy/pastable Makefile for Lua C sources.
+
+# Modify these for a new library
+NAME  = pod
+FILES = $(NAME).c
+OUT   = $(NAME)
+LUA_VERSION = lua
+
+UNAME != uname
+build:  $(UNAME)
+NetBSD: $(OUT).so
+Linux:  $(OUT).so
+Darwin: $(OUT).so
+# Windows: $(OUT).dll
+
+WNO = -Wno-incompatible-function-pointer-types
+
+$(OUT).so: $(FILES)
+	make Build$(UNAME)
+
+# test: $(FILES)
+# 	$(CC) ds_test.c -l$(LUA_VERSION) -I/usr/pkg/include/$(LUA_VERSION) -o smol_test
+# 	./ds_test
+
+BuildNetBSD:
+	$(CC) $(FILES) -fPIC -llua -I/usr/pkg/include/$(LUA_VERSION) -shared -o $(OUT).so
+
+BuildLinux:
+	$(CC) $(FILES) -fPIC -l$(LUA_VERSION) -I/usr/include/$(LUA_VERSION) -shared -o $(OUT).so
+
+BuildDarwin:
+	$(CC) $(FILES) $(shell pkg-config lua --cflags) -c -O2 -fPIC $(WNO)
+	$(CC) $(OUT).o -bundle -undefined dynamic_lookup -all_load     -o $(OUT).so
+
+# BuildWindows: TODO
+
+clean:
+	rm -f $(OUT).o $(OUT).so $(OUT).dll smol_test
+

--- /dev/null
+++ lib/pod/PKG.lua
@@ -0,0 +1,19 @@
+name     = 'pod'
+version  = '0.1-3'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "Plain old data (POD) de/serialization"
+homepage = "https://lua.civboot.org#Package_pod"
+license  = "UNLICENSE"
+doc      = 'README.cxt'
+deps = {
+  "lua    ~> 5.3",
+  "metaty ~> 0.1",
+}
+srcs = {
+  'pod.lua',
+  ['pod.native'] = 'pod.c',
+  'pod/testing.lua',
+}
+libs = {
+  ['pod.native'] = 'pod.so',
+}

--- /dev/null
+++ lib/pod/README.cxt
@@ -0,0 +1,94 @@
+[{h1}pod: plain-old-data library and serialization]
+
+A Lua library for specifying and converting types to/from "plain old data" and
+methods to serialize/deserialize those types to/from bytes. In Lua, the 5
+supported types considered "plain old data" are: nil, boolean, integer, string
+and any table of only these types.
+
+[{## lang=lua}
+local M = mod'mymod'
+local mty = require'metaty'
+local pod = require'pod'
+
+-- enums are already plain-old-data.
+M.Job = mty.enum'Job' { BOSS = 1, PEON = 2 }
+
+--- records need to have pod() called on them.
+--- This implements __toPod and __fromPod for the metaty record.
+M.Worker = pod(mty'Worker' {
+  'name [string] #1',    -- must specify type and #id
+  'job  [mymod.Job] #2', -- can lookup any type in PKG_LOOKUP
+  'salary [int] #3',
+  'schedule {int: mymod.Schedule} #4', -- map of weekday[1,7] -> scheduled time
+})
+
+M.Schedule = pod(mty'Schedule' {
+  'start [int]: start time in seconds since midnight',
+  'stop  [int]: stop time in seconds since midnight',
+})
+
+local serialized = pod.ser(M.Worker{...})   -- convert to string
+local worker = pod.de(serialized, M.Worker) -- convert from string
+]##
+
+Explanation of above:[+
+* [$metaty.enum] are already plain-old-data (no need to call [$pod()] on them).
+
+* [$metaty] record types can be made plain old data by calling the
+  [$pod()] module on them.
+
+  This simply implements the [$__toPod] and [$__fromPod] methods on them --
+  you can do this yourself if you prefer!
+
+* pod parses the metaty field type stanza as [$[singleType]], [${listType}] or
+  [${map: type}] repsecitively. The collection types are converted to
+  [$pod.List] and [$pod.Map] respectively.
+]
+
+[{h2}Serialization Best Practices]
+[+
+* Only make a type pod if it is actually plain-old-data -- the type must be
+  always convert to/from Lua concrete types [,even if called on a different
+  machine or on a future date]. For instance don't implement pod on a type with
+  a file inside it (even if you're using a path to reload it) since another
+  machine might not have that specific path!
+
+* If a type may be serialized anywhere (even by an older version of the
+  software), do not change or reuse the [$#id] of a field (changing the name is
+  okay if you can fix your dependencies).
+
+  ["If you need to delete the field then add it to [$__fieldIds={...}] to
+    ensure future you doesn't use the field id.]
+]
+
+[{h2}Usecases]
+Usecases of pod are:[+
+* database schema: The primary intended usecase of pod is to be used in
+  [@civdb] -- each "row" is simply a pod record.
+
+  ["This is likely the only usecase civlua will use]
+
+* general data storage: use [@pod.load] and [@pod.dump] to de/serialize
+  values to/from a file.
+
+* cross-language communication, see [<#xlang>Cross Language Tooling].
+
+* RPC framework: pod could be used in a similar capacity as JSON RPC to
+  communicate with other services (i.e. frontend <-> backend).
+]
+
+[{h2}library support]
+In addition to providing methods to de/serialize data to a compact binary form,
+pod exports the [$toPod()] and [$fromPod()] functions to help other libraries
+(i.e. [@lson]) de/serialize arbitrary lua types.
+
+[{h2 name=xlang}Cross Language Tooling]
+pod is designed to (eventually) serve the same need as
+[<https://protobuf.dev>protobuf]: it can and will generate code for other
+languages to read/write pod's binary serialization format.
+
+At this time, support for other languages has not started -- but the design of
+pod is meant to mimick protobuf as much as possible so that such a goal can be
+met in the future. Work on supporting multiple languages will likely not be
+part of the civlua project but the civlua project will support such work.
+

--- /dev/null
+++ lib/pod/pod.c
@@ -0,0 +1,270 @@
+#include <stdlib.h>
+#include <string.h>
+#include <errno.h>
+#include <stdbool.h>
+#include <stdio.h>
+#include <string.h>
+
+#include <lua.h>
+#include <lualib.h>
+#include <lauxlib.h>
+#include <assert.h>
+
+typedef lua_State LS;
+
+#define ASSERT(OK, ...) if(!(OK)) { luaL_error(L, __VA_ARGS__); }
+
+// #define DBG(...) printf("!D! " __VA_ARGS__)
+#define DBG(...)
+
+//************************
+//* POD: de/serialization of plain-old-data
+
+// decode value from bytes. v: current value, s: current shift
+static inline int deci(uint8_t const** b, uint8_t const* be, uint64_t* v, int s) {
+  while((*b < be) && (0x80 & **b)) {
+    *v |= ((0x7F & **b) << s);
+    s += 7; *b += 1;
+  }
+  if(*b >= be) return -1;
+  *v |= (**b << s); *b += 1;
+  return 0;
+}
+
+// encode value to bytes. v: current value
+static inline int enci(uint8_t** b, uint8_t* be, uint64_t v) {
+  while((*b < be) && (v > 0x7F)) {
+    **b = 0x80 | v; v = v >> 7; *b += 1;
+  }
+  if(*b >= be) return -1;
+  **b = v; *b += 1;
+  return 0;
+}
+
+#define  B_TABLE    0x00 /* indexed vals and key/vals */
+#define  B_MAP      0x20 /* key/vals */
+#define  B_LIST     0x40 /* indexed vals */
+#define  B_BYTES    0x60
+#define  B_POSITIVE 0x80 /*positive int*/
+#define  B_NEGATIVE 0xA0 /*negative int*/
+#define  B_RESERVED 0xC0 /*unused*/
+#define  B_OTHER    0xE0 /*none, false, true, floats/etc*/
+
+#define B_OTHER_NONE  0x00
+#define B_OTHER_FALSE 0x01
+#define B_OTHER_TRUE  0x02
+
+// encode lua type and count
+int enclv(uint8_t** b, uint8_t* e, uint8_t ty, uint64_t v) {
+  if(*b >= e) return -1;
+  if(v > 0x0F) {
+    **b = ty | 0x10 | (0x0F & v); *b += 1;
+    return enci(b,e, v>>4);
+  }
+  **b = ty | v; *b += 1;
+  return 0;
+}
+
+// decode lua type and count
+int declv(uint8_t const** b,uint8_t const* e, uint64_t* v, uint8_t* ty) {
+  if(*b >= e) return -1;
+  uint8_t c = **b; *b += 1; *ty = 0xE0 & c; *v = 0x0F & c;
+  if(0x10 & c) return deci(b,e, v,4);
+  return 0;
+}
+
+void ser(LS* L);
+
+void serString(LS* L, uint8_t type) {
+  size_t len; uint8_t const* s = lua_tolstring(L, -1, &len);
+  lua_pop(L, 1);
+  luaL_Buffer lb; uint8_t* bs = luaL_buffinitsize(L, &lb, 8 + len);
+  uint8_t* b = bs; ASSERT(0 == enclv(&b, b+8, type, len), "OOB");
+  luaL_addsize(&lb, b-bs);
+  luaL_addlstring(&lb, s, len);
+  luaL_pushresult(&lb);
+}
+
+void serTable(LS* L) { // (table) -> encoded
+  // get the tablei and cache the next value before buffinit
+  int tablei = lua_gettop(L);
+  size_t llen = lua_rawlen(L, tablei), mlen = 0; // list/map lens
+  lua_pushnil(L); while(lua_next(L, tablei)) {
+    lua_pop(L, 1); // ignore value
+    if(!lua_isinteger(L, -1)) mlen += 1;
+    else {
+      lua_Integer i = lua_tointeger(L, -1);
+      if((i <= 0) || (i > llen)) mlen += 1;
+    }
+  }
+  ASSERT(lua_checkstack(L, 20 + llen + mlen), "not enough stack");
+  lua_pushnil(L); // for map loop, needed BEFORE buffinit
+  luaL_Buffer lb; luaL_buffinit(L, &lb); // stack must balance until EoF
+  uint8_t* bs = luaL_prepbuffsize(&lb, 16); uint8_t* b = bs;
+  if(mlen) {
+    ASSERT(0 == enclv(&b,bs+16, llen ? B_TABLE : B_MAP, mlen), "OOB");
+    if(llen) ASSERT(0 == enci(&b,bs+16,llen), "OOB");
+  } else ASSERT(0 == enclv(&b,bs+16, B_LIST, llen), "OOB");
+  luaL_addsize(&lb, b-bs);
+
+  for(int i=1; i <= llen; i++) { // serialize list items
+    lua_geti(L, tablei, i);
+    ser(L);
+    luaL_addvalue(&lb);
+  }
+
+  uint8_t *s; size_t len;
+  while(true) { // serialize map items
+    lua_pushvalue(L, tablei+1);
+    if(!lua_next(L, tablei)) break; // else: (key, value)
+    lua_copy(L, -2, tablei+1); // copy key for next loop
+    if(lua_isinteger(L, -2)) {
+      int i = lua_tointeger(L, -2);
+      if((0 < i) && (i <= llen)) {
+        lua_pop(L, 2); continue; // skip list item
+      }
+    }
+
+    ser(L);
+    s = (uint8_t*) lua_tolstring(L, -1, &len); lua_pop(L, 1);
+
+    ser(L);
+    size_t len2; uint8_t const* s2 = lua_tolstring(L, -1, &len2);
+
+    luaL_addvalue(&lb);           // key
+    luaL_addlstring(&lb, s, len); // value
+  }
+
+  luaL_pushresult(&lb); // push encoded, end use of buffer
+  lua_replace(L, tablei); lua_pop(L, 1); // replace table and pop nextv
+}
+
+void serNumber(LS* L) {
+  ASSERT(lua_isinteger(L, -1), "float not supported");
+  lua_Integer i = lua_tointeger(L, -1); lua_pop(L, 1);
+  bool positive = (i >= 0); if(!positive) i = -i;
+  uint8_t buf[9]; uint8_t* b = buf;
+  ASSERT(0 == enclv(&b, b+9, positive ? B_POSITIVE : B_NEGATIVE, i), "OOB");
+  lua_pushlstring(L, buf, b-buf);
+}
+
+void serBoolean(LS* L) {
+  uint8_t b = B_OTHER | (lua_toboolean(L, -1) ? B_OTHER_TRUE : B_OTHER_FALSE);
+  lua_pop(L, 1); lua_pushlstring(L, &b, 1);
+}
+
+// v -> string: ser value as binary
+void ser(LS* L) {
+  switch(lua_type(L, -1)) {
+    case LUA_TNUMBER:  return serNumber(L);
+    case LUA_TBOOLEAN: return serBoolean(L);
+    case LUA_TSTRING:  return serString(L, B_BYTES);
+    case LUA_TTABLE:   return serTable(L);
+    default:
+      luaL_error(L, "unsupported lua type: %s", lua_typename(L, -1));
+  }
+}
+
+int l_ser(LS* L) {
+  ser(L); return 1;
+}
+
+void deserLuaB(LS* L, uint8_t const** b, uint8_t const* be);
+void deserTable(LS* L,
+                 uint8_t const** b, uint8_t const* be,
+                 uint8_t ty, uint64_t v) {
+  uint64_t llen = 0, mlen = 0;
+  switch (ty) {
+    case B_TABLE:
+      mlen = v;
+      ASSERT(0 == deci(b,be, &llen,0), "OOB");
+      break;
+    case B_MAP:  mlen = v; break;
+    case B_LIST: llen = v; break;
+    default: luaL_error(L, "unknown table type");
+  }
+
+  lua_createtable(L, llen, mlen);
+  for(uint64_t i = 1; i <= llen; i++) {
+    deserLuaB(L, b, be);
+    lua_rawseti(L, -2, i);
+  }
+  for(uint64_t i = 1; i <= mlen; i++) {
+    deserLuaB(L, b, be);
+    deserLuaB(L, b, be);
+    lua_rawset(L, -3);
+  }
+}
+
+void deserLuaB(LS* L, uint8_t const** b, uint8_t const* be) {
+  if(*b >= be) luaL_error(L, "OOB");
+  uint64_t v; uint8_t ty; ASSERT(0 == declv(b,be, &v,&ty), "OOB");
+  switch(ty) {
+    case B_TABLE:
+    case B_MAP:
+    case B_LIST: return deserTable(L, b,be, ty,v);
+    case B_BYTES:
+      lua_pushlstring(L, *b, v);
+      *b += v;
+      return;
+    case B_POSITIVE: lua_pushinteger(L, v);  return;
+    case B_NEGATIVE: lua_pushinteger(L, -v); return;
+    case B_OTHER: switch(v) {
+      case B_OTHER_FALSE: lua_pushboolean(L, false); return;
+      case B_OTHER_TRUE:  lua_pushboolean(L, true);  return;
+      default: /*fallthrough*/;
+    }
+    default: luaL_error(L, "deserLuaB: unreachable");
+  }
+}
+
+// (string, index=1) -> (val, serlen)
+// deser encoded lua value starting at index. Return
+// the deserd value and the length of the string used.
+int l_deser(LS* L) {
+  size_t len; uint8_t const* s = luaL_checklstring(L, 1, &len);
+  lua_Integer i = luaL_optinteger(L, 2, 1);
+  ASSERT((i >= 1) && (i <= len + 1), "invalid index");
+  uint8_t const* se = s + len; s = s + i - 1;
+  uint8_t const* b = s;
+  if(b >= s + len) lua_pushnil(L);
+  else             deserLuaB(L, &b, se);
+  lua_pushinteger(L, b - s);
+  return 2;
+}
+
+//************************
+//* Lua Bindings
+
+// int -> str: encode integer using enci
+static int l_enci(LS* L) {
+  uint8_t buf[8]; uint8_t* b = buf; enci(&b, buf+8, luaL_checkinteger(L, 1));
+  lua_pushlstring(L, buf, b-buf);
+  return 1;
+}
+
+// str, startindex=1 -> (int, elen): deser integer using deci
+// returns: the integer and the number of bytes used to encode it.
+static int l_deci(LS* L) {
+  size_t tlen; uint8_t const* txt = luaL_checklstring(L, 1, &tlen);
+  int startindex = luaL_optinteger(L, 2, 1) - 1;
+  if(startindex < 0) startindex = 0;
+  uint8_t const* tp = txt + startindex;
+  uint64_t v = 0; ASSERT(deci(&tp, txt+tlen, &v,0) >= 0, "OOB");
+  lua_pushinteger(L, v);
+  lua_pushinteger(L, tp - txt - startindex);
+  return 2;
+}
+
+static const struct luaL_Reg pod_native[] = {
+  {"enci", l_enci}, {"deci", l_deci},
+  {"ser",  l_ser},  {"deser", l_deser},
+  {NULL, NULL}, // end sentinel
+};
+
+int luaopen_pod_native(LS *L) {
+  luaL_newlib(L, pod_native);
+  return 1;
+}
+
+

--- /dev/null
+++ lib/pod/pod.lua
@@ -0,0 +1,291 @@
+local G = G or _G
+--- pod: plain old data
+local M = G.mod and mod'pod' or setmetatable({}, {})
+local N = require'pod.native'
+
+local mty = require'metaty'
+
+local push = table.insert
+local ser, deser = N.ser, N.deser
+local mtype = math.type
+local sfmt = string.format
+
+--- Pod: configuration for converting values to/from POD.
+M.Pod = mty'Pod'{
+  'fieldIds [boolean]: if true use the fieldIds when possible',
+  'mtPodFn  [(mt) -> boolean]: function to classify if mt is pod',
+    mtPodFn = function() end,
+  'enumIds [boolean]: if true use enum id variants, else name variants',
+}
+local Pod = M.Pod
+Pod.DEFAULT = Pod{}
+local CONCRETE = { boolean=true, number=true, string=true }
+local BUILTIN = table.update(table.update({}, CONCRETE), {
+  ['nil']=true, table=true
+})
+M.isConcrete = function(v) return CONCRETE[type(v)] end
+
+-- return true if the value is "plain old data".
+--
+-- Plain old data is defined as any native type or a table with no metatable
+-- and who's pairs() are only POD.
+local isPod; isPod = function(v, mtFn)
+  local ty = type(v); if ty == 'table' then
+    local mt = getmetatable(v); if mt then return mtFn(v, mt) end
+    for k, v in pairs(v) do
+      if not (isPod(k, mtFn) and isPod(v, mtFn)) then
+        return false
+      end
+    end
+    return true
+  end
+  return BUILTIN[ty]
+end
+M.isPod = isPod
+
+--- A type who's sole job is converting values to/from POD.
+M.Podder = mty'Podder' {
+  'name [string]',
+  '__toPod   [(self, pset, v) -> p]',
+  '__fromPod [(self, pset, p) -> v]',
+}
+M.Podder.__tostring = function(p) return p.name end
+M.isPodder = function(P) --> isPodder, whyNot?
+  if not mty.callable(P.__toPod) and mty.callable(P.__fromPod) then
+    return false, 'must implement __toPod and __fromPod'
+  end
+  if not G.PKG_NAMES[P] then return false, 'must be in PKG_NAMES' end
+  return true
+end
+
+local makeNativePodder = function(ty)
+  local expected = 'expected '..ty
+  local f = function(self, pod, v)
+    if v == nil then return end
+    if type(v) ~= ty then error(sfmt(
+      'expected %s got %s', ty, type(v))
+    )end
+    return v
+  end
+  return M.Podder{name=ty, __toPod=f, __fromPod=f}
+end
+local tpInt = function(self, pod, i)
+  if i == nil then return end
+  if mtype(i) ~= 'integer' then error('expected integer got '..type(i)) end
+  return i
+end
+
+local BUILTIN_PODDER = {
+  ['nil'] = makeNativePodder'nil',
+  boolean = makeNativePodder'boolean',
+  number = makeNativePodder'number',
+  string = makeNativePodder'string',
+  table = makeNativePodder'table',
+  integer = M.Podder{
+    name='integer', __toPod=tpInt, __fromPod=tpInt,
+  },
+}
+BUILTIN_PODDER.table.__toPod = function(T, pod, t)
+  if type(t) ~= 'table' then error('expected table got '..type(t)) end
+  assert(isPod(t, pod.mtPodFn), 'table is not plain-old-data')
+  return t
+end
+BUILTIN_PODDER.int = BUILTIN_PODDER.integer
+BUILTIN_PODDER.str = BUILTIN_PODDER.string
+
+for k, p in pairs(BUILTIN_PODDER) do M[k] = p end
+M['nil'], M.nil_ = nil, BUILTIN_PODDER['nil']
+
+--- Handles concrete non-nil types (boolean, number, string)
+M.key = mty'key' {}
+M.key.__toPod = function(self, pod, v)
+  if CONCRETE[type(v)] then return v end
+  error('nonconrete type: '..type(v))
+end
+M.key.__fromPod = M.key.__toPod
+BUILTIN_PODDER.key = M.key
+
+--- Handles all native types (nil, boolean, number, string, table)
+M.builtin = mty'builtin' {}; local builtin = M.builtin
+
+assert(PKG_LOOKUP['pod.builtin'] == M.builtin)
+
+builtin.__toPod = function(self, pod, v)
+  local ty = type(v)
+  if ty == 'table' then
+    assert(isPod(v, pod.mtPodFn), 'table is not plain-old-data')
+    return v
+  elseif BUILTIN[ty]   then return v end
+  error('nonnative type: '..type(v))
+end
+builtin.__fromPod = function(self, pod, v)
+  if BUILTIN[type(v)] then return v end
+  error('nonbuiltin type: '..type(v))
+end
+BUILTIN_PODDER.builtin = builtin
+
+--- Poder for a list of items with a type.
+M.List = mty'List' {'I [Podder]: the type of each list item'}
+M.List.__toPod = function(self, pod, l)
+  local I, p = self.I, {}
+  for i, v in ipairs(l) do p[i] = I:__toPod(pod, v) end
+  return p
+end
+M.List.__fromPod = function(self, pod, p)
+  local I, l = self.I, {}
+  for i, v in ipairs(l) do l[i] = I:__fromPod(pod, v) end
+  return l
+end
+
+--- Poder for a map of key/value pairs.
+M.Map = mty'Map' {
+  'K [Podder]: keys type', K=M.key,
+  'V [Podder]: values type',
+}
+M.Map.__toPod = function(self, pod, m)
+  local K, V, p = self.K, self.V, {}
+  for k, v in pairs(m) do
+    p[K:__toPod(pod, k)] = V:__toPod(pod, v)
+  end
+  return p
+end
+M.Map.__fromPod = function(self, pod, p)
+  local K, V, m = self.K, self.V, {}
+  for k, v in pairs(p) do
+    m[K:__fromPod(pod, k)] = V:__fromPod(pod, v)
+  end
+  return m
+end
+
+M.toPod = function(v, podder, pod)
+  if not podder then
+    local ty = type(v)
+    if ty == 'table' then
+      podder = getmetatable(v) or M.table
+      if podder == 'table' then podder = M.table end
+    else
+      podder = BUILTIN_PODDER[ty] or error('not pod: '..ty)
+    end
+  end
+  return podder:__toPod(pod or Pod.DEFAULT, v)
+end
+M.fromPod = function(v, poder, pod)
+  return (poder or builtin):__fromPod(pod or Pod.DEFAULT, v)
+end
+local toPod, fromPod = M.toPod, M.fromPod
+
+--- Default __toPod for metatype records
+M.mty_toPod = function(T, pod, t)
+  local p, podders = {}, T.__podders
+  if pod.fieldIds then
+    local fieldIds = T.__fieldIds
+    for field, field in ipairs(T.__fields) do
+      local v = rawget(t, field); if v ~= nil then
+        p[fieldIds[field]] = podders[field]:__toPod(pod, v)
+      end
+    end
+  else
+    for _, field in ipairs(T.__fields) do
+      local v = rawget(t, field); if v ~= nil then
+        p[field]           = podders[field]:__toPod(pod, v)
+      end
+    end
+  end
+  return p
+end
+
+--- Default __fromPod for metatype records
+M.mty_fromPod = function(T, pod, p)
+  local t, podders, fieldIds = {}, T.__podders, T.__fieldIds
+  for k, v in pairs(p) do
+    if type(k) == 'number' then k = fieldIds[k] end
+    t[k] = podders[k]:__fromPod(pod, v)
+  end
+  return T(t)
+end
+
+--- lookup podder from types, native, PKG_LOOKUP
+local lookupPodder = function(T, types, name)
+  if G.PKG_NAMES[T] == name then return T end
+  local p = types[name] or BUILTIN_PODDER[name] or G.PKG_LOOKUP[name]
+         or error('Cannot find type '..name)
+  if not (p.__toPod and p.__fromPod) then
+    error(name.." doesn't implement both __toPod and __fromPod")
+  end
+  return p
+end
+
+--- Make metaty type convertable to/from plain-old-data
+---
+--- Typically this is called by calling the module itself,
+--- i.e. [$pod(mty'myType'{'field [int]#1'})]
+M.implPod = function(T, tys)
+  tys = tys or {}
+  local errs, podders, podder = {}, {}, nil
+  for _, field in ipairs(T.__fields) do
+    local tyname = T.__fields[field]
+    if type(tyname) ~= 'string' then
+      push(errs, field..' does not have tyname specified') end
+    if tyname:match'%b[]' then
+      podder = lookupPodder(T, tys, tyname:sub(2,-2))
+    elseif tyname:match'%b{}' then
+      tyname = tyname:sub(2,-2)
+      local kname, vname = tyname:match'^%s*(.-)%s*:%s*(.-)%s*$'
+      if kname then
+        podder = M.Map {
+          K=lookupPodder(T, tys, kname), V=lookupPodder(T, tys, vname),
+        }
+      else podder = M.List{I=lookupPodder(T, tys, tyname)} end
+    else error('unrecognized tyname: '..tyname) end
+    podders[field] = podder
+  end
+  if #errs > 0 then error(sfmt(
+    'Errors: \n * %s\n', table.concat(errs, '\n * ')
+  ))end
+  T.__podders = podders
+  T.__toPod = M.mty_toPod
+  T.__fromPod = M.mty_fromPod
+  return T
+end
+
+--- serialize the value (without calling toPod on it)
+M.serRaw = N.ser--(value) --> string
+
+--- deserialize the value (without calling fromPod on it)
+M.deserRaw = N.deser--(string) --> value
+
+--- Serialize value, converting it to a compact string.
+--- Note: this function first calls toPod on the value.
+M.ser = function(value) --> string
+  return ser(toPod(value))
+end
+
+--- Deserialize value from a compact string (and call fromPod on it)
+--- [$index] (default=1) is where to start in [$str]
+M.deser = function(str, P, index) --> value, lenUsed
+  local p, elen = deser(str, index)
+  return fromPod(p, P), elen
+end
+
+--- dump ser(...) to f, which can be a path or file.
+M.dump = function(f, ...)
+  local close
+  if type(f) == 'string' then
+    f = assert(io.open(f, 'w')); close = true
+  end
+  local ok, err = f:write(M.ser(...)); f:flush()
+  if close then f:close() end; assert(ok, err)
+end
+
+--- load [$deser(f:read'a', ...)], f can be a path or file.
+M.load = function(f, ...)
+  local close
+  if type(f) == 'string' then
+    f = assert(io.open(f)); close = true
+  end
+  local str, err = f:read'a'; if close then f:close() end
+  assert(str, err); return M.deser(str, ...)
+end
+
+getmetatable(M).__call = function(M, ...) return M.implPod(...) end
+return M

--- /dev/null
+++ lib/pod/pod/testing.lua
@@ -0,0 +1,111 @@
+local G = G or _G
+local M = G.mod and mod'pod.testing' or {}
+
+local T  = require'civtest'
+local mty = require'metaty'
+local ds  = require'ds'
+local fmt = require'fmt'
+local pod = require'pod'
+
+--- Test [$eq(v, decFn(encFn(v))]
+--- If expectEncoding is provided then test [$eq(expectEncoding, encFn(v)]
+M.round = function(v, encFn, decFn, expectEncoding) --> (enc, dec)
+  local P = mty.ty(v); if type(P) == 'string' then P = nil end
+  local enc = encFn(v, P)
+  if expectEncoding ~= nil then
+    T.binEq(expectEncoding, enc)
+  end
+  local dec = decFn(enc, P)
+  T.eq(v, dec)
+  return enc, dec
+end
+M.roundList = function(values, encFn, decFn)
+  for _, v in ipairs(values) do
+    local ok, err = ds.try(M.round, v, encFn, decFn)
+    if not ok then
+      fmt.errorf('for value:\n%q\n  got: %s', v, err)
+    end
+  end
+end
+
+M.BOOLS = { false, true, }
+M.INTS = {
+  0, 1, 2, 10, 0xFF,   0x100,  0xFFFF,
+    -1,   -10, -0xFF, -0x100, -0xFFFF,
+}
+M.STRINGS = {
+  'a', 'abc', '01234', 'A0B1',
+  '🚀rocket🚀',
+}
+M.BYTES = {
+  'zero\x00okay', 'ff\xFFokay',
+}
+M.LISTS = {
+  {},
+  {0}, {'0'},
+  M.BOOLS,
+  M.STRINGS,
+  M.BYTES,
+  ds.flatten(M.BOOLS, M.STRINGS, M.BYTES),
+}
+
+M.MAPS = {
+  {a=1}, {akey='akeyval', bkey='bkeyval'},
+  {[4]='1num', [7]='7num'},
+  {table = {innerkey='inner value'}},
+  {bools = M.BOOLS},
+  {ints = M.INTS},
+  {strings = M.STRINGS},
+  {lists = M.LISTS},
+}
+
+M.TABLES = {
+  {'one', 'two', 'three', key='value'},
+  {[-2] = 'neg 2', [-1] = 'neg 1', [0] = 'zero', 'one', 'two'}
+}
+
+M.BUILTIN = ds.flatten(M.BOOLS, M.STRINGS, M.BYTES, M.LISTS, M.MAPS, M.TABLES)
+
+M.E = mty.enum'E' {
+  FIRST  = 1,
+  SECOND = 2,
+}
+
+--- A simple type
+M.A = pod(mty'A'{
+  'i [int]#1',
+  'e [pod.testing.E] #2', e=M.E.SECOND,
+})
+
+-- type with an embedded map
+M.M = pod(mty'M'{
+  's [str] #1',
+  'm {key: builtin} #2',
+})
+
+-- type with inner types (including recursive)
+M.I = mty'I'{
+  'n [number] #1',
+  'iA [pod.testing.A] #2',
+  'iI [pod.testing.I] #3',
+}
+getmetatable(M.I).__call = function(T, t)
+  t.iA = t.iA and M.A(t.iA) or nil
+  t.iI = t.iI and M.I(t.iI) or nil
+  return mty.construct(T, t)
+end
+pod(M.I)
+
+M.roundMetaty = function(encFn, decFn)
+  local round = function(v) return M.round(v, encFn, decFn) end
+
+  round(M.A{})
+  round(M.A{i=42, e=M.E.FIRST})
+end
+
+M.testAll = function(...)
+  M.roundList(M.BUILTIN, ...)
+  M.roundMetaty(...)
+end
+
+return M

--- /dev/null
+++ lib/pod/test.lua
@@ -0,0 +1,85 @@
+
+local mty = require'metaty'
+local ds  = require'ds'
+local pod = require'pod'
+local testing = require'pod.testing'
+
+local T = require'civtest'
+
+local podRound = function(P, v)
+  local t = P(ds.deepcopy(v))
+  T.eq(v, pod.toPod(t))
+  T.eq(t, pod.fromPod(v, P))
+end
+
+T.isPod = function()
+  T.eq(true,  pod.isPod(true))
+  T.eq(true,  pod.isPod(false))
+  T.eq(true,  pod.isPod(3))
+  T.eq(true,  pod.isPod(3.3))
+  T.eq(true,  pod.isPod'hi')
+
+  T.eq(nil,  pod.isPod(function() end))
+  T.eq(nil,  pod.isPod(io.open'PKG.lua'))
+
+  T.eq(true, pod.isPod{1, 2, a=3})
+  T.eq(true, pod.isPod{1, 2, a={4, 5, b=6}})
+  T.eq(false, pod.isPod{1, 2, a={4, 5, b=function() end}})
+end
+
+
+T.toPod = function()
+  local test = mod'test'
+
+  -- simple type
+  test.A = pod(mty'A'{'a1 [int]#1', 'a2 [int]#2', b=3})
+  assert(test.A.__toPod)
+  T.eq('test.A', PKG_NAMES[test.A])
+  T.eq(test.A, PKG_LOOKUP['test.A'])
+  podRound(test.A, {a1=11})
+
+  testing.testAll(pod.toPod, pod.fromPod)
+
+  -- type with a map
+  test.M = pod(mty'M'{
+    's [str] #1',
+    'm {key: builtin} #2',
+  })
+  podRound(test.M, {
+    s='test string',
+    m = {
+      keya = 'valuea', [3] = 'value3',
+      l = {'value list'},
+    },
+  })
+
+  -- type with an inner type
+  test.I = mty'I'{
+    'n [number] #1',
+    'iA [test.A] #2',
+    'iI [test.I] #3',
+  }
+  getmetatable(test.I).__call = function(T, t)
+    t.iA = t.iA and test.A(t.iA) or nil
+    t.iI = t.iI and test.I(t.iI) or nil
+    return mty.construct(T, t)
+  end
+  pod(test.I)
+  podRound(test.I, {
+    n = 33,
+    iA = {a1 = -1, a2=222 },
+    iI = {
+      n = 4444,
+      iI = { n = 55555 },
+    }
+  })
+end
+
+T['ds.pod.serialize'] = function()
+  testing.testAll(pod.ser, function(str, P)
+    local t, len = pod.deser(str, P)
+    T.eq(#str, len) -- decoded full length
+    return t
+  end)
+end
+

--- /dev/null
+++ lib/rebuf/PKG.lua
@@ -0,0 +1,8 @@
+name    = 'rebuf'
+version = '0.1-0'
+url     = 'git+http://github.com/civboot/civlua'
+srcs = {
+  'rebuf.lua',
+  'lines.buffer.lua',
+}
+

--- /dev/null
+++ lib/rebuf/rebuf.lua
@@ -0,0 +1,6 @@
+-- This module contains an undo/redo buffer and Gap buffer, although
+-- the Buffer can work on any object that supports a `lines` like interface.
+--
+-- Its purpose is to be used inside an editor or similar application.
+local M = mod and mod'rebuf' or {}
+return M

--- /dev/null
+++ lib/shim/PKG.lua
@@ -0,0 +1,14 @@
+name     = 'shim'
+version  = '0.1-5'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "write scripts for Lua, execute from shell"
+homepage = "https://lua.civboot.org#Package_shim"
+license  = "UNLICENSE"
+doc      = 'README.cxt'
+srcs = { 'shim.lua' }
+deps = {
+  "lua ~> 5.3",
+
+  -- OPTIONAL: needed for setup() and checkHelp()
+  -- doc ~> "0.1",
+}

--- /dev/null
+++ lib/shim/README.cxt
@@ -0,0 +1,30 @@
+write scripts for Lua, execute from shell. This is a tiny Lua module that makes
+it easy to write utilities that work from either bash or Lua.
+
+Example script (see also: [<#pkg-script>]) [{## lang=lua}
+#!/usr/bin/env -S lua -e "require'pkglib'()"
+local G = G or _G -- typosafe globals
+
+--- module documentation
+local M = G.mod and mod'myCmdName' or {} -- self-documenting module
+G.MAIN = G.MAIN or M
+
+local mty = require'metaty'
+local shim = require'shim'
+
+--- Comamnd documentation
+M.Args = mty'Args' {
+  'name [string]: the name to say hello to', name='World',
+}
+
+M.main = function(args)
+  args = M.Args(shim.parseStr(args))
+  print('Hello '..args.name..'!')
+end
+
+if M == MAIN then os.exit(M.main(G.arg)) end
+return M -- return as library
+]##
+
+Then in [$PKG.lua] add [$main = 'myCmdName.Main'] to enable better
+documentation formatting. Get documentation with [$doc 'myCmdName'].

--- /dev/null
+++ lib/shim/shim.lua
@@ -0,0 +1,179 @@
+--- shim: use a lua module in lua OR in the shell.
+local M = mod and mod'shim' or setmetatable({}, {})
+
+local push, sfmt = table.insert, string.format
+local lower = string.lower
+
+local ENV_VALS = {['true'] = true, ['1'] = true }
+
+--- Parse either a string or list and convert them to key=value table.
+--- v can be either a list of [${'strings', '--option=foo'}]
+--- or [${'strings", option='foo'}] or a combination of both. If v is a string then
+--- it is split on whitespace and parsed as a list.
+---
+--- Note: this handles repeat keys by creating and appending a list for that key.
+M.parse = function(v) --> args
+  if type(v) == 'string' then return M.parseStr(v)
+  else                        return M.parseList(v) end
+end
+
+--- Add k,v to table, turning into a list if it already exists.
+local function addKV(t, k, v)
+  local e = t[k]; if e then
+    if type(e) == 'table' then push(e, v)
+    else t[k] = {e, v} end
+  else t[k] = v end
+end
+
+--- parses the string by splitting via whitespace.
+--- Asserts the string contains no special chars: [$'"[]]
+--- This is for convinience, use a table if it's not enough.
+---
+--- Note: if the input is already a table it just returns it.
+M.parseStr = function(str) --> args
+  str = str or {}
+  if type(str) == 'table' then return str end
+  if str:find'[%[%]\'"]' then error(
+    [[parseStr does not support chars '"[]: ]]..str
+  )end
+  local args = {}; for a in str:gmatch'%S+' do push(args, a) end
+  return M.parseList(args)
+end
+
+--- Note: typically use parse() or parseStr() instead.
+M.parseList = function(strlist) --> args
+  local t = {}; for i, arg in ipairs(strlist) do
+    if arg == '--' then -- lone '--' indicates special parsing
+      table.move(strlist, i, #strlist, #t+1, t)
+      break
+    elseif arg:find'^%-%-[^-]+' then
+      local k, v = arg:match('(.-)=(.*)', 3)
+      if k then addKV(t, k, v)
+      else      addKV(t, arg:sub(3), true) end
+    else        push(t, arg) end
+  end
+  return t
+end
+
+--- Helper for dealing with [$-s --short] arguments. Mutates
+--- args to convert short paramaters to their long counterpart.
+M.short = function(args, short, long, value) --> nil
+  if args[short] then args[long] = value; args[short] = nil end
+end
+
+local BOOLS = {
+  [true]=true,   ['true']=true,   ['yes']=true, ['1']=true,
+  [false]=false, ['false']=false, ['no']=false, ['0']=false,
+}
+
+--- Duck type: always return a boolean (except for nil).
+--- See BOOLS (above) for mapping.
+M.boolean = function(v)
+  if v == nil then return nil end
+  local b = BOOLS[v] if b ~= nil then return b end
+  error('invalid boolean: '..tostring(v))
+end
+M.bools = function(args, ...)
+  for _, arg in ipairs{...} do
+    args[arg] = M.boolean(args[arg])
+  end
+end
+
+--- Duck type: always return a number
+M.number = function(num)
+  if num == nil then return nil end
+  return (type(num)=='number') and num or tonumber(num)
+end
+
+local TOSTR = {
+  ['nil'] = '', boolean = tostring, number = tostring,
+  string = tostring,
+}
+--- Duck type: always return a string
+--- This is useful for some APIs where you want to convert
+--- number/true/false to strings
+--- Converts nil to ''
+M.string = function(v)
+  local f = TOSTR[type(v)]; if f then return f(v) end
+  error('invalid type for shim.string: '..type(v))
+end
+
+-- Duck type: always return a list.
+-- default controls val==nil
+-- empty   controls val==''
+M.list = function(val, default, empty)
+  if val == nil then val = default or {} end
+  if empty and val == '' then return empty end
+  return (type(val) == 'table') and val or {val}
+end
+
+--- Duck type: if val is a string then splits it
+--- if it's a list leaves alone.
+M.listSplit = function(val, sep)
+  if val == nil then return {} end
+  if type(val) == 'table' then return val end
+  sep = '[^'..(sep or '%s')..']+'
+  local t = {}; for m in val:gmatch(sep) do push(t, m) end
+  return t
+end
+
+--- Duck type: get a file handle.
+--- If [$v or default] is a string then open the file in mode [$default='w+']
+M.file = function(v, default, mode--[[w+]]) --> file, error?
+  v = v or default
+  if type(v) == 'string' then return io.open(v, mode or 'w+') end
+  return v
+end
+
+--- expand string keys into [$--key=value], ordered alphabetically.
+--- This is mostly useful for interfacing with non-lua shells.
+M.expand = function(args)
+  local out, keys = {}, {}
+  for k, v in pairs(args) do
+    if type(k) == 'number'     then out[k] = M.string(v)
+    elseif type(k) == 'string' then push(keys, k)
+    else error('non string key: '..k) end
+  end
+  table.sort(keys); for _, k in ipairs(keys) do 
+    push(out, sfmt('--%s=%s', k, M.string(args[k])))
+  end
+  return out
+end
+
+
+-- return nil if env var does not exist, else boolean (true for 'true' or '1')
+M.getEnvBool = function(k)
+  local v = os.getenv(k); if not v then return v end
+  return ENV_VALS[lower(v)] or false
+end
+
+--- pop raw arguments after '--'
+--- Removes them (including '--') from args.
+M.popRaw = function(args, to) --> to
+  local ri; for i, v in ipairs(args) do
+    if v == '--' then ri = i; break end
+  end; if not ri then return end
+  local to = to or {}
+  local raw = table.move(args, ri+1, #args, #to+1, to)
+  for i=ri,#args do args[i] = nil end -- clear from args
+  return to
+end
+
+--- Performs common setup by parsing and constructing an Args metaty, getting
+--- the standard `to` attribute and checking help and printing to [$to] if
+--- requested.
+---
+--- Returns the constructed Args and Styler.
+---
+--- [" Note: This method depends on the [$doc] module]
+M.setup = function(Args, args) --> args, styler
+  args = Args(M.parseStr(args))
+  local to = M.file(args.to, io.stdout)
+  local styler = require'asciicolor'.Styler{
+    f = to, color = M.color(args.color, require'fd'.isatty(to)),
+  }
+  if args.help then M.styleHelp(styler, Args) end
+  return args, styler
+end
+
+return M

--- /dev/null
+++ lib/shim/test.lua
@@ -0,0 +1,44 @@
+
+local T = require'civtest'
+local M = require'shim'
+local p, ps, e = M.parse, M.parseStr, M.expand
+
+T.parse = function()
+  T.eq({'a', 'b', c='42'},  ps'a --c=42 b')
+  T.eq({c={'1', '2'}},      ps'--c=1 --c=2')
+  T.eq({c={'1', '2', '3'}}, ps'--c=1 --c=2 --c=3')
+
+  T.eq({'-ab', c='foo'}, p{'-ab', '--c=foo'})
+  T.eq({'ab', '--', '--bob=1', c='foo'},
+            p{'ab', '--c=foo', '--', '--bob=1'})
+end
+
+T.parseStr = function()
+  T.eq({'a', 'b', c='42'}, ps'a   b --c=42')
+  T.eq({c={'1', '2'}},     ps'--c=1   --c=2')
+  T.eq({'-ab', c='foo'},   ps'-ab --c=foo')
+end
+
+T.expand = function()
+  T.eq({'a', 'b', '--c=42'},           e{'a', 'b', c=42})
+  T.eq({'a', 'b', '--c=42', '--d=hi'}, e(ps'a b --d=hi --c=42'))
+end
+
+T.list = function()
+  T.eq({'12'},       M.list('12'))
+  T.eq({'12', '34'}, M.list{'12', '34'})
+  T.eq({'12 34'},    M.listSplit{'12 34'})
+  T.eq({'12', '34'}, M.listSplit'12  \n  34')
+  T.eq({'12', '34', '56', '78'},
+             M.listSplit'12  \n  34 56 78')
+end
+
+T.duck = function()
+  T.eq(true, M.boolean(true))
+  T.eq(true, M.boolean'true')
+  T.eq(true, M.boolean'yes')
+
+  T.eq(false, M.boolean(false))
+  T.eq(false, M.boolean'false')
+  T.eq(nil, M.boolean(nil))
+end

--- /dev/null
+++ lib/smol/.gitignore
@@ -0,0 +1 @@
+smol_test

--- /dev/null
+++ lib/smol/Makefile
@@ -0,0 +1,40 @@
+# Copy/pastable Makefile for Lua C sources.
+
+# Modify these for a new library
+NAME  = smol
+FILES = $(NAME).c
+OUT   = $(NAME)
+LUA_VERSION = lua
+
+UNAME != uname
+build:  $(UNAME)
+NetBSD: $(OUT).so
+Linux:  $(OUT).so
+Darwin: $(OUT).so
+# Windows: $(OUT).dll
+
+WNO = -Wno-incompatible-function-pointer-types
+
+$(OUT).so: $(FILES)
+	make Build$(UNAME)
+
+test: $(FILES)
+	$(CC) smol_test.c -l$(LUA_VERSION) -I/usr/pkg/include/$(LUA_VERSION) -o smol_test
+	./smol_test
+
+BuildNetBSD:
+	$(CC) $(FILES) -fPIC -llua -I/usr/pkg/include/$(LUA_VERSION) -shared -o $(OUT).so
+
+BuildLinux:
+	$(CC) $(FILES) -fPIC -l$(LUA_VERSION) -I/usr/include/$(LUA_VERSION) -shared -o $(OUT).so
+
+BuildDarwin:
+	$(CC) $(FILES) $(shell pkg-config lua --cflags) -c -O2 -fPIC $(WNO)
+	$(CC) $(OUT).o -bundle -undefined dynamic_lookup -all_load     -o $(OUT).so
+
+# BuildWindows: TODO
+
+clean:
+	rm -f $(OUT).o $(OUT).so $(OUT).dll smol_test
+
+

--- /dev/null
+++ lib/smol/PKG.lua
@@ -0,0 +1,18 @@
+name     = 'smol'
+summary  = "compression algorithms"
+homepage = "https://lua.civboot.org#Package_smol"
+license  = "UNLICENSE"
+version  = '0.1-0'
+url      = 'git+http://github.com/civboot/civlua'
+doc = 'README.cxt'
+srcs = {
+  'smol.lua',
+  ['smol.sys'] = 'smol.c',
+}
+libs = {
+  ['smol.sys'] = 'smol.so',
+}
+deps = {
+  "lua ~> 5.3",
+}
+

--- /dev/null
+++ lib/smol/README.cxt
@@ -0,0 +1,4 @@
+smol: compression algorithms and data structures
+
+The smol library supports native (C) implementations of ultra-tiny compression
+and delta algorithms, and the data structures to interface them with Lua.

--- /dev/null
+++ lib/smol/po2prime.lua
@@ -0,0 +1,42 @@
+-- small script which prints out the prime numbers just before each power of
+-- two greater than 8 as a C array. These use the division test since speed
+-- isn't important.
+
+local sqrt = math.sqrt
+
+local function isprime(n)
+  if n % 2 == 0 then return false end
+  if n % 3 == 0 then return false end
+
+  local d, last = 5, sqrt(n)
+  while d < last do
+    if n % d == 0 then return false end
+    d = d + 2
+    if n % d == 0 then return false end
+    d = d + 4 -- +2 would have been divisible by 3
+  end
+  return true
+end
+
+local po2 = {}
+for n=8,32 do
+  local p = 1 << n
+  p = p - 1
+  while not isprime(p) do p = p - 2 end
+  print(n, string.format('% 8x', p), p)
+  table.insert(po2, p)
+end
+local w = function(s) io.stdout:write(s) end
+local f = string.format
+
+w'// the previous prime for 2^8 to 2^32\n'
+w'// generated from po2prime.lua\n'
+w'uint32_t po2primes[] = {\n'
+for r=1,6 do
+  local c = (r-1)*4 + 1
+  w'  '
+  for c=c,c+3 do w(f('%-11s ', f('0x%x,', po2[c]))) end
+  w'\n'
+end
+w'};\n'
+

--- /dev/null
+++ lib/smol/smol.c
@@ -0,0 +1,914 @@
+
+#include <stdlib.h>
+#include <string.h>
+#include <errno.h>
+#include <stdbool.h>
+#include <stdio.h>
+#include <string.h>
+
+#include <lua.h>
+#include <lualib.h>
+#include <lauxlib.h>
+#include <assert.h>
+
+typedef lua_State LS;
+
+#define ASSERT(OK, ...) if(!(OK)) { luaL_error(L, __VA_ARGS__); }
+
+// #define DBG(...) printf("!D! " __VA_ARGS__)
+#define DBG(...)
+
+#define eprintf(...) fprintf(stderr, __VA_ARGS__)
+
+#define ADD  0x00
+#define RUN  0x40
+#define CPY  0x80
+
+// gain from using RUN(0)/CPY(raddr)
+// the cost of any command is the single byte to encode and the
+// byte to encode the next run, as well as raddr for copy.
+// We do NOT count the copy length since if it matters (aka it's >32)
+// then we are going to compress anyway.
+static inline int gain(int len, int raddr) {
+  if(raddr <= 0x80     /*2^7 */) return len - 3;
+  if(raddr <= 0x4000   /*2^14*/) return len - 4;
+  if(raddr <= 0x200000 /*2^21*/) return len - 5;
+}
+
+#define MIN_PO2 8
+#define MAX_PO2 27
+
+#define MIN(A,B) ((A) < (B)) ? (A) : (B)
+#define MAX(A,B) ((A) > (B)) ? (A) : (B)
+
+// get the po2 that is greater than or equal to v
+// (minimum 8, maximum 27)
+static int po2(uint32_t v) {
+  int po2 = 0;
+  if(v >= (1<<16)) {
+    po2 = 16;
+    if(v > (1<<31)) return 31;
+    if(v >= (1<<24)) po2 = 24;
+  }
+  else if(v >= (1<<8)) po2 = 8;
+  while(v > (1 << po2)) { po2 += 1; }
+  return po2;
+}
+
+// the previous prime for 2^8 to 2^27
+// generated from po2prime.lua
+uint32_t po2primes[] = {
+  0xfb,       0x1fd,      0x3fd,      0x7f7,     // 8-11
+  0xffd,      0x1fff,     0x3ffd,     0x7fed,    // 12-15
+  0xfff1,     0x1ffff,    0x3fffb,    0x7ffff,   // 16-19
+  0xffffd,    0x1ffff7,   0x3ffffd,   0x7ffff1,  // 20-23
+  0xfffffd,   0x1ffffd9l, 0x3fffffb,  0x7ffffd9, // 24-27
+};
+
+// get a prime number just before the power of 2
+static int po2prime(int po2) {
+  po2 = MAX(MIN_PO2, MIN(po2, MAX_PO2));
+  return po2primes[po2-MIN_PO2];
+}
+
+
+//************************
+//* 1.a RDelta Encode / Decode value
+
+// decode value from bytes. v: current value, s: current shift
+static inline int decv(uint8_t** b, uint8_t* be, uint64_t* v, int s) {
+  while((*b < be) && (0x80 & **b)) {
+    *v |= ((0x7F & **b) << s);
+    s += 7; *b += 1;
+  }
+  if(*b >= be) return -1;
+  *v |= (**b << s); *b += 1;
+  return 0;
+}
+
+// encode value to bytes. v: current value
+static inline int encv(uint8_t** b, uint8_t* be, uint64_t v) {
+  while((*b < be) && (v > 0x7F)) {
+    **b = 0x80 | v; v = v >> 7; *b += 1;
+  }
+  if(*b >= be) return -1;
+  **b = v; *b += 1;
+  return 0;
+}
+
+
+
+//************************
+//* 1.b Encode / Decode Commands
+
+// fingerprint struct
+typedef struct _FP {
+  uint32_t* t;
+  size_t    len;
+  size_t    tsz; // size in bytes
+} FP;
+
+// huffman bits: 1's and 0's and how many there are
+typedef struct _HB {
+  uint8_t nbits;
+  uint64_t bits;
+} HB;
+
+// Huffman Tree Node
+typedef struct _HN {
+  struct _HN *l, *r; // parent/left/right indexes (root p=NULL)
+  int32_t count; // prevelance of this value
+  int v; // value
+  HB hb;
+} HN;
+
+#define HTREE_SZ (0x100 * 3)
+typedef struct _HT { // Huffman Tree
+  HN* root;
+  uint32_t used;
+  HN n[HTREE_SZ];
+  bool invalid;
+} HT;
+
+// struct which holds data buffers and state of encoding/decoding.
+// The buffers can be reused for relevant calls.
+typedef struct _X {
+  int fp4po2;
+
+  uint8_t *xmd, *xp, *xe; size_t xmdsz;  // xmds buf, pointer, end (commands)
+  uint8_t *txt, *tp, *te; size_t txtsz;  // txt buf, pointer, end (raw text)
+  uint8_t *dec; size_t decsz;            // decoding buffer
+  FP fp4, fp8;
+  HT ht;
+  HB hbs[256];
+} X;
+
+#define META_X "smol.X"
+#define L_asX(L, I) ((X*)luaL_checkudata(L, I, META_X))
+
+// free field if it's been allocated
+#define FREE_FIELD(X, F) \
+  if((X).F##sz) { free((X).F); (X).F = NULL; (X).F##sz = 0; }
+
+static void X_free(X* x) {
+  FREE_FIELD(*x, xmd); FREE_FIELD(*x, txt);
+  FREE_FIELD(*x, dec);
+  FREE_FIELD(*x, fp4.t);
+}
+
+// allocate field if it's not large enugh
+#define ALLOC_FIELD(X, F, SZ) do { \
+    if((X).F##sz < (SZ)) {         \
+      FREE_FIELD(X, F);            \
+      (X).F = malloc(SZ);          \
+      ASSERT((X).F, "OOM:"#F);     \
+      (X).F##sz = SZ;              \
+    }                              \
+  } while(0)
+
+static inline int deccmd(uint8_t** b, uint8_t* be, uint64_t* len) {
+  if(*b >= be) return -1;
+  uint8_t ch = **b; *b += 1;
+  *len = 0x1F & ch; int cmd = 0xC0 & ch;
+  if(0x20 & ch) {
+    if(decv(b,be, len,5) < 0) return -1;
+  }
+  return cmd;
+}
+static inline int enccmd(uint8_t** b, uint8_t* be, int cmd, int clen) {
+  if(*b >= be) return -1;
+  if (clen > 0x1F) {
+    **b = cmd | 0x20 | (0x1F & clen); *b += 1;
+    return encv(b,be, clen >> 5);
+  }
+  **b = cmd | clen; *b += 1;
+  return 0;
+}
+
+static inline int encRUN(X* x, int r, uint8_t ch) {
+  DBG("encRUN len=%i '%c'\n", r, ch);
+  if(enccmd(&x->xp,x->xe, RUN,r)) return -1;
+  if(x->tp >= x->te)              return -1;
+  *x->tp = ch; x->tp += 1;
+  return 0;
+}
+
+static inline int encADD(X* x, int addlen, uint8_t* str) {
+  DBG("encADD len=%i: %.*s\n", addlen, addlen, str);
+  if(enccmd(&x->xp,x->xe, ADD,addlen)) return -1;
+  if(x->tp + addlen >= x->te)          return -1;
+  memcpy(x->tp, str, addlen); x->tp += addlen;
+  return 0;
+}
+
+static inline int encCPY(X* x, int cpylen, int raddr) {
+  assert(raddr >= 0);
+  DBG("encCPY len=%i raddr=%i\n", cpylen, raddr);
+  if(enccmd(&x->xp,x->xe, CPY,cpylen)) return -1;
+  return encv(&x->xp,x->xe, raddr);
+}
+
+//************************
+//* 1.c: Addler32 Fingerprint Table
+
+// addler32 struct
+// https://en.wikipedia.org/wiki/Adler-32
+#define MOD_ADLER 65521
+typedef struct _A32 {
+  uint8_t  *p, *end;
+  uint32_t  a,  b;
+} A32;
+
+// start the A32 algorithm. This enables calculating multiple length
+// fingerprints in one pass.
+// TODO: don't set end here
+static inline void A32_start(A32* a, uint8_t* p, uint8_t* end) {
+  a->p = p; a->end = end; a->a = 1; a->b = 0;
+}
+
+// perform the loops and return the fingerprint. Updates p, a and b
+static inline int A32_fp(A32* a, int loops) {
+  for(; loops > 0; loops--) {
+    if(a->p >= a->end) break;
+    a->a = (a->a + *a->p) % MOD_ADLER;
+    a->b = (a->a +  a->b) % MOD_ADLER;
+    a->p += 1;
+  }
+  return (a->b << 16) | a->a;
+}
+
+#define FP_ALLOC(X, F, LEN) do { \
+    ALLOC_FIELD(X, F.t, (LEN) * sizeof(uint32_t)); \
+    (X).F.len = LEN; \
+    FP_init(&(X).F); \
+  } while(0) \
+
+
+static inline void FP_init(FP* f) {
+  for (size_t i=0; i < f->len; i++) f->t[i] = UINT32_MAX;
+}
+static inline void FP_free(FP* f) {
+  if(f->t) { free(f->t); f->t = NULL; }
+}
+
+#define FP_FREE(NAME) free((NAME).t)
+// calculate the fingerprint and set to i.
+// Return the value (index) that was previously there.
+static inline uint32_t FP_set(FP* f, A32* a, uint32_t i) {
+  uint32_t fp = A32_fp(a, 3);
+  uint32_t o = f->t[fp % f->len];
+               f->t[fp % f->len] = i;
+  return o;
+}
+
+
+// window type
+typedef struct _Win {
+  uint8_t *sp, *ep; // start/end pointer to change
+  uint8_t *s, *e;   // start/end of buffer
+} Win;
+static inline int Win_len(Win* w) { return w->ep - w->sp; }
+
+// print window relative to s
+static inline int Win_print(uint8_t* name, uint8_t* r, Win* w) {
+  printf("%s{%i %i:%i %i}\n", name, w->s-r, w->sp-r,w->ep-r, w->e-r);
+}
+
+// Expand both windows as long as they are equal
+// Requires: ws == we for both at the start
+static inline void Win_expand(Win* wl, Win* wr) {
+  Win l = *wl, r = *wr;
+  while((l.ep < l.e) && (r.ep < r.e) && (*l.ep == *r.ep)) {
+    l.ep += 1; r.ep += 1;
+  }
+  if(l.ep == r.ep) goto end;
+  r.s = MAX(l.ep, r.s); // we may have gone past the start
+  l.sp -= 1; r.sp -= 1;
+  while((l.sp >= l.s) && (r.sp >= r.s) && (*l.sp == *r.sp)) {
+    l.sp -= 1; r.sp -= 1;
+  }
+  l.sp += 1; r.sp += 1;
+end:
+  wl->sp = l.sp; wl->ep = l.ep;
+  wr->sp = r.sp; wr->ep = r.ep;
+}
+
+//************************
+//* 1.d: Patch (decode) RDelta
+
+// get the patch's resultant change length
+static int rcmdlen(uint8_t* xp, uint8_t* xe) {
+  uint64_t len = 0, v;
+  while(xp < xe) {
+    v = 0; int cmd = deccmd(&xp,xe, &v); len += v;
+    switch(cmd) {
+      case RUN:
+      case ADD: break;
+      case CPY:
+        if(decv(&xp,xe, &v,0) < 0) return -1;
+        break;
+      default: return -1;
+    }
+  }
+  return len;
+}
+
+// apply an rdelta which consists of a command block and (raw) txt block
+// and optional base to get the change.
+// (delta_cmds, delta_txt, X, base?) -> change
+static int l_rpatch(LS* L) {
+  DBG("############ rpatch\n");
+  size_t xlen; uint8_t* xmds = (uint8_t*)luaL_checklstring(L, 1,   &xlen);
+  size_t rlen; uint8_t* raw = (uint8_t*)luaL_checklstring(L, 2,   &rlen);
+  X* x = L_asX(L, 3);
+  size_t blen; uint8_t* base = (uint8_t*)luaL_optlstring(L, 4, "", &blen);
+
+  ASSERT(xlen >= 1, "#rdelta xmds == 0");
+  uint8_t *xp = xmds, *xe = xmds+xlen;
+  uint8_t *tp = raw, *te = raw+rlen;
+
+  // decode the length of the final output (called "change")
+  int clen = rcmdlen(xp,xe);
+  DBG("clen=%i dlen=%i xlen=%i rlen=%i\n",
+       clen, blen+clen,   xlen,  rlen);
+  ASSERT(clen >= 0, "invalid clen");
+
+  if(clen == 0) { lua_pushstring(L, ""); return 1; }
+
+  ALLOC_FIELD(*x, dec, blen + clen); uint8_t* dec = x->dec;
+  memcpy(dec, base, blen);
+  uint8_t *dp = dec + blen, *de=dec + blen + clen;
+
+  uint8_t* error = "OOB error";
+  while(xp < xe) {
+    // x == command
+    uint64_t cmdlen = 0; int cmd = deccmd(&xp,xe, &cmdlen);
+    switch (cmd) {
+      case ADD:
+        DBG("ADD len=%i ti=%i  di=%i\n", cmdlen, tp-raw, dp-dec);
+        if((tp + cmdlen > te) || (dp + cmdlen > de)) goto error;
+        memcpy(dp, tp, cmdlen); tp += cmdlen;
+        break;
+      case RUN:
+        DBG("RUN len=%i ti=%i  di=%i\n", cmdlen, tp-raw, dp-dec);
+        if((tp + 1 > te) || (dp + cmdlen > de)) goto error;
+        memset(dp, *tp, cmdlen); tp += 1;
+        break;
+      case CPY:
+        DBG("CPY len=%i ti=%i  di=%i\n", cmdlen, tp-raw, dp-dec);
+        uint64_t raddr = 0; if(decv(&xp,xe, &raddr,0) < 0) goto error;
+        size_t di = dp - dec;
+        raddr = di - raddr - cmdlen;
+        if(raddr < 0)           { error = "negative CPY"; goto error; }
+        if(raddr + cmdlen > di) { error = "forward CPY";  goto error; }
+        memcpy(dp, &dec[raddr], cmdlen);
+        break;
+      case -1: goto error;
+      default: error = "unreachable"; goto error;
+    }
+    dp += cmdlen;
+  }
+  if((dp - dec - blen) != clen) {
+    error = "incorrect change length"; goto error;
+  }
+  lua_pushlstring(L, dec+blen, clen);
+  return 1;
+error:
+  luaL_error(L, error); return 0;
+}
+
+//************************
+//* 1.e: Create (encode) rdelta
+
+// create an rdelta
+// (change, x, base?) -> (nil, errstring) or (cmds, raw)
+static int l_rdelta(LS* L) {
+  DBG("############ rdelta\n");
+  char* err = NULL;
+  size_t clen; uint8_t* change = (uint8_t*)luaL_checklstring(L, 1, &clen);
+  X* x = L_asX(L, 2);
+  if(clen == 0) {
+    lua_pushlstring(L, "\0", 1);
+    lua_pushstring(L, "");
+    return 2;
+  }
+  size_t blen; uint8_t* base = (uint8_t*)luaL_optlstring(L, 3, "", &blen);
+  size_t dlen = blen + clen;
+
+  ALLOC_FIELD(*x, dec, dlen); uint8_t* dec  = x->dec;
+  ALLOC_FIELD(*x, xmd, dlen); uint8_t* xmd  = x->xmd;
+  ALLOC_FIELD(*x, txt, dlen); uint8_t* raw = x->txt;
+  x->xp = xmd;  x->xe = xmd+dlen;
+  x->tp = raw; x->te = raw+dlen;
+
+  // set up pointers which are moved by the sub-algorithms as we encode.
+  uint8_t *dp=dec+blen, *de=dec+dlen; // decode pointer
+
+  // run character and pointer
+  uint8_t rc; uint8_t* rp; size_t rl;
+
+  // move the base+change into dec
+  memcpy(dec, base, blen); memcpy(dec+blen, change, clen);
+
+  // ap=add pointer in dec.
+  // ADD is the "fallback", we build up the bytes we want
+  // to add and do it in one go immediately before other ops.
+  uint8_t* ap = dec+blen;
+  #define ENC_ADD(TO) if(ap < (TO)) { \
+    if(encADD(x, (TO)-ap, ap)) goto error; /* -> nil */ \
+  }
+
+  Win wl, wr; // left and right windows
+  #define WFIND(LI, RP) do { /*window find at fingerprint index*/    \
+    wl = (Win) {.s=dec, .sp=dec+(LI), .ep=dec+(LI), .e=dp}; \
+    wr = (Win) {.s=ap,  .sp=RP,       .ep=RP,       .e=de}; \
+    Win_expand(&wl, &wr); \
+  } while(0)
+
+  // found like-windows. Encode wl (window left) as a copy
+  #define WLEN(W)   Win_len(W)
+  #define ENC_CPY() do { \
+    ENC_ADD(/*TO*/wr.sp); \
+    if(encCPY(x, Win_len(&wl), wr.sp - wl.ep)) goto error; \
+    DBG("  CPY: %.*s\n", Win_len(&wl), wl.sp); \
+    dp = wr.ep; ap = dp; \
+  } while(0)
+
+  // CPY starting bytes and setup for copying ending bytes
+  WFIND(0,    dp); if(gain(Win_len(&wl), blen) >= 2) { ENC_CPY(); }
+  WFIND(blen, de); if(gain(Win_len(&wl), clen) >= 2) { de = wr.sp; }
+
+  // fingerprint pointer and tables
+  uint8_t* fpp = dec; uint32_t fpi;
+  A32 a32 = {.end=de};
+
+  // 4 byte match is valuable up to 2^14 bytes away
+  FP_ALLOC(*x, fp4, po2prime(po2(MIN(0xff, MAX(dlen, x->fp4po2)))));
+  FP* fp4 = &x->fp4;
+
+  while(dp < de) {
+    for(; fpp < dp; fpp += 1) { // add finterprints we missed
+      A32_start(&a32, fpp, de);
+      FP_set(fp4, &a32, fpp - dec);
+    }
+
+    // compute run length
+    rc = *dp; rp=dp+1; while((rp < de) && (rc == *rp)) { rp += 1; }
+    rl = rp - dp; // run length
+    #define ENC_RUN(LEN) do { \
+      ENC_ADD(dp);        \
+      if(encRUN(x, LEN,rc)) goto error; \
+      dp += LEN; ap = dp; \
+    } while(0)
+
+    // find window/s
+    A32_start(&a32, fpp, de);
+    wl.sp = dp; wl.ep = dp;
+    fpi = FP_set(fp4, &a32, fpp - dec);
+    fpp += 1;
+    wl.sp = NULL; wl.ep = NULL;
+    if(fpi < UINT32_MAX) WFIND(fpi, dp);
+    int wg = gain(Win_len(&wl), /*raddr*/wr.sp - wl.ep); // window gain
+    if (wg > 1) {
+      if     (gain(rl, 0) >= wg) ENC_RUN(rl);
+      else                       ENC_CPY();
+    } else if(gain(rl, 0) > 1)   ENC_RUN(rl);
+    else dp += 1;
+  }
+
+  ENC_ADD(dp);
+  if(de < dec + dlen) // enc final matching block
+    encCPY(x, /*len*/(dec+dlen) - de, /*raddr*/dp - (dec+blen));
+
+  lua_pushlstring(L, xmd, x->xp - xmd);
+  lua_pushlstring(L, raw, x->tp - raw);
+  return 2;
+error:
+  lua_pushnil(L);
+  lua_pushstring(L, err ? err : "output would be larger than input");
+  return 2;
+}
+
+static int l_X_free(LS* L) { X_free(L_asX(L, 1)); return 0; }
+static int l_createX(LS* L) {
+  X x = {0};
+  lua_getfield(L, 1, "fp4po2"); x.fp4po2 = luaL_checkinteger(L, -1);
+  X* r = (X*)lua_newuserdata(L, sizeof(X));
+  luaL_setmetatable(L, META_X);
+  *r = x;
+  return 1;
+}
+
+// (xmds) -> (changelen)
+static int l_rcmdlen(LS *L) {
+  size_t xlen; uint8_t* xmds = (uint8_t*)luaL_checklstring(L, 1, &xlen);
+  lua_pushinteger(L, rcmdlen(xmds, xmds+xlen));
+  return 1;
+}
+
+//************************
+//* 2.a Huffman Utils
+
+// Bit IO, optimized for reading by using least-significant-bit first
+typedef struct _BIO {
+  uint8_t *bp, *be; // buffer pointer, buffer end
+  int used; // used bits in *bp
+} BIO;
+
+// read 1 bit (most-significant bit first)
+static int BIOread1(BIO* io) {
+  if(io->used == 8) {
+    if(io->bp == io->be) return -1;
+    io->bp += 1; io->used = 0;
+  }
+  io->used += 1;
+  return 1 & (*io->bp >> (8 - io->used));
+}
+
+// read 8 bits (most-significant bit first)
+static int BIOread8(BIO* io) {
+  uint8_t* bp = io->bp;
+  if(bp == io->be) return -1;
+  io->bp = bp + 1;
+  int used = io->used;
+  if(used == 8) return *(bp+1);
+  return 0xFF & ((*bp << used) | (*(bp+1) >> (8 - used)));
+}
+
+// write n bits (most-significant bit first)
+static int BIOwrite(BIO* io, uint8_t nbits, uint64_t c) {
+  int used = io->used; uint8_t *bp = io->bp, *be = io->be;
+  while(nbits >= 8) {
+    if(bp >= be) return -1;
+    nbits -= 8; uint8_t ch = c >> nbits;
+             *bp |= ch >> used;
+    bp += 1; *bp  = ch << (8 - used);
+  }
+  if(used + nbits > 8) {
+    if(bp >= be) return -1;
+    uint8_t rem = 8 - used; // remaining bits in this byte
+    c &= (1 << nbits) - 1;
+    if(rem > nbits) {
+      *bp |= c << (rem - nbits);
+    } else {
+      *bp |= c >> (nbits - rem);
+    }
+    nbits -= rem; bp += 1; used = 0;
+  }
+  if(nbits) {
+    c &= (1 << nbits) - 1;
+    *bp |= c << (8 - used - nbits);
+    used += nbits;
+  }
+  io->bp = bp;
+  io->used = used;
+  return 0;
+}
+#undef WRITE8
+
+// printf(...) to (char**S, char*E), returns -1 on failure
+#define FMT(S,E, ...) do { \
+    /*printf("FMT:"); printf(__VA_ARGS__);*/ \
+    size_t FMT_avail = (E)-*(S); \
+    int FMT_wrote = snprintf(*(S), FMT_avail, __VA_ARGS__); \
+    if((FMT_wrote < 0) || (FMT_avail < FMT_wrote)) return -1; \
+    *(S) += FMT_wrote; \
+  } while(0)
+
+int spaces(uint8_t** s, uint8_t* e, int n) {
+  if(n > e-*s) return -1;
+  memset(*s, ' ', n); *s += n;
+}
+int HN_fmt(uint8_t** s,uint8_t* e, HN* n) {
+  if(!n) { FMT(s,e, "(null root)\n"); return 0; }
+  int nbits = n->hb.nbits, bits = n->hb.bits;
+  if(n->v >= 0) {
+    FMT(s,e, "(0x%x '%c' ", n->v, n->v);
+    if(nbits > e-*s) return -1;
+    while(nbits > 0) {
+      nbits -= 1; **s = (1 & (bits >> nbits)) ? '1' : '0'; *s += 1;
+    }
+    FMT(s,e, " #%i\n", n->count);
+  }
+  else          FMT(s,e, "(%i)\n", n->hb.nbits);
+  if(n->l) { spaces(s,e, 2*n->hb.nbits); FMT(s,e, "<"); HN_fmt(s,e, n->l); }
+  if(n->r) { spaces(s,e, 2*n->hb.nbits); FMT(s,e, ">"); HN_fmt(s,e, n->r); }
+}
+int HN_printdfs(HN* n) {
+  uint8_t buf[8192]; uint8_t* s = buf;
+  if(HN_fmt(&s, s+8192, n)) {
+    return -1;
+  }
+  printf("HTREE (%i):\n%.*s", s-buf, s-buf, buf);
+}
+
+#define PARENT(N) (N / 2)
+#define LEFT(N)   ((N * 2) + 1)
+#define RIGHT(N)  ((N * 2) + 2)
+
+#define HLEN 256
+typedef struct _Heap { // minheap of node.count
+  HN* a[HLEN];  // array of nodes
+  uint32_t len; // lenth of array
+} Heap;
+
+void Heap_print(HT* ht, Heap* h) {
+  for(int i=0; i < h->len; i++) { HN* n = h->a[i]; }
+}
+
+// percolate the node at ht.n[h.arr[i]] up (towards root)
+static void HT_percolateup(HT* ht, Heap* h, uint32_t i) {
+  HN** heap = h->a;
+  while(i > 0) {
+    uint32_t p = PARENT(i);
+    HN *cn = heap[i], *pn = heap[p]; // child/parent node idx
+    // if min is parent, we are done
+    if(pn->count <= cn->count) break;
+    heap[p] = cn; heap[i] = pn; // swap
+    i = p;
+  }
+}
+
+// percolate the first node "down" (from root)
+static void HT_percolatedown(HT* ht, Heap* h, int32_t hi) {
+  HN** heap = h->a;
+  int64_t i = 0; // i is index into nidxs
+  while(LEFT(i) <= hi) {
+    uint64_t li = LEFT(i), ri = RIGHT(i); // left/right indexes into nidxs
+    HN *n = heap[i], *ln = heap[li], *rn;
+    if((ri <= hi) && (heap[ri]->count < n->count)) {
+      // right exists and is smaller than node count -- check all
+      rn = heap[ri];
+      if(ln->count < rn->count) { // left is smallest
+        heap[i] = ln; heap[li] = n; i = li; // swap i <-> left, go left
+      } else { // right is smallest
+        heap[i] = rn; heap[ri] = n; i = ri; // swap i <-> right, go right
+      }
+    } else if(ln->count < n->count) { // right is not smaller, check left
+      heap[i] = ln; heap[li] = n; i = li;
+    } else break; // node is smallest, done
+  }
+}
+
+// pop index of minimum value from heap h
+static inline HN* HT_heappop(HT* ht, Heap* h) {
+  assert(h->len >= 1);
+  HN* n = h->a[0];
+  h->a[0] = h->a[h->len - 1];
+  HT_percolatedown(ht, h, h->len - 2);
+  h->len -= 1;
+  return n;
+}
+
+static inline void HT_heappush(HT* ht, Heap* h, HN* n) {
+  h->a[h->len] = n;
+  HT_percolateup(ht, h, h->len);
+  h->len += 1;
+}
+
+static inline void hheap(HT* ht, Heap* h, uint8_t* bp,uint8_t* be) {
+  HN** heap = h->a;
+  ht->used = HLEN;
+  memset(ht->n, 0, HTREE_SZ * sizeof(HN));
+   for(int i=0; i < HLEN; i++) {
+    heap[i] = &ht->n[i]; ht->n[i].v = i;
+  }
+  for(; bp < be; bp++) ht->n[*bp].count += 1; // count freq of each byte
+
+  // initialize heap with zero-count nodes removed
+  h->len = 0;
+  for(int i=0; i < HLEN; i++) {
+    if(ht->n[i].count > 0) { heap[h->len] = &ht->n[i]; h->len += 1; }
+  }
+
+  // heapify by expanding the size of the BT 1 node at a time, fixing it
+  for(int i=1; i < h->len; i++) HT_percolateup(ht, h, i);
+}
+
+
+static inline void HT_calcbits(HN* hn, uint64_t bits, uint8_t nbits) {
+  hn->hb = (HB) {.bits = bits, .nbits = nbits};
+  if(hn->v < 0) {
+    HT_calcbits(hn->l,  bits << 1,      nbits + 1);
+    HT_calcbits(hn->r, (bits << 1) + 1, nbits + 1);
+  }
+}
+
+// create huffman tree
+#define HNODE(L, R) \
+  (HN) { .l = L, .r = R, .count = (L)->count + (R)->count, .v = -1 }
+
+static inline void htree(HT* ht, uint8_t* bp,uint8_t* be) {
+  Heap h; *ht = (HT){0};
+  hheap(ht, &h, bp,be);
+  if(!h.len) return; // empty huffman tree
+
+  // build the huffman tree
+  while(h.len > 1) {
+    HN *l = HT_heappop(ht, &h);
+    HN *r = HT_heappop(ht, &h);
+    ht->n[ht->used] = HNODE(l, r);
+    HT_heappush(ht, &h, &ht->n[ht->used]);
+    ht->used += 1;
+  }
+  ht->root = HT_heappop(ht, &h);
+  if(ht->root->v >= 0) {
+    // fix root-only (aka single-value) tree
+    ht->n[ht->used] = HNODE(ht->root, ht->root);
+    ht->root = &ht->n[ht->used]; ht->used += 1;
+  }
+}
+
+// encode a huffman tree into bytestream.
+// leaf: write 1 + code (8 bits), else write 0 and the branches
+static inline int encodeTree(BIO* b, HN* hn) {
+  if(hn->v >= 0) {
+    BIOwrite(b,1, 1);
+    return BIOwrite(b,8, hn->v);
+  }
+  assert(hn->l); assert(hn->r);
+  BIOwrite(b,1, 0);
+  encodeTree(b, hn->l);
+  return encodeTree(b, hn->r);
+}
+
+// decode a huffman tree from b into ht
+static HN* decodeTree(BIO* b, HT* ht) {
+  assert(ht->used < HTREE_SZ);
+  HN* n = &ht->n[ht->used]; ht->used += 1;
+  int bit = BIOread1(b);
+  if(bit < 0) { ht->invalid = true; return NULL; }
+  if(bit) {
+    *n = (HN) { .v = BIOread8(b) };
+  } else {
+    HN* l = decodeTree(b, ht);
+    HN* r = decodeTree(b, ht);
+    *n = (HN) { .v = -1, .l = l, .r = r };
+  }
+  return n;
+}
+
+// initalize the HB[256] array
+static void HB_init(HB* hbs, HN* n) {
+  if(n->v >= 0) {
+    assert(n->v < 256); hbs[n->v] = n->hb;
+  } else {
+    assert(n->l); assert(n->r);
+    HB_init(hbs, n->l); HB_init(hbs, n->r);
+  }
+}
+
+static int l_fmtHT(LS* L) { // (x) -> (string)
+  X* x = L_asX(L, 1);
+  ALLOC_FIELD(*x, txt, 0x4000);
+  uint8_t *s = x->txt; HN_fmt(&s, s + x->txtsz, x->ht.root);
+  lua_pushlstring(L, x->txt, s - x->txt);
+  return 1;
+}
+
+static void HT_finish(X* x) {
+  HT_calcbits(x->ht.root, 0, 0);
+  memset(x->hbs, 0, 256 * sizeof(HB));
+  HB_init(x->hbs, x->ht.root);
+}
+
+static int l_calcHT(LS* L) { // (x, txt) -> ok
+  X* x = L_asX(L, 1);
+  size_t tlen; uint8_t* txt = (uint8_t*)luaL_checklstring(L, 2, &tlen);
+  ASSERT(tlen, "empty string (htree calc)");
+  htree(&x->ht, txt, txt + tlen);
+  if(!x->ht.invalid) HT_finish(x);
+  lua_pushboolean(L, !x->ht.invalid);
+  return 1;
+}
+
+static int l_decodeHT(LS* L) { // (x, txt) -> treelen?, error?
+  X* x = L_asX(L, 1);
+  size_t tlen; uint8_t* txt = (uint8_t*)luaL_checklstring(L, 2, &tlen);
+  ASSERT(tlen, "empty string (htree read)");
+  HT* ht = &x->ht; *ht = (HT){0};
+  BIO io = (BIO) {.bp=txt, .be=txt+tlen};
+  ht->root = decodeTree(&io, &x->ht);
+  if(!ht->root) { lua_pushnil(L); lua_pushstring(L, "unknown error"); return 2; }
+  HT_finish(x);
+  lua_pushinteger(L, io.bp - txt + (io.used ? 1 : 0));
+  return 1;
+}
+
+static int l_encodeHT(LS* L) { // (x) -> (enctree?, error?)
+  X* x = L_asX(L, 1);
+  HT* ht = &x->ht; ASSERT(ht->root, "no tree");
+  uint8_t buf[HTREE_SZ]; memset(buf, 0, HTREE_SZ);
+  BIO io = (BIO) {.bp = buf, .be = buf+HTREE_SZ};
+  int res = encodeTree(&io, x->ht.root);
+  if(res) {
+    lua_pushnil(L); lua_pushstring(L, "unknown error"); return 2;
+  }
+  lua_pushlstring(L, buf, io.bp - buf + (io.used ? 1 : 0));
+  return 1;
+}
+
+// Encode txt using huffman encoding.
+// (txt, X) -> encoded?, error
+static int l_hencode(LS* L) {
+  size_t tlen; uint8_t* txt = (uint8_t*)luaL_checklstring(L, 1, &tlen);
+  X* x = L_asX(L, 2);
+  ALLOC_FIELD(*x, dec, tlen + 6); memset(x->dec, 0, tlen + 6);
+  BIO io = { .bp = x->dec, .be = x->dec + tlen };
+  encv(&io.bp, io.be, tlen); // encode the final length
+
+  uint8_t *tp = txt, *te = txt+tlen;
+  HB* hbs = x->hbs;
+  while(tp < te) {
+    HB hb = hbs[*tp];
+    if(!hb.nbits) {
+      lua_pushnil(L);
+      lua_pushfstring(L, "unknown huffman code: %I", *tp);
+      return 2;
+    }
+    BIOwrite(&io, hb.nbits, hb.bits);
+    tp += 1;
+  }
+  if(io.used) io.bp += 1;
+  lua_pushlstring(L, x->dec, io.bp - x->dec);
+  return 1;
+}
+
+static int HN_read1(HN* n, BIO* io) {
+  while(n->v < 0) {
+    if(BIOread1(io)) {
+      n = n->r;
+    } else {
+      n = n->l;
+    }
+  }
+  return n->v;
+}
+
+// Encode txt using huffman encoding.
+// (enc, X) -> txt, error?
+static int l_hdecode(LS* L) {
+  size_t elen; uint8_t* enc = (uint8_t*)luaL_checklstring(L, 1, &elen);
+  X* x = L_asX(L, 2); HN* root = x->ht.root;
+  BIO io = { .bp = enc, .be = enc + elen};
+  uint64_t dlen = 0; ASSERT(decv(&io.bp, io.be, &dlen,0) >= 0, "OOB");
+  ALLOC_FIELD(*x, dec, dlen); uint8_t *dp = x->dec, *de = x->dec + dlen;
+  uint8_t* error = NULL;
+  while(dp < de) {
+    if(io.bp >= io.be) { error = "encoded length too short"; break; }
+    *dp = HN_read1(root, &io); dp += 1;
+  }
+  lua_pushlstring(L, x->dec, dlen);
+  if(error) lua_pushstring(L, error); else lua_pushnil(L);
+  return 2;
+}
+
+
+//************************
+//* 3.a Lua Bindings
+
+// int -> str: encode integer using encv
+static int l_encv(LS* L) {
+  uint8_t buf[8]; uint8_t* b = buf; encv(&b, buf+8, luaL_checkinteger(L, 1));
+  lua_pushlstring(L, buf, b-buf);
+  return 1;
+}
+
+// str, startindex=1 -> (int, elen): decode integer using decv
+// returns: the integer and the number of bytes used to encode it.
+static int l_decv(LS* L) {
+  size_t tlen; uint8_t* txt = (uint8_t*)luaL_checklstring(L, 1, &tlen);
+  int startindex = luaL_optinteger(L, 2, 1) - 1;
+  if(startindex < 0) startindex = 0;
+  uint8_t* tp = txt + startindex;
+  uint64_t v = 0; ASSERT(decv(&tp, txt+tlen, &v,0) >= 0, "OOB");
+  lua_pushinteger(L, v);
+  lua_pushinteger(L, tp - txt - startindex);
+  return 2;
+}
+
+static const struct luaL_Reg smol_sys[] = {
+  {"createX", l_createX},
+  {"rpatch", l_rpatch}, {"rdelta", l_rdelta},
+  {"rcmdlen", l_rcmdlen},
+  {"fmtHT", l_fmtHT},       {"calcHT", l_calcHT},
+  {"decodeHT", l_decodeHT}, {"encodeHT", l_encodeHT},
+  {"hencode", l_hencode}, {"hdecode", l_hdecode},
+  {"encv", l_encv}, {"decv", l_decv},
+  {NULL, NULL}, // sentinel
+};
+
+
+#define L_setmethod(L, KEY, FN) \
+  lua_pushcfunction(L, FN); lua_setfield(L, -2, KEY);
+
+int luaopen_smol_sys(LS *L) {
+  luaL_newlib(L, smol_sys);
+
+  luaL_newmetatable(L, META_X);
+    L_setmethod(L, "__gc",   l_X_free);
+  lua_setfield(L, -2, "X");
+
+  return 1;
+}
+

--- /dev/null
+++ lib/smol/smol.lua
@@ -0,0 +1,155 @@
+local G = G or _G
+--- small compression algorithms
+local M = G.mod and mod'smol' or setmetatable({}, {})
+local S = require'smol.sys'
+
+local shim = require'shim'
+local mty  = require'metaty'
+local ds   = require'ds'
+local pth  = require'ds.path'
+local construct = mty.construct
+local char, byte = string.char, string.byte
+
+local rdelta, rpatch          = S.rdelta, S.rpatch
+local calcHT                  = S.calcHT
+local encodeHT, decodeHT      = S.encodeHT, S.decodeHT
+local hencode, hdecode        = S.hencode, S.hdecode
+local encv, decv              = S.encv, S.decv
+
+local sfmt = string.format
+local assertEq = require'civtest'.eq
+local assertBinEq = require'civtest'.binEq
+local fbin = require'fmt.binary'
+
+local RDELTA, HUFF_CMDS, HUFF_RAW = 0x80, 0x40, 0x20
+
+M.XConfig = mty'XConfig' {
+  'fp4po2 [int]: max size of len4 fingerprint table', fp4po2=14,
+}
+
+M.Smol = mty'Smol' {
+  'x [smol.X]: holds settings and buffers for smol operations',
+  'rdelta [bool]: whether to use rdelta in compress',
+  'huff   [bool]: whether to use huffman coding in compress and rdelta',
+}
+
+getmetatable(M.Smol).__call = function(T, t)
+  t.x = S.createX(t.x or M.XConfig{})
+  return construct(T, t)
+end
+
+-- encode text usin ghuffman encoding. Tree is included at the front
+M.Smol.hencode = function(sm, text) --> htree..enc
+  assert(calcHT(sm.x, text))
+  local ht  = assert(encodeHT(sm.x))
+
+  -- FIXME: remove these checks for decode equality
+  assertEq(#ht, assert(decodeHT(sm.x, ht..string.rep('Z', 1024))))
+  local htStr = S.fmtHT(sm.x)
+  assertEq(htStr:gsub('#%d+', '#0'), S.fmtHT(sm.x))
+
+  local enc = assert(hencode(text, sm.x))
+  local elen, lensz = S.decv(enc)
+  assertEq(#text, elen)
+  assertBinEq(text, hdecode(enc, sm.x))
+
+  return ht..enc
+end
+
+-- decode huffman tree+encoded bytes.
+M.Smol.hdecode = function(sm, henc) --> text
+  local treelen = assert(decodeHT(sm.x, henc))
+  return assert(hdecode(henc:sub(treelen+1), sm.x))
+end
+
+M.Smol.compressRDelta = function(sm, cmds, raw, text, base)
+  local hcmds = assert(sm:hencode(cmds))
+  local hraw  = assert(sm:hencode(raw))
+
+  -- FIXME: remove checks
+  assertEq(text, rpatch(cmds, raw, sm.x, base))
+  assertEq(cmds, sm:hdecode(hcmds))
+  assertEq(raw, sm:hdecode(hraw))
+
+  return char(RDELTA | HUFF_CMDS | HUFF_RAW)..encv(#hcmds)..hcmds..hraw
+end
+
+M.Smol.compress = function(sm, text, base)
+  if text == '' then return '' end
+  local cmds, raw = rdelta(text, sm.x, base)
+  if cmds and #cmds + #raw < #text then
+    return sm:compressRDelta(cmds, raw, text, base)
+  end
+  local enc = assert(sm:hencode(text))
+  return (#enc < #text) and (char(HUFF_RAW)..enc) or ('\x00'..text)
+end
+
+M.Smol.decompress = function(sm, enc, base)
+  if enc == '' then return '' end
+  local kind = byte(enc:sub(1,1))
+
+  if RDELTA & kind ~= 0 then
+    if (RDELTA | HUFF_CMDS | HUFF_RAW) ~= kind then
+      error(sfmt('not yet implemented: 0x%X', kind))
+    end
+    local cmdlen, enclen = decv(enc:sub(2,10))
+
+    local si = 2 + enclen
+    local hcmds = enc:sub(si, si + cmdlen - 1)
+    local hraw  = enc:sub(si + cmdlen)
+
+    local cmds = sm:hdecode(hcmds)
+    local raw  = sm:hdecode(hraw)
+    return rpatch(cmds, raw, sm.x, base)
+  elseif HUFF_RAW & kind ~= 0 then
+    assert(kind == HUFF_RAW)
+    return sm:hdecode(enc:sub(2))
+  else
+    assert(kind == 0);
+    return enc:sub(2)
+  end
+end
+
+--- de/compress library and utility.
+---
+--- Example: [+
+---   * [$smol file.txt    file.txt.sm --compress]
+---   * [$smol file.txt.sm file.txt]
+--- ]
+M.Main = mty'Main' {
+  'compress [bool]: compresses first argument, otherwise decompress it',
+  'verbose [bool]: prints stats',
+  "dry [bool]: if true then don't write data",
+}
+
+M.main = function(args)
+  args = M.Main(shim.parseStr(args))
+  if #args < 1 then
+    print'Usage: smol file.txt file.txt.sm'
+    return 1
+  end
+  local sm, inp, toPath, out = M.Smol{}, pth.read(args[1])
+
+  if args.compress then
+    toPath = args[2] or (args[1]..'.sm')
+    out = sm:compress(inp)
+  else
+    toPath = args[2]
+      or (args[1]:sub(-3) == '.sm') and args[1]:sub(1,-4)
+      or error'must provide output file'
+    out = sm:decompress(inp)
+  end
+  if args.verbose then
+    io.fmt:write(sfmt('%scompression ratio: %i / %i = %i%%\n',
+      args.compress and '' or 'de',
+      #out, #inp, 100 * #out // #inp))
+  end
+  if args.dry then
+    io.fmt:write('smol would write to: '..toPath..'\n')
+  else pth.write(toPath, out) end
+  return out
+end
+
+
+getmetatable(M).__call = function(_, args) return M.main(args) end
+return M

--- /dev/null
+++ lib/smol/test.lua
@@ -0,0 +1,174 @@
+
+local T = require'civtest'
+local smol = require'smol'
+local S = require'smol.sys'
+local fbin = require'fmt.binary'
+local ds = require'ds'
+local pth = require'ds.path'
+local Iter = require'ds.Iter'
+local civix = require'civix'
+
+local sfmt, char = string.format, string.char
+
+local function rtest(base, change, expCmd, expText)
+  print(('### rtest (%q)  (%q)  ->  %q %q'):format(
+    base, change, expCmd, expText))
+  local x = S.createX{fp4po2=14}
+  local cmds, text = S.rdelta(change, x, base)
+  print('cmds, text:', cmds, text)
+  io.fmt:write('cmds\n')
+  fbin.columns(io.fmt, cmds); io.fmt:write'\n'
+  io.fmt:write('text\n')
+  fbin.columns(io.fmt, text); io.fmt:write'\n'
+  T.eq(change, S.rpatch(cmds, text, x, base))
+  if expCmd then
+    T.binEq(expCmd, cmds)
+    T.eq(expText, text)
+  end
+  return cmds, text
+end
+
+T.rdelta_small = function()
+  -- hand-rolled decode
+  local rp = S.rpatch
+  local x = S.createX{fp4po2=14}
+  T.eq('abc',    rp('\x03',     'abc', x)) -- ADD
+  T.eq('abcabc', rp('\x03\x83\x00', 'abc', x)) -- ADD+CPY
+  T.eq('abc',    rp('\x83\x00', '',        x, 'abc')) --CPY(base)
+
+  rtest('',     '', '\0', '')
+  rtest('base', '', '\0', '')
+  rtest('',     'zzzzz',  '\x45', 'z') -- len=3 RUN(3, 'z')
+  -- copy start                       cpy8@2   ad2
+  rtest('01234567ab', '01234567yz',  '\x88\x02\x02', 'yz')
+  -- copy end                         ad2  cpy8@2
+  rtest('ab01234567', 'yz01234567',  '\x02\x88\x02', 'yz')
+
+  -- copy base w/fingerprint        ad1  cpy8@1 ad1
+  rtest('01234567', 'a01234567z', '\x01\x88\x01\x01', 'az')
+  -- copy nobase w/fingerprint      ad8 cpy8@0
+  rtest('', '0123456701234567',   '\x08\x88\x00', '01234567')
+end
+
+T.huffman_small = function()
+  local x = S.createX{fp4po2=14}
+  local txt = "AAAA   zzzz;;"
+  print('!! txt len: ', #txt)
+  -- Note:
+  -- ';' = 00   ' ' = 01
+  -- 'A' = 10   'z' = 11
+  assert((S.calcHT(x, txt)))
+  local enc = assert(S.hencode(txt, x))
+  T.binEq(
+  -- len AAAA   zzz
+    '\x0D\xAA\x57\xFC\x00',
+    enc)
+
+  print(sfmt("Enc len=%i: %q\n", #enc, enc))
+  local dec, err = assert(S.hdecode(enc, x));
+  print(sfmt("Dec len=%i: %q", #dec, dec))
+  print(sfmt("Dec err: %q", err));
+  assert(not err)
+  T.binEq(txt, dec);
+end
+
+-- Note: esz (encoding sz) substracts the length byte
+local function htest(txt, esz)
+  print(('!! ### htest %q'):format(txt))
+  local x = S.createX{fp4po2=14}
+  assert(S.calcHT(x, txt))
+  local h = assert(S.hencode(txt, x))
+  print(sfmt("!! ##### htest %q (%i) -> %q (%i)", txt, #txt, h, #h))
+  local res = assert(S.hdecode(h, x))
+  T.binEq(txt, res)
+  if esz then T.eq(esz, #h - 1) end
+end
+
+T.huffman = function()
+  htest('abcdefg', 3) htest('00000', 1) htest('01010101', 1)
+  htest('abaabbcccddaa', 4)
+end
+
+local test_encv = function(v, len)
+  local e = S.encv(v);       T.eq(len, #e)
+  local d, elen = S.decv(e); T.eq(len, elen)
+  T.eq(v, d)
+end
+
+T.encv = function()
+  test_encv(0, 1); test_encv(1, 1); test_encv(0x37, 1); test_encv(0x7F, 1)
+  test_encv(0x080, 2); test_encv(0x100, 2); test_encv(0x3FFF, 2);
+  test_encv(0x4000, 3);
+  test_encv(0x7FFFFFFF, 5);
+end
+
+local function print_stats(name, path, tsize, csize)
+  print(sfmt('  %-10s: compress % 8i / %-8i (%3i%%) : %s',
+    name, csize, tsize, math.floor(csize * 100 / tsize), pth.nice(path)))
+end
+local function rdelta_testpath(sm, path)
+  local ftext = pth.read(path)
+  local xmds, txt = S.rdelta(ftext, sm.x); local csize
+  if not xmds then csize = #ftext -- no compression
+  else
+    csize = #xmds + #txt
+    T.eq(#ftext, S.rcmdlen(xmds))
+    T.eq(ftext, S.rpatch(xmds, txt, sm.x))
+  end
+  print_stats('rdelta', path, #ftext, csize)
+  return csize, #ftext
+end
+
+local function huff_testpath(sm, path) --> encsz, pathsz
+  local ftext = pth.read(path)
+  if ftext == '' then print('skipping: '..path); return end
+  assert(S.calcHT(sm.x, ftext))
+  local enc = S.hencode(ftext, sm.x)
+  local dec = S.hdecode(enc, sm.x)
+  local btree = assert(S.encodeHT(sm.x))
+  print_stats('huff', path, #ftext, #btree + #enc)
+  T.binEq(ftext, dec)
+  return #btree + #enc, #ftext
+end
+
+local function smol_testpath(sm, path) --> encsz, pathsz
+  local ftext = pth.read(path)
+  local enc = sm:compress(ftext)
+  print_stats('smol', path, #ftext, #enc)
+  assert(#enc <= #ftext * 2, 'enc too large')
+  local dec = sm:decompress(enc)
+  T.binEq(ftext, dec)
+  return #enc, #ftext
+end
+
+T.compress_files = function()
+  local sm = smol.Smol{}
+  rdelta_testpath(sm, 'cmd/cxt/test.lua')
+  huff_testpath(sm,   'cmd/cxt/test.lua')
+  smol_testpath(sm,   'cmd/cxt/test.lua')
+  smol_testpath(sm,   'cmd/ele/tests/small.lua')
+end
+
+T.walk_compress = function()
+  local walkpath = os.getenv'SMOL_TEST_PATH'
+  if not walkpath then
+    return print'skipping: set SMOL_TEST_PATH=./ (for example) to run'
+  end
+  local sm = smol.Smol{}
+  local num, osize, rsize, hsize, ssize = 0, 0, 0, 0, 0
+  for path, ftype in civix.Walk{walkpath} do
+    if ftype ~= 'file' or path:find'/%.'
+      or path:find'experiment' then
+      goto continue end
+      print("compressing "..pth.nice(path))
+      local r, o = rdelta_testpath(sm, path); rsize = rsize + r
+      local h    = huff_testpath(sm, path);   hsize = hsize + h
+      local s    = smol_testpath(sm, path);   ssize = ssize + s
+      num = num + 1; osize = osize + o
+    ::continue::
+  end
+  print(sfmt('!! average compression of %i individual files', num))
+  print(sfmt('  rdelta == %i/%i (%.0f%%)', rsize, osize, (rsize * 100) / osize))
+  print(sfmt('  huff   == %i/%i (%.0f%%)', hsize, osize, (hsize * 100) / osize))
+  print(sfmt('  smol   == %i/%i (%.0f%%)', ssize, osize, (ssize * 100) / osize))
+end

--- /dev/null
+++ lib/vcds/PKG.lua
@@ -0,0 +1,12 @@
+name     = 'vcds'
+version  = '0.1-6'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "version control data structures and algorithms"
+homepage = "https://lua.civboot.org#Package_vcds"
+license  = "UNLICENSE"
+srcs = { 'vcds.lua' }
+deps = {
+  "lua    ~> 5.3",
+  "metaty ~> 0.1",
+  "ds     ~> 0.1",
+}

--- /dev/null
+++ lib/vcds/test.lua
@@ -0,0 +1,140 @@
+local mty = require'metaty'
+local ds  = require'ds'
+local lines = require'lines'
+local T = require'civtest'
+local Diff, Keep, Change; local M = ds.auto'vcds'
+local push = table.insert
+
+T.create_anchor = function()
+  local base = {'1', '1', ' ', '2', '3', '3', ' ', '1', '2'}
+  T.eq({}, M.createAnchorTop(base, 0, 2))
+  T.eq({Diff(1, '@', '1')}, M.createAnchorTop(base, 1, 2))
+  T.eq({
+    Diff(1, '@', '1'),
+    Diff(2, '@', '1'),
+  }, M.createAnchorTop(base, 2, 2))
+  T.eq({
+    Diff(2, '@', '1'),
+    Diff(3, '@', ' '),
+    Diff(4, '@', '2'),
+  }, M.createAnchorTop(base, 4, 2))
+
+  T.eq({},  M.createAnchorBot(base, 10, 2))
+  T.eq({Diff(9, '@', '2')}, M.createAnchorBot(base, 9, 2))
+  T.eq({
+    Diff(8, '@', '1'),
+    Diff(9, '@', '2'),
+  }, M.createAnchorBot(base, 8, 2))
+  T.eq({
+    Diff(7, '@', ' '),
+    Diff(8, '@', '1'),
+    Diff(9, '@', '2'),
+  }, M.createAnchorBot(base, 7, 2))
+end
+
+T.patch = function()
+  local base = {'2', '2', '2', '5', '5_', '7_', '9'}
+
+  local diffs = {
+    Diff('+', 1, '1'),  -- 1
+    Diff(1,   2, '2'),  -- 2 keep
+    Diff(2,   3, '2'),  -- 2 keep
+    Diff(3,   4, '2'),  -- 2 keep
+  }
+
+  local change2 = {
+    Diff('+', 5, '3'),  -- 3
+    Diff('+', 6, '4'),  -- 4
+    Diff(4,   7, '5'),  -- 5 keep
+    Diff('+', 8, '6'),  -- 6
+    Diff('+', 9, '7'),
+    Diff('+',10, '8'),
+    Diff('+',11, '9'),  -- 9
+    Diff(5, '-', '5_'), -- 10
+    Diff(6, '-', '7_'), -- 11
+  }
+  ds.extend(diffs, change2)
+  push(diffs, Diff(7,  12, '9'))  -- 12 keep
+
+  local changes = M.toChanges(diffs)
+  T.eq({
+    Change{rem=0, add={'1'}},                -- 1
+    Keep{num=3},                             -- 2,2,2
+    Change{rem=0, add={'3', '4'}},           -- 3
+    Keep{num=1},                             -- 4
+    Change{rem=2, add={'6', '7', '8', '9'}}, -- 5
+    Keep{num=1},
+  }, changes)
+  T.eq(diffs, M.toDiffs(base, changes))
+
+  local changesB = M.toChanges(diffs, true)
+  T.eq({
+    Change{rem={}, add={'1'}},
+    Keep{'2', '2', '2'},
+    Change{rem={}, add={'3', '4'}},
+    Keep{'5'},
+    Change{
+      rem={'5_', '7_'},
+      add={'6', '7', '8', '9'}
+    },
+    Keep{'9'},
+  }, changesB)
+  T.eq(diffs, M.toDiffs(base, changesB))
+
+  local p = M.Picks(base, changes, {anchorLen=2})
+  T.eq({1, 1}, {p:groupChanges(1)})
+  T.eq({3, 5}, {p:groupChanges(2)})
+  T.eq({
+    Diff('+',   1, '1'),
+    Diff(  1, '@', '2'),
+    Diff(  2, '@', '2'),
+  }, p())
+
+  local patch = {
+    Diff(  2, '@', '2'),
+    Diff(  3, '@', '2'),
+  }
+  ds.extend(patch, change2)
+  push(patch, Diff(7, '@', '9'))
+  T.eq(patch, p())
+end
+
+local function findAnchorTest(expectBl, expectLines, base, anchors, above)
+  local baseMap = lines.map(base)
+  local aDiffs = {}; for _, a in ipairs(anchors) do
+    push(aDiffs, Diff(-1, '@', a))
+  end
+  T.eq({expectBl, expectLines}, {M.findAnchor(base, baseMap, aDiffs, above)})
+end
+
+T.find_anchor = function()
+  local tl = {'a', 'b', 'b', 'c', '', 'd', 'b', 'a'}
+  -- above
+  findAnchorTest(1, 2, tl, {'a', 'b'},      true)
+  findAnchorTest(2, 2, tl, {'b', 'b'},      true)
+  findAnchorTest(2, 2, tl, {'a', 'b', 'b'}, true)
+  findAnchorTest(4, 1, tl, {'b', 'c'},      true)
+  findAnchorTest(7, 2, tl, {'b', 'a'},      true)
+
+  findAnchorTest(nil, nil, tl, {'a'},       true)
+  findAnchorTest(nil, nil, tl, {'b'},       true)
+
+  -- below
+  findAnchorTest(2, 2, tl, {'b', 'b'},      false)
+  findAnchorTest(3, 2, tl, {'b', 'c'},      false)
+  findAnchorTest(4, 1, tl, {'c'},           false)
+  findAnchorTest(7, 2, tl, {'b', 'a'},      false)
+
+  findAnchorTest(nil, nil, tl, {'a'},       false)
+  findAnchorTest(nil, nil, tl, {'b'},       false)
+end
+
+T.create_patch = function()
+  local base = {'1', '2', '3', '4', '5', '6', '7'}
+  local baseMap = lines.map(base)
+   T.eq(M.Patch{bl=0,
+     '0.a',
+   }, M.createPatch(base, baseMap,
+     { Diff('+', 1, '0.a') }
+   ))
+end

--- /dev/null
+++ lib/vcds/vcds.lua
@@ -0,0 +1,352 @@
+--- vsds: version control data structures (and algorithms)
+local M = mod and mod'vcds' or {}
+
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds  = require'ds'
+local push, sfmt = table.insert, string.format
+local construct = mty.construct
+
+local function nw(n) -- numwidth
+  if n == nil then return '        ' end
+  n = tostring(n); return n..string.rep(' ', 8-#n)
+end
+
+M.ADD = '+'
+M.REM = '-'
+
+-- TODO: I want to use this when applying patches
+--- normalize a line for comparing (anchoring).
+--- This just squashes and trims the end.
+M.normalize = function(s) return ds.squash(ds.trimEnd(s)) end
+
+--- Single Line Diff
+--- This type is good for displaying differences to a user.
+M.Diff = mty'Diff' {
+  "b (base)   orig file.  '+'=added",
+  "c (change) new file.   '-'=removed",
+  "text[string]",
+}
+getmetatable(M.Diff).__call = function(T, b, c, text)
+  return mty.construct(T, {b=b, c=c, text=text})
+end
+
+M.Diff.__tostring = function(d)
+  return string.format("%4s %4s|%s", d.b, d.c, d.text)
+end
+M.Diff.isKeep = function(d)
+  return (d.b ~= M.ADD) and (d.c ~= M.REM)
+end
+
+local function pushAdd(ch, text)
+  if not ch.add then ch.add = {} end; push(ch.add, text)
+end
+
+----------------------
+-- ChangeList composed of Keep and Change directives
+-- This is how diffs are often serialized
+
+M.Keep = mty'Keep' {'num[int]'}
+M.Keep.len = function(k) return k.num and k.num or #k end
+
+M.Change = mty'Change' {
+  'rem[int|table] removed lines',
+  'add[string]    text to add',
+}
+M.Change.len = function(ch)
+  return (type(ch.rem) == 'number') and ch.rem or #ch.rem
+end
+
+--- Apply changes to base (TableLines), push to [$out]
+M.apply = function(base, changes, out--[[{}]]) --> out
+  local l = 1; out = out or {}
+  for _, p in ipairs(changes) do
+    local pty = mty.ty(p)
+    if pty == M.Keep then
+      for i=l, l + p:len() - 1 do push(out, assert(base[i], 'base OOB')) end
+      l = l + p:len()
+    else
+      fmt.assertf(pty == M.Change, 'patch type must be Keep|Change: %s', pty)
+      if p.add then for _, a in ipairs(p.add) do push(out, a) end end
+      l = l + p.rem
+    end
+  end
+  return out
+end
+
+----------------------
+-- Conversion
+
+M.toChanges = function(diffs, full)
+  local changes, p = {}, nil
+  for _, d in ipairs(diffs) do
+    if d:isKeep() then
+      if not p or mty.ty(p) ~= M.Keep then
+        push(changes, p); p = M.Keep{num=not full and 0 or nil}
+      end
+      if full then push(p, d.text) else p.num = p.num + 1 end
+    else
+      if not p or mty.ty(p) ~= M.Change then
+        push(changes, p); p = M.Change{rem=full and {} or 0}
+      end
+      if d.b == M.ADD then pushAdd(p, d.text)
+      else assert(d.c == M.REM)
+        if full then push(p.rem, d.text)
+        else         p.rem = p.rem + 1 end
+      end
+    end
+  end
+  if p then push(changes, p) end
+  return changes
+end
+
+M.DiffSoF = M.Diff('^', 0,  '') -- start of file
+M.DiffEoF = M.Diff('$', -1, '') -- end of file
+
+M.DiffsExtender = mty'DiffsExtender' {
+  'diffs [list]',
+  'base',
+  'bl [int]: base line',
+  'cl [int]: change line',
+}
+getmetatable(M.DiffsExtender).__call = function(T, base)
+  return construct(T, {diffs={}, base=base, bl=1, cl=1})
+end
+--- extend change to diffs
+M.DiffsExtender.__call = function(de, ch, keepMax)
+  local chTy, base, diffs = mty.ty(ch), de.base, de.diffs
+  if chTy == M.Keep then
+    for l = de.bl, de.bl + ch:len() - 1 do
+      push(diffs, M.Diff(l, de.cl, base[l]))
+      de.cl = de.cl + 1
+    end; de.bl = de.bl + ch:len()
+  else
+    fmt.assertf(chTy == M.Change, "changes must be Keep|Change: %s", chTy)
+    for _, a in ipairs(ch.add) do
+      push(diffs, M.Diff('+', de.cl, a)); de.cl = de.cl + 1
+    end
+    for l = de.bl, de.bl + ch:len() - 1 do
+      push(diffs, M.Diff(l, '-', base[l]))
+    end; de.bl = de.bl + ch:len()
+  end
+end
+local DiffsExtender = M.DiffsExtender
+
+--- Convert Changes to Diffs with full context
+M.toDiffs = function(base, changes) --> diffs
+  local de = DiffsExtender(base)
+  for _, ch in ipairs(changes) do de(ch) end
+  return de.diffs
+end
+
+M.createAnchorTop = function(base, l, aLen)
+  local a = {}; if l < 1 then return a end
+  for l = l, 1, -1 do
+    if aLen <= 0 then break end
+    local line = base[l]; push(a, M.Diff(l, '@', line))
+    if ds.trim(line) ~= '' then aLen = aLen - 1 end
+  end
+  return ds.reverse(a)
+end
+
+M.createAnchorBot = function(base, l, aLen)
+  local a = {}; for l, line in ds.islice(base, l) do
+    if aLen <= 0 then break end
+    push(a, M.Diff(l, '@', line))
+    if ds.trim(line) ~= '' then aLen = aLen - 1 end
+  end
+  return a
+end
+
+--- Create picks (aka cherry picks) iterator from changes.
+--- These can then be applied to a new base using vcds.patch(base, picks)
+---
+--- Each "pick" is a list of Diffs which are anchored by the lines
+--- above and below (unless they are start/end of file).
+M.Picks = mty'Picks' {
+  'changes [list]: list of changes',
+  'ci [int]: for iterating',
+  'de [DiffsExtender]',
+  'set [table]: settings (need refactor)',
+}
+getmetatable(M.Picks).__call = function(T, base, changes, set) --> Picks
+  set = set or {}
+  set.anchorLen = set.anchorLen or 3
+  return construct(T, {
+    changes = changes, ci=1,
+    de = DiffsExtender(base),
+    set=set,
+  })
+end
+M.Picks.__call = function(p) --> iterator
+  local de, changes, aLen = p.de, p.changes, p.set.anchorLen
+  if p.ci > #changes then return end
+  assert(ds.isEmpty(de.diffs))
+
+  local ci, endci = p:groupChanges(p.ci)
+  while p.ci < ci do de(changes[p.ci]); p.ci = p.ci + 1 end -- discard
+  de.diffs = M.createAnchorTop(de.base, de.bl - 1, aLen)
+  while p.ci <= endci do de(changes[p.ci]); p.ci = p.ci + 1 end -- changes
+  ds.extend(de.diffs, M.createAnchorBot(de.base, de.bl, aLen))
+  local diffs = de.diffs; de.diffs = {}
+  return diffs
+end
+
+--- Get which changes to include in a patch group.
+--- A group is a series of patches with Keep:len() < anchorLen (default=3)
+--- between them.
+M.Picks.groupChanges = function(p, ci)
+  local len, aLen = #p.changes, p.set.anchorLen
+  while ci <= len and mty.ty(p.changes[ci]) == M.Keep do
+    ci = ci + 1
+  end
+  local starti = ci; for ci, ch in ds.islice(p.changes, ci) do
+    local chTy = mty.ty(ch)
+    if ci == len then
+      if chTy == M.Keep then ci = ci - 1 end
+      return starti, ci
+    end
+    if (chTy == M.Keep) and (ch:len() >= aLen) then
+      return starti, ci - 1 end
+  end; error'unreachable'
+end
+
+local function checkAnchor(iter, base, bl)
+  local bline; for _, aline in table.unpack(iter) do
+    if ds.trim(aline) == '' then              goto continue end
+    bline = base[bl]; if not bline then return false end
+    if ds.trim(bline) == '' then bl = bl + 1; goto continue end
+    if not mty.eq(aline, bline) then return false end
+    bl = bl + 1; ::continue::
+  end
+  return true
+end
+
+--- Find the actual anchor by searching for uniqueness in the anchors [+
+--- * above=true:  find above (search up)
+--- * above=false: find below (search down)
+--- ]
+M.findAnchor = function(base, baseMap, anchors, above--[[false]]) --> (l, c)
+  local iterFn = above and ds.ireverse or ipairs
+  local alines = {}
+  for ai, anchor in iterFn(anchors) do
+    local bls = baseMap[anchor.text]; if not bls then return end
+    if #bls == 1 then
+      -- in this case below needs to subtract previous lines
+      -- in `found` case, it is comparing correctly so no need.
+      return bls[1] - (above and 0 or #alines), #alines + 1
+    end
+    push(alines, anchor.text)
+    -- see if the whole anchor is unique
+    local found, fbl = 0; for _, bl in ipairs(bls) do
+      bl = above and bl or (bl - #alines + 1)
+      if checkAnchor({iterFn(alines)}, base, bl) then
+        found, fbl = found + 1, bl
+      end
+    end
+    if found == 1 then return fbl, #alines end
+  end
+end
+
+M.Patch = mty'Patch' {
+  'conflict [string]', 'bl [number]',
+}
+
+M.pickAnchorsTop = function(pick) --> isStartOfFile, anchors
+  local anchors = {}; for _, d in ipairs(pick) do
+    if not d:isKeep() then break end; push(anchors, d)
+  end
+  return pick[1].c == 1, anchors
+end
+
+M.pickAnchorsBot = function(base, pick) --> isEndOfFile, anchors
+  local anchors = {}; for _, d in ds.ireverse(pick) do
+    if not d:isKeep() then break end; push(anchors, d)
+  end
+  return pick[#pick].b == #base, ds.reverse(anchors)
+end
+
+local function patchConflict(pick, conflict)
+  local p = M.Patch{conflict=conflict}; ds.extend(p, pick)
+  return p
+end
+
+local function patchApplyKeep(p, base, keep)
+  for _, kline in ipairs(keep) do
+    if base[bl] ~= kline then return false end
+    push(p, base[bl])
+    bl = bl + 1
+  end
+  return true
+end
+
+local function patchApplyChange(p, base, ch) --> bl, clean, err
+  local remAnc, addAnc, iadd, irem = true, true, 1, 1
+  while (iadd <= #ch.add) or (irem <= #ch.rem) do
+    local bline = base[p.bl]
+    local aline, rline = ch.add[iadd], ch.rem[irem]
+    fmt.assertf(rline ~= aline, '!removed == added: %s', rline)
+    if bline == rline then irem = irem + 1
+    elseif iadd <= #ch.add then
+      if bline == aline then p.bl = p.bl + 1 end
+      push(p, aline); iadd = iadd + 1
+    else return false end
+  end
+  return true
+end
+
+--- Create a patch item from a pick
+---
+--- At it's most basic it would just be: [+
+--- * find line position via top and/or bottom anchor. We want at least 2 lines
+--- * convert pick to change. Walk the text applying the change.
+--- ]
+---
+--- There are some strategies to fix common anchor misses: [+
+--- * If an anchor is missing, the nearby change can be used instead. Use either
+---   the removed or added lines. For instance, if we are supposed to remove lines
+---   then try and find them. Conversely if the patch was already applied then the
+---   supposed-to-be added lines will already be there!
+--- * When adding, existing identical text is okay.
+--- * When removing, missing text is okay as long as it's followed by an anchor of
+---   some kind
+--- * Keep lines act as an anchor (for above) but are otherwise not required - they
+---   are "free" to change or be removed. If they are missing then the algorithm will
+---   try to continue the change with or without them (dynamic programming)
+--- * empty lines are entirely ignored and are not considered an anchor
+--- ]
+M.createPatch = function(base, baseMap, pick)
+  local isSof, topA = M.pickAnchorsTop(pick)
+  local isEof, botA = M.pickAnchorsBot(base, pick)
+  local top, topLines = M.findAnchor(base, baseMap, topA, true)
+  local bot, botLines = M.findAnchor(base, baseMap, botA, false)
+  top = (isSof and 1)           or (top and (top + topLines))
+  bot = (isEof and (#base + 1)) or (bot and (bot + botLines))
+  -- TODO: use next change or bot as anchor
+  if not top then return patchConflict(pick,
+    '%s anchor not found',
+    (not top and not bot) and 'top and bot' or 'top'
+  )end
+  local pch, clean = M.Patch{bl=top}, top and true
+  local clean2, conflict
+  local function checkDirty(dirtyErr)
+    if not conflict and not (clean or clean2) then
+      conflict = dirtyErr
+    end
+  end
+  for _, ch in ipairs(M.toChanges(pick, true)) do
+    if mty.ty(ch) == M.Keep then
+      clean2, conflict = patchApplyKeep(pch, base, ch)
+      checkDirty'missing Keep after unanchored remove'
+    else assert(mty.ty(ch) == M.Change)
+      clean2, conflict = patchApplyChange(pch, base, ch)
+      checkDirty'removed lines missing without anchor'
+    end
+    if conflict then return patchConflict(pick, err) end
+    clean = clean2
+  end
+  pch.bl = (isSof and 0) or top
+  return pch
+end
+
+return M

--- /dev/null
+++ test.lua
@@ -0,0 +1,64 @@
+local G = G or _G
+G.MAIN = {}
+
+-- for early tests / libs to log
+G.LOGLEVEL = tonumber(os.getenv'LOGLEVEL') or 4
+G.LOGFN = function(lvl, msg) if LOGLEVEL >= lvl then
+  io.stderr:write(string.format('LOG(%s): %s\n', lvl, msg))
+end end
+
+local io_open = io.open
+
+local dir = '' -- leave here incase support is needed for filedir
+
+print'[[core]]'
+  dofile(dir..'lib/metaty/test.lua')
+  require'civ'.setupFmt()
+  dofile(dir..'lib/fmt/test.lua')
+  dofile(dir..'lib/civtest/test.lua')
+
+  local log = require'ds.log'
+  LOGFN = log.logFn; log.setLevel()
+  local tests = os.getenv'tests' -- do these first
+  if tests then
+    for tpath in tests:gmatch'%S+' do dofile(dir..tpath) end
+  end
+
+  dofile(dir..'lib/shim/test.lua')
+  dofile(dir..'lib/ds/test.lua')
+
+  dofile(dir..'lib/lines/test_diff.lua')
+  dofile(dir..'lib/lines/test.lua')
+  dofile(dir..'lib/lines/test_motion.lua')
+  assert(io_open == io.open)
+  dofile(dir..'lib/lines/test_file.lua')
+  dofile(dir..'lib/lines/test_buffer.lua')
+
+  dofile(dir..'lib/pod/test.lua')
+  dofile(dir..'lib/lap/test.lua')
+  dofile(dir..'lib/fd/test.lua')
+
+print'[[libs]]'
+  dofile(dir..'ui/asciicolor/test.lua')
+  dofile(dir..'ui/vt100/test.lua')
+  dofile(dir..'lib/lson/test.lua')
+  dofile(dir..'lib/vcds/test.lua')
+  dofile(dir..'lib/pegl/tests/test_pegl.lua')
+  dofile(dir..'lib/pegl/tests/test_lua.lua')
+  dofile(dir..'lib/luck/test.lua')
+  dofile(dir..'lib/civix/test.lua')
+  dofile(dir..'lib/smol/test.lua')
+
+print'[[apps]]'
+  dofile(dir..'cmd/doc/test.lua')
+  dofile(dir..'cmd/cxt/test.lua')
+  dofile(dir..'cmd/ff/test.lua')
+  dofile(dir..'cmd/pvc/test.lua')
+
+print'[[ele]]'
+  dofile(dir..'cmd/ele/tests/test_term.lua')
+  dofile(dir..'cmd/ele/tests/test_bindings.lua')
+  dofile(dir..'cmd/ele/tests/test_actions.lua')
+  dofile(dir..'cmd/ele/tests/test_session.lua')
+
+io.fmt:styled('notify', '\nSuccess! All tests passed', '\n')

--- /dev/null
+++ testdata/small.txt
@@ -0,0 +1,5 @@
+This is a small file
+it is for testing.
+
+It ends in a newline
+

--- /dev/null
+++ ui/README
@@ -0,0 +1,3 @@
+ui: user interface directory.
+
+Contains libraries for interacting with a user, specifically a terminal.

--- /dev/null
+++ ui/asciicolor/PKG.lua
@@ -0,0 +1,16 @@
+name     = 'asciicolor'
+version  = '0.1-0'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "encode text color and style with a two ascii characters"
+homepage = "https://lua.civboot.org#Package_asciicolor"
+license  = "UNLICENSE"
+doc = 'README.cxt'
+deps = {
+  "lua    ~> 5.3",
+  "metaty ~> 0.1", -- only for asciicolor/AcWriter.lua
+}
+srcs = {
+  'asciicolor.lua',
+}
+
+

--- /dev/null
+++ ui/asciicolor/README.cxt
@@ -0,0 +1,12 @@
+encode text color and style with a two ascii characters.
+
+asciicolor is a protocol which encodes text color in terminals and (in future)
+elsewhere using only a single ascii character: i.e. [$b] for black, [$w] for
+white and [$n] for navy blue, etc. Capitalizing the character encodes a style
+(bold for foreground, underlined for background).
+
+See [<#asciicolor.Color>] for all codes.
+
+The color codes are used by [<#asciicolor.style.Styler>] to style text
+using an [$AcWriter]. See [<#vt100.AcWriter>] for the reference spec.
+

--- /dev/null
+++ ui/asciicolor/asciicolor.lua
@@ -0,0 +1,160 @@
+-- asciicolor: encode text color and style with a single ascii character
+local M = mod and mod'asciicolor' or {}
+
+local shim = require'shim'
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds = require'ds'
+local log = require'ds.log'
+local pth = require'ds.path'
+local fd = require'fd'
+local civix = require'civix'
+
+local construct, newindex = mty.construct, mty.newindex
+local sfmt = string.format
+
+M.CONFIG_PATH = '.config/colors.luck'
+
+--- typosafe mapping of asciicode -> fullname
+---
+--- [" Note: These map to the available colors in a VT100 terminal emulator,
+---    See the vt100 module for that implementation]
+M.Color = ds.TypoSafe{
+  z = 'zero', [' '] = 'zero', [''] = 'zero', -- aka default.
+
+  --  (dark)           (light)
+  b = 'black',         w = 'white',
+  d = 'darkgrey',      l = 'lightgrey',
+  r = 'red',           p = 'pink',
+  y = 'yellow',        h = 'honey',
+  g = 'green',         t = 'tea',
+  c = 'cyan',          a = 'aqua',
+  n = 'navy',          s = 'sky', -- blue
+  m = 'magenta',       f = 'fuschia',
+}
+
+--- typosafe mapping of fullname -> asciichar
+M.Ascii = mod and mod'Ascii' or {}
+for k, v in pairs(M.Color) do M.Ascii[v] = k end
+M.Ascii.zero = 'z' -- hardocde as there are 3 possibilities
+
+--- makes [$' '] and [$''] both convert to [$'z']
+--- as well as check that the ascii code is valid.
+local CODES = {}; do
+  for k in pairs(M.Color) do CODES[k] = k end
+  local UC = {}; for k in pairs(M.Color) do
+    CODES[k:upper()] = k:upper()
+  end
+  CODES['z'] = 'z'; CODES[' '] = 'z'; CODES[''] = 'z'
+  CODES['Z'] = 'Z'
+end
+M.CODES = CODES
+
+M.assertcode = function(ac) --> single leter (or error)
+  return CODES[ac] or error(sfmt('invalid ascii color: %q', ac))
+end
+
+--- Dark mode styles (defaults)
+M.dark = {
+  -- Find tools (i.e. ff)
+  path  = 'm',  -- file/dir path
+  match = 'Bf', -- search match
+  line  = 'ld', -- line number / etc
+  meta  = 'd',  -- Meta=metadata such as description of ops, etc
+  -- TODO: rename notice
+  notify = 'C', -- make very visible
+  error = 'Wr',
+  base   = 'F', basel   = 'Wf', -- base(line),   aka removed text
+  change = 'G', changel = 'Wg', -- change(line), aka added text
+  empty  = 'zd',
+  ref    = 'cZ',
+
+  -- Document Styles
+  code = 'hb',
+  bold = 'Z', ul = 'zZ', boldul = 'ZZ',
+  h1 = 'N', h2 = 'S', h3 = 'W', h4 = 'Z',
+
+  -- Code Syntax
+  api           = 'G', -- api, i.e. public function/class name
+  type          = 'h', -- type signature
+  var           = 'G', -- variable name
+  keyword       = 'R', -- for while do etc
+  symbol        = 't', -- = + . { } etc
+  builtin       = 'p', -- builtin fns/mods/names: io sys self etc
+  commentbox    = 'bw', -- start/end of comment: -- // /**/ etc
+  comment       = 'zb', -- content of comment:  /*content*/
+  stringbox     = 'd', -- start/end of string: '' "" [[]] etc
+  string        = 'g', -- content of string inside quotes
+  key           = 'T', -- key in map/struct/etc
+  char          = 'g', -- single character: 'c'
+  number        = 'N', -- float or integer: 0 1.0 0xFF etc
+  literal       = 'h', -- other literal: null, bool, date, regex, etc
+  call          = 'c', -- function call: foo()
+  dispatch      = 'C', -- object.method called: obj.foo(), obj:foo()
+}
+
+-- TODO: light-mode styles
+
+M.mode = function() return G.CLIMODE or os.getenv'CLIMODE' end
+
+M.stylePath = function() return pth.concat{pth.home(), CONFIG_PATH} end
+
+M.loadStyle = function(mode, path)
+  mode = mode or M.mode() or 'dark'
+  path = (path == true) and M.stylePath() or path
+  local style = M[mode] or error('styles not found: '..mode)
+  if path and civix.isFile(path) then
+    log.info('loading style from %s', path)
+    local cfg = require'luck'.load(path, {MODE = mode})
+    return ds.update(table.update({}, style), cfg)
+  end
+  return style
+end
+
+--- Create a styler
+---
+--- Note: pass f (file) to create the default AcWriter with the file.
+--- Note: pass mode, stylepath to control loadStyle
+M.Styler = mty'Styler' {
+  'acwriter [AcWriter]',
+  "style [table]: default=loadStyle()",
+}
+
+M.Styler.__tostring = function() return 'Styler{...}' end
+
+M.Styler.level = function(st, add) return st.acwriter.f:level(add) end
+M.Styler.flush = function(st) return st.acwriter:flush() end
+
+--- Example: st:styled('path', 'path/to/foo.txt', '\n')
+M.Styler.styled = function(st, style, str, ...)
+  local len, fb = #str, st.style[style] or ''
+  return st.acwriter:acwrite(
+    fb:sub(1,1):rep(len), fb:sub(2,2):rep(len),
+    str, ...)
+end
+
+--- write as plain
+M.Styler.write = function(st, ...)
+  return st.acwriter:acwrite(nil, nil, ...)
+end
+
+M.Styler.__newindex = function(st, k, v)
+  if type(k) ~= 'number' then return newindex(st, k, v) end
+  assert(k == 1, 'cannot push non 1')
+  st.acwriter:write(v)
+end
+
+--- create a Fmt with sensible defaults from the config
+M.Fmt = function(t)
+  assert(t.to, 'must set to = the output')
+  if t.style == nil then t.style = shim.getEnvBool'COLOR' end
+  if t.style or (t.style==nil) and fd.isatty(t.to) then
+    t.style, t.to = true, M.Styler {
+      acwriter = require'vt100.AcWriter'{f=t.to},
+      style = M.loadStyle(),
+    }
+  end
+  return fmt.Fmt(t)
+end
+
+return M

--- /dev/null
+++ ui/asciicolor/test.lua
@@ -0,0 +1,42 @@
+METATY_CHECK = true
+
+local T = require'civtest'
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds = require'ds'
+local Writer = require'lines.Writer'
+local M = require'asciicolor'
+
+local aeq = T.eq
+
+-- make sure the codes don't change accidentally
+T.nochange = function()
+  local LETTERS = 'z b w d l r p y h g t c a n s m f'
+  local NUM_LET = 17
+  local VALID = {}; for c in LETTERS:gmatch'%S+' do VALID[c] = true end
+  aeq(NUM_LET, ds.pairlen(VALID))
+
+  -- color has lowercase as well as empty+space
+  VALID[''] = true; VALID[' '] = true
+  for k in pairs(M.Color) do
+    fmt.assertf(VALID[k], 'Color: %q is not in VALID', k)
+  end
+
+  -- CODES also has uppercase
+  for c in LETTERS:gmatch'%S+' do VALID[c:upper()] = true end
+  for k in pairs(M.CODES) do
+    fmt.assertf(VALID[k], 'CODES: %q is not in VALID', k)
+  end
+  aeq(NUM_LET     + 2, ds.pairlen(M.Color))
+  aeq(NUM_LET * 2 + 2, ds.pairlen(M.CODES))
+end
+
+T.code = function()
+  local c = M.assertcode
+  aeq('a',  c'a')
+  aeq('Z',  c'Z')
+  aeq('z',  c'z')
+  aeq('z',  c' ')
+  aeq('z',  c'')
+  T.throws('invalid ascii color: "O"', function() c'O' end)
+end

--- /dev/null
+++ ui/vt100/PKG.lua
@@ -0,0 +1,22 @@
+name     = 'vt100'
+version  = '0.1-0'
+url      = 'git+http://github.com/civboot/civlua'
+summary  = "Civboot VT100 Terminal Library"
+homepage = "https://lua.civboot.org#Package_vt100"
+license  = "UNLICENSE"
+doc      = 'README.cxt'
+deps = {
+  "lua    ~> 5.3",
+  "metaty ~> 0.1",
+  "ds     ~> 0.1",
+  "asciicolor ~> 0.1",
+
+  -- vt100.testing.run also requires: lap, civix, fd
+}
+srcs = {
+  'vt100.lua',
+  'vt100/AcWriter.lua',
+  'vt100/testing.lua',
+}
+
+

--- /dev/null
+++ ui/vt100/README.cxt
@@ -0,0 +1,29 @@
+This is Civboot's VT100 terminal interface library. It implements (and also
+defines) the API that civboot terminal emulators must implement to be
+considered Civboot compliant.
+
+It has the following core types and constants: [+
+* [$Term] object, see below
+* [$AsciiColor] which is a map from single ascii lowercase characters to the
+  color name (i.e. [$w -> white]). These can be used in Term.fg and Term.bg to
+  set the relvant colors.
+* [$FgColor] and [$BgColor] contains a map from the color name to the VT100 color
+  code (for external libraries).
+* Various key utility functions and maps for checking and working with the
+  values sent by [$Term:input()]
+]
+
+To be civboot compliant the [$Term] type exported must have the following API: [+
+* [$ds.Grid] fields [$text, fg, bg] for terminal text, foreground color and
+  background color respectively
+* [$l, c] fields for setting the cursor location (which is drawn)
+* [$h, w] (height width) fields (see [$resize()])
+* [$:input(keysend)] method which asyncronously (LAP) sends any user-inputed keys
+* [$:draw()] method which draws the text
+* [$:resize()] method that (if nothing is passed to it) retrieves the [$h, w]
+  fields and updates and clears child grids.
+* [$:clear()] method which clears all child grids.
+* [$run] boolean (default=true) which can be set to false to stop related
+  coroutines (best effort)
+]
+

--- /dev/null
+++ ui/vt100/demo.lua
@@ -0,0 +1,75 @@
+local G = G or _G
+assert(not G.MAIN, 'this script must be main')
+G.MAIN = {}
+
+local mty = require'metaty'
+local fmt = require'fmt'
+local ds = require'ds'
+local log = require'ds.log'
+local cx = require'civix'
+local vtt = require'vt100.testing'
+
+local pause = tonumber(os.getenv'SHOWTIME') or 0.1
+
+local demobox = function(t, l, c)
+  t.l, t.c = l, c
+  local tw, th = 6, 3 -- text width, height
+  local txt = 'this\n  is a\ndemo\n'
+  local tfg = 'MWLZ\n  dz  \nCgrd\n'
+
+  local hort = ('-'):rep(tw+2)
+  local hfg  = ('g'):rep(tw+2)
+  local hbg  = ('d'):rep(tw+2)
+
+  local vert = '+\n'..('|\n'):rep(3)..'+'
+  local vbg  = ('d\n'):rep(5)
+
+  t.text:insert(l, c, txt)
+  t.fg  :insert(l, c, tfg)
+
+  -- top
+  t.text:insert(l - 1, c - 1,         hort)
+  t.fg  :insert(l - 1, c - 1,         hfg)
+  t.bg  :insert(l - 1, c - 1,         hbg)
+
+  -- bot
+  t.text:insert(l + th, c - 1,         hort)
+  t.fg  :insert(l + th, c - 1,         hfg)
+  t.bg  :insert(l + th, c - 1,         hbg)
+
+  -- left
+  t.text:insert(l - 1, c - 1,         vert)
+  t.bg  :insert(l - 1, c - 1,         vbg)
+
+  -- right
+  t.text:insert(l - 1, c + tw, vert)
+  t.bg  :insert(l - 1, c + tw, vbg)
+end
+
+-- direct demo
+vtt.run(function(t)
+  demobox(t, 2, 5)
+  demobox(t, 9, 9)
+  log.info('Drawing TXT:\n%s', fmt(t))
+  log.info('Drawing FG:\n%s', fmt(t.fg))
+  log.info('Drawing BG:\n%s', fmt(t.bg))
+  t:draw()
+  cx.sleep(pause)
+  t.l, t.c = 14, 1; t:draw()
+  cx.sleep(pause / 2)
+end)
+
+-- -- demo edit
+-- et.runterm(function(T)
+--   local ft = require'civix.term'.FakeTerm(100, 100)
+-- 
+--   T:clear()
+--   et.diagonal(ft)
+--   local e = Edit(nil, Buffer.new(fmt(ft)))
+--   for tl=1,T.h do
+--     e:draw(T); T:flush(); x.sleep(et.SLEEP)
+--     e.l, e.c = tl, e.c + 4
+--     e:insert'< INSERTED >'
+--   end
+-- 
+-- end)

--- /dev/null
+++ ui/vt100/test.lua
@@ -0,0 +1,45 @@
+METATY_CHECK = true
+
+local M = require'vt100'
+local T = require'civtest'
+local mty = require'metaty'
+local fmt = require'fmt'
+local ac = require'asciicolor'
+
+local assertHasAsciiColors = function(c)
+  for code, name in pairs(ac.Color) do
+    fmt.assertf(c[name], 'missing %q', name)
+  end
+end
+T.color = function()
+  assertHasAsciiColors(M.FgColor)
+  assertHasAsciiColors(M.BgColor)
+end
+
+T.literal = function()
+  local l = M.literal
+  T.eq('a',  l'a')
+  T.eq('\n', l'return')
+  T.eq(nil,  l'invalid')
+end
+
+T.keyError = function()
+  local ke = M.keyError
+  T.eq(nil, ke'a')
+  T.eq(nil, ke'esc')
+  T.eq(nil, ke'^a')
+  T.eq(nil, ke'😜')
+  T.eq('invalid key: "escape"', ke'escape')
+  T.eq([[key "\8" not a printable character]], ke'\x08')
+end
+
+T.keynice = function()
+  local key, b = M.key, string.byte
+  T.eq('a',      key(b'a'))
+  T.eq('^a',     key(1))
+  T.eq('tab',    key(9))
+  T.eq('^j',     key(10))
+  T.eq('return', key(13))
+  T.eq('space',  key(32))
+  T.eq('^z',     key(26))
+end

--- /dev/null
+++ ui/vt100/vt100.lua
@@ -0,0 +1,429 @@
+local G = G or _G
+--- Civboot vt100 Terminal library that supports LAP protocol.
+--- Module for interacting with the vt100 via keys and AsciiColors.
+--- [##
+--- License CC0 / UNLICENSE
+--- Originally written 2022 Phil Leblanc, modified 2023 Rett Berg (Civboot.org)
+--- Authorized for relicense in: http://github.com/philanc/plterm/issues/4
+--- ]##
+local M = G.mod and mod'vt100' or {}
+
+local mty = require'metaty'
+local ds  = require'ds'
+local Grid = require'ds.Grid'
+local log = require'ds.log'
+local d8  = require'ds.utf8'
+local acolor = require'asciicolor'
+
+local min = math.min
+local char, byte, slen = string.char, string.byte, string.len
+local lower, upper     = string.lower, string.upper
+local ulen = utf8.len
+local push, unpack, sfmt = table.insert, table.unpack, string.format
+local concat             = table.concat
+local io = io
+local isup, islow = ds.isupper, ds.islower
+local acode = acolor.assertcode
+
+local ty = mty.ty
+
+--- Direct terminal control functions
+local ctrl = mod and mod'vt100.ctrl' or {}
+M.ctrl = ctrl
+
+local DEFAULT = {[''] = true, [' '] = true, z=true}
+local RESET, BOLD, UL, INV = 0, 1, 4, 7
+
+--- VT100 Terminal Emulator [+
+--- * Write the text to display
+--- * Write the foreground/background colors to fg/bg
+--- * Then call :draw() to draw to terminal.
+--- ]
+---
+--- Requires [$vt100.start()] have been called to initiate raw mode.
+M.Term = mty'Term'{
+  'l [int]: cursor line', 'c [int]: cursor column', l=1, c=1,
+  'h [int]: height', 'w [int]: width', h=40, w=80,
+  'text [ds.Grid]: the text to display',
+  'fg   [ds.Grid]: foreground color (ASCII coded)',
+  'bg   [ds.Grid]: background color (ASCII coded)',
+  '_waiting [thread]: the thread waiting on update (i.e. size)',
+  'run [boolean]: set to false to stop coroutines', run=true,
+}
+getmetatable(M.Term).__call = function(T, t)
+  t = mty.construct(T, t)
+  t.text     = Grid{h=t.h, w=t.w}
+  t.fg, t.bg = Grid{h=t.h, w=t.w}, Grid{h=t.h, w=t.w}
+  t:_updateChildren(); t:clear()
+  return t
+end
+
+M.Term._updateChildren = function(tm)
+  local h, w = tm.h, tm.w
+  tm.text.h, tm.fg.h, tm.bg.h = h, h, h
+  tm.text.w, tm.fg.w, tm.bg.w = w, w, w
+end
+
+M.Term.clear = function(tm)
+  tm.text:clear(); tm.fg:clear(); tm.bg:clear()
+end
+
+M.Term.__fmt = function(tm, fmt) return tm.text:__fmt(fmt) end
+
+-- Escape Sequences
+local ESC,  LETO, LETR, LBR = 27, byte'O', byte'R', byte'['
+local LET0, LET9, LETSC = byte'0', byte'9', byte';'
+--- valid input sequences following [#<esc>[]#
+M.INP_SEQ = {
+  ['A'] = 'up',    ['B'] = 'down',  ['C'] = 'right', ['D'] = 'left',
+  ['2~'] = 'ins',  ['3~'] = 'del',  ['5~'] = 'pgup', ['6~'] = 'pgdn',
+
+  ['11~'] = 'f1',  ['12~'] = 'f2',  ['13~'] = 'f3',  ['14~'] = 'f4',
+  ['15~'] = 'f5',  ['17~'] = 'f6',  ['18~'] = 'f7',  ['19~'] = 'f8',
+  ['20~'] = 'f9',  ['21~'] = 'f10', ['23~'] = 'f11', ['24~'] = 'f12',
+
+  -- rxv
+  ['7~'] = 'home', ['8~'] = 'end',
+  -- linux
+  ['1~'] = 'home', ['4~'] = 'end',
+  ['[1'] = 'f1', ['[2'] = 'f2', ['[3'] = 'f3', ['[4'] = 'f4', ['[5'] = 'f5',
+  ['[A'] = 'f1', ['[B'] = 'f2', ['[C'] = 'f3', ['[D'] = 'f4', ['[E'] = 'f5',
+  -- xterm
+  ['H'] = 'home', ['F'] = 'end',
+}
+--- valid input sequences following [#<esc>O]#
+M.INP_SEQO = {
+  -- xterm
+  ['OP'] = 'f1', ['OQ'] = 'f2', ['OR'] = 'f3', ['OS'] = 'f4',
+  -- vt
+  ['OH'] = 'home', ['OF'] = 'end',
+}
+local INP_SEQ, INP_SEQO = M.INP_SEQ, M.INP_SEQO
+
+-------------
+-- Byte -> Character/Command
+local CMD = { -- command characters (not sequences)
+  [  9] = 'tab',   [ 13] = 'return',  [ 32] = 'space',
+  [127] = 'back',  [ESC] = 'esc',
+}
+M.CMD = CMD
+local ctrlChar = function(c) --> string: key user pressed w/ctrl
+  return (c < 32) and char(96+c) or nil
+end
+local nice = function(c) --> nice key string
+  return CMD[c] or (ctrlChar(c) and '^'..ctrlChar(c)) or char(c)
+end
+M.ctrlChar, M.key = ctrlChar, nice
+
+--------------------------------
+-- Validation and Interaction
+--- These help with validating keys are valid and converting
+--- special keys (return, space, etc) to their literal form.
+M.LITERALS = {
+  ['tab']       = '\t',
+  ['return']    = '\n',
+  ['space']     = ' ',
+  ['slash']     = '/',
+  ['backslash'] = '\\',
+  ['caret']     = '^',
+}
+
+--- Convert any key to it's literal form [#
+---   literal'a'       -> 'a'
+---   literal'return'  -> '\n'
+---   literal'invalid' -> nil
+--- ]#
+M.literal = function(key) --> literalstring?
+  return (1 == ulen(key)) and key or M.LITERALS[key]
+end
+
+local VK = {}
+for c=byte'a', byte'z' do VK['^'..char(c)]  = true end
+-- m and i don't have ctrl variants
+VK['^m'] = 'ctrl+m == return'
+VK['^i'] = 'ctrl+i == tabl'
+for c     in pairs(M.LITERALS)    do VK[c]  = true end
+for _, kc in pairs(M.CMD)         do VK[kc] = true end
+for _, kc in pairs(M.INP_SEQ)     do VK[kc] = true end
+for _, kc in pairs(M.INP_SEQO)    do VK[kc] = true end
+M.VALID_KEY = VK
+
+--- Check that a key is valid. Return errstring if not.
+M.keyError = function(key) --> errstring?
+  if #key == 0 then return 'empty key' end
+  local v = VK[key]; if v then
+    return (v ~= true) and sfmt('%q not valid key: %s', key, v) or nil
+  end
+  if #key == 1 then; local cp = byte(key)
+    if cp <= 32 or (127 <= cp and cp <= 255) then
+      return sfmt('key %q not a printable character', key)
+    end
+    return
+  end
+  if ulen(key) ~= 1 then
+    return sfmt('invalid key: %q', key)
+  end
+end
+M.checkKey = function(key) --> key?, errstring?
+  local err = M.keyError(key); if err then return nil, err end
+  return key
+end
+
+---------------------------------
+-- Terminal Control (functions)
+
+local termFn = function(name, fmt)
+  local fmt = '\027['..fmt
+  return function(f, ...) return f:write(fmt:format(...)) end
+end
+for name, fmt in pairs{
+  clear = '2J',       cleareol= 'K',
+  -- color(0) resets; colorFB(foreground,background)
+  color = '%im',      colorFB = '%i;%im',
+  -- cursor control
+  nextline = 'E',
+  up='%iA',      down='%iB',  right='%iC', left='%iD',
+  golc='%i;%iH', hide='?25l', show='?25h',
+  save='s',      restore='u', reset='c',
+  getlc='6n',
+} do ctrl[name] = termFn(name, fmt) end
+local rawcolor, rawcolorFB = ctrl.color, ctrl.colorFB
+
+--- causes terminal to send size as (escaped) cursor position
+ctrl.size = function(f)
+  local C = ctrl
+  C.save(f); C.down(f, 999); C.right(f, 999)
+  C.getlc(f); C.restore(f); f:flush()
+end
+
+---------------------------------
+-- asciicolor constants and functions
+
+--- Foreground Terminal Codes
+M.FgColor = {
+  zero    = 39,
+  -- (dark)       (light)
+  black    = 30,  white     = 97,
+  darkgrey = 90,  lightgrey = 37,
+  red      = 31,  pink      = 91,
+  green    = 32,  tea       = 92,
+  yellow   = 33,  honey     = 93,
+  cyan     = 36,  aqua      = 96,
+  navy     = 34,  sky       = 94,
+  magenta  = 35,  fuschia   = 95,
+}
+--- Background Terminal Codes
+M.BgColor = {
+  zero    = 49,
+  -- (dark)       (light)
+  black    = 40,  white     = 107,
+  darkgrey = 100, lightgrey = 47,
+  red      = 41,  pink      = 101,
+  yellow   = 43,  honey     = 103,
+  green    = 42,  tea       = 102,
+  cyan     = 46,  aqua      = 106,
+  navy     = 44,  sky       = 104,
+  magenta  = 45,  fuschia   = 105,
+}
+--- Style Terminal Codes
+M.Style = {
+  reset = RESET, bold = BOLD, underline = UL,
+  invert = INV, -- invert fg/bg
+}
+
+--- asciicolor code -> vt100 code
+M.Fg, M.Bg = ds.TypoSafe{}, ds.TypoSafe{}
+for code, name in pairs(acolor.Color) do
+  M.Fg[code]        = M.FgColor[name]
+  M.Fg[upper(code)] = M.FgColor[name]
+  M.Bg[code]        = M.BgColor[name]
+  M.Bg[upper(code)] = M.BgColor[name]
+end
+local Fg, Bg = M.Fg, M.Bg
+
+--- Set the color, taking into account the previous color
+M.colorFB = function(f, fg, bg, fg0, bg0)
+  local bold,     bold0,     ul,       ul0 =
+        isup(fg), isup(fg0), isup(bg), isup(bg0)
+  if (bold ~= bold0) or (ul ~= ul0) then
+    rawcolor(f, 0) -- clear bold/underline
+    if bold then rawcolor(f, BOLD) end
+    if ul   then rawcolor(f, UL)   end
+    if (fg == 'z') and (bg == 'z') then return end -- plain
+  end
+  return rawcolorFB(f, assert(Fg[fg]), assert(Bg[bg]))
+end
+
+--- write to the terminal-like file f using colors fgstr and bgstr
+--- accounting for previous color codes fg, bg
+---
+--- Additional strings (...) are written using plain color.
+---
+--- Return: [$fg, bg, write(str, ...)]
+--- [" Note: fg and bg are the updated color codes]
+M.acwrite = function(f, colorFB, fg, bg, fgstr, bgstr, str, ...)
+  str, fgstr, bgstr = str or '', fgstr or '', bgstr or ''
+  local w1, w2, si, slen, chr, fc, bc = true, nil, 1, #str
+  for i=1,slen do
+    chr, fc, bc = str:sub(i,i), fgstr:sub(i,i), bgstr:sub(i,i)
+    fc, bc = acode(fc), acode(bc)
+    if fc ~= fg or bc ~= bg then
+      f:write(str:sub(si, i-1)) -- write in previous color
+      w1, w2 = colorFB(f, fc, bc, fg, bg)
+      si, fg, bg = i, fc, bc
+    end
+  end
+  if slen - si >= 0 then f:write(str:sub(si)) end -- write end of string
+  if select('#', ...) > 0 then -- write(...) using color=z
+    if fg ~= 'z' or bg ~= 'z' then
+      colorFB(f, 'z', 'z', fg, bg)
+      fg, bg = 'z', 'z'
+    end
+    w1, w2 = f:write(...)
+  end
+  return fg, bg, w1, w2
+end
+local colorFB, acwrite = M.colorFB, M.acwrite
+
+-------------------
+-- Actual VT100 Control Methods
+local function getb()
+  local b = byte(io.read(1)); -- log.trace('input %s %q', b, char(b))
+  return b
+end
+
+--- send a request for size.
+--- Note: the input() coroutine will receive and call _ready()
+M.Term._requestSize = function(tm, f)
+  tm._waiting = coroutine.running(); ctrl.size(f or io.stdout)
+end
+M.Term._ready = function(tm, msg)
+  LAP_READY[assert(tm._waiting)] = msg or true
+  tm._waiting = nil
+end
+
+--- request size and clear children
+--- This can only be run with an active (LAP) input coroutine
+M.Term.resize = function(tm)
+  tm:_requestSize()
+  while tm._waiting do coroutine.yield'forget' end -- wait for size
+  tm:_updateChildren(); tm:clear() -- note: clear updates row length
+end
+
+--- draw the text and color(fg/bg) grids to the screen
+M.Term.draw = function(tm, fd)
+  fd = fd or io.stdout
+  local golc, nextline   = ctrl.golc, ctrl.nextline
+  local fg, bg, ok, err = 'z', 'z'
+  ctrl.hide(fd); ctrl.clear(fd)     -- hide cursor and clear screen
+  golc(fd, 1, 1)
+  for l=1, tm.text.h do
+    fg, bg, ok, err = acwrite(fd, colorFB, fg, bg,
+      concat(tm.fg[l]), concat(tm.bg[l]), concat(tm.text[l]))
+    assert(ok, err)
+    nextline(fd)
+  end
+  ctrl.color(fd, 0) -- clear color
+  golc(fd, tm.l, tm.c); ctrl.show(fd) -- set cursor and show it
+  fd:flush()
+end
+
+--- function to run in a (LAP) coroutine.
+--- [$send()] is called with each key recieved. Typically this is a lap.Send.
+M.Term.input = function(tm, send) --> infinite loop (run in coroutine)
+  local b, s, dat, len = 0, '', {}
+  ::continue::
+  if not tm.run then return end
+  b = getb()
+  ::restart::
+  ds.clear(dat)
+  len = d8.decodelen(b)
+  if len > 1 then
+    dat[1] = b; for i=2,len do dat[i]=getb() end
+    b = d8.decode(dat)
+  end
+  if b ~= ESC then
+    b = nice(b); log.trace('send %q', b)
+    send(b); goto continue
+  end
+  while b == ESC do -- get next char, guard against multi-escapes
+    b = getb(); if b == ESC then send'esc' end
+  end
+  if b == LETO then -- <esc>[O, get up to 1 character
+    b = getb()
+    if INP_SEQO[b] then send(INP_SEQO[b]); goto continue
+    else goto restart end
+  end
+  if b ~= LBR then goto restart end
+  -- get up to three characters and try to find in
+  -- INP_SEQ. If c is not visible ASCII then bail early
+  s = ''
+  for i=1,3 do
+    b = getb(); if b <= 0x20 or b > 0x7F then break end
+    s = s..char(b)
+    if INP_SEQ[s] then send(INP_SEQ[s]); goto continue end
+    dat[i] = b; b = nil
+  end
+  if s:match'%d+;?%d*' then
+    for i=4,8 do -- could be size: <esc>[<int>;<int>R
+      b = getb(); if b <= 0x20 or b > 0x7F then break end
+      if b == LETR then
+        local h, w = char(unpack(dat)):match'(%d+);(%d+)'
+        if h and tm._waiting then
+          tm.h, tm.w = tonumber(h), tonumber(w)
+          tm:_ready'size updated'
+        end
+        goto continue
+      end
+      dat[i] = b; b = nil
+    end
+  end
+  for _, d in ipairs(dat) do
+    send(nice(dat[i]))
+  end
+  if b then goto restart else goto continue end
+  error'unreachable'
+end
+
+-------------------
+-- start / stop raw mode
+local READALL = (_VERSION < "Lua 5.3") and "*a" or "a"
+local setrawmode = function()
+  return os.execute'stty raw -echo 2> /dev/null'
+end
+local setsanemode = function() return os.execute'stty sane' end
+local savemode = function() --> mode?, errmsg?
+  local fh = io.popen'stty -g'; local mode = fh:read(READALL)
+  local ok, e, msg = fh:close()
+  return ok and mode or nil, msg
+end
+local restoremode = function(mode) return os.execute('stty '..mode) end
+
+M.ATEXIT = {}
+M.stop = function()
+  local mt = getmetatable(M.ATEXIT); assert(mt)
+  mt.__gc()
+  setmetatable(M.ATEXIT, nil)
+  local stdout = M.ATEXIT.stdout
+  io.stderr = M.ATEXIT.stderr
+  log.info'vt100.stop() complete'
+end
+M.start = function(stderr, ...); assert(select('#', ...) == 0)
+  log.info'vt100.start() begin'
+  assert(stderr, 'must provide new stderr')
+  assert(not getmetatable(M.ATEXIT))
+  local SAVED = assert(savemode())
+  local mt = {
+    __gc = function()
+      if not getmetatable(M.ATEXIT) then return end
+      ctrl.clear(io.stdout); ctrl.show(io.stdout)
+      restoremode(SAVED)
+   end,
+  }
+  setmetatable(M.ATEXIT, mt)
+  M.ATEXIT.stderr = io.stderr; io.stderr = stderr
+  setrawmode()
+  log.info'vt100.start() complete'
+end
+
+return M

--- /dev/null
+++ ui/vt100/vt100/AcWriter.lua
@@ -0,0 +1,26 @@
+local mty = require'metaty'
+local log = require'ds.log'
+local acwrite = require'vt100'.acwrite
+local colorFB = require'vt100'.colorFB
+
+--- A file-like writer which keeps track of fg and bg colors,
+--- typically used with [<#asciicolor.Styler>]
+local AcWriter = mty'vt100.AcWriter' {
+  'f  [file]',
+  'fg [string]: current foreground ac letter', fg='z',
+  'bg [string]: current background ac letter', bg='z',
+}
+
+AcWriter.flush = function(aw) return aw.f:flush() end
+
+--- [$:acwrite(fgstr, bgstr, str, ...)]: writes str with style of fg/bg str
+AcWriter.acwrite = function(aw, fgstr, bgstr, ...) --> write(...)
+  local w1, w2
+  aw.fg, aw.bg, w1, w2 = acwrite(
+    aw.f, colorFB, aw.fg, aw.bg, fgstr, bgstr, ...)
+  return w1, w2
+end
+--- write plain
+AcWriter.write = function(aw, ...) return aw:acwrite(nil, nil, ...) end
+
+return AcWriter

--- /dev/null
+++ ui/vt100/vt100/testing.lua
@@ -0,0 +1,79 @@
+--- helpers for testing/demoing vt100
+local M = mod and mod'vt100.testing' or {}
+
+local T = require'civtest'
+local mty = require'metaty'
+local ds = require'ds'
+local log = require'ds.log'
+local vt = require'vt100'
+local co = coroutine
+
+M.Fake = mty.extend(vt.Term, 'Fake')
+
+M.Fake.resize = function(tm, l, c)
+  assert(l and c, 'must pass l,c for Fake')
+  tm.l, tm.c = l, c
+  tm:clear()
+end
+
+M.Fake.draw  = ds.nosupport
+M.Fake.input = ds.nosupport
+
+--- start rawmode using tmpfiles
+M.startTmp = function() --> out, err
+  local err = io.tmpfile()
+  vt.start(err)
+  return err
+end
+
+--- Run function in a LAP environment with terminal started
+--- and std in/out set correctly.
+function M.run(fn)
+  local lap = require'lap'
+  local cx = require'civix'
+  local fd = require'fd'
+  local ioin, ioread = io.stdin, io.read
+
+  local t = vt.Term{h=10, w=80}
+  local stderr = M.startTmp()
+  local r = lap.Recv{}
+  local szTh = co.create(function() t:resize() end)
+  local inTh = co.create(function() t:input(r) end)
+
+  local ok, err = ds.try(function()
+    -- make stdin async
+    io.stdin, io.read = fd.stdin, fd.read
+    fd.stdin:toNonblock()
+
+    -- send size request and wait until it is recieved
+    T.eq({true, 'forget'}, {ds.resume(szTh)})
+    T.eq(szTh, t._waiting)
+
+    while t._waiting do
+      T.eq({true, 'poll', 0, fd.sys.POLLIN}, {ds.resume(inTh)})
+    end
+    T.eq(nil, t._waiting)
+    T.eq(nil, r())
+    T.eq({true}, {ds.resume(szTh)})
+    T.eq('dead', coroutine.status(szTh))
+
+    log.info('term size: %s %s', t.h, t.w)
+    fn(t)
+  end)
+  -- undo async stdin
+  io.stdin, io.read = ioin, ioread
+  fd.stdin:toBlock()
+  vt.stop();
+
+  io.flush()
+  io.stderr:write('\nvt100.testing.run '..
+    (ok and 'DONE' or ('ERROR:\n'..tostring(err)))
+    ..'\n')
+  stderr:flush(); stderr:seek'set'
+  local err = stderr:read'a'
+  if #err > 0 then log.info('STDERR:\n%s', err) end
+  stderr:close()
+  assert(ok, 'got error, see stderr')
+end
+
+return M
