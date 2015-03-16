set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Autocomplete when type in insert mode
Plugin 'Shougo/neocomplcache'
"vim shell
Plugin 'Shougo/vimproc'
Plugin 'Shougo/vimshell.vim'
""NerdTree
Plugin 'scrooloose/nerdtree'
"Powerful file explorer implemented by Vim script
Plugin 'Shougo/vimfiler.vim'
""NerdCommenter
Plugin 'scrooloose/nerdcommenter'
""Sudo plugin
Plugin 'sudo.vim'
""Session manager
"Plugin 'sessionman.vim'
""erlang
Plugin 'oscarh/vimerl'
"Plugin 'aerosol/vim-erlang-skeletons'
""L9 library
Plugin 'vim-scripts/L9'
""Drawit
Plugin 'vim-scripts/DrawIt'
""easy-motion
Plugin 'Lokaltog/vim-easymotion'
""Status bar
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'bling/vim-airline'
""Markdown
Plugin 'plasticboy/vim-markdown'
""Better number control
Plugin 'myusuf3/numbers.vim'
""Highlighting css color
Plugin 'skammer/vim-css-color'
"gitv is a 'gitk clone' plugin for the text editor Vim. The goal is to give
"you a similar set of functionality as a repository viewer. Using this plugin
"you can view a repository's history including branching and merging
Plugin 'gregsexton/gitv'
""Golang
"Plugin 'jnwhiteh/vim-golang'
""go get -u github.com/nsf/gocode
""cd .vim/bundle/gocode/vim && ./update.bash
"Plugin 'nsf/gocode", {'rtp': 'vim/'}
Plugin 'fatih/vim-go'
""vimtips plugin
Plugin 'vim-scripts/Fortune-vimtips'
"Plugin 'vim-scripts/vim-pad'
"moonscript support
Plugin 'leafo/moonscript-vim'
""indent manually
"Plugin 'godlygeek/tabular'
"enable repeating supported plugin maps with ".""
Plugin 'tpope/vim-repeat'
Plugin 'vim-scripts/visualrepeat'
"substitute preview 
Plugin 'osyo-manga/vim-over'
"ack
Plugin 'mileszs/ack.vim'
"Show marks
"Plugin 'vim-scripts/ShowMarks'
"Sneak is a minimalist, versatile Vim motion plugin that jumps to any location
"specified by two characters
Plugin 'justinmk/vim-sneak'
"easy align
Plugin 'junegunn/vim-easy-align'
""visual undo plugin
Plugin 'sjl/gundo.vim'
""powerfull finder
Plugin 'FuzzyFinder'
""project plugin
Plugin 'project.tar.gz'
"lua
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
"snippet
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"vimwiki
Plugin 'vim-scripts/vimwiki'
"voom Vim Outliner of Markers
Plugin 'vim-scripts/VOoM'
"prompt function proto for c/c++
"Plugin 'mbbill/echofunc'
"AutoComplPop
"Plugin 'vim-scripts/AutoComplPop'
"html fast coding
"Moved to emmet-vim
"Plugin 'mattn/zencoding-vim'
Plugin 'mattn/emmet-vim'

