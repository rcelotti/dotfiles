" .vimrc
" Author: Roberto Celotti
" Source: https://github.com/rcelotti/dotfiles.git

" Preamble {{{

filetype on
filetype plugin on
filetype indent on
set nocompatible

" Set mapleader to a more accessible key
let mapleader = "ò"

" }}}

" Vundle plugin installer {{{

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required! 
Bundle 'gmarik/vundle'

" fugitive.vim may very well be the best Git wrapper of all time
Bundle 'tpope/vim-fugitive.git'

" function library (used by other plugin for example FuzzyFinder)
"Bundle 'vim-scripts/L9.git'

" pathogen.vim makes it super easy to install plugins 
" and runtime files in their own private directories
" (if you don't like vundle)
"Bundle 'tpope/vim-pathogen.git'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more
Bundle 'tpope/vim-surround.git'

" Python-mode is a vim plugin that allows you to use the pylint, rope, 
" pydoc, pyflakes, pep8, mccabe libraries in vim to provide features 
" like python code looking for bugs, refactoring and some other useful things.
Bundle 'klen/python-mode.git'

" This plugin provides several pairs of bracket maps. 
Bundle 'tpope/vim-unimpaired.git'                    

" This script is designed to switch between companion files
" <leader>ol <leader>oh
Bundle 'derekwyatt/vim-fswitch.git'

" FuzzyFinder provides convenient ways to quickly reach the 
" buffer/file/command/bookmark/tag you want
" <leader>ff <leader>fb
"Bundle 'vim-scripts/FuzzyFinder.git'

" The Command-T plug-in provides an extremely fast, intuitive mechanism 
" for opening files with a minimal number of keystrokes
"   <leader>t
"Bundle 'git://git.wincent.com/command-t.git'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
" Activate with <C-p>
"   <leader>ff  find file
"   <leader>fr  find recent file
"   <leader>fb  find buffer
"   <leader>fm  find mixed (file,recent,buffer)
" Once CtrlP is open:
"   Press <F5> to purge the cache for the current directory to get new files, 
"       remove deleted files and apply new ignore options.
"   Press <c-f> and <c-b> to cycle between modes.
"   Press <c-d> to switch to filename only search instead of full path.
"   Press <c-r> to switch to regexp mode.
"   Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
"   Use <c-y> to create a new file and its parent directories.
"   Use <c-z> to mark/unmark multiple files and <c-o> to open them.
"   Submit two or more dots .. to go up the directory tree by one 
"       or multiple levels.
Bundle 'kien/ctrlp.vim.git'

" nerd tree ...
Bundle 'scrooloose/nerdtree.git'

" Conque is a Vim plugin which allows you to run interactive programs
" (such as a bash shell in linux) inside vim
Bundle 'rson/vim-conque.git'

" colors theme
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'flazz/vim-colorschemes'
Bundle 'ColorSchemeMenuMaker'
Bundle 'desert-warm-256'

" minibufexpl.vim - Elegant buffer explorer - takes very little screen space
"Bundle 'fholgado/minibufexpl.vim.git'

" clang_complete - Vim plugin that use clang for completing C/C++ code
Bundle 'Rip-Rip/clang_complete.git'

" If you've ever tried using the "." command after a plugin map, you were likely disappointed to discover it only 
" repeated the last native command inside that map, rather than the map as a whole.  
" That disappointment ends today.  
" Repeat.vim remaps "." in a way that plugins can tap into it.
Bundle 'tpope/vim-repeat.git'

" This script is based on the eclipse Task List. It will search the file for FIXME, TODO, and XXX (or a custom list)
" and put them in a handy list for you to browse which at the same time will update the 
" location in the document so you can see exactly where the tag is located
Bundle 'vim-scripts/TaskList.vim.git'

" This plugin is a front for the Perl module App::Ack. 
" Ack can be used as a replacement for 99% of the uses of grep. 
" This plugin will allow you to run ack from vim, and shows the results in a split window.
Bundle 'mileszs/ack.vim.git'

" This Vim plugin will pull C++ ptototypes into the implementation file
Bundle 'derekwyatt/vim-protodef.git'

" fast moving <leader><leader>w W b B j k
Bundle 'Lokaltog/vim-easymotion' 

" Bundle 'rstacruz/sparkup'

" Supertab is a vim plugin which allows you to use <Tab> for all your insert 
" completion needs (:help ins-completion).
Bundle 'ervandew/supertab.git'

" Tabularize text.
"  :Tabularize /,/r1c1l0
"
"            Some short phrase , some other phrase
"    A much longer phrase here , and another long phrase
Bundle 'godlygeek/tabular.git'

"Bundle 'drmingdrmer/xptemplate.git'

" snippets
Bundle 'msanders/snipmate.vim.git'

" comment lines
"   gcc         => comment current line
"   gc{motion}  => comment lines 
" Bundle 'tomtom/tcomment_vim.git'

" comment lines
"   <leader>cc         => comment current line
"   <leader>cs         => comment sexily
"   <leader>cA         => add // at the end and go insert
Bundle 'scrooloose/nerdcommenter.git'

" Tagbar is a vim plugin for browsing the tags of source code files
" F9 == toggle
Bundle 'majutsushi/tagbar.git'

" SrcExpl (Source Explorer) is a source code explorer that provides 
" context for the currently selected keyword by displaying the function 
" or type definition or declaration in a separate window
Bundle 'wesleyche/SrcExpl.git'

" bottom line on steroids :)
Bundle 'Lokaltog/vim-powerline.git'

" Indent Guides is a plugin for visually displaying indent levels in Vim.
" Toggle with 
"   <leader>ig
Bundle 'mutewinter/vim-indent-guides.git'

