set nocompatible
filetype off

" ==============================================================================
" " set the runtime path to include Vundle and initialize
" install vundle first
set rtp+=~/.vim/vundle

" ==============================================================================
" 安装的所有插件

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" spf13-vim : Steve Francia's Vim Distribution
" Plugin 'spf13/spf13-vim'

" theme
Plugin 'tomasr/molokai'

" No-BS Python code folding for Vim 
Plugin 'tmhedberg/SimpylFold'

" Fuzzy file, buffer, mru, tag, etc finder
Plugin 'kien/ctrlp.vim'

" A vim plugin to display the indention levels with thin vertical lines
Plugin 'Yggdroot/indentLine'

" A tree explorer plugin for vim
Plugin 'scrooloose/nerdtree'

" PyLint, Rope, Pydoc, breakpoints from box.
Plugin 'klen/python-mode'

" Perform all your vim insert mode completions with Tab
Plugin 'ervandew/supertab'

" displays tags in a window, ordered by scope
Plugin 'majutsushi/tagbar'

" AngularJS with Vim
Plugin 'burnettk/vim-angular'

" an auto-close chars feature
Plugin 'Townk/vim-autoclose'

" a Git wrapper
Plugin 'tpope/vim-fugitive'

" Markdown Vim Mode
Plugin 'plasticboy/vim-markdown'

" NERDTree and tabs together in Vim, painlessly
Plugin 'jistr/vim-nerdtree-tabs'

" The ultimate vim statusline utility
Plugin 'Lokaltog/vim-powerline'

" A nicer Python indentation style for vim
Plugin 'hynek/vim-python-pep8-indent'

" comment lines in a program
"Plugin 'vim-scripts/ToggleCommentify.vim'
"Plugin 'knatten/ToggleComment'
Plugin 'toggle_comment'

" ragtag.vim: ghetto HTML/XML mappings
Plugin 'tpope/vim-ragtag'

" quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'

" CtrlP插件，类似go to definition的功能
Plugin 'tacahiroy/ctrlp-funky'

" 高亮显示匹配的标签
Plugin 'Valloric/MatchTagAlways'

" 最大化当前窗口\返回之前状态切换，在多个split窗口的非常有用
Plugin 'https://github.com/szw/vim-maximizer.git'

" 自动关闭html, xml标签
Plugin 'alvan/vim-closetag'

" 语法检查插件，写javascript配合eslint使用非常有帮助
Plugin 'scrooloose/syntastic'

" vue 语法检测
Plugin 'https://github.com/sekel/vim-vue-syntastic.git'

" vue syntax high-light
Plugin 'posva/vim-vue'

" kite
" Plugin ''

" vnote
" Plugin 'vimloo'
" Plugin 'vnote'

" color scheme
Plugin 'https://github.com/nightsense/vim-crunchbang'
Plugin 'https://github.com/reewr/vim-monokai-phoenix'

" Asynchronous syntax highlight engine for Neovim
" Plugin 'KeitaNakamura/highlighter.nvim'

call vundle#end()
" ==============================================================================

" vundle命令
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" ==============================================================================


syntax on
let g:mapleader = ","
set encoding=utf-8
set guifont=DejaVu\ Sans\ Mono\ 10

if has("mac") || has("macunix")
    set guifont=Monaco:h12
endif

"FileType support
set filetype=on
filetype plugin indent on

" indention for web languages
autocmd FileType javascript,html,css,php,vue set ai
autocmd FileType javascript,html,css,php,vue set sw=2
autocmd FileType javascript,html,css,php,vue set ts=2
autocmd FileType javascript,html,css,php,vue set sts=2
autocmd FileType javascript,css,php,vue set textwidth=79
autocmd FileType xml,tpl set textwidth=0

if has('gui_running')
" close The toolbar when use gVim
" close the scrollbar when use gVim
	set lines=63
	set columns=180
	set guioptions-=T
	set guioptions-=l
	set guioptions-=r
	set guioptions-=b

    " Let tablebel show only name of file, not the full path.
    set guitablabel=%t
	" ======================
	" paste from system clipboard
	" =====================
	set clipboard=unnamed
	vnoremap y "+y
	"vnoremap y ygv"+y
	vnoremap Y "+Y
	nnoremap p "+p
	nnoremap P "+P
	nnoremap yy yy"+yy
endif

" ===============
" solarized color
" ===============
set background=light
set t_Co=256
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
"colorscheme solarized
colorscheme molokai
let g:rehash256 = 1

" Automatic reloading of .vimrc
" autocmd! bufwritepost .vimrc source %
"
set cursorline

" Use left, right, up, down arrow to modify windows size.
nmap <C-LEFT> <C-W><
nmap <C-RIGHT> <C-W>>
nmap <C-UP> <C-W>+
nmap <C-DOWN> <C-W>-

" Remove unwanted spaces
map <leader>c :%s/\s\+$//<CR>

" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

map <leader>n <esc>:cn<CR>
map <leader>p <esc>:cp<CR>

