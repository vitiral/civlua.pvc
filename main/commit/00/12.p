create KeyBindings
--- cmd/ele/ele/bindings.lua
+++ cmd/ele/ele/bindings.lua
@@ -19,17 +18,0 @@
--- TYPES
-
-M.Keys = mty'Keys' {
-  "chord [table]: list of keys which led to this binding, i.e. {'space', 'a'}",
-  "event [table]: table to use when returning (emitting) an event.",
-  "next [table|string]: the binding which will be used for the next key",
-  "keep [boolean]: if true the above fields will be preserved in next call",
-}
-
-M.Keys.check = function(k, ele) --> errstring?
-  if k.next == nil then return end
-  return (type(k.next) ~= 'table') and et.checkBinding(k.next)
-    or getp(k, {'event', 'action'})
-       and et.checkAction(ele, k.event.action)
-end
-
----------------------------
@@ -57,5 +40,67 @@
-M.moveAction = function(event)
-  return function(keys)
-    local ev = keys.event or {}
-    ev.action = ev.action or 'move'
-    return ds.update(ev, event)
+---------------------------
+-- TYPES
+
+--- The state of the keyboard input (chord).
+--- Some bindings are a simple action to perform, whereas callable bindings
+--- can update the KeySt to affect future ones, such as decimals causing
+--- later actions to be repeated a [$num] of times.
+M.KeySt = mty'KeySt' {
+  "chord [table]: list of keys which led to this binding, i.e. {'space', 'a'}",
+  "event [table]: table to use when returning (emitting) an event.",
+  "next [table|string]: the binding which will be used for the next key",
+  "keep [boolean]: if true the above fields will be preserved in next call",
+}
+
+--- Check the current Key State.
+M.KeySt.check = function(k, ele) --> errstring?
+  if k.next == nil then return end
+  return (type(k.next) ~= 'table') and et.checkBinding(k.next)
+    or getp(k, {'event', 'action'})
+       and et.checkAction(ele, k.event.action)
+end
+
+--- A map of key -> binding.
+--- The name and doc can be provided for the user.
+--- 
+--- Other "fields" must be valid chords. They will be automatically
+--- split (by whitespace) to create sub-KeyBindings as-needed.
+---
+--- The value must be one of: [+
+--- * KeyBindings instance to explicitly create chorded bindings.
+--- * plain event table to fire off a simple event
+--- * callable [$event(ev, keySt)] for more complex bindings.
+--- ]
+-- TODO: actually use this
+M.KeyBindings = mty'KeyBindings' {
+  'name [string]: the name of the group for documentation',
+  'doc [string]: documentation to display to the user',
+}
+
+getmetatable(M.KeyBindings).__call = function(T, t)
+  local b = {}
+  for k, v in pairs(t) do T.__newindex(b, k, v) end
+  return mty.construct(T, b)
+end
+
+getmetatable(M.KeyBindings).__index = function(G, k)
+  assert(et.term.checkKey(k))
+end
+
+M.KeyBindings.__newindex = function(kb, k, v)
+  if getmetatable(kb).__fields[k] then
+    assert(type(v) == 'string', k)
+    rawset(kb, k, v)
+    return
+  end
+  fmt.assertf(ds.isCallable(v)
+           or (type(v) == 'table' and not getmetatable(v)),
+    '[%s] binding must be callable or plain table: %q', k, v)
+  k = M.chord(k); assert(#k > 0, 'empty chord')
+  for i=1,#k-1 do
+    local key = k[i]; assert(et.term.checkKey(key))
+    if not kb[key] then
+      kb[key] = M.KeyBindings{
+        name=table.concat(ds.slice(k, 1,i), ' '),
+      }
+    end
+    kb = kb[key]
@@ -62,0 +108,3 @@
+  local key = k[#k]
+  assert(et.term.checkKey(key))
+  kb[key] = v
@@ -77,12 +124,0 @@
--- Runs a given key chord (series of keys)
---   example: command.T = hotkey'd t' -- delete till 
-M.Hotkey = mty'Hotkey' {}
-getmetatable(M.Hotkey).__call = function(T, chord)
-  return mty.construct(T, M.chord(chord))
-end
-M.Hotkey.__call = function(r, keys)
-  local ev = keys.event or {}; ev.action = 'chain'
-  for i, k in ipairs(r) do ev[i] = {action='hotkey', k} end
-  return ev
-end
-
@@ -118,0 +155,7 @@
+M.moveAction = function(event)
+  return function(keys)
+    local ev = keys.event or {}
+    ev.action = ev.action or 'move'
+    return ds.update(ev, event)
+  end
+end
@@ -276 +319 @@
-  ed.ext.keys = M.Keys{}
+  ed.ext.keys = M.KeySt{}
