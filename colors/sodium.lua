-- You probably always want to set this in your vim file
vim.opt.background = "dark"
vim.g.colors_name = "sodium"

local colors = {
	-- content here will not be touched
	-- PATCH_OPEN
	-- group data will be inserted here
	-- PATCH_CLOSE
	-- content here will not be touched
}

-- colorschemes generally want to do this
vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='sodium'")

-- apply highlight groups
for group, attrs in pairs(colors) do
	vim.api.nvim_set_hl(0, group, attrs)
end

-- By setting our module to nil, we clear lua's cache,
-- which means the require ahead will *always* occur.
--
-- This isn't strictly required but it can be a useful trick if you are
-- incrementally editing your config a lot and want to be sure your themes
-- changes are being picked up without restarting neovim.
--
-- Note if you're working in on your theme and have :Lushify'd the buffer,
-- your changes will be applied with our without the following line.
--
-- The performance impact of this call can be measured in the hundreds of
-- *nanoseconds* and such could be considered "production safe".
package.loaded["sodium"] = nil

-- include our theme file and pass it to lush to apply
require("lush")(require("sodium"))
