" Author: Roberto Celotti
" Source: https://github.com/rcelotti/dotfiles.git
set path+=**

" Wildmenu completion {{{
" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
" Version control
set wildignore+=**/.git/*
set wildignore+=**/.hg/*
set wildignore+=**/.svn/*

set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=*.orig                           " Merge resolution files
set wildignore+=classes                          " Clojure/Leiningen
set wildignore+=lib

" }}}


call plug#begin('~/.vim/plugged')

" Python code formatter 
Plug 'ambv/black'

" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'

" autocompletion
Plug 'hrsh7th/nvim-compe'

" Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
" Plug 'tjdevries/nlua.nvim'
" Plug 'tjdevries/lsp_extensions.nvim'

" Neovim Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/playground'

" Debugger Plugins
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

" THANKS BFREDL
"Plug '/home/mpaulson/personal/contextprint.nvim'

"Plug 'rust-lang/rust.vim'
"Plug 'darrikonn/vim-gofmt'

" git inside vim
Plug 'tpope/vim-fugitive'

" git commit browser
Plug 'junegunn/gv.vim'

Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'tpope/vim-dispatch'
" Plug 'theprimeagen/vim-be-good'

" Color scheme
Plug 'gruvbox-community/gruvbox'

Plug 'tpope/vim-projectionist'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'

" prettier
Plug 'sbdchd/neoformat'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more
Plug 'tpope/vim-surround.git'

" This plugin provides several pairs of bracket maps. 
Plug 'tpope/vim-unimpaired.git'                    

" This script is designed to switch between companion files
" <leader>of - Switch to the file and load it into the current window
" <leader>ol - Switch to the file and load it into the window on the right
" <leader>oh - Switch to the file and load it into the window on the left
Plug 'derekwyatt/vim-fswitch.git'

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
Plug 'kien/ctrlp.vim.git'

" nerd tree ...
" Activate with <leader>n
"Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'ryanoasis/vim-devicons'

" syntastic (Syntax Checker)
Plug 'scrooloose/syntastic'

" This script is based on the eclipse Task List.
" It will search the file for FIXME, TODO, and XXX (or a custom list)
" and put them in a handy list for you to browse which at the same time will update the 
" location in the document so you can see exactly where the tag is located
" <leader>td to open
" q inside TODO window to quit without moving the cursor
Plug 'vim-scripts/TaskList.vim.git'

" This plugin is a front for the Perl module App::Ack. 
" Activate with <leader>a
" Ack can be used as a replacement for 99% of the uses of grep. 
" This plugin will allow you to run ack from vim, and shows the results in a split window.
Plug 'mileszs/ack.vim.git'

" fast moving <leader><leader>w W b B j k
Plug 'Lokaltog/vim-easymotion' 

" comment lines
"   gcc         => comment current line
"   gc{motion}  => comment lines 
" Plug 'tomtom/tcomment_vim.git'

" comment lines
"   <leader>cc         => comment current line
"   <leader>cs         => comment sexily
"   <leader>cA         => add // at the end and go insert
Plug 'scrooloose/nerdcommenter'

" load local .lvimrc files
Plug 'embear/vim-localvimrc' 

" create doxygen documentation
" F6 == create
" Plug 'DoxygenToolkit.vim'

" bottom line on steroids :)
"Plug 'Lokaltog/vim-powerline.git'
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'

" should I try another status bar???
"  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" Plug 'hoob3rt/lualine.nvim'

call plug#end()

" let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }}
let g:vim_apm_log = 1

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1

" Set mapleader to a more accessible key in italian keyboard
let mapleader = "ò"

" show numbers
set number

" Show relative row numbers
set relativenumber

augroup toggle_relative_number
    autocmd InsertEnter * :setlocal norelativenumber
    autocmd InsertLeave * :setlocal relativenumber
augroup END

set list
" set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set listchars=tab:▸\ ,extends:❯,precedes:❮

" show line breaks
set showbreak=↪

" Round indent to multiple of 'shiftwidth'.  Applies to > and < commands
set shiftround
set title
set linebreak

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set softtabstop=4
set expandtab        " expand tabs to spaces
set formatoptions=qrn1
" use intelligent indentation for C
set smartindent    

" intelligent C/C++ comments
" set comments=sl:/*,mb:\ *,elx:\ */

