" Vim colour scheme
" Maintainer:	Olivier Verdier
" https://github.com/olivierverdier/sinopia
"
" Color scheme based on sienna by Georg Dahn:
" http://www.vim.org/scripts/script.php?script_id=1259
"
" This color scheme has both light and dark styles with harmonic colors
" easy to distinguish. Terminals are not supported, therefore you should
" only try it if you use the GUI version of Vim.
"
" You can choose the style by adding one of the following lines to your
" vimrc or gvimrc file before sourcing the color scheme:
"
" let g:sinopia_style = 'dark'
" let g:sinopia_style = 'light'
"
" If none of above lines is given, the light style is choosen.
"
" You can switch between these styles by using the :Colo command, like
" :Colo dark or :Colo light (many thanks to Pan Shizhu).

if exists("g:sinopia_style")
    let s:sinopia_style = g:sinopia_style
else
    let s:sinopia_style = 'light'
endif

execute "command! -nargs=1 Colo let g:sinopia_style = \"<args>\" | colo sinopia"

if s:sinopia_style == 'dark'
    set background=dark
elseif s:sinopia_style == 'light'
    set background=light
else
    finish
endif

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'sinopia'

if s:sinopia_style == 'dark'
    hi Normal gui=none guifg=Grey85 guibg=Grey15

    hi Cursor guifg=Black guibg=Grey85
    hi LineNr gui=none guifg=Grey65
    hi NonText gui=bold guifg=Grey65 guibg=Grey20
    hi SpecialKey gui=none guifg=SkyBlue2
    hi Title gui=bold guifg=Grey85
    hi Visual gui=bold guifg=Black guibg=LightSalmon1

    hi FoldColumn gui=none guifg=Black guibg=Wheat3
    hi Folded gui=none guifg=White guibg=Wheat4
    hi StatusLine gui=bold guifg=Black guibg=Grey85
    hi StatusLineNC gui=none guifg=White guibg=DimGray
    hi VertSplit gui=none guifg=White guibg=DimGray
    hi Wildmenu gui=bold guifg=White guibg=Black

    hi Pmenu guibg=Grey55 guifg=Black gui=none
    hi PmenuSbar guibg=Grey40 guifg=fg gui=none
    hi PmenuSel guibg=Yellow2 guifg=Black gui=none
    hi PmenuThumb guibg=Grey80 guifg=bg gui=none    

    hi IncSearch gui=none guifg=Grey15 guibg=Grey85
    hi Search gui=none guifg=Black guibg=Yellow2

    hi MoreMsg gui=bold guifg=PaleGreen2
    hi Question gui=bold guifg=PaleGreen2
    hi WarningMsg gui=bold guifg=Red

    hi Comment gui=italic guifg=SkyBlue3
    hi Error gui=none guifg=White guibg=Red2
    hi Identifier gui=none guifg=LightSalmon2
    hi Special gui=none guifg=SkyBlue2
    hi PreProc gui=none guifg=SkyBlue3
    hi Todo gui=bold guifg=Black guibg=Yellow2
    hi Type gui=bold guifg=SkyBlue2
    hi Underlined gui=underline guifg=DodgerBlue

    hi Boolean gui=bold guifg=PaleGreen2
    hi Constant gui=none guifg=PaleGreen2
    hi Number gui=bold guifg=PaleGreen2
    hi String gui=none guifg=PaleGreen2

    hi Label gui=bold,underline guifg=LightSalmon2
    hi Statement gui=bold guifg=LightSalmon2

    hi htmlBold gui=bold
    hi htmlItalic gui=italic
    hi htmlUnderline gui=underline
    hi htmlBoldItalic gui=bold,italic
    hi htmlBoldUnderline gui=bold,underline
    hi htmlBoldUnderlineItalic gui=bold,underline,italic
    hi htmlUnderlineItalic gui=underline,italic

	hi pythonExceptions gui=bold guifg=#ff4200
	hi pythonTripleString gui=bold,italic guifg=#980050
	hi pythonStatement gui=bold guifg=#2500ff
	hi pythonException gui=bold guifg=#2500ff
	hi pythonConditional gui=bold guifg=#2500ff
	hi pythonOperator gui=bold guifg=#2500ff
	hi pythonRepeat gui=bold guifg=#2500ff
	hi pythonFunction gui=bold
