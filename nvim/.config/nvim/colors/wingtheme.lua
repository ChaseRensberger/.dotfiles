vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "wingtheme"

local colors = {
	background = "#09090b",
	foreground = "#fafafa",
	panel = "#18181b",
	muted = "#27272a",
	muted_foreground = "#9f9fa9",
	border = "#27272a",
	blue = "#3d88c5",
	blue_light = "#74b6e7",
	blue_dark = "#1f5f91",
	green = "#45d175",
	red = "#ff6467",
	yellow = "#e8bd67",
	purple = "#b89bdb",
	cyan = "#67c9d8",
}

local function highlight(group, options)
	vim.api.nvim_set_hl(0, group, options)
end

highlight("Normal", { fg = colors.foreground, bg = colors.background })
highlight("NormalFloat", { fg = colors.foreground, bg = colors.panel })
highlight("FloatBorder", { fg = colors.border, bg = colors.panel })
highlight("FloatTitle", { fg = colors.blue, bg = colors.panel, bold = true })
highlight("ColorColumn", { bg = colors.panel })
highlight("Cursor", { fg = colors.background, bg = colors.blue })
highlight("CursorLine", { bg = colors.panel })
highlight("CursorColumn", { bg = colors.panel })
highlight("CursorLineNr", { fg = colors.blue, bold = true })
highlight("LineNr", { fg = colors.muted_foreground })
highlight("SignColumn", { bg = colors.background })
highlight("FoldColumn", { fg = colors.muted_foreground, bg = colors.background })
highlight("Folded", { fg = colors.muted_foreground, bg = colors.panel })
highlight("StatusLine", { fg = colors.foreground, bg = colors.panel })
highlight("StatusLineNC", { fg = colors.muted_foreground, bg = colors.panel })
highlight("TabLine", { fg = colors.muted_foreground, bg = colors.panel })
highlight("TabLineFill", { bg = colors.background })
highlight("TabLineSel", { fg = colors.foreground, bg = colors.muted, bold = true })
highlight("WinSeparator", { fg = colors.border })
highlight("VertSplit", { fg = colors.border })
highlight("Pmenu", { fg = colors.foreground, bg = colors.panel })
highlight("PmenuSel", { fg = colors.foreground, bg = colors.blue_dark })
highlight("PmenuSbar", { bg = colors.muted })
highlight("PmenuThumb", { bg = colors.muted_foreground })
highlight("Visual", { bg = colors.blue_dark })
highlight("Search", { fg = colors.background, bg = colors.yellow })
highlight("IncSearch", { fg = colors.background, bg = colors.blue })
highlight("Substitute", { fg = colors.background, bg = colors.purple })
highlight("MatchParen", { fg = colors.blue_light, bold = true })
highlight("Directory", { fg = colors.blue })
highlight("Title", { fg = colors.blue_light, bold = true })
highlight("Question", { fg = colors.blue_light })
highlight("MoreMsg", { fg = colors.green })
highlight("ModeMsg", { fg = colors.foreground, bold = true })
highlight("NonText", { fg = colors.muted_foreground })
highlight("Whitespace", { fg = colors.muted })
highlight("SpecialKey", { fg = colors.muted_foreground })

highlight("Comment", { fg = colors.muted_foreground, italic = true })
highlight("Constant", { fg = colors.purple })
highlight("String", { fg = colors.blue_light })
highlight("Character", { fg = colors.blue_light })
highlight("Number", { fg = colors.purple })
highlight("Boolean", { fg = colors.purple })
highlight("Identifier", { fg = colors.foreground })
highlight("Function", { fg = colors.cyan })
highlight("Statement", { fg = colors.blue })
highlight("Conditional", { fg = colors.blue })
highlight("Repeat", { fg = colors.blue })
highlight("Label", { fg = colors.blue })
highlight("Operator", { fg = colors.cyan })
highlight("Keyword", { fg = colors.blue })
highlight("Exception", { fg = colors.red })
highlight("PreProc", { fg = colors.yellow })
highlight("Include", { fg = colors.blue })
highlight("Define", { fg = colors.blue })
highlight("Macro", { fg = colors.yellow })
highlight("Type", { fg = colors.cyan })
highlight("StorageClass", { fg = colors.blue })
highlight("Structure", { fg = colors.cyan })
highlight("Special", { fg = colors.yellow })
highlight("Delimiter", { fg = colors.muted_foreground })
highlight("Underlined", { fg = colors.blue_light, underline = true })
highlight("Error", { fg = colors.red })
highlight("Todo", { fg = colors.yellow, bold = true })

highlight("DiagnosticError", { fg = colors.red })
highlight("DiagnosticWarn", { fg = colors.yellow })
highlight("DiagnosticInfo", { fg = colors.blue_light })
highlight("DiagnosticHint", { fg = colors.cyan })
highlight("DiagnosticOk", { fg = colors.green })
highlight("DiagnosticVirtualTextError", { fg = colors.red, bg = colors.panel })
highlight("DiagnosticVirtualTextWarn", { fg = colors.yellow, bg = colors.panel })
highlight("DiagnosticVirtualTextInfo", { fg = colors.blue_light, bg = colors.panel })
highlight("DiagnosticVirtualTextHint", { fg = colors.cyan, bg = colors.panel })
highlight("DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
highlight("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow })
highlight("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.blue_light })
highlight("DiagnosticUnderlineHint", { undercurl = true, sp = colors.cyan })

highlight("DiffAdd", { fg = colors.green, bg = colors.panel })
highlight("DiffChange", { fg = colors.blue_light, bg = colors.panel })
highlight("DiffDelete", { fg = colors.red, bg = colors.panel })
highlight("DiffText", { fg = colors.foreground, bg = colors.blue_dark })
highlight("Added", { fg = colors.green })
highlight("Changed", { fg = colors.blue_light })
highlight("Removed", { fg = colors.red })

highlight("GitSignsAdd", { fg = colors.green })
highlight("GitSignsChange", { fg = colors.blue_light })
highlight("GitSignsDelete", { fg = colors.red })
highlight("TelescopeBorder", { fg = colors.border, bg = colors.panel })
highlight("TelescopeNormal", { fg = colors.foreground, bg = colors.panel })
highlight("TelescopeSelection", { fg = colors.foreground, bg = colors.muted })
highlight("TelescopeMatching", { fg = colors.blue_light, bold = true })
highlight("CmpItemAbbrMatch", { fg = colors.blue_light, bold = true })
highlight("CmpItemAbbrMatchFuzzy", { fg = colors.blue_light, bold = true })
highlight("CmpItemKind", { fg = colors.cyan })

highlight("@comment", { link = "Comment" })
highlight("@string", { link = "String" })
highlight("@number", { link = "Number" })
highlight("@boolean", { link = "Boolean" })
highlight("@function", { link = "Function" })
highlight("@function.call", { link = "Function" })
highlight("@keyword", { link = "Keyword" })
highlight("@keyword.function", { link = "Keyword" })
highlight("@operator", { link = "Operator" })
highlight("@type", { link = "Type" })
highlight("@type.builtin", { link = "Type" })
highlight("@variable.builtin", { fg = colors.purple })
highlight("@property", { fg = colors.cyan })
highlight("@constant", { link = "Constant" })
highlight("@punctuation.delimiter", { link = "Delimiter" })
highlight("@tag", { fg = colors.blue })
highlight("@tag.attribute", { fg = colors.cyan })

return colors
