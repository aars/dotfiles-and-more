scriptencoding utf-8

map <Esc>[H <Home>
imap <Esc>[H <Home>
map <Esc>[F <End>
imap <Esc>[F <End>


" ---------------------------------------------------------------------
" COMMON BEHAVIOUR
" ---------------------------------------------------------------------

set nocompatible
set t_Co=256
set backspace=2
set modeline
set history=64
set nobackup
" ---------------------------------------------------------------------
" INTERFACE
" ---------------------------------------------------------------------

set cursorline
autocmd InsertLeave * se cul
autocmd InsertEnter * se nocul 

set restorescreen
set ruler
set number

" Toggle the line numbers at the left side of the window

function Toggle_number()
	if &number
		set nonumber
	else
		set number
	endif
endfunction

map <F2> :call Toggle_number()<Return>

" Keep the cursor in the near center of the screen
set scrolloff=8

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\   exe "normal g'\"" |
	\ endif

" ---------------------------------------------------------------------
" INDENTION AND OTHER FORMATTING
" ---------------------------------------------------------------------

set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
" set expandtab
set textwidth=0


" remove trailing whitespace
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,javascript autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" ---------------------------------------------------------------------
" CHARACTER ENCODING
" ---------------------------------------------------------------------

set encoding=utf-8
set termencoding=utf-8

" ---------------------------------------------------------------------
" SYNTAX HIGHLIGHTING
" ---------------------------------------------------------------------

syntax enable
set background=light
set incsearch
set hlsearch
colorscheme distinguished

filetype plugin on

set guifont=Andale\ Mono\ 8

set spelllang=nl

" Toggle the use of the spell-checker. Go from nospell -> spell/en ->
" spell/nl.

function Toggle_spell()
	if &spell
		if &spelllang == "en"
			setlocal spelllang=nl
		else
			setlocal nospell
		endif
	else
		setlocal spell
		setlocal spelllang=en
	endif
endfunction

map <F3> :call Toggle_spell()<Return>

" ---------------------------------------------------------------------
" SIMPLE ALIASES AND KEY MAPPINGS
" ---------------------------------------------------------------------

" Don't use Ex mode, use Q for formatting
map Q gq

" Yank till end of line
map <D-y> y$

" Enable spell checking and jump to first error
"map <C-o> :set spell spelllang=en<Return>gg]s

" ---------------------------------------------------------------------
" WINDOW AND TAB NAVIGATION
" ---------------------------------------------------------------------

function Win_focus()
	if winwidth(0) < 100
		100 wincmd |
	endif
	if winheight(0) < 60
		60 wincmd _
	endif
endfunction

map <C-h> <C-W>h:call Win_focus()<Return>
map <C-j> <C-W>j:call Win_focus()<Return>
map <C-k> <C-W>k:call Win_focus()<Return>
map <C-l> <C-W>l:call Win_focus()<Return>
map <C-p> <C-W>_<C-W>|

"map <S-t> :tabnew<Return>
"map <S-w> :tabclose<Return>
"map <S-h> :tabfirst<Return>
"map <S-j> :tabprevious<Return>
"map <S-k> :tabnext<Return>
"map <S-l> :tablast<Return>

" ---------------------------------------------------------------------
" AUTOMATIC VIMRC RELOADING
" ---------------------------------------------------------------------

" let vimrc = "/etc/vim/vimrc"
" let load_vimrc = "source" . vimrc
" let open_vimrc = "vnew" . vimrc

" map  <Esc>:execute load_vimrc <CR>

" ---------------------------------------------------------------------
" QUICK C/C++ COMPILE OPTIONS
" ---------------------------------------------------------------------

"topleft cwindow
"map <F12> :cnext<Return>
"map <F7> :!./main<CR>
"map <F9> :!./c<CR><CR>
"map <C-F8> :cnext<CR>

" Omni Completion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" ---------------------------------------------------------------------
" EXTERNAL COMMAND EXECUTION
" ---------------------------------------------------------------------

" Save all files and start a custom shell script called .vim in the
" current directory. The filename of the current file is passed to the
" script as the first command line argument. Before execution, the
" active directory will be set to the directory the current file resides
" in.

function Run_command()

	cd %:h
	wa      
	" if $DISPLAY != ""
		" silent !gnome-terminal -e "$PWD/.vim %"
	" else    
		silent !$PWD/.vim %
	" endif   
	echo "[command done]"
	redraw! 

endfunction

map <C-\> :call Run_command()<Return>
map <F6> :redraw!<Return> 

" ---------------------------------------------------------------------
" PROGRAMMING LANGUAGE DEPENDENT OPTIONS
" ---------------------------------------------------------------------

function Search()

	exe "normal Y"
	new
	exe "normal P"
	" .!find.sh expand("<cword>")
	"%s/\r//g

endfunction

map <F4> :call Search()<Return>

" ---------------------------------------------------------------------
" PROGRAMMING LANGUAGE DEPENDENT OPTIONS
" ---------------------------------------------------------------------

" General comments for adding/removing comments.

map <F7> <Esc>I# <Esc>j^ 
map <F8> <Esc>^2x<Esc>j^

" Set language specific options for C/C++ like languages.

function C_like()

	" formatting and indention
	"set formatoptions+=ro
	"set smartindent
	"set cindent

	map <F7> <Esc>I/* <Esc>A */<Esc>j^
	map <F8> <Esc>V:s/\/\*\s*//<CR>:s/\s*\*\///<CR>:nohl<CR>j^

	" surround the visually higklighted block of code

	map <F5>
	\ <Esc>`<ma`>mb<Esc>
	\ :'a,'bs/\/\*/{**/e<CR>
	\ :'a,'bs/\*\//**}/e<CR>
	\ `ai/*<Esc>
	\ `ba*/<Esc>
	\ :nohl<CR>

	" remove the first comment that starts above the cursor

	map <F6>
	\ <Esc>?\/\*<CR>ma<CR>/\*\/<CR>mb<Esc>
	\ :'a,'bs/{\*\{2}\s*/\/* /e<CR>
	\ :'a,'bs/\s*\*\{2}}/ *\//e<CR>
	\ `a2x
	\ `b2x
	\ :nohl<CR>

endfunction

autocmd BufRead,BufNewFile
	\ *.{c,h,cc,hh,cpp,hpp,java,js,jss,json,javascript,jscript,css,php*}
	\ call C_like()

" ---------------------------------------------------------------------
" JAVASCRIPT FUNCTIONS
" ---------------------------------------------------------------------

function JS_showAllFunctions()
  0,$yank
  new
  set syntax=JavaScript
  exec "normal P"
  g!/.*[\s:]function\(\s\+[a-zA-Z0-9_]*\)\?(/d
  %s/^\s*//
  0,$!sort
  0,$!uniq
endfunction

function JS_showAllAttributes()
  0,$yank
  new
  set syntax=JavaScript
  exec "normal P"
  g!/\s*this.[a-zA-Z0-9_]\+\s*=\s*.*;\s*$/d 
  %s/^\s*//
  %s/\s*=\s*.*;
  0,$!sort
  0,$!uniq
endfunction

function SVN_revert()
  silent !svn revert %
	echo "[command done]"
	redraw! 
endfunction

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Set language specific options for XML/XHTML like documents.

function XML_like()

	map <F9> <Esc>^yeA></<Esc>pa><Esc>I<<Esc>f>a

	" add and remove per line comments
	map <F11> <Esc>I<!-- <Esc>A --><Esc>j^
	map <F12> <Esc>^5x<Esc>$3h4x<Esc>j^

endfunction

autocmd BufRead,BufNewFile *.{xml,xsl,xhtml,html,htm}
	\ call XML_like()

" ---------------------------------------------------------------------

" vim:tw=72

execute pathogen#infect()
set rtp+=~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
" let g:miniBufExplForceSyntaxEnable=1

" Don't ask to load localvimrc's
let g:localvimrc_ask=0

" Mouse in terminal! Not till I can cp better
" set mouse=a

" Case insensitive searches, smartcase and incsearch
" set ignorecase
set smartcase
" set incsearch
:map \s :set smartcase!<CR>

" Paste mode!
let paste_mode = 0 " 0 = normal, 1 = paste

func! Paste_on_off()
   if g:paste_mode == 0
      set paste
      let g:paste_mode = 1
   else
      set nopaste
      let g:paste_mode = 0
   endif
   return
endfunc

nnoremap <silent> <F10> :call Paste_on_off()<CR>
set pastetoggle=<F10>

" Sudo make me a sandwich!
cmap w!! w !sudo tee >/dev/null %

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

let Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8/bin/ctags'
let g:tlist_javascript_settings = 'javascript;s:string;a:array;o:object;f:function'

nmap <silent> <C-T> :TlistToggle<CR>
" nmap <silent> <M-T> :TlistToggle<CR>

" Store backups and tmp files in .vim dir
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Set indentguides colors
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=233

set t_ts=]1
set t_fs=

set viminfo='1000,s1000

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ [112,       '#ffccee'],
    \ [111,    '#ffccee'],
    \ [110,    'DarkOrchid3'],
    \ [109,   'firebrick3'],
    \ [108,    'RoyalBlue3'],
    \ [107,     'SeaGreen3'],
    \ [106, 'DarkOrchid3'],
    \ [105,       'firebrick3'],
    \ [104,        'RoyalBlue3'],
    \ [111,       'SeaGreen3'],
    \ [130, 'DarkOrchid3'],
    \ [134,    'firebrick3'],
    \ [132,   'RoyalBlue3'],
    \ [131,    'SeaGreen3'],
    \ [130,     'DarkOrchid3'],
    \ [95,         'firebrick3'],
    \ ]

let g:indent_guides_auto_colors = 0

autocmd VimEnter * IndentGuidesEnable
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=233
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=0

let g:adtVimAndroidPath='/Applications/Android Studio.app/sdk'
