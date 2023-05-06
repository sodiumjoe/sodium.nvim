local lush = require("lush")

local ui = require("sodium.ui")
local syntax = require("sodium.syntax")
local dev_icons = require("sodium.dev-icons")

return lush.merge({ syntax, ui, dev_icons })
