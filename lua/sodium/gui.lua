local function concat(tbl)
	return table.concat(tbl, ",")
end

return {
	reverse = "reverse",
	italic = "italic",
	bold = "bold",
	underline = "underline",
	undercurl = "undercurl",
	strikethrough = "strikethrough",
	nocombine = "nocombine",
	concat = concat,
}
