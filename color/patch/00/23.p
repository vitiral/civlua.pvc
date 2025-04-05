handle desc the same as commit.
--- cmd/pvc/pvc.lua
+++ cmd/pvc/pvc.lua
@@ -943 +943,5 @@
-  local desc = shim.popRaw(args) or lines.load(args[2])
+  local desc = shim.popRaw(args)
+  trace('!! desc: %q', desc)
+  if desc        then desc = concat(desc, ' ')
+  elseif args[2] then desc = pth.read(args[2]) end
+  trace('!! desc now: %q', desc)
@@ -945,3 +949,2 @@
-  if not desc then
-    return print(concat(M.desc(oldp), '\n'))
-  end
+  local olddesc = concat(M.desc(oldp), '\n')
+  if not desc then return print(oldd) end
@@ -950,3 +953,3 @@
-  local n = io.open(newp, 'w')
-  for _, line in ipairs(desc) do n:write(line, '\n') end -- new desc
-  local o = io.open(oldp, 'r')
+  local n = assert(io.open(newp, 'w'))
+  n:write(desc, '\n')
+  local o = assert(io.open(oldp, 'r'))
@@ -961,0 +965 @@
+  io.fmt:styled('notify', 'Old description (deleted):', '\n', olddesc, '\n')

--- cmd/pvc/test.lua
+++ cmd/pvc/test.lua
@@ -140 +140 @@
-  pvc.main.desc{'--', 'desc1 - edited', dir=D}
+  pvc.main.desc{'--', 'desc1', '-', 'edited', dir=D}