" Printing options
set printoptions=header:0,duplex:long,paper:a4

" set the search scan to wrap lines
set wrapscan

" set ignore case search
set ignorecase
"set noignorecase

" Override the 'ignorecase' option if the search pattern contains upper
" case characters.
set smartcase
"set gdefault

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8
set sidescroll=1
set sidescrolloff=10

" make command line two lines high
set ch=2

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" make line (if necessary override in local .vimrc file)
set makeprg=make\ -C\ ./build\ VERBOSE=1


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

" move selected block up/down in Visual block mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" control-up and control-down to drag lines in any mode
noremap <C-Down> :m+<CR>
noremap <C-Up> :m-2<CR>
inoremap <C-Down> <Esc>:m+<CR>
inoremap <C-Up> <Esc>:m-2<CR>
vnoremap <C-Down> :m'>+<CR>gv
vnoremap <C-Up> :m-2<CR>gv


" Plug settings {{{

" Ack {{{

" Ack (quick grep search)
nmap <leader>a <Esc>:Ack!<Space>

" Ack find in files for the word under the cursor and display matches
nmap <silent> <leader>fif :Ack!<Space><C-r><C-w><CR>

" Ack find in files for the WORD under the cursor and display matches
" NOTE:no <CR> at the end because if WORD has special chars like '('
" then these must be escaped 
nmap <leader>FIF :Ack!<Space><C-r><C-a>

" }}}

" Ctrl-P {{{
let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files = 50000
"set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/build/*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|build)$'
let g:ctrlp_lazy_update = 1
nnoremap <silent> <leader>ff :CtrlP<cr>
nnoremap <silent> <leader>fb :CtrlPBuffer<cr>
nnoremap <silent> <leader>fr :CtrlPMRU<cr>
nnoremap <silent> <leader>fm :CtrlPMixed<cr>
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
"let g:Powerline_symbols = 'unicode'
"let g:Powerline_symbols = 'fancy'
"let g:Powerline_cache_enabled = 1
"let g:Powerline_colorscheme = 'badwolf'
" }}}

" Airline {{{

let g:airline_powerline_fonts = 1

let g:tmuxline_preset = 'full'

"}}}

" Localvimrc {{{
"let g:localvimrc_whitelist=''
let g:localvimrc_sandbox=0
" }}}

" DoxygenToolkit {{{ 
" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
let g:DoxygenToolkit_authorName="Roberto Celotti <roberto.celotti@gmail.com>" 
"}}}

" TaskList {{{
let g:tlTokenList = ['FIXME', 'TODO', 'XXX', 'ROBY']
"}}}

" clang {{{
" let g:clang_user_options='-std=c++11 2>/dev/null || exit 0' 
let g:clang_user_options='-std=c++11 ' 
let g:clang_snippets = 0
"let g:clang_snippets_engine = 'snipmate'
"let g:clang_snippets_engine = 'clang_complete'
" custom build of clang
"let g:clang_exec = '~/src/llvm/build/bin/clang'
" let g:clang_exec = '/usr/bin/clang'
let g:clang_use_library = 1
"let g:clang_debug = 1
"let g:clang_library_path = '~/src/llvm/llvm/Release+Asserts/lib/'
let g:clang_library_path = '/usr/lib/clang_library/'

