-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local colors = require('lush-theme.colors');
local hsl = lush.hsl
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		Normal { fg = colors.fg, bg = colors.bg },
		TabBorder = { fg = colors.fg, bg = colors.bg },
		-- ColorColumn {}, -- Columns set with 'colorcolumn'
		-- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
		-- Cursor { fg = fg, background = red }, -- Character under the cursor
		-- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
		CursorColumn {},                    -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine {},                      -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory { fg = hsl(colors.bg).li(70) }, -- Directory names (and other special names in listings)
		DiffAdd { fg = colors.green },      -- Diff mode: Added line |diff.txt|
		DiffChange { fg = colors.purple },  -- Diff mode: Changed line |diff.txt|
		DiffDelete { fg = colors.red },     -- Diff mode: Deleted line |diff.txt|
		-- DiffText { bg = ansiBlue, fg = ansiWhite }, -- Diff mode: Changed text within a changed line |diff.txt|
		-- EndOfBuffer { bg = background, fg = background }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		-- TermCursor { bg = red },              -- Cursor in a focused terminal
		-- TermCursorNC   { }, -- Cursor in an unfocused terminal
		ErrorMsg { bg = colors.red, fg = colors.fg },       -- Error messages on the command line
		VertSplit { bg = colors.bg, fg = hsl(colors.bg).li(20) }, -- Column separating vertically split windows
		-- Folded         { }, Line used for closed folds
		-- FoldColumn     { }, -- 'foldcolumn'
		SignColumn {},                   -- Column where |signs| are displayed
		-- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		LineNr { fg = hsl(colors.bg).li(20) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		-- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
		-- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
		-- CursorLineNr { fg = '#F4457D' }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		-- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
		-- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
		MatchParen { fg = hsl(colors.lightBlue).li(-40) }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea        { }, -- Area for messages and cmdline
		-- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		-- MoreMsg        { }, -- |more-prompt|
		NonText { fg = colors.bg },                               -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		NormalFloat { fg = colors.fg, bg = colors.bg },           -- Normal text in floating windows.
		FloatBorder { fg = colors.fg, sp = colors.fg, bg = colors.bg }, -- Border of floating windows.
		FloatTitle { fg = colors.yellow },                        -- Title of floating windows.
		-- NormalNC       { }, -- normal text in non-current windows
		Pmenu { bg = hsl(colors.bg).li(2), fg = colors.fg },      -- Popup menu: Normal item
		PmenuSel { bg = hsl(colors.bg).li(5), fg = colors.yellow }, -- Popup menu: Selected item.
		-- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
		-- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
		-- PmenuSbar      { }, -- Popup menu: Scrollbar.
		-- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
		-- Question       { }, -- |hit-enter| prompt and yes/no questions
		-- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search { fg = colors.yellow, bg = hsl(colors.yellow).li(-85) }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		CurSearch { Search },                                     -- Highlighting a search pattern under the cursor (see 'hlsearch')
		-- Substitute     { }, -- |:substitute| replacement text highlighting
		-- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		-- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- spelllocal     { }, -- word that is recognized by the spellchecker as one that is used in another region. |spell| combined with the highlighting used otherwise.
		-- spellrare      { }, -- word that is recognized by the spellchecker as one that is hardly ever used. |spell| combined with the highlighting used otherwise.
		-- statusline     { }, -- status line of current window
		-- statuslinenc   { }, -- status lines of not-current windows. note: if this is equal to "statusline" vim will use "^^^" in the status line of the current window.
		-- tabline {},   -- tab pages line, not active tab page label
		-- tablinefill { bg = red }, -- tab pages line, where there are no labels
		-- tablinesel     { }, -- tab pages line, active tab page label
		title { fg = hsl(colors.purple).li(15) }, -- titles for output from ":set all", ":autocmd" etc.
		visual { bg = hsl(colors.bg).li(60) }, -- visual mode selection
		-- VisualNOS {},                              -- Visual mode selection when vim is "Not Owning the Selection".
		-- WarningMsg     { }, -- Warning messages
		Whitespace { fg = hsl(colors.bg).li(5), bg = hsl(colors.bg) }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		-- WildMenu       { }, -- Current match in 'wildmenu' completion
		-- WinBar         { }, -- Window bar of current window
		-- WinBarNC       { }, -- Window bar of not-current windows
		GutterGitAdded { fg = colors.green }, -- fg = '#F9C35A' },
		GutterGitModified { fg = '#F9C35A' },
		GutterGitDeleted { fg = colors.red },
		Comment { fg = hsl(colors.bg).li(30) }, -- Any comment

		Constant { fg = colors.lightBlue },  -- (*) Any constant
		String { fg = hsl(colors.green).li(-40) }, --   A string constant: "this is a string"
		-- Character      { }, --   A character constant: 'c', '\n'
		-- Number { fg = #F9C35A }, --   A number constant: 234, 0xff
		-- Boolean        { }, --   A boolean constant: TRUE, false
		-- Float          { }, --   A floating point constant: 2.3e10

		Identifier { fg = colors.fg },   -- (*) Any variable name
		Function { fg = colors.purple }, --   Function name (also: methods for classes)

		Statement { fg = colors.greenBright }, -- (*) Any statement
		-- Conditional    { }, --   if, then, else, endif, switch, etc.
		-- Repeat         { }, --   for, do, while, etc.
		-- Label          { }, --   case, default, etc.
		-- Operator       { }, --   "sizeof", "+", "*", etc.
		-- Keyword { fg = colors.purple2 }, --   any other keyword
		-- Exception      { }, --   try, catch, throw

		-- PreProc        { }, -- (*) Generic Preprocessor
		-- Include        { }, --   Preprocessor #include
		-- Define         { }, --   Preprocessor #define
		-- Macro          { }, --   Same as Define
		-- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

		Type { fg = colors.yellow }, -- (*) int, long, char, etc.
		-- StorageClass   { }, --   static, register, volatile, etc.
		-- Structure      { }, --   struct, union, enum, etc.
		-- Typedef { fg = red },  --   A typedef

		Special { fg = hsl(colors.blue) }, -- (*) Any special symbol
		-- SpecialChar    { }, --   Special character in a constant
		-- Tag            { }, --   You can use CTRL-] on this
		-- Delimiter      { }, --   Character that needs attention
		-- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
		-- Debug          { }, --   Debugging statements

		-- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
		-- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		Error { fg = colors.redBright },       -- Any erroneous construct
		Todo { fg = colors.bg, bg = colors.yellow }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX


		-- LspReferenceText            {  } , -- Used for highlighting "text" references
		-- LspReferenceRead            { } , -- Used for highlighting "read" references
		-- LspReferenceWrite           { } , -- Used for highlighting "write" references
		-- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		-- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
		-- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

		--
		DiagnosticError { fg = colors.red }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticHint {},         -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
		-- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
		-- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
		-- DiagnosticVirtualTextHint {}, -- Used for "Hint" diagnostic virtual text.
		-- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
		-- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
		-- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
		-- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
		-- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
		-- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
		-- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		-- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
		-- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
		-- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
		-- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
		-- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
		-- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

		-- Treesitter
		-- sym"@text.literal"      { }, -- Comment
		-- sym "@lsp.text.reference" {}, -- Identifier
		-- sym"@text.title"        { }, -- Title
		-- sym"@text.uri"          { }, -- Underlined
		-- sym"@text.underline"    { }, -- Underlined
		-- sym"@punctuation"       { }, -- Delimiter
		-- sym"@constant"          { }, -- Constant
		-- sym"@constant.builtin"  { }, -- Special
		-- sym"@constant.macro"    { }, -- Define
		-- sym"@define"            { }, -- Define
		-- sym"@macro"             { }, -- Macro
		-- sym"@string"            { }, -- String
		-- sym"@string.escape"     { }, -- SpecialChar
		-- sym"@string.special"    { }, -- SpecialChar
		-- sym"@character"         { }, -- Character
		-- sym"@character.special" { }, -- SpecialChar
		-- sym"@number"            { }, -- Number
		-- sym"@boolean"           { }, -- Boolean
		-- sym"@float"             { }, -- Float
		-- sym"@function"          { }, -- Function
		sym("@function.builtin") { fg = colors.purple3 }, -- Special
		sym "@function.macro" { fg = colors.yellow2 }, -- Macro
		-- sym"@parameter"         { }, -- Identifier
		-- sym("@method") { fg = red }, -- Function
		-- sym"@field"             { }, -- Identifier
		-- sym"@property"          { }, -- Identifier
		-- sym"@constructor"       { }, -- Special
		-- sym"@conditional"       { }, -- Conditional
		-- sym"@repeat"            { }, -- Repeat
		-- sym"@label"             { }, -- Label
		-- sym"@operator"          { }, -- Operator
		-- sym"@keyword"           { }, -- Keyword
		-- sym"@exception"         { }, -- Exception
		-- sym"@variable"          { }, -- Identifier
		-- sym"@type"              { }, -- Type
		-- sym"@type.definition"   { }, -- Typedef
		-- sym"@storageclass"      { }, -- StorageClass
		-- sym"@structure"         { }, -- Structure
		-- sym"@namespace"         { }, -- Identifier
		-- sym"@include"           { }, -- Include
		-- sym"@preproc"           { }, -- PreProc
		-- sym"@debug"             { }, -- Debug
		sym("@tag") { fg = hsl(colors.fg).li(-30) }, -- Tag
		sym("@lsp.type.type") { fg = colors.yellow },
		sym("@lsp.text.todo") { bg = hsl(colors.green).li(-30), fg = colors.fg },
		sym("lsp.text.keyword") { fg = colors.purple2 },
		sym("@lsp.type.parameter") { fg = colors.blue },
		sym("@lsp.type.typeParameter") { fg = colors.purple },
		sym("@lsp.type.variable") { fg = hsl(colors.blue).li(50) },
		-- sym("boolean") { fg = yellow }
		-- sym()
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