" Working with variants of a word
" Abbreviation
"   :Abolish {despa,sepe}rat{e,es,ed,ing,ely,ion,ions,or}  {despe,sepa}rat{}
" Substitution
"   :Subvert/child{,ren}/adult{,s}/g
" Coercion
"   crs (coerce to snake_case)
"   crm (coerce to MixedCase)
"   crc (coerce to camelCase)
"   cru (coerce to UPPER_CASE)
Bundle 'tpope/vim-abolish'

" A Vim plugin that adds a :Qargs utility command, for populating 
" the argument list from the files in the quickfix list.
"   :Ggrep findme
"   :Qargs | argdo %s/findme/replacement/gc | update
Bundle 'nelstrom/vim-qargs'

" load local .lvimrc files
Bundle 'embear/vim-localvimrc' 

" Gundo is a Vim plugin for visualizing your undo tree to make it usable.
Bundle 'sjl/gundo.vim.git'

" shows marks
" Bundle 'kshenoy/vim-signature' 

" create doxygen documentation
Bundle 'DoxygenToolkit.vim'

" }}}

" Pathogen (not used right now) {{{

" Get pathogen up and running
"runtime bundle/vim-pathogen/autoload/pathogen.vim
"filetype off 
"call pathogen#infect()
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

" }}}

" Global Stuff {{{

"set exrc
set modelines=0

" set encoding to utf-8 for buffers,files etc
set encoding=utf-8
set fenc=utf-8
set termencoding=utf-8

" use indentation of previous line
set autoindent

" show the current mode at the bottom of the screen
set showmode

" show the current command in the lower right corner
set showcmd

" make sure that unsaved buffers that are to be put in the background are 
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" disable beep ...
set visualbell

" this is a fast tty :)
set ttyfast

" allow backspacing over indent, eol, and the start of an insert
set backspace=2
set backspace=indent,eol,start

" show numbers
set number

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" keep some stuff in the history
set history=1000
set list

" set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set listchars=tab:▸\ ,extends:❯,precedes:❮

if has("unix")
    set shell=/bin/bash\ --login
else
    set shell=ksh.exe
endif

" Don't update the display while executing macros
set lazyredraw

" show line breaks
set showbreak=↪

" splitting a window will put the new window below the current one
" or to the right
set splitbelow
set splitright

" characters in separators
set fillchars=diff:⣿,vert:│

" automatically read a file that has changed on disk
"set autoread

set shiftround
set title
set linebreak

" syntax coloring lines that are too long just slows down everything
set synmaxcol=1024

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

" Make Vim able to edit crontab files again.
"set backupskip=/tmp/*,/private/tmp/*"

" Better Completion
set complete=.,w,b,u,t
" Same as default except that I remove the 'u' option
"set complete=.,w,b,t
"set completeopt=longest,menuone,preview

" Save when losing focus
"au FocusLost * :silent! wall

" Resize splits when the window is resized
au VimResized * :wincmd =

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set softtabstop=4
set expandtab        " expand tabs to spaces
set formatoptions=qrn1
" use intelligent indentation for C
set smartindent    

" intelligent C/C++ comments
set comments=sl:/*,mb:\ *,elx:\ */

" Printing options
set printoptions=header:0,duplex:long,paper:a4

" set the search scan to wrap lines
set wrapscan

" set ignore case search
set ignorecase
"set noignorecase

set smartcase
"set gdefault

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8
set sidescroll=1
set sidescrolloff=10

" Allow the cursor to go in to "invalid" places
set virtualedit=all
set virtualedit+=block

" set the forward slash to be the slash of note. Backslashes suck
set shellslash
" make command line two lines high
set ch=2

set cpoptions=B     " backslash has no special meaning in mappings
set cpoptions+=c    " searching continues at the end of any match
set cpoptions+=e    " when executing a register with ":@r", always add a <CR>
set cpoptions+=s    " Set buffer options when entering the buffer for the first time
set cpoptions+=$    " When making a change to one line, don't redisplay the line, but put a '$' at the end of the changed text. 

" Enable search highlighting
set hlsearch

" Hide the mouse pointer while typing
set mousehide

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" Movements begin-end easier to type (I never use the default behavior.)
noremap H ^
noremap L $
vnoremap L g_

" bash-like mapping in insert mode
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A