elseif s:sinopia_style == 'light'
    hi Normal gui=none guifg=Black guibg=White

	hi Cursor guifg=white guibg=Red
	hi iCursor guifg=white guibg=Red
	hi CursorLine guibg=LightGray

    hi LineNr gui=none guifg=DarkGray
    hi NonText gui=bold guifg=white guibg=#657b83
    hi SpecialKey gui=none guifg=RoyalBlue4
    hi Title gui=bold guifg=Black
    hi Visual gui=bold guifg=Black guibg=Sienna1

    hi FoldColumn gui=none guifg=Black guibg=Wheat2
    hi Folded gui=none guifg=Black guibg=Wheat1
    hi StatusLine gui=bold guifg=Yellow guibg=Black
    hi StatusLineNC gui=none guifg=White guibg=DimGray
    hi VertSplit gui=none guifg=White guibg=DimGray
    hi Wildmenu gui=bold guifg=Black guibg=Yellow

    hi Pmenu guibg=Grey65 guifg=Black gui=none
    hi PmenuSbar guibg=Grey50 guifg=fg gui=none
    hi PmenuSel guibg=Yellow guifg=Black gui=none
    hi PmenuThumb guibg=Grey75 guifg=fg gui=none

    hi IncSearch gui=none guifg=White guibg=Black
    hi Search gui=none guifg=Black guibg=Yellow

    hi MoreMsg gui=bold guifg=ForestGreen
    hi Question gui=bold guifg=ForestGreen
    hi WarningMsg gui=bold guifg=Red

    hi Comment gui=bold,italic guifg=Red
    hi Error gui=none guifg=White guibg=LightRed
    hi Identifier gui=none guifg=Sienna4
    hi Special gui=none guifg=RoyalBlue4
    hi PreProc gui=none guifg=RoyalBlue3
    hi Todo gui=bold guifg=Black guibg=Yellow
    hi Type gui=bold guifg=RoyalBlue4
    hi Underlined gui=underline guifg=Blue

    hi Boolean gui=bold guifg=ForestGreen
    hi Constant gui=none guifg=ForestGreen
    hi Number gui=bold guifg=ForestGreen
    hi String gui=none,italic guifg=ForestGreen

    hi Label gui=bold,underline guifg=Sienna4
    hi Statement gui=bold guifg=Sienna4

    hi htmlBold gui=bold
    hi htmlItalic gui=italic
    hi htmlUnderline gui=underline
    hi htmlBoldItalic gui=bold,italic
    hi htmlBoldUnderline gui=bold,underline
    hi htmlBoldUnderlineItalic gui=bold,underline,italic
    hi htmlUnderlineItalic gui=underline,italic

	hi pythonExceptions gui=bold guifg=#ff4200
	hi pythonTripleString gui=bold,italic guifg=#980050
	hi pythonStatement gui=bold guifg=#2500ff
	hi pythonException gui=bold guifg=#2500ff
	hi pythonConditional gui=bold guifg=#2500ff
	hi pythonOperator gui=bold guifg=#2500ff
	hi pythonRepeat gui=bold guifg=#2500ff
	hi pythonFunction gui=bold
	hi pythonDocString gui=bold,italic guifg=DarkMagenta
	hi pythonDisabled gui=bold,italic guifg=DarkGray

	hi texSectioning gui=bold,italic,underline guifg=Black guibg=LightYellow
	hi texPythonDelimiter gui=bold,underline guifg=DarkGreen

endif