" Quicksave command
noremap <Leader>s :update<CR>
vnoremap <Leader>s <C-C>:update<CR>
inoremap <Leader>s <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
" ========================================
" windows config
" =======================================
map <tab><tab> <C-w>w
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
"map <leader>n <esc>:tabprevious<CR>
"map <leader>m <esc>:tabnext<CR>
map <leader>t <esc>:tabnew<CR>
map <leader>w <esc>:tabclose<CR>

" tab navigation like firefox
"nmap <C-S-tab> :tabprevious<CR>
"nmap <C-tab> :tabnext<CR>
"map <C-S-tab> :tabprevious<CR>
"map <C-tab> :tabnext<CR>
"imap <C-S-tab> <Esc>:tabprevious<CR>i
"imap <C-tab> <Esc>:tabnext<CR>i
"nmap <C-t> :tabnew<CR>
"imap <C-t> <Esc>:tabnew<CR>

" map sort function to a key
"" vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Showing line numbers and length
set number  " show line numbers
set relativenumber  " show relative line numbers
set tw=79   " width of document (used by gd)
"" set nowrap  " don't automatically wrap on load
"" set fo-=t   " don't automatically wrap text when typing
"set colorcolumn=80
"highlight ColorColumn ctermbg=233
set colorcolumn=80


" Useful settings
set history=700
set undolevels=700

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" ============================================================================
" Python IDE Setup
" ============================================================================


" Settings for vim-powerline
set laststatus=2
let g:Powerline_symbols = 'fancy'

"================= rdd======================="
"set mouse=a
"set cursorcolumn


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
" ===========================================================
" CtriP
" ==========================================================
"
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*.venv/*
set wildignore+=*/coverage/*
set wildignore+=*.testrepository/*
set wildignore+=*.git/*
set wildignore+=*.ropeproject/*
let g:ctrlp_working_path_mode = 2

" set default ctrlp to ctrlpMixed
map <c-p> :CtrlPMixed<CR>
map <c-i> :CtrlPBuffer<CR>

" Settings for python-mode
"map <Leader>g :call RopeGotoDefinition()<CR> " old, not supported
let g:pymode_rope_goto_definition_bind = "<Leader>g"
let g:pymode_run = 0
let g:pymode_folding=0
let g:pymode_lint_checker="pyflakes,pep8"
let g:pymode_lint_ignore="N4,E12,E711,E712,E721,E502"
 
let g:pymode_rope_enable_shortcuts=0
let g:pymode_rope_vim_completion=0
let g:pymode_rope_extended_complete=0
"let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_goto_def_newwin="new"
let g:pymode_rope_guess_project = 1
let g:pymode_rope = 1


" =============
" tagbar
" =============
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
"let tagbar_width=25
let g:tagbar_sort = 0
map <leader>z :TagbarToggle<cr>
vmap <leader>z <esc>:TagbarToggle<cr>
imap <leader>z <esc>:TagbarToggle<cr>

" =============
" NerdTree
" ============
let g:Tlist_Use_Right_Window = 0
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeIgnore=['.pyc$[[file]]','.gitignore$[[dir]]']
let g:nerdtree_tabs_open_on_gui_startup = 1
map <F5> :NERDTreeToggle<cr>
vmap <F5> <esc>:NERDTreeToggle<cr>
imap <F5> <esc>:NERDTreeToggle<cr>
map <leader>nt :NERDTreeToggle<cr>
vmap <leader>nt <esc>:NERDTreeToggle<cr>
imap <leader>nt <esc>:NERDTreeToggle<cr>

" =================
" EasyMotion
" ================
map <leader>a <leader><leader>w

" Enable folding
"set foldmethod=syntax
"set foldlevel=99
" Enable folding with the spacebar
"nnoremap <space> za
"nnoremap <c-m> zM
"nnoremap <c-r> zR


"SimpylFold
"enable previewing of your folded classes' and functions' docstrings in the "fold text
let g:SimpylFold_docstring_preview = 1
"see your docstrings folded
let g:SimpylFold_fold_docstring = 1
"see your imports folded
let g:SimpylFold_fold_import = 0
"In order for SimpylFold to be properly loaded in certain cases
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
set foldlevel=99

map <space> za
map F zA

"set cursorcolumn

"markdown
let g:vim_markdown_folding_disabled = 1
set foldenable
set nofoldenable
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_level = 6
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_json_frontmatter = 1

" use backspace/delete
" 0 same as “:set backspace=” (Vi compatible)
" 1 same as “:set backspace=indent,eol”
" 2 same as “:set backspace=indent,eol,start”
set backspace=2


" ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" vim-maximizer
map <leader>m :MaximizerToggle<cr>

" syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers= ['eslint']
let g:syntastic_html_checkers= ['eslint']
let g:syntastic_rst_checkers = ['sphinx', 'rstcheck']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

let g:mta_filetypes = {
            \ 'html' : 1,
            \ 'xhtml' : 1,
            \ 'xml' : 1,
            \ 'jinja' : 1,
            \ 'vue' : 1,
            \ 'smarty' : 1,
            \}

" 光标回到上次关闭时的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.vue"
" make the list of non closing tags case sensitive
let g:closetag_emptyTags_caseSensitive = 1