"cocoa
Plugin 'msanders/cocoa.vim'
"gist.github.com
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
""git
Plugin 'tpope/vim-fugitive'
"Gitdiff info
Plugin 'airblade/vim-gitgutter'
""indent object
Plugin 'michaeljsmith/vim-indent-object'
"Splitjoin
Plugin 'AndrewRadev/splitjoin.vim'
"multiple cursors
Plugin 'terryma/vim-multiple-cursors'
"yankring
"Plugin 'vim-scripts/YankRing.vim'
"text object for argument
Plugin 'argtextobj.vim'
""auto-complete for quote
Plugin 'Raimondi/delimitMate'
""mustache template
Plugin 'juvenn/mustache.vim'
"Python
Plugin 'klen/python-mode'
""CamelCaseMotion
Plugin 'bkad/CamelCaseMotion'
""Gold ratio
"Plugin 'roman/golden-ratio'
""Snippets
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'honza/snipmate-snippets'
"Plugin 'garbas/vim-snipmate'
""SuperTab
"Plugin 'ervandew/supertab'
"AutoClose
"Plugin 'Townk/vim-autoclose'
""vimfiler, let you manage file in vim
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler'
""outline
Plugin 'h1mesuke/unite-outline'
""Indent guide
Plugin 'nathanaelkane/vim-indent-guides'
""unimpaired
Plugin 'tpope/vim-unimpaired'
""search and substitute
Plugin 'tpope/vim-abolish'
"grep, fgrep
Plugin 'yegappan/grep'
""text object for column
Plugin 'coderifous/textobj-word-column.vim'
""surround
Plugin 'tpope/vim-surround'
""Align
Plugin 'tsaleh/vim-align'
""syntastic
Plugin 'scrooloose/syntastic'
""zoomwin
Plugin 'ZoomWin'
""Command-T
" Install ruby-dev first !important
" Then go to Command-T/ruby/command-t/, run: ruby extconf.rb && make
"Plugin 'wincent/Command-T'
"Organize window
"Plugin 'spolu/dwm.vim'
""Match Tag
Plugin 'gregsexton/MatchTag'
"""tagbar
Plugin 'majutsushi/tagbar'
""Jslint
""sudo apt-get install node.js first
Plugin 'hallettj/jslint.vim'
""Highlight multi words in different colors
Plugin 'Mark--Karkat'
""Multi search
Plugin 'multisearch.vim'
""Conque execute external program
"Plugin 'Conque-Shell'
""haml
Plugin 'tpope/vim-haml'
""Narrow region
Plugin 'chrisbra/NrrwRgn'
""taglist
Plugin 'taglist.vim'
""Colorscheme
Plugin 'vim-scripts/xoria256.vim'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'altercation/solarized', {'rtp': 'vim-colors-solarized'}
Plugin 'Lucius'
Plugin 'tomasr/molokai'
Plugin 'pyte'
Plugin 'Zenburn'
Plugin 'oceandeep'
Plugin 'Ambient-Color-Scheme'
Plugin 'Liquid-Carbon'
Plugin 'rslate'
Plugin 'tpope/vim-vividchalk'
Plugin 'wgibbs/vim-irblack'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'sjl/badwolf'
Plugin 'Wombat'
Plugin 'croaker/mustang-vim'
Plugin 'candycode.vim'
Plugin 'jgdavey/vim-railscasts'
Plugin 'nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable

"SuperTab config
"let g:SuperTabRetainCompletionType=2
"let g:SuperTabDefaultCompletionType="context"
"let g:SuperTabMappingForward = '<nul>'
"let g:SuperTabMappingBackward = '<s-nul>'
"let g:SuperTabMappingForward = '<c-space>'
"let g:SuperTabMappingBackward = '<s-c-space>'
"let g:SuperTabMappingForward="<c-Tab>" 
"let g:SuperTabMappingBackward="<s-c-Tab>"


"if !has('gui_running')
    "" Compatibility for Terminal
    "let g:solarized_termtrans=1

    "if (&t_Co >= 256 || $TERM == 'xterm-256color')
        "" Do nothing, it handles itself.
    "else
        "" Make Solarized use 16 colors for Terminal support
        "let g:solarized_termcolors=16
    "endif
"endif

set background=dark
colorscheme solarized


set encoding=utf-8
set winaltkeys=no
set nobackup
set ignorecase
set smartcase
set laststatus=2
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set hlsearch
set incsearch
set noshowmatch "输入括号时候会跳转到匹配的括号一定时间
set scrolloff=3
"set scrolljump=4
set cursorline "当前行高亮，如果需要列高亮的话，使用 cursorcolumn
set number "设置行号
set ruler
"set foldenable  "开始折叠
set list
"set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
set listchars=tab:»-,nbsp:¬,trail:█,extends:»,precedes:«
set whichwrap+=<,>
set showcmd
set showmode
set wildmenu
set t_Co=256
set switchbuf=usetab
set backspace=2
"let g:pad_dir="/home/fisher/notepad"

"自动进入上次退出时候的光标位置
autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \ exe "normal! g`\"" |
                    \ endif
autocmd BufEnter * if expand('%:p') !~ '://' | lcd %:p:h | endif

" key mapping
let mapleader=','
let maplocalleader=','

"wiki
nmap <Leader>wk <Plug>VimwikiTabIndex

"gist
let g:gist_detect_filetype = 1
"let g:gist_open_browser_after_post = 1
"let g:gist_browser_command = 'chromium-browser %URL%'
let g:gist_post_private = 1
let g:gist_get_multiplefile = 1

"Fast editing of the .vimrc file
noremap <leader>rc :tabe $MYVIMRC<CR>

"Tabular setting
"noremap <leader>, :Tabularize /,<CR>
"noremap <leader>s :Tabularize / /l0<CR>
"noremap <leader>,= :Tabularize /,/r1c1l0<CR>
"noremap <leader>= :Tabularize /=<CR>
"noremap <leader>== :Tabularize /=/r1c1l0<CR>
"noremap <leader>; :Tabularize /;<CR>
"noremap <leader>;= :Tabularize /;/r1c1l0<CR>

"Easy align
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
nmap <Leader><Space> vip:EasyAlign *\<CR>
vmap <Leader><Space> :EasyAlign *\<CR>
nmap <Leader>= vip:EasyAlign =<CR>
vmap <Leader>= :EasyAlign =<CR>

"Easy motion
"hi! link EasyMotionTarget Search
"hi! link EasyMotionShade Comment

"Sneak
"nmap f <Plug>Sneak_s
"nmap F <Plug>Sneak_S
"xmap f <Plug>Sneak_s
"xmap F <Plug>Sneak_S
"omap f <Plug>Sneak_s
"omap F <Plug>Sneak_S

"gundo
nnoremap <silent> <F4> :GundoToggle<CR>

"yankring
"nnoremap <silent> <F9> :YRShow<CR>
"function! YRRunAfterMaps()
    "nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
"endfunction

"taglist
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
"let s:tlist_def_go_settings = 'go;f:func;v:var;t:type'

"Narrow region设置
let g:nrrw_topbot_leftright = 'botright'

"Tagbar设置
nnoremap <silent> <F7> :TagbarToggle<CR>

"let g:tagbar_type_go = {
    "\ 'ctagstype' : 'go',
    "\ 'kinds'     : [
        "\ 'p:package',
        "\ 'i:imports:1',
        "\ 'c:constants',
        "\ 'v:variables',
        "\ 't:types',
        "\ 'n:interfaces',
        "\ 'w:fields',
        "\ 'e:embedded',
        "\ 'm:methods',
        "\ 'r:constructor',
        "\ 'f:functions'
    "\ ],
    "\ 'sro' : '.',
    "\ 'kind2scope' : {
        "\ 't' : 'ctype',
        "\ 'n' : 'ntype'
    "\ },
    "\ 'scope2kind' : {
        "\ 'ctype' : 't',
        "\ 'ntype' : 'n'
    "\ },
    "\ 'ctagsbin'  : 'gotags',
    "\ 'ctagsargs' : '-sort -silent'
"\ }

let g:go_fmt_autosave = 0
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap gd <Plug>(go-def-vertical)
au FileType go nmap <Leader>i <Plug>(go-info)

"Command-T setting
"nnoremap <silent> <Leader>ct :CommandT<CR>
"nnoremap <silent> <Leader>cf :CommandTBuffer<CR>


imap <C-f> <Right>
imap <C-b> <Left>
nmap <S-CR> O<ESC>
nmap <CR> o<ESC>
"autocmd FileType qf noremap <buffer> <CR> <CR>

nmap <Tab> gt
nmap \ gT

"nnoremap <Right> gt
"nnoremap <Left> gT
"imap "" ""<LEFT>
"imap '' ''<LEFT>
"imap <> <><LEFT>
"imap () ()<LEFT>
"imap {} {}<LEFT>
"imap [] []<LEFT>
"cmap "" ""<LEFT>
"cmap '' ''<LEFT>
"cmap <> <><LEFT>
"cmap () ()<LEFT>
"cmap {} {}<LEFT>
"cmap [] []<LEFT>

"cancel search highlight
nnoremap <leader><CR> :noh<CR>

"to line start and end
nnoremap gh ^
vnoremap gh ^
nnoremap gl $
vnoremap gl $
nnoremap <leader>ff :FufFile<CR>
nnoremap <leader>fb :FufBuffer<CR>
nnoremap <leader>ft :FufTag<CR>
nnoremap <leader>fj :FufJumpList<CR>
let g:fuf_keyOpenTabpage = '<CR>'

"quick search
"nnoremap // /^[\s\t]*
"nnoremap <Space>/ /\<\><left><left>

"自动完成设置
set completeopt=longest,menu

"indent guide设置
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"syntastic setting
let g:syntastic_auto_loc_list=1

"Vimerl设置
set tags+=/usr/local/lib/erlang/tags
"let erlang_man_path="/usr/local/lib/erlang/man/" "This is for jimenezrick/vimerl
let g:erlangManPath="/usr/local/lib/erlang/man/"

""Golden ratio设置
"nnoremap <leader>g :GoldenRatioResize<CR>

"neocomplcache设置
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_enable_auto_select=1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
"设置golang的neocomplcache完成
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
"let g:neocomplcache_omni_functions.go='go#complete#Complete'
"let g:neocomplcache_omni_patterns.go='\h\w*\.'
let g:neocomplcache_omni_patterns.go = '\h\w*\.\?'

"NerdTree设置
nnoremap <silent> <F5> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>nt :NERDTree<CR>
nnoremap <silent> <Leader>nf :NERDTreeFind<CR>
let NERDTreeWinPos = "right"
let NERDTreeMinimalUI = 1
let NERDTreeWinSize = 38

""set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
"let g:Powerline_symbols = 'fancy'
""change the terminal fonts to SourceCode-Pro
""if the symblo in powerline is strange, run the following commnd
"" :PowerlineClearCache

let g:airline_powerline_fonts = 1

"lua
let g:lua_complete_omni = 1

command W w !sudo tee % > /dev/null

let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:pymode_lint_signs = 0

nmap <F1> <nop>
imap <F1> <nop>
let g:dwm_map_keys=1

let g:gitgutter_max_signs=2000

"let g:AutoComplPop_Behavior = {
"\ 'c': [ {'command' : "\<C-x>\<C-o>",
"\       'pattern' : ".",
"\       'repeat' : 0}
"\      ]
"\}

"let g:AutoComplPop_CompleteoptPreview = 1

"if exists("+showtabline")
    "function! MyTabLine()
        "let s = ''
        "let wn = ''
        "let t = tabpagenr()
        "let i = 1
        "while i <= tabpagenr('$')
            "let buflist = tabpagebuflist(i)
            "let winnr = tabpagewinnr(i)
            "let s .= '%' . i . 'T'
            "let s .= (i == t ? '%1*' : '%2*')
            "let s .= ' '
            "let wn = tabpagewinnr(i,'$')

            "let s .= '%#TabNum#'
            "let s .= i
            "" let s .= '%*'
            "let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
            "let bufnr = buflist[winnr - 1]
            "let file = bufname(bufnr)
            "let buftype = getbufvar(bufnr, 'buftype')
            "if buftype == 'nofile'
                "if file =~ '\/.'
                    "let file = substitute(file, '.*\/\ze.', '', '')
                "endif
            "else
                "let file = fnamemodify(file, ':p:t')
            "endif
            "if file == ''
                "let file = '[No Name]'
            "endif
            "let s .= ' ' . file . ' '
            "let i = i + 1
        "endwhile
        "let s .= '%T%#TabLineFill#%='
        "let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
        "return s
    "endfunction
    "set stal=2
    "set tabline=%!MyTabLine()
    "set showtabline=1
    "highlight link TabNum Special
"endif

"Python
let g:pymode_python = 'python3'
let g:pymode_folding = 0
let g:pymode_options_max_line_length = 0

" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
        \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>

"Move in insert mode
inoremap <C-H> <C-\><C-O>b
inoremap <C-L> <C-\><C-O>w
syntax on

"set guifont=Source\ Code\ Pro\ for\ Powerline
au FileType yaml setl ts=2
highlight clear SignColumn
