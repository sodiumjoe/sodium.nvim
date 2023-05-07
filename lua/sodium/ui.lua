local lush = require("lush")

local palette = require("sodium.palette")
local gui = require("sodium.gui")
local colors = require("sodium.colors")

local fg = colors.fg
local bg = colors.bg

local fg_dark = colors.fg_dark
local bg_light = colors.bg_light

local info = colors.info
local hint = colors.hint
local warn = colors.warn
local error = colors.error

local nontext = colors.nontext

local add = colors.add
local change = colors.change
local delete = colors.delete

local border = palette.gray

local search = palette.gray_darker
local search_active = palette.white

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global

return lush(function()
	return {
		Normal({ fg = palette.gray_light, bg = bg }), -- Normal text
		NormalNC({ Normal }), -- normal text in non-current windows
		Title({ gui = gui.bold }),
		Visual({ gui = gui.reverse }),
		VisualNOS({ bg = bg_light }),

		ErrorMsg({ fg = error }),
		WarningMsg({ fg = warn }),
		InfoMsg({ fg = info }),
		HintMsg({ fg = hint }),
		-- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		NonText({ fg = nontext }),
		-- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		EndOfBuffer({ NonText }),

		-- Columns set with 'colorcolumn'
		ColorColumn({ gui = gui.reverse }),
		-- Placeholder characters substituted for concealed text (see 'conceallevel')
		Conceal({ NonText }),
		Cursor({ gui = gui.reverse }),
		-- Character under the cursor when |language-mapping| is used (see 'guicursor')
		lCursor({ fg = bg, bg = fg }),
		-- Like Cursor, but used when in IME mode |CursorIM|
		-- CursorIM     { },
		CursorColumn({ bg = palette.gray_dark }),
		CursorLine({}),
		LineNr({ fg = bg_light }),
		CursorLineNr({ fg = palette.pink, gui = gui.bold }),
		SignColumn({ LineNr }),
		CursorLineSign({ CursorLineNr }),

		StatusLine({ fg = fg, bg = bg_light }),
		StatusLineNC({ fg = fg_dark, bg = bg_light }),
		StatusLineActiveItem({ fg = bg, bg = fg_dark }),
		StatusLineError({ fg = error, bg = bg_light }),
		StatusLineWarning({ fg = warn, bg = bg_light }),
		StatusLineSeparator({ fg = bg, bg = bg_light }),
		-- 'showmode' message (e.g., "-- INSERT -- ")
		ModeMsg({ fg = info }),
		-- Area for messages and cmdline
		MsgArea({}),
		-- Separator for scrolled messages, `msgsep` flag of 'display'
		MsgSeparator({ StatusLine }),
		-- |more-prompt|
		MoreMsg({ fg = bg }),
		Question({ fg = hint, gui = gui.underline }),

		-- Normal text in floating windows.
		NormalFloat({ fg = palette.blue }),
		FloatBorder({ fg = border }),

		-- Popup menu: Normal item.
		Pmenu({ fg = fg_dark }),
		-- Popup menu: Selected item.
		PmenuSel({ fg = bg, bg = fg_dark }),
		-- Popup menu: Scrollbar.
		PmenuSbar({ bg = bg_light }),
		-- Popup menu: Thumb of the scrollbar.
		PmenuThumb({ bg = fg }),

		TermCursor({ gui = gui.reverse }),
		-- Cursor in an unfocused terminal
		-- TermCursorNC { },
		VertSplit({ fg = border }),
		-- Line used for closed folds
		Folded({ fg = bg, bg = palette.purple_light, gui = gui.italic }),
		FoldColumn({ bg = bg_light, gui = gui.bold }),

		Search({ fg = fg_dark, bg = search, gui = gui.underline }),
		-- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		IncSearch({ fg = bg, bg = search_active, gui = gui.bold }),
		-- |:substitute| replacement text highlighting
		Substitute({ Search }),

		QuickFixLine({ bg = bg_light }),
		TabLine({ fg = fg_dark, bg = bg_light }),
		TabLineFill({ fg = bg_light, bg = fg_dark }),
		TabLineSel({ fg = fg_dark }),
		Winseparator({ VertSplit }),
		WildMenu({ PmenuSel }),

		DiffAdd({ fg = bg, bg = add }),
		DiffChange({ fg = bg, bg = change }),
		DiffDelete({ fg = bg, bg = delete }),
		DiffText({ fg = bg, bg = palette.yellow }),

		DiagnosticError({ fg = bg, bg = error }),
		DiagnosticWarn({ fg = bg, bg = warn }),
		DiagnosticInfo({ fg = bg, bg = info }),
		DiagnosticHint({ fg = bg, bg = hint }),

		DiagnosticVirtualTextError({ DiagnosticError }),
		DiagnosticVirtualTextWarn({ DiagnosticWarn }),
		DiagnosticVirtualTextInfo({ DiagnosticInfo }),
		DiagnosticVirtualTextHint({ DiagnosticHint }),

		DiagnosticUnderlineError({ gui = gui.undercurl, sp = error }),
		DiagnosticUnderlineWarn({ gui = gui.undercurl, sp = warn }),
		DiagnosticUnderlineInfo({ gui = gui.undercurl, sp = info }),
		DiagnosticUnderlineHint({ gui = gui.undercurl, sp = hint }),

		DiagnosticFloatingError({ ErrorMsg }),
		DiagnosticFloatingWarn({ WarningMsg }),
		DiagnosticFloatingInfo({ InfoMsg }),
		DiagnosticFloatingHint({ HintMsg }),
		DiagnosticSignError({ DiagnosticFloatingError }),
		DiagnosticSignWarn({ DiagnosticFloatingWarn }),
		DiagnosticSignInfo({ DiagnosticFloatingInfo }),
		DiagnosticSignHint({ DiagnosticFloatingHint }),

		SignifySignChangeDelete({ fg = change }),
		SignifySignDelete({ fg = delete }),
		SignifySignChange({ fg = change }),
		SignifySignAdd({ fg = add }),

		SignifyLineAdd({ DiffAdd }),
		SignifyLineDelete({ DiffDelete }),
		SignifyLineDeleteFirstLine({ SignifyLineDelete }),
		SignifyLineChange({ DiffChange }),
		SignifyLineChangeDelete({ SignifyLineChange }),
		SignifySignDeleteFirstLine({ SignifySignDelete }),

		HopNextKey({ bg = fg, fg = bg }),
		HopNextKey1({ HopNextKey }),
		HopNextKey2({ bg = palette.gray_light, fg = palette.black }),

		TreesitterContextLineNumber({ fg = palette.white }),
	}
end)
