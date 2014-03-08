set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"自定义插件
Bundle "Shougo/neocomplcache"
""NerdTree
Bundle "scrooloose/nerdtree"
""NerdCommenter
Bundle "scrooloose/nerdcommenter"
""Sudo plugin
Bundle "sudo.vim"
""Session manager
"Bundle "sessionman.vim"
""erlang
Bundle "oscarh/vimerl"
Bundle "aerosol/vim-erlang-skeletons"
""L9 library
Bundle "vim-scripts/L9"
""Drawit
Bundle "vim-scripts/DrawIt"
""easy-motion
"Bundle "Lokaltog/vim-easymotion"
""Status bar
"Bundle "Lokaltog/powerline", {'rtp': 'powerline/bindings/vim'}
Bundle "bling/vim-airline"
""Markdown
Bundle "plasticboy/vim-markdown"
""Better number control
Bundle "myusuf3/numbers.vim"
""Highlighting css color
Bundle "skammer/vim-css-color"
""Golang
Bundle "jnwhiteh/vim-golang"
"go get -u github.com/nsf/gocode
"cd .vim/bundle/gocode/vim && ./update.bash
Bundle "nsf/gocode", {'rtp': 'vim/'}
""vimtips plugin
Bundle "vim-scripts/Fortune-vimtips"
"Bundle "vim-scripts/vim-pad"
"moonscript support
Bundle "leafo/moonscript-vim"
""indent manually
Bundle "godlygeek/tabular"
""visual undo plugin
Bundle "sjl/gundo.vim"
""powerfull finder
Bundle "FuzzyFinder"
""project plugin
Bundle "project.tar.gz"
"lua
Bundle "xolox/vim-misc"
Bundle "xolox/vim-lua-ftplugin"
"snippet
Bundle "SirVer/ultisnips"
"vimwiki
Bundle "vim-scripts/vimwiki"
"voom Vim Outliner of Markers
Bundle "vim-scripts/VOoM"
"prompt function proto for c/c++
"Bundle "mbbill/echofunc"
"AutoComplPop
"Bundle "vim-scripts/AutoComplPop"
"html fast coding
Bundle "mattn/zencoding-vim"
"cocoa
Bundle "msanders/cocoa.vim"
"gist.github.com
Bundle "mattn/webapi-vim"
Bundle "mattn/gist-vim"
""git
Bundle "tpope/vim-fugitive"
""indent object
Bundle "michaeljsmith/vim-indent-object"
"Splitjoin
Bundle "AndrewRadev/splitjoin.vim"
"multiple cursors
Bundle "terryma/vim-multiple-cursors"
"yankring
Bundle "vim-scripts/YankRing.vim"
"text object for argument
Bundle "argtextobj.vim"
""auto-complete for quote
Bundle "Raimondi/delimitMate"
""mustache template
Bundle "juvenn/mustache.vim"
""CamelCaseMotion
Bundle "bkad/CamelCaseMotion"
""Gold ratio
"Bundle "roman/golden-ratio"
""Snippets
"Bundle "MarcWeber/vim-addon-mw-utils"
"Bundle "tomtom/tlib_vim"
"Bundle "honza/snipmate-snippets"
"Bundle "garbas/vim-snipmate"
""SuperTab
"Bundle "ervandew/supertab"
""vimfiler, let you manage file in vim
Bundle "Shougo/unite.vim"
Bundle "Shougo/vimfiler"
""outline
Bundle "h1mesuke/unite-outline"
""Indent guide
Bundle "nathanaelkane/vim-indent-guides"
""unimpaired
Bundle "tpope/vim-unimpaired"
""search and substitute
Bundle "tpope/vim-abolish"
"grep, fgrep
Bundle "yegappan/grep"
""text object for column
Bundle "coderifous/textobj-word-column.vim"
""surround
Bundle "tpope/vim-surround"
""Align
Bundle "tsaleh/vim-align"
""syntastic
Bundle "scrooloose/syntastic"
""zoomwin
Bundle "ZoomWin"
""Command-T
" Install ruby-dev first !important
" Then go to Command-T/ruby/command-t/, run: ruby extconf.rb && make
"Bundle "wincent/Command-T"
"Organize window
"Bundle "spolu/dwm.vim"
""Match Tag
Bundle "gregsexton/MatchTag"
""tagbar
Bundle "majutsushi/tagbar"
""Jslint
""sudo apt-get install node.js first
Bundle "hallettj/jslint.vim"
""Highlight multi words in different colors
Bundle "Mark--Karkat"
""Multi search
Bundle "multisearch.vim"
""Conque execute external program
"Bundle "Conque-Shell"
""haml
Bundle "tpope/vim-haml"
""Narrow region
Bundle "chrisbra/NrrwRgn"
""taglist
Bundle "taglist.vim"
""Colorscheme
Bundle "vim-scripts/xoria256.vim"
Bundle "altercation/vim-colors-solarized"
"Bundle "altercation/solarized", {'rtp': 'vim-colors-solarized'}
Bundle "Lucius"
Bundle "tomasr/molokai"
Bundle "pyte"
Bundle "Zenburn"
Bundle "oceandeep"
Bundle "Ambient-Color-Scheme"
Bundle "Liquid-Carbon"
Bundle "rslate"
Bundle "tpope/vim-vividchalk"
Bundle "wgibbs/vim-irblack"
Bundle "chriskempson/tomorrow-theme", {'rtp': 'vim/'}
Bundle "sjl/badwolf"
Bundle "Wombat"
Bundle "croaker/mustang-vim"
Bundle "candycode.vim"
Bundle "jgdavey/vim-railscasts"

"SuperTab config
"let g:SuperTabRetainCompletionType=2
"let g:SuperTabDefaultCompletionType="context"
"let g:SuperTabMappingForward = '<nul>'
"let g:SuperTabMappingBackward = '<s-nul>'
"let g:SuperTabMappingForward = '<c-space>'
"let g:SuperTabMappingBackward = '<s-c-space>'
"let g:SuperTabMappingForward="<c-Tab>" 
"let g:SuperTabMappingBackward="<s-c-Tab>"

filetype plugin indent on     " required!
syntax enable

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
"let g:pad_dir="/home/fisher/notepad"

"自动进入上次退出时候的光标位置
autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \ exe "normal! g`\"" |
                    \ endif
autocmd BufEnter * lcd %:p:h

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
noremap <leader>, :Tabularize /,<CR>
noremap <leader>,= :Tabularize /,/r1c1l0<CR>
noremap <leader>= :Tabularize /=<CR>
noremap <leader>== :Tabularize /=/r1c1l0<CR>
noremap <leader>; :Tabularize /;<CR>
noremap <leader>;= :Tabularize /;/r1c1l0<CR>

"gundo
nnoremap <silent> <F4> :GundoToggle<CR>

"yankring
nnoremap <silent> <F9> :YRShow<CR>
function! YRRunAfterMaps()
    nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction

"taglist
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
"let s:tlist_def_go_settings = 'go;f:func;v:var;t:type'

"Narrow region设置
let g:nrrw_topbot_leftright = 'botright'

"Tagbar设置
nnoremap <silent> <F7> :TagbarToggle<CR>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"Command-T setting
"nnoremap <silent> <Leader>ct :CommandT<CR>
"nnoremap <silent> <Leader>cf :CommandTBuffer<CR>


imap <C-f> <Right>
imap <C-b> <Left>
map <S-CR> O<ESC>
map <CR> o<ESC>
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

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

nmap <F1> <nop>
imap <F1> <nop>
let g:dwm_map_keys=1

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

syntax on

"set guifont=Source\ Code\ Pro\ for\ Powerline
