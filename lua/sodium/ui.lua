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

local search = palette.gray_dark
local search_active = palette.white

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global

return lush(function()
	return {
		ErrorMsg({ fg = error }),
		WarningMsg({ fg = warn }),
		InfoMsg({ fg = info }),
		HintMsg({ fg = hint }),
		NonText({ fg = nontext }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		ColorColumn({ gui = gui.reverse }), -- Columns set with 'colorcolumn'
		Conceal({ NonText }), -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor({ gui = gui.reverse }), -- Character under the cursor
		lCursor({ fg = bg, bg = fg }), -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
		CursorColumn({ bg = palette.gray_dark }),
		CursorLine({}), -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		StatusLine({ fg = fg, bg = bg_light }),
		StatusLineNC({ fg = fg_dark, bg = bg_light }),
		StatusLineActiveItem({ fg = bg, bg = fg_dark }),
		StatusLineError({ fg = error, bg = bg_light }),
		StatusLineWarning({ fg = warn, bg = bg_light }),
		StatusLineSeparator({ fg = bg, bg = bg_light }),
		Float({}),
		FloatBorder({ fg = border }),

		DiffAdd({ fg = bg, bg = add }), -- Diff mode: Added line |diff.txt|
		DiffChange({ fg = bg, bg = change }), -- Diff mode: Changed line |diff.txt|
		DiffDelete({ fg = bg, bg = delete }), -- Diff mode: Deleted line |diff.txt|
		DiffText({ fg = bg, bg = palette.yellow }), -- Diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer({ NonText }), -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		TermCursor({ gui = gui.reverse }),
		-- TermCursorNC { }, -- Cursor in an unfocused terminal
		VertSplit({ fg = border }), -- Column separating vertically split windows
		Folded({ fg = bg, bg = palette.purple_light, gui = gui.italic }), -- Line used for closed folds
		FoldColumn({ bg = bg_light, gui = gui.bold }), -- 'foldcolumn'
		SignColumn({}), -- Column where |signs| are displayed
		Search({ fg = fg, bg = search, gui = gui.underline }),
		IncSearch({ fg = bg, bg = search_active, gui = gui.underline }), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute({ Search }), -- |:substitute| replacement text highlighting
		LineNr({ fg = bg_light }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr({ fg = palette.pink }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		ModeMsg({ fg = info }), -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea({}), -- Area for messages and cmdline
		MsgSeparator({ StatusLine }), -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg({ fg = bg }), -- |more-prompt|
		Normal({ fg = palette.gray_light, bg = bg }), -- Normal text
		NormalFloat({ fg = palette.blue }), -- Normal text in floating windows.
		NormalNC({ Normal }), -- normal text in non-current windows
		Pmenu({ fg = fg_dark }), -- Popup menu: Normal item.
		PmenuSel({ fg = bg, bg = fg_dark }), -- Popup menu: Selected item.
		PmenuSbar({ bg = bg_light }), -- Popup menu: Scrollbar.
		PmenuThumb({ bg = fg }), -- Popup menu: Thumb of the scrollbar.
		Question({ fg = hint, gui = gui.underline }),
		QuickFixLine({ bg = bg_light }),
		TabLine({ fg = fg_dark, bg = bg_light }),
		TabLineFill({ fg = bg_light, bg = fg_dark }),
		TabLineSel({ fg = fg_dark }),
		Title({ gui = gui.bold }),
		Visual({ gui = gui.reverse }),
		VisualNOS({ bg = bg_light }),
		Winseparator({ VertSplit }),
		WildMenu({ PmenuSel }),

		DiagnosticError({ fg = bg, bg = error }),
		DiagnosticWarn({ fg = bg, bg = warn }),
		DiagnosticInfo({ fg = bg, bg = info }),
		DiagnosticHint({ DiagnosticInfo }),
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