" gi already moves to "last place you exited insert mode", so we'll map gI to
" something similar: move to last change
nnoremap gI `.

" Formatting
nnoremap Q gqip
vnoremap Q gq

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" Split line (sister to [J]oin lines)
" The normal use of S is covered by cc, so don't worry about shadowing it.
nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w

" control-up and control-down to drag lines in any mode
noremap <C-Down> :m+<CR>
noremap <C-Up> :m-2<CR>
inoremap <C-Down> <Esc>:m+<CR>
inoremap <C-Up> <Esc>:m-2<CR>
vnoremap <C-Down> :m'>+<CR>gv
vnoremap <C-Up> :m-2<CR>gv

" Setting this below makes it sow that error messages don't disappear after one second on startup.
"set debug=msg

" This is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
"
" i.e. for the "<leader>d" command, there is a "timeoutlen" wait period between the
"      "<leader>" key and the "d" key.  If the "d" key isn't pressed before the
"      timeout expires, one of two things happens: The "<leader>" command is executed
"      if there is one (which there isn't) or the command aborts.
set timeoutlen=500

" Disable encryption (:X)
set key=

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" wrap lines at 120 chars. 80 is somewhat antiquated with nowadays displays.
set textwidth=120

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Incrementally match the search
set incsearch

" Add the unnamed register to the clipboard
set clipboard+=unnamed

" setup grep options (line numbers and filename)
set grepprg=grep\ -nH\ $*

" Show relative row numbers
"set relativenumber

" make line (if necessary override in local .vimrc file)
set makeprg=make\ -C\ ./build\ VERBOSE=1


" }}}

" Line Return {{{

" Make sure Vim returns to the same line when you reopen a file.
" Thanks, Amit
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" }}}

" Wildmenu completion {{{

" Make the command-line completion better
set wildmenu
" mimic bash autocompletion
"set wildmode=longest,list

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

set wildignore+=*.luac                           " Lua byte code

set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code

set wildignore+=*.orig                           " Merge resolution files

" Clojure/Leiningen
set wildignore+=classes
set wildignore+=lib

" }}}

" Fonts and Colors {{{

if has("mac")
    let g:main_font = "Anonymous\\ Pro:h16"
    let g:small_font = "Anonymous\\ Pro:h2"
else
    let g:main_font = "DejaVu\\ Sans\\ Mono\\ 10"
    let g:small_font = "DejaVu\\ Sans\\ Mono\\ 2"
    "set gfn=Consolas\ Bold\ 10 
    "set gfn=Consolas\ Normal\ 10 
endif

" When the terminal has colors, enable syntax+search highlighting
if &t_Co > 2 || has("gui_running")
    " Enable 256 colors in console mode
    set t_Co=256
    " Switch on syntax highlighting.
    syntax on
    set background=light
    " load color scheme
    "colorscheme wombat256mod
    "colorscheme default
    colorscheme solarized
    exe "set guifont=" . g:main_font
endif

if has("gui_running")
    if !exists("g:vimrcloaded")
        winpos 0 0
        set lines=40
        set columns=160
        let g:vimrcloaded = 1
    endif
endif

" }}}

" Plugin settings {{{

" Ctrl-P {{{
let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files = 50000
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
nnoremap <silent> <leader>ff :CtrlP<cr>
nnoremap <silent> <leader>fb :CtrlPBuffer<cr>
nnoremap <silent> <leader>fr :CtrlPMRU<cr>
nnoremap <silent> <leader>fm :CtrlPMixed<cr>
" }}}

" Gundo {{{
nnoremap <F5> :GundoToggle<CR>
let g:gundo_debug = 1
let g:gundo_preview_bottom = 1
let g:gundo_tree_statusline = "Gundo"
let g:gundo_preview_statusline = "Gundo Preview"
" }}}

" NERD Tree {{{
" Toggle the NERD Tree on an off with <leader>n
nnoremap <silent> <leader>n :NERDTreeToggle<CR>

let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['.vim$', '\~$']

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 0
let NERDTreeShowHidden = 1
let NERDTreeKeepTreeInNewTab = 1
let NERDTreeShowBookmarks = 1
" let NERDTreeQuitOnOpen=1
" }}}

" Powerline {{{
let g:Powerline_symbols = 'unicode'
"let g:Powerline_symbols = 'fancy'
"let g:Powerline_cache_enabled = 1
"let g:Powerline_colorscheme = 'badwolf'
" }}}

" Localvimrc {{{
"let g:localvimrc_whitelist=''
let g:localvimrc_sandbox=0
" }}}

" DoxygenToolkit {{{ 
" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
let g:DoxygenToolkit_authorName="Roberto Celotti <roberto.celotti@gmail.com>" 
"}}}

" SrcExpl Settings {{{
" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to Avoid conflicts, the Source Explorer should know what plugins 
" // are using buffers. And you need add their bufname into the list below 
" // according to the command ":buffers!" 
let g:SrcExpl_pluginList = [ 
        \ "__Tag_List__", 
        \ "__Tagbar__", 
        \ "_NERD_tree_", 
        \ "NERD_tree_1", 
        \ "-MiniBufExplorer-", 
        \ "Source_Explorer" 
    \ ] 

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" //  create/update a tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F11>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F11>" 

"}}}

" Conque Settings {{{
let g:ConqueTerm_FastMode = 1
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_PromptRegex = '^-->'
let g:ConqueTerm_TERM = 'xterm'
"}}}

" SuperTab Settings {{{
" option for context aware completion
let g:SuperTabDefaultCompletionType = "context"
"}}}

" XPTemplate Settings (not used) {{{
" Add xptemplate global personal directory value
"if has("unix")
"    set runtimepath+=~/.vim/xpt-personal
"endif
"let g:xptemplate_brace_complete = ''
""let g:xptemplate_key = '<C-z>'
"imap <silent> <C-space> <C-\>
"}}}

" FuzzyFinder Settings (not used) {{{
"let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|class|meta|lock|orig|jar|swp)$|/test/data\.|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
"let g:fuf_splitPathMatching = 0
"let g:fuf_maxMenuWidth = 110
"let g:fuf_timeFormat = ''
"nmap <silent> <leader>fv :FufFile ~/.vim/<cr>
"nmap <silent> <leader>fb :FufBuffer<cr>
"nmap <silent> <leader>ff :FufFile<cr>
"nmap <silent> <leader>fc :FufMruCmd<cr>
"nmap <silent> <leader>fm :FufMruFile<cr>
"nmap <silent> <leader>fp :FufFile ~/git/*<cr>
"}}}

" Sparkup Settings (not used) {{{
" You can write HTML in a CSS-like syntax, and have Sparkup handle the
" expansion to full HTML code.
" http://github.com/rstacruz/sparkup
" let g:sparkupExecuteMapping = '<c-tab>'
" let g:sparkupNextMapping = '<tab><tab>'
" }}}

" }}}

" Edit "next" and "last" {{{

onoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
xnoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
onoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
xnoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>

onoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
xnoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
onoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
xnoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>

function! s:NextTextObject(motion, dir)
    let c = nr2char(getchar())

    if c ==# "b"
        let c = "("
    elseif c ==# "B"
        let c = "{"
    elseif c ==# "r"
        let c = "["
    endif

    exe "normal! ".a:dir.c."v".a:motion.c
endfunction

" }}}

" Highlight Word {{{
" From Author: Steve Losh <steve@stevelosh.com>
" Source: http://bitbucket.org/sjl/dotfiles/src/tip/vim/
"
" This mini-plugin provides a few mappings for highlighting words temporarily.
"
" Sometimes you're looking at a hairy piece of code and would like a certain
" word or two to stand out temporarily.  You can search for it, but that only
" gives you one color of highlighting.  Now you can use <leader>N where N is
" a number from 1-6 to highlight the current word in a specific color.

function! HiInterestingWord(n) " {{{
    " Save our location.
    normal! mz

    " Yank the current word into the z register.
    normal! "zyiw

    " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
    let mid = 86750 + a:n

    " Clear existing matches, but don't worry if they don't exist.
    silent! call matchdelete(mid)

    " Construct a literal pattern that has to match at boundaries.
    let pat = '\V\<' . escape(@z, '\') . '\>'

    " Actually match the words.
    call matchadd("InterestingWord" . a:n, pat, 1, mid)

    " Move back to our original location.
    normal! `z
