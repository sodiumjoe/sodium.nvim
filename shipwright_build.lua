local lushwright = require("shipwright.transform.lush")
package.path = "lua/?.lua;" .. package.path

run(
  require("sodium/init"),
  -- generate lua code
  lushwright.to_lua,
  -- write the lua code into our destination.
  -- you must specify open and close markers yourself to account
  -- for differing comment styles, patchwrite isn't limited to lua files.
  { patchwrite, "colors/sodium-dark.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE" }
)
