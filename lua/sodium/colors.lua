local palette = require("sodium.palette")

return {
	fg = palette.white,
	bg = palette.black,

	fg_dark = palette.gray_light,
	bg_light = palette.gray_darker,

	ok = palette.green,
	info = palette.yellow,
	hint = palette.yellow,
	warn = palette.orange,
	error = palette.red,

	nontext = palette.gray_darker,

	add = palette.green,
	change = palette.orange,
	delete = palette.red,
}