endfunction " }}}

" Mappings {{{

nnoremap <silent> <leader>1 :call HiInterestingWord(1)<cr>
nnoremap <silent> <leader>2 :call HiInterestingWord(2)<cr>
nnoremap <silent> <leader>3 :call HiInterestingWord(3)<cr>
nnoremap <silent> <leader>4 :call HiInterestingWord(4)<cr>
nnoremap <silent> <leader>5 :call HiInterestingWord(5)<cr>
nnoremap <silent> <leader>6 :call HiInterestingWord(6)<cr>

" }}}

" Default Highlights {{{

hi def InterestingWord1 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
hi def InterestingWord2 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
hi def InterestingWord3 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
hi def InterestingWord4 guifg=#000000 ctermfg=16 guibg=#b88853 ctermbg=137
hi def InterestingWord5 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
hi def InterestingWord6 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=195

" }}}

" }}}

" Environments (GUI/Console) {{{
if has('gui_running')
    " GUI Vim

    " set the gui options the way I like
    set guioptions+=a
    set guioptions+=c
    set guioptions+=g
    set guioptions+=m  "menu bar
    set guioptions-=T  "toolbar
    set guioptions+=r  "right-hand scroll bar

    highlight SpellBad term=underline gui=undercurl guisp=Orange

    " Different cursors for different modes.
    "set guicursor=n-c:block-Cursor-blinkon0
    "set guicursor+=v:block-vCursor-blinkon0
    "set guicursor+=i-ci:ver60-iCursor

else
    " Console Vim
endif

" mouse support
if has('mouse')
    set mouse=a
endif

" }}}

" Set folding properties {{{
"set foldmethod=indent
"set foldmethod=syntax
set foldmethod=marker

set foldlevel=99
" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

