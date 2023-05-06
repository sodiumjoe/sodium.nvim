local lush = require("lush")

local palette = require("sodium.palette")

local black = palette.black
local gray_darker = palette.gray_darker
local gray_dark = palette.gray_dark
local gray = palette.gray
local gray_light = palette.gray_light
local white = palette.white
local red_dark = palette.red_dark
local red = palette.red
local red_light = palette.red_light
local orange = palette.orange
local orange_light = palette.orange_light
local yellow = palette.yellow
local green_dark = palette.green_dark
local green = palette.green
local green_light = palette.green_light
local blue_light = palette.blue_light
local blue = palette.blue
local blue_dark = palette.blue_dark
local cyan = palette.cyan
local purple = palette.purple
local purple_light = palette.purple_light
local pink = palette.pink
local pink_light = palette.pink_light
local magenta_dark = palette.magenta_dark
local magenta = palette.magenta
local reverse = palette.reverse
local italic = palette.italic
local bold = palette.bold
local underline = palette.underline
local undercurl = palette.undercurl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global

return lush(function()
	return {
		DevIconJson5({ fg = yellow }),
		DevIconVimrc({ fg = green }),
		DevIconTs({ fg = blue_dark }),
		DevIconGvimrc({ fg = green }),
		DevIconGitCommit({ fg = gray_dark }),
		DevIconGitConfig({ fg = gray_dark }),
		DevIconDefault({ fg = gray_light }),
		DevIconDrools({ fg = red }),
		DevIconDockerfile({ fg = blue }),
		DevIconSystemVerilog({ fg = green }),
		DevIconCMakeLists({ fg = gray_light }),
		DevIconSolidity({ fg = cyan }),
		DevIconScheme({ fg = black }),
		DevIconZshrc({ fg = green }),
		DevIconPackageJson({ fg = red }),
		DevIconZshenv({ fg = green }),
		DevIconProlog({ fg = orange }),
		DevIconZshprofile({ fg = green }),
		DevIconMjs({ fg = yellow }),
		DevIconBash({ fg = green }),
		DevIconCss({ fg = blue }),
		DevIconGitLogo({ fg = red }),
		DevIconJava({ fg = red }),
		DevIconPl({ fg = blue_dark }),
		DevIconNPMIgnore({ fg = red_dark }),
		DevIconMl({ fg = orange }),
		DevIconGitModules({ fg = gray_dark }),
		DevIconYaml({ fg = gray }),
		DevIconGitlabCI({ fg = red }),
		DevIconLuau({ fg = blue }),
		DevIconSig({ fg = orange }),
		DevIconJavaScriptReactSpec({ fg = cyan }),
		DevIconMakefile({ fg = gray }),
		DevIconKotlin({ fg = purple }),
		DevIconPackageLockJson({ fg = magenta_dark }),
		DevIconJl({ fg = purple }),
		DevIconMotoko({ fg = purple }),
		DevIconJsx({ fg = cyan }),
		DevIconIni({ fg = gray }),
		DevIconImportConfiguration({ fg = white }),
		DevIconBat({ fg = green_light }),
		DevIconHs({ fg = purple }),
		DevIconRlib({ fg = orange }),
		DevIconLicense({ fg = yellow }),
		DevIconGitIgnore({ fg = gray_dark }),
		DevIconJs({ fg = yellow }),
		DevIconHtml({ fg = red }),
		DevIconFsharp({ fg = blue_dark }),
		DevIconProcfile({ fg = purple }),
		DevIconKotlinScript({ fg = purple }),
		DevIconFavicon({ fg = yellow }),
		DevIconCsv({ fg = green }),
		DevIconMaterial({ fg = magenta }),
		DevIconRs({ fg = orange }),
		DevIconErb({ fg = red_dark }),
		DevIconKsh({ fg = gray_darker }),
		DevIconErl({ fg = magenta }),
		DevIconCsh({ fg = gray_darker }),
		DevIconLess({ fg = purple }),
		DevIconEx({ fg = purple }),
		DevIconCpp({ fg = blue_dark }),
		DevIconCp({ fg = blue_dark }),
		DevIconTcl({ fg = blue_dark }),
		DevIconCoffee({ fg = yellow }),
		DevIconCobol({ fg = blue_dark }),
		DevIconCMake({ fg = gray }),
		DevIconPyc({ fg = orange_light }),
		DevIconSpecJs({ fg = yellow }),
		DevIconJpg({ fg = purple }),
		DevIconTestJs({ fg = yellow }),
		DevIconJpeg({ fg = purple }),
		DevIconSuo({ fg = purple }),
		DevIconsbt({ fg = red }),
		DevIconConfiguration({ fg = white }),
		DevIconPsd({ fg = blue_dark }),
		DevIconScss({ fg = magenta }),
		DevIconPsb({ fg = blue_dark }),
		DevIconIco({ fg = yellow }),
		DevIconPsScriptModulefile({ fg = purple_light }),
		DevIconSln({ fg = purple }),
		DevIconRmd({ fg = blue_dark }),
		DevIconPsManifestfile({ fg = purple_light }),
		DevIconPsScriptfile({ fg = blue }),
		DevIconHxx({ fg = purple }),
		DevIconDiff({ fg = gray_dark }),
		DevIconFsx({ fg = blue_dark }),
		DevIconHbs({ fg = orange }),
		DevIconFsscript({ fg = blue_dark }),
		DevIconFsi({ fg = blue_dark }),
		DevIconHtm({ fg = red }),
		DevIconFish({ fg = gray_darker }),
		DevIconPpt({ fg = red }),
		DevIconHrl({ fg = magenta }),
		DevIconGodotProject({ fg = gray }),
		DevIconPng({ fg = purple }),
		DevIconHpp({ fg = purple }),
		DevIconZig({ fg = orange }),
		DevIconHh({ fg = purple }),
		DevIconPrisma({ fg = white }),
		DevIconPhp({ fg = purple }),
		DevIconZsh({ fg = green }),
		DevIconPdf({ fg = red }),
		DevIconPackedResource({ fg = gray }),
		DevIconOpenTypeFont({ fg = white }),
		DevIconVim({ fg = green }),
		DevIconH({ fg = purple }),
		DevIconOPUS({ fg = orange }),
		DevIconElm({ fg = blue_dark }),
		DevIconR({ fg = green }),
		DevIconEjs({ fg = yellow }),
		DevIconNix({ fg = blue_light }),
		DevIconEex({ fg = purple }),
		DevIconEslintrc({ fg = purple }),
		DevIconVue({ fg = green }),
		DevIconMustache({ fg = orange }),
		DevIconDropbox({ fg = blue }),
		DevIconDocx({ fg = blue }),
		DevIconDsStore({ fg = gray_dark }),
		DevIconExs({ fg = purple }),
		DevIconBashrc({ fg = green }),
		DevIconBashProfile({ fg = green }),
		DevIconDart({ fg = blue }),
		DevIconBabelrc({ fg = yellow }),
		DevIconMdx({ fg = blue_dark }),
		DevIconHeex({ fg = purple }),
		DevIconSettingsJson({ fg = purple }),
		DevIconXul({ fg = orange }),
		DevIconEdn({ fg = blue_dark }),
		DevIconHaml({ fg = white }),
		DevIconDesktopEntry({ fg = purple }),
		DevIconDump({ fg = white }),
		DevIconPp({ fg = orange }),
		DevIconWebpack({ fg = blue_dark }),
		DevIconQuery({ fg = green_dark }),
		DevIconGraphQL({ fg = magenta }),
		DevIconFs({ fg = blue_dark }),
		DevIconGemfile({ fg = red_dark }),
		DevIconNodeModules({ fg = red_dark }),
		DevIconBrewfile({ fg = red_dark }),
		DevIconBmp({ fg = purple }),
		DevIconMd({ fg = white }),
		DevIconPyo({ fg = orange_light }),
		DevIconRake({ fg = red_dark }),
		DevIconVerilog({ fg = green }),
		DevIconNPMrc({ fg = red_dark }),
		DevIconWebmanifest({ fg = yellow }),
		DevIconGemspec({ fg = red_dark }),
		DevIconNim({ fg = orange_light }),
		DevIconDb({ fg = white }),
		DevIconVala({ fg = purple }),
		DevIconDoc({ fg = blue }),
		DevIconLua({ fg = blue }),
		DevIconSh({ fg = gray_darker }),
		DevIconMarkdown({ fg = blue_dark }),
		DevIconLog({ fg = white }),
		DevIconWasm({ fg = purple }),
		DevIconCxx({ fg = blue_dark }),
		DevIconTor({ fg = blue_dark }),
		DevIconYml({ fg = gray }),
		DevIconLock({ fg = gray_light }),
		DevIconXml({ fg = orange }),
		DevIconXlsx({ fg = green }),
		DevIconTerminal({ fg = green }),
		DevIconC({ fg = blue_light }),
		DevIconXls({ fg = green }),
		DevIconCPlusPlus({ fg = magenta }),
		DevIconSql({ fg = white }),
		DevIconVHDL({ fg = green }),
		DevIconTypeScriptReactSpec({ fg = blue_dark }),
		DevIconTxt({ fg = green }),
		DevIconTwig({ fg = green }),
		DevIconTerraform({ fg = purple }),
		DevIconPy({ fg = orange }),
		DevIconTextScene({ fg = purple }),
		DevIconSvg({ fg = orange }),
		DevIconPm({ fg = blue_dark }),
		DevIconConfigRu({ fg = red_dark }),
		DevIconToml({ fg = gray }),
		DevIconTestTs({ fg = blue_dark }),
		DevIconSwift({ fg = orange }),
		DevIconTex({ fg = green_dark }),
		DevIconTsx({ fg = blue_dark }),
		DevIconClojureDart({ fg = blue_dark }),
		DevIconRss({ fg = orange }),
		DevIconClojureJS({ fg = blue_dark }),
		DevIconTFVars({ fg = purple }),
		DevIconClojureC({ fg = green }),
		DevIconSpecTs({ fg = blue_dark }),
		DevIconTextResource({ fg = yellow }),
		DevIconOrgMode({ fg = cyan }),
		DevIconCjs({ fg = yellow }),
		DevIconSvelte({ fg = red }),
		DevIconTypeScriptReactTest({ fg = blue_dark }),
		DevIconStyl({ fg = green }),
		DevIconGo({ fg = blue_dark }),
		DevIconWebp({ fg = purple }),
		DevIconXcPlayground({ fg = orange }),
		DevIconSml({ fg = orange }),
		DevIconSlim({ fg = red }),
		DevIconLhs({ fg = purple }),
		DevIconScala({ fg = red }),
		DevIconSass({ fg = magenta }),
		DevIconLiquid({ fg = green_dark }),
		DevIconMint({ fg = green }),
		DevIconRproj({ fg = green }),
		DevIconRb({ fg = red_dark }),
		DevIconMli({ fg = orange }),
		DevIconRakefile({ fg = red_dark }),
		DevIconPyd({ fg = orange_light }),
		DevIconBinaryGLTF({ fg = orange }),
		DevIconFortran({ fg = purple }),
		DevIconFennel({ fg = yellow }),
		DevIconClojure({ fg = green }),
		DevIconEnv({ fg = yellow }),
		DevIconJson({ fg = yellow }),
		DevIconAi({ fg = yellow }),
		DevIconCson({ fg = yellow }),
		DevIconMixLock({ fg = purple }),
		DevIconAwk({ fg = gray_darker }),
		DevIconConf({ fg = gray }),
		DevIconD({ fg = green_dark }),
		DevIconGulpfile({ fg = red }),
		DevIconLeex({ fg = purple }),
		DevIconVagrantfile({ fg = blue_dark }),
		DevIconGruntfile({ fg = orange }),
		DevIconJavaScriptReactTest({ fg = cyan }),
		DevIconEpp({ fg = orange }),
		DevIconCrystal({ fg = orange_light }),
		DevIconGif({ fg = purple }),
		DevIconGDScript({ fg = gray }),
		DevIconGitAttributes({ fg = gray_dark }),
		DevIconCs({ fg = green_dark }),
	}
end)