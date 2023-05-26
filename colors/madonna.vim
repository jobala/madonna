let g:colors_name = "madonna"

set background=light
highlight clear
syntax reset

" madonna color scheme
let s:purple = { "gui": "#8866cc"}
let s:blue = { "gui": "#228ec3"}
let s:teal = { "gui": "#22c3a8"}
let s:green = { "gui": "#22c33d"}
let s:red = { "gui": "#e46767"}
let s:orange = { "gui": "#f58a3d"}
let s:dark_orange = { "gui": "#f55c3d"}
let s:yellow = { "gui": "#ffdd33"}
let s:brown = { "gui": "#957350"}
let s:dark_brown = { "gui": "#634d36"}
let s:magenta = { "gui": "#ff4d97"}
let s:light_gray = { "gui": "#f6f6f6"}
let s:dark_gray = { "gui": "#333333"}
let s:black = { "gui": "#000000"}
let s:cyan        = { "gui": "#0997b3", "cterm": "31" }

let s:fg = "black"
let s:bg = "#fff"
let s:non_text    = { "gui": "#e5e5e5"}

let s:comment_fg = { "gui": "#a0a1a7"}

let s:cursor_line = { "gui": "#f0f0f0" }
let s:color_col   = { "gui": "#f0f0f0" }

function! s:h(group, fg, bg, attr)
  if type(a:fg) == type({})
    exec "hi " . a:group . " guifg=" . a:fg.gui  
  else
    exec "hi " . a:group . " guifg=NONE cterm=NONE"
  endif
  if type(a:bg) == type({})
    exec "hi " . a:group . " guibg=" . a:bg.gui  
  else
    exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr 
  else
    exec "hi " . a:group . " gui=NONE cterm=NONE"
  endif
endfun


" Syntax colors
call s:h("Normal", s:fg, s:bg, "")
call s:h("Comment", s:comment_fg, "", "italic")
call s:h("Whitespace", s:non_text, "", "")
call s:h("NonText", s:non_text, "", "")
call s:h("Constant", s:cyan, "", "")
call s:h("String", s:brown, "", "")
call s:h("Character", s:brown, "", "")
call s:h("Number", s:red, "", "")
call s:h("Boolean", s:fg, "", "italic")
call s:h("Float", s:red, "", "")

call s:h("Identifier", s:red, "", "")
call s:h("Function", s:blue, "", "")
call s:h("Statement", s:purple, "", "")

call s:h("Conditional", s:fg, "", "italic")
call s:h("Repeat", s:purple, "", "")
call s:h("Label", s:purple, "", "")
call s:h("Operator", "#666", s:bg, "")
call s:h("Keyword", s:fg, "", "italic")
call s:h("Exception", s:purple, "", "")

call s:h("PreProc", s:yellow, "", "")
call s:h("Include", s:purple, "", "")
call s:h("Define", s:purple, "", "")
call s:h("Macro", s:purple, "", "")
call s:h("PreCondit", s:yellow, "", "")

call s:h("Typedef", s:orange, "", "")
call s:h("Type", s:fg, "", "italic")
call s:h("StorageClass", s:yellow, "", "")
call s:h("Structure", s:yellow, "", "")

call s:h("Special", s:blue, "", "")
call s:h("SpecialChar", s:fg, "", "")
call s:h("Tag", s:fg, "", "")
call s:h("Delimiter", s:fg, "", "")
call s:h("SpecialComment", s:fg, "", "")
call s:h("Debug", s:fg, "", "")
call s:h("Underlined", s:fg, "", "")
call s:h("Ignore", s:fg, "", "")
call s:h("Error", s:red, "", "")
call s:h("Todo", s:purple, "", "")
