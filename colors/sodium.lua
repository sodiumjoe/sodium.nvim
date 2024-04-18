-- You probably always want to set this in your vim file
vim.opt.background = "dark"
vim.g.colors_name = "sodium"

local colors = {
	-- content here will not be touched
	-- PATCH_OPEN
Normal = {fg = "#C5D4DD", bg = "#3C4C55"},
NormalNC = {link = "Normal"},
Boolean = {fg = "#9A93E1"},
Character = {fg = "#C5D4DD"},
SpecialKey = {link = "Character"},
CmpItemAbbrMatchFuzzyDefault = {fg = "#E6EEF3", nocombine = true, underline = true},
CmpItemKindEnumMemberDefault = {link = "CmpItemKindConstantDefault"},
CmpItemKindValueDefault = {link = "CmpItemKindConstantDefault"},
CmpItemKindPropertyDefault = {link = "CmpItemKindFieldDefault"},
CmpItemKindFolderDefault = {link = "CmpItemKindFileDefault"},
CmpItemKindMethodDefault = {link = "CmpItemKindFunctionDefault"},
CmpItemKindConstructorDefault = {link = "CmpItemKindMethodDefault"},
CmpItemKindClassDefault = {link = "CmpItemKindStructDefault"},
CmpItemKindEnumDefault = {link = "CmpItemKindStructDefault"},
CmpItemKindUnitDefault = {link = "CmpItemKindStructDefault"},
ColorColumn = {reverse = true},
Comment = {fg = "#899BA6", italic = true},
Conditional = {fg = "#F2C38F"},
Constant = {fg = "#7FC1CA"},
CmpItemKindConstantDefault = {link = "Constant"},
Cursor = {reverse = true},
CursorColumn = {bg = "#6A7D89"},
CursorLine = {},
CursorLineNr = {fg = "#D18EC2", bold = true},
CursorLineSign = {link = "CursorLineNr"},
Debug = {fg = "#F2C38F"},
Define = {fg = "#9A93E1"},
Delimiter = {fg = "#F2C38F"},
mkdDelimiter = {link = "Delimiter"},
DevIconAi = {fg = "#DADA93"},
DevIconAwk = {fg = "#556873"},
DevIconBabelrc = {fg = "#DADA93"},
DevIconBash = {fg = "#A8CE93"},
DevIconBashProfile = {fg = "#A8CE93"},
DevIconBashrc = {fg = "#A8CE93"},
DevIconBat = {fg = "#BEDAAE"},
DevIconBinaryGLTF = {fg = "#F2C38F"},
DevIconBmp = {fg = "#9A93E1"},
DevIconBrewfile = {fg = "#A76969"},
DevIconC = {fg = "#93B9E8"},
DevIconCMake = {fg = "#899BA6"},
DevIconCMakeLists = {fg = "#C5D4DD"},
DevIconCPlusPlus = {fg = "#d5508f"},
DevIconCjs = {fg = "#DADA93"},
DevIconClojure = {fg = "#A8CE93"},
DevIconClojureC = {fg = "#A8CE93"},
DevIconClojureDart = {fg = "#7399C8"},
DevIconClojureJS = {fg = "#7399C8"},
DevIconCobol = {fg = "#7399C8"},
DevIconCoffee = {fg = "#DADA93"},
DevIconConf = {fg = "#899BA6"},
DevIconConfigRu = {fg = "#A76969"},
DevIconConfiguration = {fg = "#E6EEF3"},
DevIconCp = {fg = "#7399C8"},
DevIconCpp = {fg = "#7399C8"},
DevIconCrystal = {fg = "#F5D2AB"},
DevIconCs = {fg = "#93B481"},
DevIconCsh = {fg = "#556873"},
DevIconCson = {fg = "#DADA93"},
DevIconCss = {fg = "#83AFE5"},
DevIconCsv = {fg = "#A8CE93"},
DevIconCxx = {fg = "#7399C8"},
DevIconD = {fg = "#93B481"},
DevIconDart = {fg = "#83AFE5"},
DevIconDb = {fg = "#E6EEF3"},
DevIconDefault = {fg = "#C5D4DD"},
DevIconDesktopEntry = {fg = "#9A93E1"},
DevIconDiff = {fg = "#6A7D89"},
DevIconDoc = {fg = "#83AFE5"},
DevIconDockerfile = {fg = "#83AFE5"},
DevIconDocx = {fg = "#83AFE5"},
DevIconDrools = {fg = "#DF8C8C"},
DevIconDropbox = {fg = "#83AFE5"},
DevIconDsStore = {fg = "#6A7D89"},
DevIconDump = {fg = "#E6EEF3"},
DevIconEdn = {fg = "#7399C8"},
DevIconEex = {fg = "#9A93E1"},
DevIconEjs = {fg = "#DADA93"},
DevIconElm = {fg = "#7399C8"},
DevIconEnv = {fg = "#DADA93"},
DevIconEpp = {fg = "#F2C38F"},
DevIconErb = {fg = "#A76969"},
DevIconErl = {fg = "#d5508f"},
DevIconEslintrc = {fg = "#9A93E1"},
DevIconEx = {fg = "#9A93E1"},
DevIconExs = {fg = "#9A93E1"},
DevIconFavicon = {fg = "#DADA93"},
DevIconFennel = {fg = "#DADA93"},
DevIconFish = {fg = "#556873"},
DevIconFortran = {fg = "#9A93E1"},
DevIconFs = {fg = "#7399C8"},
DevIconFsharp = {fg = "#7399C8"},
DevIconFsi = {fg = "#7399C8"},
DevIconFsscript = {fg = "#7399C8"},
DevIconFsx = {fg = "#7399C8"},
DevIconGDScript = {fg = "#899BA6"},
DevIconGemfile = {fg = "#A76969"},
DevIconGemspec = {fg = "#A76969"},
DevIconGif = {fg = "#9A93E1"},
DevIconGitAttributes = {fg = "#6A7D89"},
DevIconGitCommit = {fg = "#6A7D89"},
DevIconGitConfig = {fg = "#6A7D89"},
DevIconGitIgnore = {fg = "#6A7D89"},
DevIconGitLogo = {fg = "#DF8C8C"},
DevIconGitModules = {fg = "#6A7D89"},
DevIconGitlabCI = {fg = "#DF8C8C"},
DevIconGo = {fg = "#7399C8"},
DevIconGodotProject = {fg = "#899BA6"},
DevIconGraphQL = {fg = "#d5508f"},
DevIconGruntfile = {fg = "#F2C38F"},
DevIconGulpfile = {fg = "#DF8C8C"},
DevIconGvimrc = {fg = "#A8CE93"},
DevIconH = {fg = "#9A93E1"},
DevIconHaml = {fg = "#E6EEF3"},
DevIconHbs = {fg = "#F2C38F"},
DevIconHeex = {fg = "#9A93E1"},
DevIconHh = {fg = "#9A93E1"},
DevIconHpp = {fg = "#9A93E1"},
DevIconHrl = {fg = "#d5508f"},
DevIconHs = {fg = "#9A93E1"},
DevIconHtm = {fg = "#DF8C8C"},
DevIconHtml = {fg = "#DF8C8C"},
DevIconHxx = {fg = "#9A93E1"},
DevIconIco = {fg = "#DADA93"},
DevIconImportConfiguration = {fg = "#E6EEF3"},
DevIconIni = {fg = "#899BA6"},
DevIconJava = {fg = "#DF8C8C"},
DevIconJavaScriptReactSpec = {fg = "#7FC1CA"},
DevIconJavaScriptReactTest = {fg = "#7FC1CA"},
DevIconJl = {fg = "#9A93E1"},
DevIconJpeg = {fg = "#9A93E1"},
DevIconJpg = {fg = "#9A93E1"},
DevIconJs = {fg = "#DADA93"},
DevIconJson = {fg = "#DADA93"},
DevIconJson5 = {fg = "#DADA93"},
DevIconJsx = {fg = "#7FC1CA"},
DevIconKotlin = {fg = "#9A93E1"},
DevIconKotlinScript = {fg = "#9A93E1"},
DevIconKsh = {fg = "#556873"},
DevIconLeex = {fg = "#9A93E1"},
DevIconLess = {fg = "#9A93E1"},
DevIconLhs = {fg = "#9A93E1"},
DevIconLicense = {fg = "#DADA93"},
DevIconLiquid = {fg = "#93B481"},
DevIconLock = {fg = "#C5D4DD"},
DevIconLog = {fg = "#E6EEF3"},
DevIconLua = {fg = "#83AFE5"},
DevIconLuau = {fg = "#83AFE5"},
DevIconMakefile = {fg = "#899BA6"},
DevIconMarkdown = {fg = "#7399C8"},
DevIconMaterial = {fg = "#d5508f"},
DevIconMd = {fg = "#E6EEF3"},
DevIconMdx = {fg = "#7399C8"},
DevIconMint = {fg = "#A8CE93"},
DevIconMixLock = {fg = "#9A93E1"},
DevIconMjs = {fg = "#DADA93"},
DevIconMl = {fg = "#F2C38F"},
DevIconMli = {fg = "#F2C38F"},
DevIconMotoko = {fg = "#9A93E1"},
DevIconMustache = {fg = "#F2C38F"},
DevIconNPMIgnore = {fg = "#A76969"},
DevIconNPMrc = {fg = "#A76969"},
DevIconNim = {fg = "#F5D2AB"},
DevIconNix = {fg = "#93B9E8"},
DevIconNodeModules = {fg = "#A76969"},
DevIconOPUS = {fg = "#F2C38F"},
DevIconOpenTypeFont = {fg = "#E6EEF3"},
DevIconOrgMode = {fg = "#7FC1CA"},
DevIconPackageJson = {fg = "#DF8C8C"},
DevIconPackageLockJson = {fg = "#bb0099"},
DevIconPackedResource = {fg = "#899BA6"},
DevIconPdf = {fg = "#DF8C8C"},
DevIconPhp = {fg = "#9A93E1"},
DevIconPl = {fg = "#7399C8"},
DevIconPm = {fg = "#7399C8"},
DevIconPng = {fg = "#9A93E1"},
DevIconPp = {fg = "#F2C38F"},
DevIconPpt = {fg = "#DF8C8C"},
DevIconPrisma = {fg = "#E6EEF3"},
DevIconProcfile = {fg = "#9A93E1"},
DevIconProlog = {fg = "#F2C38F"},
DevIconPsManifestfile = {fg = "#B3AEE8"},
DevIconPsScriptModulefile = {fg = "#B3AEE8"},
DevIconPsScriptfile = {fg = "#83AFE5"},
DevIconPsb = {fg = "#7399C8"},
DevIconPsd = {fg = "#7399C8"},
DevIconPy = {fg = "#F2C38F"},
DevIconPyc = {fg = "#F5D2AB"},
DevIconPyd = {fg = "#F5D2AB"},
DevIconPyo = {fg = "#F5D2AB"},
DevIconQuery = {fg = "#93B481"},
DevIconR = {fg = "#A8CE93"},
DevIconRake = {fg = "#A76969"},
DevIconRakefile = {fg = "#A76969"},
DevIconRb = {fg = "#A76969"},
DevIconRlib = {fg = "#F2C38F"},
DevIconRmd = {fg = "#7399C8"},
DevIconRproj = {fg = "#A8CE93"},
DevIconRs = {fg = "#F2C38F"},
DevIconRss = {fg = "#F2C38F"},
DevIconSass = {fg = "#d5508f"},
DevIconScala = {fg = "#DF8C8C"},
DevIconScheme = {fg = "#3C4C55"},
DevIconScss = {fg = "#d5508f"},
DevIconSettingsJson = {fg = "#9A93E1"},
DevIconSh = {fg = "#556873"},
DevIconSig = {fg = "#F2C38F"},
DevIconSlim = {fg = "#DF8C8C"},
DevIconSln = {fg = "#9A93E1"},
DevIconSml = {fg = "#F2C38F"},
DevIconSolidity = {fg = "#7FC1CA"},
DevIconSpecJs = {fg = "#DADA93"},
DevIconSpecTs = {fg = "#7399C8"},
DevIconSql = {fg = "#E6EEF3"},
DevIconStyl = {fg = "#A8CE93"},
DevIconSuo = {fg = "#9A93E1"},
DevIconSvelte = {fg = "#DF8C8C"},
DevIconSvg = {fg = "#F2C38F"},
DevIconSwift = {fg = "#F2C38F"},
DevIconSystemVerilog = {fg = "#A8CE93"},
DevIconTFVars = {fg = "#9A93E1"},
DevIconTcl = {fg = "#7399C8"},
DevIconTerminal = {fg = "#A8CE93"},
DevIconTerraform = {fg = "#9A93E1"},
DevIconTestJs = {fg = "#DADA93"},
DevIconTestTs = {fg = "#7399C8"},
DevIconTex = {fg = "#93B481"},
DevIconTextResource = {fg = "#DADA93"},
DevIconTextScene = {fg = "#9A93E1"},
DevIconToml = {fg = "#899BA6"},
DevIconTor = {fg = "#7399C8"},
DevIconTs = {fg = "#7399C8"},
DevIconTsx = {fg = "#7399C8"},
DevIconTwig = {fg = "#A8CE93"},
DevIconTxt = {fg = "#A8CE93"},
DevIconTypeScriptReactSpec = {fg = "#7399C8"},
DevIconTypeScriptReactTest = {fg = "#7399C8"},
DevIconVHDL = {fg = "#A8CE93"},
DevIconVagrantfile = {fg = "#7399C8"},
DevIconVala = {fg = "#9A93E1"},
DevIconVerilog = {fg = "#A8CE93"},
DevIconVim = {fg = "#A8CE93"},
DevIconVimrc = {fg = "#A8CE93"},
DevIconVue = {fg = "#A8CE93"},
DevIconWasm = {fg = "#9A93E1"},
DevIconWebmanifest = {fg = "#DADA93"},
DevIconWebp = {fg = "#9A93E1"},
DevIconWebpack = {fg = "#7399C8"},
DevIconXcPlayground = {fg = "#F2C38F"},
DevIconXls = {fg = "#A8CE93"},
DevIconXlsx = {fg = "#A8CE93"},
DevIconXml = {fg = "#F2C38F"},
DevIconXul = {fg = "#F2C38F"},
DevIconYaml = {fg = "#899BA6"},
DevIconYml = {fg = "#899BA6"},
DevIconZig = {fg = "#F2C38F"},
DevIconZsh = {fg = "#A8CE93"},
DevIconZshenv = {fg = "#A8CE93"},
DevIconZshprofile = {fg = "#A8CE93"},
DevIconZshrc = {fg = "#A8CE93"},
DevIconsbt = {fg = "#DF8C8C"},
DiagnosticError = {fg = "#3C4C55", bg = "#DF8C8C"},
DiagnosticVirtualTextError = {link = "DiagnosticError"},
DiagnosticSignError = {link = "DiagnosticFloatingError"},
DiagnosticSignHint = {link = "DiagnosticFloatingHint"},
DiagnosticSignInfo = {link = "DiagnosticFloatingInfo"},
DiagnosticSignWarn = {link = "DiagnosticFloatingWarn"},
DiagnosticHint = {fg = "#3C4C55", bg = "#DADA93"},
DiagnosticVirtualTextHint = {link = "DiagnosticHint"},
DiagnosticInfo = {fg = "#3C4C55", bg = "#DADA93"},
DiagnosticVirtualTextInfo = {link = "DiagnosticInfo"},
DiagnosticUnderlineError = {sp = "#DF8C8C", undercurl = true},
DiagnosticUnderlineHint = {sp = "#DADA93", undercurl = true},
DiagnosticUnderlineInfo = {sp = "#DADA93", undercurl = true},
DiagnosticUnderlineWarn = {sp = "#F2C38F", undercurl = true},
DiagnosticWarn = {fg = "#3C4C55", bg = "#F2C38F"},
DiagnosticVirtualTextWarn = {link = "DiagnosticWarn"},
DiffAdd = {fg = "#3C4C55", bg = "#A8CE93"},
SignifyLineAdd = {link = "DiffAdd"},
DiffChange = {fg = "#3C4C55", bg = "#F2C38F"},
SignifyLineChange = {link = "DiffChange"},
DiffDelete = {fg = "#3C4C55", bg = "#DF8C8C"},
SignifyLineDelete = {link = "DiffDelete"},
DiffText = {fg = "#3C4C55", bg = "#DADA93"},
Directory = {fg = "#83AFE5", bold = true},
CmpItemKindFileDefault = {link = "Directory"},
Error = {fg = "#3C4C55", bg = "#DF8C8C"},
ErrorMsg = {fg = "#DF8C8C"},
DiagnosticFloatingError = {link = "ErrorMsg"},
Exception = {fg = "#DF8C8C"},
Field = {fg = "#F2C38F"},
Float = {},
FloatBorder = {fg = "#899BA6"},
FoldColumn = {bg = "#556873", bold = true},
Folded = {fg = "#3C4C55", bg = "#B3AEE8", italic = true},
Function = {fg = "#D18EC2"},
CmpItemKindFunctionDefault = {link = "Function"},
Global = {fg = "#D18EC2"},
HintMsg = {fg = "#DADA93"},
DiagnosticFloatingHint = {link = "HintMsg"},
HopNextKey = {fg = "#3C4C55", bg = "#F5D2AB"},
HopNextKey1 = {link = "HopNextKey"},
HopNextKey2 = {fg = "#3C4C55", bg = "#F2C38F"},
HopUnmatched = {fg = "#C5D4DD", bg = "#3C4C55"},
Identifier = {fg = "#83AFE5"},
CmpItemKindFieldDefault = {link = "Identifier"},
CmpItemKindVariableDefault = {link = "Identifier"},
Ignore = {fg = "#899BA6"},
CmpItemAbbrDefault = {link = "Ignore"},
mkdBold = {link = "Ignore"},
IncSearch = {fg = "#3C4C55", bg = "#E6EEF3", bold = true},
Include = {fg = "#9A93E1"},
CmpItemKindModuleDefault = {link = "Include"},
Info = {fg = "#3C4C55", bg = "#DADA93"},
Hint = {link = "Info"},
InfoMsg = {fg = "#DADA93"},
DiagnosticFloatingInfo = {link = "InfoMsg"},
Keyword = {fg = "#9A93E1"},
CmpItemKindKeywordDefault = {link = "Keyword"},
mkdCode = {link = "Keyword"},
Label = {fg = "#83AFE5"},
CmpItemKindColorDefault = {link = "Label"},
Tag = {link = "Label"},
LineNr = {fg = "#556873"},
SignColumn = {link = "LineNr"},
Macro = {fg = "#9A93E1", italic = true},
MatchParen = {fg = "#D18EC2", bold = true, underline = true},
Method = {fg = "#7FC1CA"},
ModeMsg = {fg = "#DADA93"},
MoreMsg = {fg = "#3C4C55"},
MsgArea = {},
NonText = {fg = "#556873"},
Conceal = {link = "NonText"},
EndOfBuffer = {link = "NonText"},
NormalFloat = {fg = "#83AFE5"},
Number = {fg = "#9A93E1"},
Operator = {fg = "#C5D4DD"},
CmpItemKindOperatorDefault = {link = "Operator"},
Pmenu = {fg = "#C5D4DD"},
PmenuSbar = {bg = "#556873"},
PmenuSel = {fg = "#3C4C55", bg = "#C5D4DD"},
WildMenu = {link = "PmenuSel"},
PmenuThumb = {bg = "#E6EEF3"},
PreCondit = {fg = "#9A93E1", italic = true},
PreProc = {fg = "#9A93E1"},
Question = {fg = "#DADA93", underline = true},
QuickFixLine = {bg = "#556873"},
Repeat = {fg = "#D18EC2"},
CmpItemKindEventDefault = {link = "Repeat"},
Search = {fg = "#C5D4DD", bg = "#556873", underline = true},
Substitute = {link = "Search"},
SignifyLineChangeDelete = {link = "SignifyLineChange"},
SignifyLineDeleteFirstLine = {link = "SignifyLineDelete"},
SignifySignAdd = {fg = "#A8CE93"},
SignifySignChange = {fg = "#F2C38F"},
SignifySignChangeDelete = {fg = "#F2C38F"},
SignifySignDelete = {fg = "#DF8C8C"},
SignifySignDeleteFirstLine = {link = "SignifySignDelete"},
Special = {fg = "#F2C38F"},
CmpItemKindSnippetDefault = {link = "Special"},
mkdListItem = {link = "Special"},
SpecialChar = {fg = "#DF8C8C", italic = true},
SpecialComment = {fg = "#899BA6", bold = true},
SpellBad = {sp = "#DF8C8C", undercurl = true},
SpellCap = {sp = "#DADA93", undercurl = true},
SpellLocal = {sp = "#A8CE93", undercurl = true},
SpellRare = {sp = "#F2C38F", undercurl = true},
Statement = {fg = "#7399C8"},
StatusLine = {fg = "#E6EEF3", bg = "#556873"},
MsgSeparator = {link = "StatusLine"},
StatusLineActiveItem = {fg = "#3C4C55", bg = "#C5D4DD"},
StatusLineError = {fg = "#DF8C8C", bg = "#556873"},
StatusLineNC = {fg = "#C5D4DD", bg = "#556873"},
StatusLineSeparator = {fg = "#3C4C55", bg = "#556873"},
StatusLineWarning = {fg = "#F2C38F", bg = "#556873"},
StorageClass = {fg = "#DDAAD1"},
CmpItemKindReferenceDefault = {link = "StorageClass"},
String = {fg = "#C5D4DD"},
CmpItemKindTextDefault = {link = "String"},
Structure = {fg = "#DADA93"},
CmpItemKindStructDefault = {link = "Structure"},
TabLine = {fg = "#C5D4DD", bg = "#556873"},
TabLineFill = {fg = "#556873", bg = "#C5D4DD"},
TabLineSel = {fg = "#C5D4DD"},
VimwikiMarkTag = {link = "Tag"},
TermCursor = {reverse = true},
Title = {bold = true},
Todo = {fg = "#DADA93", bold = true, underline = true},
TreesitterContextLineNumber = {fg = "#E6EEF3"},
Type = {fg = "#DADA93"},
CmpItemKindDefault = {link = "Type"},
CmpItemKindInterfaceDefault = {link = "Type"},
makeSpecTarget = {link = "Type"},
Typedef = {fg = "#DADA93", italic = true},
CmpItemKindTypeParameterDefault = {link = "Typedef"},
Underlined = {fg = "#E6EEF3", underline = true},
CmpItemAbbrMatchDefault = {link = "Underlined"},
htmlString = {link = "Underlined"},
mkdLink = {link = "Underlined"},
VertSplit = {fg = "#899BA6"},
Winseparator = {link = "VertSplit"},
VimwikiBold = {bold = true},
VimwikiBoldItalic = {bold = true, italic = true},
VimwikiBoldItalicUnderline = {bold = true, italic = true, underline = true},
VimwikiBoldUnderline = {bold = true, underline = true},
VimwikiCheckBoxDone = {fg = "#899BA6", strikethrough = true},
VimwikiDelText = {strikethrough = true},
VimwikiHeader1 = {fg = "#DF8C8C", bold = true},
VimwikiHeader2 = {fg = "#A8CE93", bold = true},
VimwikiHeader3 = {fg = "#83AFE5", bold = true},
VimwikiHeader4 = {fg = "#d5508f", bold = true},
VimwikiHeader5 = {fg = "#D18EC2", bold = true},
VimwikiHeader6 = {fg = "#DDAAD1", bold = true},
VimwikiItalic = {italic = true},
VimwikiItalicUnderline = {italic = true, underline = true},
VimwikiUnderline = {underline = true},
Vimwikibblue = {bg = "#7399C8"},
Vimwikibgray = {bg = "#899BA6"},
Vimwikibgreen = {bg = "#A8CE93"},
Vimwikiblue = {fg = "#83AFE5"},
Vimwikiborange = {bg = "#F2C38F"},
Vimwikibpurple = {bg = "#d5508f"},
Vimwikibred = {bg = "#E7A9A9"},
Vimwikibyellow = {bg = "#DADA93"},
Vimwikidefault = {bg = "#F2C38F"},
Vimwikigray = {fg = "#899BA6"},
Vimwikigreen = {fg = "#A8CE93"},
Vimwikiorange = {fg = "#F2C38F"},
Vimwikipurple = {fg = "#9A93E1"},
Vimwikired = {fg = "#DF8C8C"},
Vimwikiyellow = {fg = "#DADA93"},
Visual = {reverse = true},
VisualNOS = {bg = "#556873"},
Warning = {fg = "#3C4C55", bg = "#F2C38F"},
WarningMsg = {fg = "#F2C38F"},
DiagnosticFloatingWarn = {link = "WarningMsg"},
mkdURL = {link = "htmlString"},
lCursor = {fg = "#3C4C55", bg = "#E6EEF3"},
makeCommands = {},
markdownLinkTextDelimiter = {link = "markdownLinkDelimiter"},
mkdCodeDelimiter = {link = "mkdBold"},
markdownCode = {link = "mkdCode"},
markdownCodeDelimiter = {link = "mkdCodeDelimiter"},
mkdCodeStart = {link = "mkdCodeDelimiter"},
markdownLinkDelimiter = {link = "mkdDelimiter"},
markdownLinkText = {link = "mkdLink"},
markdownUrl = {link = "mkdURL"},
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
-- require("lush")(require("sodium"))