function! MyFoldText() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('    ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 - len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction " }}}

set foldtext=MyFoldText()

" Filetype-specific {{{

" C/C++ {{{

augroup ft_cxx
    au!
    au FileType c setlocal foldmethod=syntax
    au FileType cpp setlocal foldmethod=syntax
augroup END

" }}}

" CSS and LessCSS {{{

augroup ft_css
    au!

    au BufNewFile,BufRead *.less setlocal filetype=less

    au Filetype less,css setlocal foldmethod=marker
    au Filetype less,css setlocal foldmarker={,}
    au Filetype less,css setlocal omnifunc=csscomplete#CompleteCSS
    au Filetype less,css setlocal iskeyword+=-

    " Use <leader>S to sort properties.  Turns this:
    "
    "     p {
    "         width: 200px;
    "         height: 100px;
    "         background: red;
    "
    "         ...
    "     }
    "
    " into this:

    "     p {
    "         background: red;
    "         height: 100px;
    "         width: 200px;
    "
    "         ...
    "     }
    au BufNewFile,BufRead *.less,*.css nnoremap <buffer> <localleader>S ?{<CR>jV/\v^\s*\}?$<CR>k:sort<CR>:noh<CR>

    " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
    " positioned inside of them AND the following code doesn't get unfolded.
    au BufNewFile,BufRead *.less,*.css inoremap <buffer> {<cr> {}<left><cr><space><space><space><space>.<cr><esc>kA<bs>
augroup END

" }}}

" Django {{{

augroup ft_django
    au!

    au BufNewFile,BufRead urls.py           setlocal nowrap
    au BufNewFile,BufRead urls.py           normal! zR
    au BufNewFile,BufRead dashboard.py      normal! zR
    au BufNewFile,BufRead local_settings.py normal! zR

    au BufNewFile,BufRead admin.py     setlocal filetype=python.django
    au BufNewFile,BufRead urls.py      setlocal filetype=python.django
    au BufNewFile,BufRead models.py    setlocal filetype=python.django
    au BufNewFile,BufRead views.py     setlocal filetype=python.django
    au BufNewFile,BufRead settings.py  setlocal filetype=python.django
    au BufNewFile,BufRead settings.py  setlocal foldmethod=marker
    au BufNewFile,BufRead forms.py     setlocal filetype=python.django
    au BufNewFile,BufRead common_settings.py  setlocal filetype=python.django
    au BufNewFile,BufRead common_settings.py  setlocal foldmethod=marker
augroup END

" }}}

" HTML, Django, Jinja, Dram {{{

" let g:html_indent_tags = ['p', 'li']

augroup ft_html
    au!

    au BufNewFile,BufRead *.html setlocal filetype=htmldjango
    au BufNewFile,BufRead *.dram setlocal filetype=htmldjango

    au FileType html,jinja,htmldjango setlocal foldmethod=manual

    " Use <localleader>f to fold the current tag.
    au FileType html,jinja,htmldjango nnoremap <buffer> <localleader>f Vatzf

    " Use <localleader>t to fold the current templatetag.
    au FileType html,jinja,htmldjango nmap <buffer> <localleader>t viikojozf

    " Indent tag
    au FileType html,jinja,htmldjango nnoremap <buffer> <localleader>= Vat=

    " Django tags
    au FileType jinja,htmldjango inoremap <buffer> <c-t> {%<space><space>%}<left><left><left>

    " Django variables
    au FileType jinja,htmldjango inoremap <buffer> <c-b> {{<space><space>}}<left><left><left>
augroup END

" }}}

" Java {{{

augroup ft_java
    au!

    au FileType java setlocal foldmethod=marker
    au FileType java setlocal foldmarker={,}
augroup END

" }}}

" Javascript {{{

augroup ft_javascript
    au!

    au FileType javascript setlocal foldmethod=marker
    au FileType javascript setlocal foldmarker={,}

    " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
    " positioned inside of them AND the following code doesn't get unfolded.
    au Filetype javascript inoremap <buffer> {<cr> {}<left><cr><space><space><space><space>.<cr><esc>kA<bs>
augroup END

" }}}

" Mail {{{

augroup ft_mail
    au!

    au Filetype mail setlocal spell
augroup END

" }}}

" Mercurial {{{

augroup ft_mercurial
    au!

    au BufNewFile,BufRead *hg-editor-*.txt setlocal filetype=hgcommit
augroup END

" }}}

" Python {{{

augroup ft_python
    au!

    au FileType python setlocal define=^\s*\\(def\\\\|class\\)
    au FileType man nnoremap <buffer> <cr> :q<cr>

    " Jesus tapdancing Christ, built-in Python syntax, you couldn't let me
    " override this in a normal way, could you?
    au FileType python if exists("python_space_error_highlight") | unlet python_space_error_highlight | endif

    au FileType python iabbrev <buffer> afo assert False, "Okay"
augroup END

" }}}

" }}}

"inoremap <f9> <c-o>za
"nnoremap <F9> za
"onoremap <F9> <C-C>za
"vnoremap <F9> zf
nnoremap <space> za
nnoremap <C-space> zM

" }}}

" spellcheck dictionary {{{
set dictionary=/usr/share/dict/italian
set spellfile=~/.vim/spellfile.add
"set spellfile=~/.vim/custom-dictionary.utf-8.add
" Don't move on * or #
nnoremap * *<c-o>
nnoremap # #<c-o>
"}}}

" Set the status line the way i like it {{{
if has('statusline')
    "set statusline=%f\ %m\ %r%{fugitive#statusline()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
    "set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
    set statusline=%<%F\    " Filename
    set statusline+=%w%h%m%r " Options
    set statusline+=%{fugitive#statusline()} "  Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " filetype
    "set statusline+=\ [%{getcwd()}]  " current dir
    set statusline+=\ [\%03.3b/0x\%02.2B] " ASCII / Hexadecimal value of char
    set statusline+=%=%-10.(%l/%L,%c%V%)\ %p%%  " Right aligned file nav info
endif
"}}}

" Visual Mode */# from Scrooloose {{{

function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction

vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR><c-o>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR><c-o>

" }}}

" Keyboard mapping {{{

" Function keys {{{

" in normal mode F2 will save the file
nnoremap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
inoremap <F2> <ESC>:w<CR>a

" goto next error with <F4>
nnoremap <F4> :cnext<cr>zvzz
" goto prev error with <S-F4>
nnoremap <S-F4> :cprev<cr>zvzz 

" buffer delete
nnoremap <silent> <C-F4> :bdelete<CR>

" create doxygen comment                          
noremap <F6> :Dox<CR>

" build using makeprg with <F8>
nnoremap <F8> :make<CR>
" in insert mode F8 will exit insert, save, and make
inoremap <F8> <ESC>:w<CR>:make<CR>
" make clean all using makeprg with <S-F8>
noremap <S-F8> :make clean all<CR>

" toggle tagbar
noremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_autoclose = 1

" toggle source explorer
noremap <silent> <S-F9> :SrcExplToggle<CR>

noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize +10<CR>

" goto definition with F12
nnoremap <F12> <C-]>

" }}}

" edit in hex
"   open a binary file 
"   hit <leader>eh 
"   edit 
"   hit <leader>en
"nnoremap <silent> <leader>eh :%!xxd<CR>
"nnoremap <silent> <leader>en :%!xxd -r<CR>

" Wipe out all buffers
nnoremap <silent> <leader>wa :1,9000bwipeout<cr>

" Toggle paste mode
nnoremap <silent> <leader>p :set invpaste<CR>:set paste?<CR>

" cd to the directory containing the file in the buffer
nnoremap <silent> <leader>cd :lcd %:h<CR>
nnoremap <silent> <leader>md :!mkdir -p %:p:h<CR>

" Turn off that stupid highlight search
nnoremap <silent> <leader>h :nohlsearch<CR>

" The following beast is something i didn't write... it will return the 
" syntax highlighting group that the current "thing" under the cursor
" belongs to -- very useful for figuring out what to change as far as 
" syntax highlighting goes.
nnoremap <silent> <leader>qq :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Make shift-insert work like in Xterm
noremap <S-Insert> <MiddleMouse>
noremap! <S-Insert> <MiddleMouse>

" set text wrapping toggles
nnoremap <silent> <leader>ww :set invwrap<CR>:set wrap?<CR>

" function navigation: these work only if functions begin at column 0!
noremap <C-M-j> /^[^[:blank:]]\+.\+{<CR>:noh<CR>           
noremap <C-M-k> ?^[^[:blank:]]\+.\+{<CR>:noh<CR>
"noremap <silent> <C-M-j> /^\b*\w\+ \+\w\+ *(.*) *[{\n]\{1\}<CR>:noh<CR> 
"noremap <silent> <C-M-k> ?^\b*\w\+ \+\w\+ *(.*) *[{\n]\{1\}<CR>:noh<CR> 
"noremap <silent> <C-M-j> /\v^[[:blank:]]*[[:alpha:]:.]+[[:blank:]]+[[:alpha:]]+[[:blank:]]*\(.*\)[[:blank:];{]*<CR>:noh<CR> 
"noremap <silent> <C-M-j> ?\v^[[:blank:]]*[[:alpha:]:.]+[[:blank:]]+[[:alpha:]]+[[:blank:]]*\(.*\)[[:blank:];{]*<CR>:noh<CR> 

" in diff mode we use the spell check keys for merging
if &diff
    " diff settings
    map <M-Down> ]c
    map <M-Up> [c
    map <M-Left> do
    map <M-Right> dp
    map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
else
    " spell settings
    :setlocal spell spelllang=it,en
    " next/prev spellcheck error
    map <M-Down> ]s
    map <M-Up> [s
    map <m-j> ]s
    map <m-k> [s
    " enable/disable spellcheck
    nmap <leader>sp :setlocal spell! spelllang=it,en<CR>
endif

" window navigation
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h

" todo list
map <leader>td <Plug>TaskList

" execute current text in bash
"map <C-x> :%!bash<CR>

" Maps to make handling windows a bit easier
"noremap <silent> <leader>h :wincmd h<CR>
"noremap <silent> <leader>j :wincmd j<CR>
"noremap <silent> <leader>k :wincmd k<CR>
"noremap <silent> <leader>l :wincmd l<CR>
"noremap <silent> <leader>sb :wincmd p<CR>
"noremap <silent> <leader>s8 :vertical resize 83<CR>
noremap <silent> <leader>cj :wincmd j<CR>:close<CR>
noremap <silent> <leader>ck :wincmd k<CR>:close<CR>
noremap <silent> <leader>ch :wincmd h<CR>:close<CR>
noremap <silent> <leader>cl :wincmd l<CR>:close<CR>
" noremap <silent> <leader>cc :close<CR>

" open/close quickfix window
noremap <silent> <leader>qo :copen<CR>
noremap <silent> <leader>qc :cclose<CR>

" rotate windows
noremap <silent> <leader>ml <C-W>L
noremap <silent> <leader>mk <C-W>K
noremap <silent> <leader>mh <C-W>H
noremap <silent> <leader>mj <C-W>J

" resize windows (row above movement keys)
nnoremap <silent> <M-y> <C-W><
nnoremap <silent> <M-u> <C-W>+
nnoremap <silent> <M-i> <C-W>-
nnoremap <silent> <M-o> <C-W>>

" Edit and source the .vimrc file
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

" Make horizontal scrolling easier
"nnoremap <silent> <C-o> 10zl
"nnoremap <silent> <C-i> 10zh

" Add a GUID to the current line
"imap <C-J>d <C-r>=substitute(system("uuidgen"), '.$', '', 'g')<CR>

" Search the current file for what's currently in the search register and display matches
nmap <silent> <leader>gs :vimgrep /<C-r>// %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

" Search the current file for the word under the cursor and display matches
nmap <silent> <leader>gw :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

" Search the current file for the WORD under the cursor and display matches
nmap <silent> <leader>gW :vimgrep /<C-r><C-a>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

" Swap two words
"nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Toggle fullscreen mode
"nmap <silent> <F3> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

" Underline the current line with '='
nmap <silent> <leader>u= :t.\|s/./=/g\|:nohls<cr>
nmap <silent> <leader>u- :t.\|s/./-/g\|:nohls<cr>

" Shrink the current window to fit the number of lines in the buffer.  Useful
" for those buffers that are only a few lines
"nmap <silent> <leader>sw :execute ":resize " . line('$')<cr>

" Use the bufkill plugin to eliminate a buffer but keep the window layout
"nmap <leader>bd :BD<cr>

" Use CTRL-E to replace the original ',' mapping
"nnoremap <C-E> ,

" Alright... let's try this out
" I have remapped CAPS to esc so this is not needed anymore
"imap jj <esc>

" I like jj - Let's try something else fun
"imap <leader>fn <c-r>=expand('%:t:r')<cr>
"cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" remap the right-pinky key (on italian keyboard) to simplify search with f and F
nmap <silent> à ;
nmap <silent> ° ,

" Clear the text using a motion / text object and then move the character to the
" next word
"nmap <silent> <leader>C :set opfunc=ClearText<CR>g@
"vmap <silent> <leader>C :<C-U>call ClearText(visual(), 1)<CR>

" Make the current file executable
"nmap <leader>x :w<cr>:!chmod 755 %<cr>:e<cr>

" Digraphs {{{
" Alpha
imap <c-l><c-a> <c-k>a*
" Beta
imap <c-l><c-b> <c-k>b*
" Gamma
imap <c-l><c-g> <c-k>g*
" Delta
imap <c-l><c-d> <c-k>d*
" Epslion
imap <c-l><c-e> <c-k>e*
" Lambda
imap <c-l><c-l> <c-k>l*
" Eta
imap <c-l><c-y> <c-k>y*
" Theta
imap <c-l><c-h> <c-k>h*
" Mu
imap <c-l><c-m> <c-k>m*
" Rho
imap <c-l><c-r> <c-k>r*
" Pi
imap <c-l><c-p> <c-k>p*
" Phi
imap <c-l><c-f> <c-k>f*
"}}}

" buffer next/prev
nnoremap <silent> <C-PageDown> :bn<CR> 
nnoremap <silent> <C-PageUp> :bp<CR> 

" Ack (quick grep search)
nmap <leader>a <Esc>:Ack!

"function! ClearText(type, ...)
    "let sel_save = &selection
    "let &selection = "inclusive"
    "let reg_save = @@
    "if a:0 " Invoked from Visual mode, use '< and '> marks
        "silent exe "normal! '<" . a:type . "'>r w"
    "elseif a:type == 'line'
        "silent exe "normal! '[V']r w"
    "elseif a:type == 'line'
        "silent exe "normal! '[V']r w"
    "elseif a:type == 'block'
        "silent exe "normal! `[\<C-V>`]r w"
    "else
        "silent exe "normal! `[v`]r w"
    "endif
    "let &selection = sel_save
    "let @@ = reg_save
"endfunction


" highlight matching braces
set matchtime=3
set showmatch
"inoremap } }<Left><c-o>%<c-o>:sleep 200m<CR><c-o>%<c-o>l
"inoremap ] ]<Left><c-o>%<c-o>:sleep 200m<CR><c-o>%<c-o>l
"inoremap ) )<Left><c-o>%<c-o>:sleep 200m<CR><c-o>%<c-o>l

" I don't like it when the matching parens are automatically highlighted
"let loaded_matchparen = 1
"hi MatchParen gui=reverse term=reverse

" Disable the current line and column highlight
" Don't do this - It makes window redraw slow
set nocursorline
set nocursorcolumn

" Initial path seeding
set path=
set tags=

" remap indentation to keep visual selection
vnoremap > >gv
vnoremap < <gv

" FSwitch mappings
nmap <silent> <leader>of :FSHere<CR>
nmap <silent> <leader>ol :FSRight<CR>
nmap <silent> <leader>oL :FSSplitRight<CR>
nmap <silent> <leader>oh :FSLeft<CR>
nmap <silent> <leader>oH :FSSplitLeft<CR>
nmap <silent> <leader>ok :FSAbove<CR>
nmap <silent> <leader>oK :FSSplitAbove<CR>
nmap <silent> <leader>oj :FSBelow<CR>
nmap <silent> <leader>oJ :FSSplitBelow<CR>

"}}}

" Functions {{{

if !exists('g:bufferJumpList')
    let g:bufferJumpList = {}
endif

function! MarkBufferInJumpList(bufstr, letter)
    let g:bufferJumpList[a:letter] = a:bufstr
endfunction

function! JumpToBufferInJumpList(letter)
    if has_key(g:bufferJumpList, a:letter)
        exe ":buffer " . g:bufferJumpList[a:letter]
    else
        echoerr a:letter . " isn't mapped to any existing buffer"
    endif
endfunction

function! ListJumpToBuffers()
    for key in keys(g:bufferJumpList)
        echo key . " = " . g:bufferJumpList[key]
    endfor
endfunction

function! IndentToNextBraceInLineAbove()
    :normal 0wk
    :normal "vyf(
    let @v = substitute(@v, '.', ' ', 'g')
    :normal j"vPl
endfunction

nmap <silent> <leader>ii :call IndentToNextBraceInLineAbove()<cr>

nmap <silent> <leader>mbA :call MarkBufferInJumpList(expand('%:p'), 'a')<cr>
nmap <silent> <leader>mbB :call MarkBufferInJumpList(expand('%:p'), 'b')<cr>
nmap <silent> <leader>mbC :call MarkBufferInJumpList(expand('%:p'), 'c')<cr>
nmap <silent> <leader>mbD :call MarkBufferInJumpList(expand('%:p'), 'd')<cr>
nmap <silent> <leader>mbE :call MarkBufferInJumpList(expand('%:p'), 'e')<cr>
nmap <silent> <leader>mbF :call MarkBufferInJumpList(expand('%:p'), 'f')<cr>
nmap <silent> <leader>mbG :call MarkBufferInJumpList(expand('%:p'), 'g')<cr>
nmap <silent> <leader>jbA :call JumpToBufferInJumpList('a')<cr>
nmap <silent> <leader>jbB :call JumpToBufferInJumpList('b')<cr>
nmap <silent> <leader>jbC :call JumpToBufferInJumpList('c')<cr>
nmap <silent> <leader>jbD :call JumpToBufferInJumpList('d')<cr>
nmap <silent> <leader>jbE :call JumpToBufferInJumpList('e')<cr>
nmap <silent> <leader>jbF :call JumpToBufferInJumpList('f')<cr>
nmap <silent> <leader>jbG :call JumpToBufferInJumpList('g')<cr>
nmap <silent> <leader>ljB :call ListJumpToBuffers()<cr>

function! DiffCurrentFileAgainstAnother(snipoff, replacewith)
    let currentFile = expand('%:p')
    let otherfile = substitute(currentFile, "^" . a:snipoff, a:replacewith, '')
    only
    execute "vertical diffsplit " . otherfile
endfunction

command! -nargs=+ DiffCurrent call DiffCurrentFileAgainstAnother(<f-args>)

function! RunSystemCall(systemcall)
    let output = system(a:systemcall)
    let output = substitute(output, "\n", '', 'g')
    return output
endfunction

function! HighlightAllOfWord(onoff)
    if a:onoff == 1
        :augroup highlight_all
        :au!
        :au CursorMoved * silent! exe printf('match Search /\<%s\>/', expand('<cword>'))
        :augroup END
    else
        :au! highlight_all
        match none /\<%s\>/
    endif
endfunction

noremap <leader>Ha :call HighlightAllOfWord(1)<cr>
noremap <leader>HA :call HighlightAllOfWord(0)<cr>

function! LengthenCWD()
    let cwd = getcwd()
    if cwd == '/'
        return
    endif
    let lengthend = substitute(cwd, '/[^/]*$', '', '')
    if lengthend == ''
        let lengthend = '/'
    endif
    if cwd != lengthend
        exec ":lcd " . lengthend
    endif
endfunction

"nmap <leader>ld :call LengthenCWD()<cr>

function! ShortenCWD()
    let cwd = split(getcwd(), '/')
    let filedir = split(expand("%:p:h"), '/')
    let i = 0
    let newdir = ""
    while i < len(filedir)
        let newdir = newdir . "/" . filedir[i]
        if len(cwd) == i || filedir[i] != cwd[i]
            break
        endif
        let i = i + 1
    endwhile
    exec ":lcd /" . newdir
endfunction

"nmap <leader>sd :call ShortenCWD()<cr>

function! RedirToYankRegisterF(cmd, ...)
    let cmd = a:cmd . " " . join(a:000, " ")
    redir @*>
    exe cmd
    redir END
endfunction

command! -complete=command -nargs=+ RedirToYankRegister 
            \ silent! call RedirToYankRegisterF(<f-args>)

function! ToggleMinimap()
    if exists("s:isMini") && s:isMini == 0
        let s:isMini = 1
    else
        let s:isMini = 0
    end

    if (s:isMini == 0)
        " save current visible lines
        let s:firstLine = line("w0")
        let s:lastLine = line("w$")

        " make font small
        exe "set guifont=" . g:small_font
        " highlight lines which were visible
        let s:lines = ""
        for i in range(s:firstLine, s:lastLine)
            let s:lines = s:lines . "\\%" . i . "l"

            if i < s:lastLine
                let s:lines = s:lines . "\\|"
            endif
        endfor

        exe 'match Visible /' . s:lines . '/'
        hi Visible guibg=lightblue guifg=black term=bold
        nmap <s-j> 10j
        nmap <s-k> 10k
    else
        exe "set guifont=" . g:main_font
        hi clear Visible
        nunmap <s-j>
        nunmap <s-k>
    endif
endfunction

command! ToggleMinimap call ToggleMinimap()

" I /literally/ never use this and it's pissing me off
" nnoremap <space> :ToggleMinimap<CR>

"}}}

" Auto commands {{{

augroup cr_xsd
    au!
    au BufEnter *.xsd,*.wsdl,*.xml setl tabstop=4 shiftwidth=4
    au BufEnter *.xsd,*.wsdl,*.xml setl formatoptions=crq textwidth=120 colorcolumn=120
augroup END

augroup cr_binary
    au!
    au BufReadPre   *.bin let &bin=1
    au BufReadPost  *.bin if &bin | %!xxd
    au BufReadPost  *.bin set filetype=xxd | endif
    au BufWritePre  *.bin if &bin | %!xxd -r
    au BufWritePre  *.bin endif
    au BufWritePost *.bin if &bin | %!xxd
    au BufWritePost *.bin set nomod | endif
augroup END

augroup cr_sh
    au!
    "au BufEnter *.sh setl textwidth=88 highlight OverLength ctermbg=red ctermfg=white guibg=#592929 match OverLength /\%89v.\+/
    au BufEnter *.sh setl textwidth=88 
    if exists('+colorcolumn')
        set colorcolumn=88
    else
        au BufReadPre *.sh highlight OverLength guibg=#073642
        au BufReadPre *.sh let OverLengthMatch=matchadd('OverLength', '\%>88v.\+', -1)
        "au BufWinLeave *.sh matchdelete(OverLengthMatch)
    endif
augroup END

"}}}

" Custom menu' items (not used) {{{
" "Function for commenting a block of Visually selected text
" function! Comment(fl, ll)
"     let i=a:fl
"     let comment="//"
"     while i<=a:ll
"         let cl=getline(i)
"         let cl2=comment.cl
"         call setline(i, cl2)
"         let i=i+1
"     endwhile
" endfunction
" 
" "Function for Un-Commenting a block of Visually selected text
" function! UnComment(fl, ll)
"     let i=a:fl
"     let comment="//"
"     while i<=a:ll
"         let cl=getline(i)
"         let cl2=substitute(cl, "//", "", "")
"         call setline(i, cl2)
"         let i=i+1
"     endwhile
" endfunction
" 
" "Menu items for Commenting and Un-Commenting code
" amenu 20.435 &Edit.-SEP4- :
" amenu Edit.Comment <Esc>`<:let fl=line(".")<CR>`>:let ll=line(".")<CR>:call Comment(fl, ll)<CR>
" amenu Edit.UnComment <Esc>`<:let fl=line(".")<CR>`>:let ll=line(".")<CR>:call UnComment(fl, ll)<CR>
" " Map for code comment-uncomment
" map <m-d> <Esc>`<:let fl=line(".")<CR>`>:let ll=line(".")<CR>:call Comment(fl, ll)<CR>
" map <m-s-d> <Esc>`<:let fl=line(".")<CR>`>:let ll=line(".")<CR>:call UnComment(fl, ll)<CR>
"}}} 

" constant spelling mistakes {{{
iab cosnt    const
"}}}

" setup clang {{{
let g:clang_user_options='-std=c++11 2>/dev/null || exit 0' 
let g:clang_complete_auto = 1
let g:clang_complete_copen = 0
let g:clang_complete_macros = 1
let g:clang_complete_patterns = 1
" custom build of clang
"let g:clang_exec = '~/src/llvm/build/bin/clang'
" let g:clang_exec = '/usr/bin/clang'
let g:clang_use_library = 1
"let g:clang_debug = 1
"let g:clang_library_path = '~/src/llvm/llvm/Release+Asserts/lib/'
let g:clang_library_path = '/usr/lib'
"}}}

