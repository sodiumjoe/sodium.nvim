local lush = require("lush")

local palette = require("sodium.palette")
local colors = require("sodium.colors")
local gui = require("sodium.gui")
local ui = require("sodium.ui")

local fg = colors.fg
local bg = colors.bg

local ok = colors.ok
local info = colors.info
local warn = colors.warn
local error = colors.error

local trivial = palette.gray
local string = palette.gray_light
local operator = string
local identifier = palette.blue
local label = identifier
local statement = palette.blue_dark
local method = palette.cyan
local field = palette.orange
local constant = palette.cyan
local fn = palette.pink
local delimiter = palette.orange
local conditional = palette.orange
local keyword = palette.purple
local number = palette.purple
local bool = palette.purple
local type = palette.yellow
local class = palette.pink_light
local global = palette.pink
local repeat_ = palette.pink
local emphasis = palette.magenta
local special = palette.orange

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global

return lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		Comment({ fg = trivial, gui = gui.italic }),

		Constant({ fg = constant }),
		String({ fg = string }),
		Character({ fg = string }),
		Number({ fg = number }),
		Boolean({ fg = bool }),
		Global({ fg = global }),
		Float({}),

		Identifier({ fg = identifier }),
		Function({ fg = fn }),
		Method({ fg = method }),

		Statement({ fg = statement }),
		Conditional({ fg = conditional }),
		Repeat({ fg = repeat_ }),
		Label({ fg = label }),
		Operator({ fg = operator }),
		Keyword({ fg = keyword }),
		Exception({ fg = error }),

		PreProc({ fg = keyword }),
		Include({ fg = keyword }),
		Define({ fg = keyword }),
		Macro({ fg = keyword, gui = gui.italic }),
		PreCondit({ fg = keyword, gui = gui.italic }),

		Type({ fg = type }),
		StorageClass({ fg = class }),
		Structure({ fg = type }),
		Typedef({ fg = type, gui = gui.italic }),
		Field({ fg = field }),

		Special({ fg = special }),
		SpecialChar({ fg = palette.red, gui = gui.italic }),
		Tag({ Label }),
		Delimiter({ fg = delimiter }),
		SpecialComment({ fg = trivial, gui = gui.bold }),
		Debug({ fg = special }),

		Underlined({ fg = fg, gui = gui.underline }),
		Ignore({ fg = trivial }),
		Error({ fg = bg, bg = error }),
		Warning({ fg = bg, bg = warn }),
		Info({ fg = bg, bg = info }),
		Hint({ Info }),
		Todo({ fg = info, gui = gui.concat({ gui.bold, gui.underline }) }),

		Directory({ fg = identifier, gui = gui.bold }),
		MatchParen({ fg = palette.pink, gui = gui.concat({ gui.bold, gui.underline }) }),
		SpecialKey({ Character }),
		SpellBad({ gui = gui.undercurl, sp = error }),
		SpellCap({ gui = gui.undercurl, sp = info }),
		SpellLocal({ gui = gui.undercurl, sp = ok }),
		SpellRare({ gui = gui.undercurl, sp = warn }),

		sym("@text.literal")({ Comment }),
		sym("@markup.raw")({ Comment }),
		sym("@text.reference")({ Identifier }),
		sym("@markup.link")({ Identifier }),
		sym("@text.title")({ gui = ui.Title.gui }),
		sym("@markup.heading")({ gui = ui.Title.gui }),
		sym("@text.uri")({ Underlined }),
		sym("@markup.link.url")({ Underlined }),
		sym("@text.underline")({ Underlined }),
		sym("@text.todo")({ Todo }),

		sym("@comment")({ Comment }),
		sym("@punctuation")({ Delimiter }),

		sym("@constant")({ Constant }),
		sym("@constant.builtin")({ Global }),
		sym("@constant.macro")({ Define }),
		sym("@define")({ Define }),
		sym("@macro")({ Macro }),
		sym("@string")({ String }),
		sym("@string.escape")({ SpecialChar }),
		sym("@string.special")({ SpecialChar }),
		sym("@markup.link.label")({ SpecialChar }),
		sym("@character")({ Character }),
		sym("@character.special")({ SpecialChar }),
		sym("@number")({ Number }),
		sym("@boolean")({ Boolean }),
		sym("@float")({ Float }),
		sym("@number.float")({ Float }),
		sym("@symbol")({ Number }),
		sym("@string.special.symbol")({ Number }),
		sym("@string.regex")({ Constant }),
		sym("@string.regexp")({ Constant }),

		sym("@function")({ Function }),
		sym("@function.builtin")({ Global }),
		sym("@function.macro")({ Macro }),
		sym("@parameter")({ Identifier }),
		sym("@variable.parameter")({ Identifier }),
		sym("@method")({ Method }),
		sym("@function.method")({ Method }),
		sym("@method.call")({ Method }),
		sym("@field")({ Field }),
		sym("@variable.member")({ Field }),
		sym("@property")({ Field }),
		sym("@constructor")({ fg = class }),

		sym("@conditional")({ Conditional }),
		sym("@keyword.conditional")({ Conditional }),
		sym("@repeat")({ Repeat }),
		sym("@keyword.repeat")({ Repeat }),
		sym("@label")({ Label }),
		sym("@operator")({ Operator }),
		sym("@keyword")({ Keyword }),
		sym("@exception")({ Exception }),
		sym("@keyword.exception")({ Exception }),

		sym("@variable")({ Identifier }),
		sym("@type")({ Type }),
		sym("@type.definition")({ Typedef }),
		sym("@storageclass")({ StorageClass }),
		sym("@structure")({}),
		sym("@namespace")({ Identifier }),
		sym("@module")({ Identifier }),
		sym("@include")({ Include }),
		sym("@keyword.import")({ Include }),
		sym("@preproc")({ PreProc }),
		sym("@debug")({ Debug }),
		sym("@keyword.debug")({ Debug }),
		sym("@tag")({ Tag }),

		sym("@tag.attribute")({ Field }),
		sym("@tag.delimiter")({ Delimiter }),

		sym("@lsp")({}),
		sym("@lsp.type.class")({ fg = class }),
		sym("@lsp.type.comment")({ Comment }),
		sym("@lsp.type.decorator")({ Function }),
		sym("@lsp.type.enum")({ Structure }),
		sym("@lsp.type.enumMember")({ Constant }),
		sym("@lsp.type.function")({ Function }),
		sym("@lsp.type.interface")({ Type }),
		sym("@lsp.type.macro")({ Macro }),
		sym("@lsp.type.method")({ Method }),
		sym("@lsp.type.namespace")({ Structure }),
		sym("@lsp.type.parameter")({ Identifier }),
		sym("@lsp.type.property")({ Field }),
		sym("@lsp.type.struct")({ Structure }),
		sym("@lsp.type.type")({ Type }),
		sym("@lsp.type.typeParameter")({ Type }),
		sym("@lsp.type.variable")({ Identifier }),

		mkdDelimiter({ Delimiter }),
		mkdLink({ Underlined }),
		mkdBold({ Ignore }),
		htmlString({ Underlined }),
		mkdListItem({ Special }),
		mkdCode({ Keyword }),
		makeSpecTarget({ Type }),
		makeCommands({}),
		markdownLinkText({ mkdLink }),
		mkdCodeDelimiter({ mkdBold }),
		mkdCodeStart({ mkdCodeDelimiter }),
		mkdURL({ htmlString }),
		markdownUrl({ mkdURL }),
		markdownLinkDelimiter({ mkdDelimiter }),
		markdownLinkTextDelimiter({ markdownLinkDelimiter }),
		markdownCodeDelimiter({ mkdCodeDelimiter }),
		markdownCode({ mkdCode }),

		Vimwikigreen({ fg = palette.green }),
		Vimwikidefault({ bg = palette.orange }),
		Vimwikigray({ fg = palette.gray }),
		Vimwikiyellow({ fg = palette.yellow }),
		Vimwikiborange({ bg = palette.orange }),
		Vimwikibgray({ bg = palette.gray }),
		Vimwikibgreen({ bg = palette.green }),
		Vimwikired({ fg = palette.red }),
		Vimwikiorange({ fg = palette.orange }),
		Vimwikibpurple({ bg = palette.magenta }),
		Vimwikipurple({ fg = palette.purple }),
		Vimwikiblue({ fg = palette.blue }),
		Vimwikibblue({ bg = palette.blue_dark }),
		Vimwikibred({ bg = palette.red_light }),
		Vimwikibyellow({ bg = palette.yellow }),
		VimwikiMarkTag({ Tag }),
		VimwikiBold({ gui = gui.bold }),
		VimwikiItalic({ gui = gui.italic }),
		VimwikiUnderline({ gui = gui.underline }),
		VimwikiDelText({ gui = gui.strikethrough }),
		VimwikiHeader1({ fg = palette.red, gui = gui.bold }),
		VimwikiHeader2({ fg = palette.green, gui = gui.bold }),
		VimwikiHeader3({ fg = palette.blue, gui = gui.bold }),
		VimwikiHeader4({ fg = palette.magenta, gui = gui.bold }),
		VimwikiHeader5({ fg = palette.pink, gui = gui.bold }),
		VimwikiHeader6({ fg = palette.pink_light, gui = gui.bold }),
		VimwikiItalicUnderline({ gui = gui.concat({ gui.underline, gui.italic }) }),
		VimwikiBoldItalicUnderline({ gui = gui.concat({ gui.underline, gui.italic, gui.bold }) }),
		VimwikiBoldItalic({ gui = gui.concat({ gui.bold, gui.italic }) }),
		VimwikiBoldUnderline({ gui = gui.concat({ gui.bold, gui.underline }) }),
		VimwikiCheckBoxDone({ fg = trivial, gui = gui.strikethrough }),

		CmpItemAbbrDefault({ Ignore }),
		CmpItemAbbrMatchDefault({ Underlined }),
		CmpItemAbbrMatchFuzzyDefault({ fg = fg, gui = gui.concat({ gui.nocombine, gui.underline }) }),
		CmpItemKindStructDefault({ Structure }),
		CmpItemKindColorDefault({ Label }),
		CmpItemKindConstantDefault({ Constant }),
		CmpItemKindFunctionDefault({ Function }),
		CmpItemKindDefault({ Type }),
		CmpItemKindEventDefault({ Repeat }),
		CmpItemKindFieldDefault({ Identifier }),
		CmpItemKindFileDefault({ Directory }),
		CmpItemKindInterfaceDefault({ Type }),
		CmpItemKindKeywordDefault({ Keyword }),
		CmpItemKindModuleDefault({ Include }),
		CmpItemKindOperatorDefault({ Operator }),
		CmpItemKindReferenceDefault({ StorageClass }),
		CmpItemKindSnippetDefault({ Special }),
		CmpItemKindTextDefault({ String }),
		CmpItemKindTypeParameterDefault({ Typedef }),
		CmpItemKindVariableDefault({ Identifier }),
		CmpItemKindClassDefault({ CmpItemKindStructDefault }),
		CmpItemKindMethodDefault({ CmpItemKindFunctionDefault }),
		CmpItemKindConstructorDefault({ CmpItemKindMethodDefault }),
		CmpItemKindEnumDefault({ CmpItemKindStructDefault }),
		CmpItemKindEnumMemberDefault({ CmpItemKindConstantDefault }),
		CmpItemKindFolderDefault({ CmpItemKindFileDefault }),
		CmpItemKindPropertyDefault({ CmpItemKindFieldDefault }),
		CmpItemKindUnitDefault({ CmpItemKindStructDefault }),
		CmpItemKindValueDefault({ CmpItemKindConstantDefault }),
	}
end)