let g:clang_auto_select=1 "select first entry in popup menu but don't insert in code
let g:clang_complete_auto=1 "auto complete after -> . and ::
let g:clang_complete_copen=0 "open quick fix on error
let g:clang_complete_hl_errors=1 " highlight errors and warnings 
let g:clang_complete_macros=1
let g:clang_complete_patterns=1
let g:clang_periodic_quickfix=0 " update quickfix periodically
let g:clang_trailing_placeholder=1 " add trailing placeholder after function
let g:clang_close_preview=0 " close preview window after completion
"let g:clang_user_options='-Wc++11-extensions -std=c++0x -I/usr/include/boost -std=c++11'
"let g:clang_snippets=1 " some magic after function ( or ,
"let g:clang_snippets_engine='snipmate'
"let g:clang_debug=1

"}}}

" syntastic {{{
let g:syntastic_loc_list_height=5
let g:syntastic_cpp_checkers=['gcc']
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_sh_shellcheck_args = "-x"
nmap <leader>err :Errors<CR>
" }}}

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

function! HiInterestingWord(n,h) " {{{
    " Save our location.
    normal! mz

    " Yank the current word into the z register.
    normal! "zyiw

    " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
    let mid = 86750 + a:n

    " Clear existing matches, but don't worry if they don't exist.
    silent! call matchdelete(mid)

    if a:h == 1 
        " Construct a literal pattern that has to match at boundaries.
        let pat = '\V\<' . escape(@z, '\') . '\>'

        " Actually match the words.
        call matchadd("InterestingWord" . a:n, pat, 1, mid)
    endif

    " Move back to our original location.
    normal! `z
endfunction " }}}

" Mappings {{{
" <leader> number number    => hilight word with group /number/
" <leader> number ò         => clear hilight for group /number/ 
nnoremap <silent> <leader>11 :call HiInterestingWord(1,1)<cr>
nnoremap <silent> <leader>1ò :call HiInterestingWord(1,0)<cr>
nnoremap <silent> <leader>22 :call HiInterestingWord(2,1)<cr>
nnoremap <silent> <leader>2ò :call HiInterestingWord(2,0)<cr>
nnoremap <silent> <leader>33 :call HiInterestingWord(3,1)<cr>
nnoremap <silent> <leader>3ò :call HiInterestingWord(3,0)<cr>
nnoremap <silent> <leader>44 :call HiInterestingWord(4,1)<cr>
nnoremap <silent> <leader>4ò :call HiInterestingWord(4,0)<cr>
nnoremap <silent> <leader>55 :call HiInterestingWord(5,1)<cr>
nnoremap <silent> <leader>5ò :call HiInterestingWord(5,0)<cr>
nnoremap <silent> <leader>66 :call HiInterestingWord(6,1)<cr>
nnoremap <silent> <leader>6ò :call HiInterestingWord(6,0)<cr>

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

" Filetype-specific settings {{{

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
    "
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

    "au BufNewFile,BufRead *.html setlocal filetype=htmldjango
    "au BufNewFile,BufRead *.dram setlocal filetype=htmldjango

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

"augroup ft_python
    "au!

    "au FileType python setlocal define=^\s*\\(def\\\\|class\\)
    "au FileType man nnoremap <buffer> <cr> :q<cr>

    "" Jesus tapdancing Christ, built-in Python syntax, you couldn't let me
    "" override this in a normal way, could you?
    "au FileType python if exists("python_space_error_highlight") | unlet python_space_error_highlight | endif

    "au FileType python iabbrev <buffer> afo assert False, "Okay"
"augroup END

" }}}

" }}}

" spellcheck dictionary {{{
set dictionary=/usr/share/dict/italian
set spellfile=~/.vim/spellfile.add
"set spellfile=~/.vim/custom-dictionary.utf-8.add
" }}}

" Folding mapping
nnoremap <space> za
nnoremap zl zr
nnoremap zh zm

" Don't move on * or #
nnoremap * *<c-o>
nnoremap # #<c-o>

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

" auto format with external program
noremap <F3> :Autoformat<CR>

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


" toggle source explorer
noremap <silent> <S-F9> :SrcExplToggle<CR>

noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize +10<CR>

" goto definition with F12
nnoremap <F12> <C-]>

" }}}

" tab bar navigation {{{
"nnoremap <C-S-tab> :tabprevious<CR>
"nnoremap <C-tab>   :tabnext<CR>
"nnoremap <C-t>     :tabnew<CR>
"inoremap <C-S-tab> <Esc>:tabprevious<CR>i
"inoremap <C-tab>   <Esc>:tabnext<CR>i
"inoremap <C-t>     <Esc>:tabnew<CR>

"nnoremap th  :tabfirst<CR>
"nnoremap tj  :tabnext<CR>
"nnoremap tk  :tabprev<CR>
"nnoremap tl  :tablast<CR>
"nnoremap tt  :tabedit<Space>
"nnoremap tn  :tabnext<Space>
"nnoremap td  :tabclose<CR>

nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap tm :tabm<Space>
nnoremap tt :tabnext<Space>
function! Tabline()
  let s = ''
  for i in range(tabpagenr('$'))
    let tab = i + 1
    let winnr = tabpagewinnr(tab)
    let buflist = tabpagebuflist(tab)
    let bufnr = buflist[winnr - 1]
    let bufname = bufname(bufnr)
    let bufmodified = getbufvar(bufnr, "&mod")

    let s .= '%' . tab . 'T'
    let s .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
    let s .= ' ' . tab .':'
    let s .= (bufname != '' ? '['. fnamemodify(bufname, ':t') . '] ' : '[No Name] ')

    if bufmodified
      let s .= '[+] '
    endif
  endfor

  let s .= '%#TabLineFill#'
  return s
endfunction
set tabline=%!Tabline()
" }}}

" Toggle paste mode
nnoremap <silent> <leader>p :set invpaste<CR>:set paste?<CR>

" cd to the directory containing the file in the buffer
nnoremap <silent> <leader>cd :lcd %:h<CR>
nnoremap <silent> <leader>md :!mkdir -p %:p:h<CR>

" Turn off that stupid highlight search
nnoremap <silent> <leader>h :nohlsearch<CR>

" set text wrapping toggles
nnoremap <silent> <leader>ww :set invwrap<CR>:set wrap?<CR>

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
    " :setlocal spell spelllang=it,en
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
nnoremap <silent> <leader>ev :e ~/.config/nvim/init.vim<CR>
nnoremap <silent> <leader>sv :so ~/.config/nvim/init.vim <bar> :doautocmd BufRead<CR>

" Underline the current line with '='
nmap <silent> <leader>u= :t.\|s/./=/g\|:nohls<cr>
nmap <silent> <leader>u- :t.\|s/./-/g\|:nohls<cr>

" remap the right-pinky key (on italian keyboard) to simplify search with f and F
nmap <silent> à ;
nmap <silent> ° ,

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

" highlight matching braces
" set matchtime=3
" set showmatch
"inoremap } }<Left><c-o>%<c-o>:sleep 200m<CR><c-o>%<c-o>l
"inoremap ] ]<Left><c-o>%<c-o>:sleep 200m<CR><c-o>%<c-o>l
"inoremap ) )<Left><c-o>%<c-o>:sleep 200m<CR><c-o>%<c-o>l

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

" }}}

" nnoremap <silent> Q <nop>
" nnoremap <leader>vwh :h <C-R>=expand("<cword>")<CR><CR>
" nnoremap <leader>bs /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR>
" nnoremap <leader>u :UndotreeShow<CR>
" nnoremap <leader>pv :Ex<CR>
" nnoremap <Leader>+ :vertical resize +5<CR>
" nnoremap <Leader>- :vertical resize -5<CR>
" nnoremap <Leader>rp :resize 100<CR>
" nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
" nnoremap <Leader>cpu a%" PRIu64 "<esc>
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
" nnoremap <leader>gt <Plug>PlenaryTestFile
"nnoremap <leader>vwm :lua require("vim-with-me").init()<CR>
"nnoremap <leader>dwm :lua require("vim-with-me").disconnect()<CR>
"nnoremap <leader>gll :let g:_search_term = expand("%")<CR><bar>:Gclog -- %<CR>:call search(g:_search_term)<CR>
"nnoremap <leader>gln :cnext<CR>:call search(_search_term)<CR>
"nnoremap <leader>glp :cprev<CR>:call search(_search_term)<CR>


" this allows to paste copyied text over current selection/search
xnoremap <leader>p "_dP

" copy to system clipboard 
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
vnoremap <leader>d "_d

inoremap <C-c> <esc>

fun! EmptyRegisters()
    let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
    for r in regs
        call setreg(r, [])
    endfor
endfun

" com! W w
nmap <leader>nn :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

