" neobundle settings {{{
if has('vim_starting')
  set nocompatible
  if !isdirectory(expand("~/.vim/.bundle/neobundle.vim/"))
    " neobundleの自動インストール。要git
    echo "install neobundle..."
    :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/.bundle/neobundle.vim")
  endif
  set runtimepath+=~/.vim/.bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/.bundle'))
let g:neobundle_default_git_protocol='https'
NeoBundleFetch 'Shougo/neobundle.vim'
" もはや+luaが一般的なので無い場合neobundlecacheとかいらない
if has('lua')
  NeoBundleLazy 'Shougo/neocomplete.vim', {
    \ 'depends' : 'Shougo/vimproc',
    \ 'autoload' : { 'insert' : 1,}
    \ }
endif
NeoBundle 'Shougo/neomru.vim', {
  \ 'depends' : 'Shougo/unite.vim'
  \ }
NeoBundleLazy 'Shougo/neosnippet', {
  \ 'depends' : 'Shougo/neosnippet-snippets',
  \ 'autoload' : {
  \   'insert' : 1,
  \   'filetypes' : 'snippet',
  \ }}
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundleLazy 'Shougo/vimfiler', {
  \ 'depends' : ["Shougo/unite.vim"],
  \ 'autoload' : {
  \   'commands' : [ "VimFilerTab", "VimFiler", "VimFilerExplorer", "VimFilerBufferDir" ],
  \   'mappings' : ['<Plug>(vimfiler_switch)'],
  \   'explorer' : 1,
  \ }}
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
  \     'windows' : 'make -f make_mingw32.mak',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make -f make_mac.mak',
  \     'unix' : 'make -f make_unix.mak',
  \    },
  \ }
NeoBundleLazy 'Shougo/vimshell', {
  \ 'depends' : 'Shougo/vimproc',
  \ 'autoload' : {
  \   'commands' : [{ 'name' : 'VimShell', 'complete' : 'customlist,vimshell#complete'},
  \                 'VimShellExecute', 'VimShellInteractive',
  \                 'VimShellTerminal', 'VimShellPop'],
  \   'mappings' : ['<Plug>(vimshell_switch)']
  \ }}
let g:vimshell_prompt_expr = 'getcwd().">"'
let g:vimshell_prompt_pattern =  '^\f\+>'
NeoBundleLazy 'tpope/vim-endwise', {
  \ 'autoload' : { 'insert' : 1,}}
NeoBundle 'tpope/vim-fugitive', {
  \ 'augroup' : 'fugitive',}
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundleLazy 'thinca/vim-quickrun', {
  \ 'autoload' : {
  \   'mappings' : [['n', '\r']],
  \   'commands' : ['QuickRun']
  \ }}
NeoBundle 'thinca/vim-ref'
if has('mac') || has('win32unix')
  NeoBundle 'glidenote/memolist.vim'
endif
NeoBundleLazy 'alpaca-tc/alpaca_tags', {
  \ 'depends': ['Shougo/vimproc', 'Shougo/unite.vim'],
  \ 'autoload' : {
  \   'commands' : ['Tags', 'TagsUpdate', 'TagsSet', 'TagsBundle', 'TagsCleanCache'],
  \   'unite_sources' : ['tags']
  \ }}
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundleLazy "davidhalter/jedi-vim", {
  \ "autoload": {
  \   "filetypes": ["python", "python3", "djangohtml"],
  \ },
  \ "build" : {
  \   "mac"  : "pip install jedi",
  \   "unix" : "pip install jedi",
  \ }}
NeoBundle 'fuenor/qfixgrep'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundleLazy 'junegunn/vim-easy-align', {
  \ 'autoload': {
  \   'commands' : ['EasyAlign'],
  \   'mappings' : ['<Plug>(EasyAlign)'],
  \ }}
NeoBundleLazy 'Yggdroot/indentLine', {
  \ 'autoload' : {
  \   'commands' : ['IndentLinesReset', 'IndentLinesToggle'],
  \ }}
NeoBundle 'kannokanno/previm'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundleLazy 'mattn/emmet-vim', {
  \ 'autoload' : {
  \   'filetypes' : ['html', 'html5', 'eruby', 'jsp', 'xml', 'css', 'scss', 'coffee'],
  \   'commands' : ['<Plug>ZenCodingExpandNormal']
  \ }}
NeoBundle 'moll/vim-node'
" 最近知ったjellybeanから乗り換えたcolor scheme
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'rcmdnk/vim-markdown'
NeoBundle 'rking/ag.vim'
NeoBundle 'rizzatti/dash.vim'
NeoBundleLazy "sjl/gundo.vim", {
  \ "autoload": {"commands": ['GundoToggle'],}}
NeoBundle 'othree/html5.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'yuratomo/w3m.vim'
NeoBundleLazy 'vim-ruby/vim-ruby', {
  \ 'autoload' : {'filetypes' : ['ruby', 'eruby']}}
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
" Ricty の powerlineパッチ版を入れること
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'shime/vim-livedown'
NeoBundle 'digitaltoad/vim-pug'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'udalov/kotlin-vim'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'begriffs/haskell-vim-now'
NeoBundle 'majutsushi/tagbar'


NeoBundleCheck
call neobundle#end()
filetype plugin indent on
" }}}
" plugin data directories {{{
let g:neocomplete#data_directory    = expand('~/.vim/etc/neocomplete')
let g:vimfiler_data_directory       = expand('~/.vim/etc/vimfiler')
let g:vimshell_temporary_directory  = expand('~/.vim/etc/VimShell')
let g:neosnippet#data_directory     = expand('~/.vim/etc/.cache/neosnippet')
let g:neosnippet#snippets_directory = [expand('~/.vim/.bundle/neosnippet-snippets/neosnippets'),expand('~/dotfiles/snippets')]
let g:unite_data_directory          = expand('~/.vim/etc/unite')
let g:neomru#file_mru_path          = expand('~/.vim/etc/neomru/file')
let g:neomru#directory_mru_path     = expand('~/.vim/etc/neomru/direcroty')
let g:ref_cache_dir                 = expand('~/.vim/etc/vim_ref_cache')
let g:w3m#history#save_file         = expand('~/.vim/etc/.vim_w3m_hist')
let g:yankround_dir                 = expand('~/.vim/etc/.cache/yankround')
" markdownのメモを共有するディレクトリに入れとく
let g:memolist_path                 = expand('~/GoogleDrive/memolist')
" }}}
" neocomplete {{{
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 4
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
" }}}
" neosnippet {{{
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
" }}}
" unite {{{
let g:unite_enable_start_insert=1
nmap <silent> <C-u><C-b> :<C-u>Unite buffer<CR>
nmap <silent> <C-u><C-f> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nmap <silent> <C-u><C-r> :<C-u>Unite -buffer-name=register register<CR>
nmap <silent> <C-u><C-m> :<C-u>Unite file_mru<CR>
nmap <silent> <C-u><C-u> :<C-u>Unite buffer file_mru<CR>
nmap <silent> <C-u><C-a> :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
au FileType unite nmap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite imap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite nmap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite imap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite nmap <silent> <buffer> <ESC><ESC> q
au FileType unite imap <silent> <buffer> <ESC><ESC> <ESC>q
" }}}
" vimfiler {{{
let g:vimfiler_as_default_explorer  = 1
let g:vimfiler_safe_mode_by_default = 0
nnoremap <silent><C-u><C-j> :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit -toggle<CR>
nnoremap <silent><C-e> :NERDTree<CR>
" }}}
" vimshell {{{
nmap <silent> vs :<C-u>VimShell<CR>
nmap <silent> vp :<C-u>VimShellPop<CR>
" }}}
" qfixgrep {{{
let QFixWin_EnableMode = 1
let QFix_UseLocationList = 1
let mygrepprg = 'grep'
let MyGrep_ExcludeReg = '[~#]$\|\.dll$\|\.exe$\|\.lnk$\|\.o$\|\.obj$\|\.pdf$\|\.xls$'
let g:MyGrep_Smartcase = 0
let QFix_Height = 30
" }}}
" memolist {{{
let g:memolist_gfixgrep = 1
let g:memolist_unite = 1
let g:memolist_unite_option = "-vertical -start-insert"
nnoremap mn  :MemoNew<CR>
nnoremap ml  :MemoList<CR>
nnoremap mg  :MemoGrep<CR>
" }}}
" quickrun {{{
let g:quickrun_config = {}
let g:quickrun_config._ = { 'runner' : 'vimproc',
  \ 'runner/vimproc/updatetime' : 200,
  \ 'outputter/buffer/split' : ':botright 8sp',
  \ 'outputter' : 'multi:buffer:quickfix',
  \ 'hook/close_buffer/enable_empty_data' : 1,
  \ 'hook/close_buffer/enable_failure' : 1,
  \ }
nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"
" }}}
" alfredがあるとほぼ使わない気が...今度消すか考えるか
" vim-ref {{{
let g:ref_use_vimproc=1
let g:ref_refe_version=2
let g:ref_refe_encoding = 'utf-8'
let g:ref_source_webdict_sites = {
  \ 'ja': {
  \   'url': 'http://dictionary.infoseek.ne.jp/jeword/%s',
  \   'line': 14,
  \ },
  \ 'ej': {
  \   'url': 'http://dictionary.infoseek.ne.jp/ejword/%s',
  \   'line': 14,
  \ },
  \ 'wiki': {
  \   'url': 'http://ja.wikipedia.org/wiki/%s',
  \ }}
let g:ref_source_webdict_sites.default = 'ej'
" }}}
" switch {{{
nmap + :Switch<CR>
nmap - :Switch<CR>
" }}}
" alpaca_tags {{{
let g:alpaca_update_tags_config = {
  \ '_' : '-R --sort=yes --languages=-js,html,css',
  \ 'ruby': '--languages=+Ruby',
  \ }
" }}}
" jedi-vim {{{
let g:jedi#rename_command = '<Leader>R'
let g:jedi#goto_assignments_command = '<Leader>G'
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
" }}}
" emmet {{{
let g:use_emmet_complete_tag = 1
let g:user_emmet_settings = {
  \ 'lang' : 'ja',
  \ 'html' : {
  \   'indentation' : '  '
  \ }}
" }}}
" Alignより好き
" vim-easy-align {{{
vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
" }}}
" yankround.vim {{{
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
let g:yankround_max_history = 100
nnoremap <Leader><C-p> :<C-u>Unite yankround<CR>
"}}}
" vim-easymotion {{{
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-s2)
xmap s <Plug>(easymotion-s2)
omap z <Plug>(easymotion-s2)
nmap g/ <Plug>(easymotion-sn)
xmap g/ <Plug>(easymotion-sn)
omap g/ <Plug>(easymotion-tn)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
let g:EasyMotion_startofline = 0
let g:EasyMotion_keys = 'QZASDFGHJKL;'
let g:EasyMotion_use_upper = 1
let g:EasyMotion_enter_jump_first = 1
" }}}
" あんまりdashも使わないんだよな、これも消すかも
" dash.vim {{{
nmap <Leader>d <Plug>DashSearch
" }}}
" vim-markdown {{{
let g:vim_markdown_folding_disabled = 1
" }}}
" これバッファの修正履歴だけど、入れた物のあることを忘れがち。git diffで十分かも
" gundo.vim {{{
nmap <Leader>g :GundoToggle<CR>
" }}}
" open-browser {{{
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
" }}}
" ruby書くときにはお世話になっているコーディングスタイルの確認に使おう
" syntastic {{{
let g:syntastic_mode_map = {
  \ 'mode': 'passive',
  \ 'active_filetypes': ['ruby', 'eruby', 'javascript']
  \ }
let g:syntastic_ruby_checkers = ['rubocop']
" }}}
" lightline {{{
let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'fugitive', 'filename' ] ]
  \ },
  \ 'component': {
  \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
  \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
  \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
  \ },
  \ 'component_visible_condition': {
  \   'readonly': '(&filetype!="help"&& &readonly)',
  \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
  \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
  \ },
  \ 'component_function': {
  \   'fugitive': 'MyFugitive',
  \   'readonly': 'MyReadonly',
  \   'modified': 'MyModified',
  \   'filename': 'MyFilename'
  \ },
  \ 'separator': { 'left': "\u2b80", 'right': "\u2b82" },
  \ 'subseparator': { 'left': "\u2b81", 'right': "\u2b83" }
  \ }

function! MyModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "⭤"
  else
    return ""
  endif
endfunction

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? '⭠ '._ : ''
  endif
  return ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction
" }}}
" taglist.vim {{{
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
nmap <silent> <leader>tl :TlistToggle<CR>
" }}}
" 今んとここんな単純な設定でも不便はない。
" encoding {{{
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis,cp932
set fileformats=unix,dos,mac
" }}}
" appearance {{{
set t_Co=256
syntax on
let g:seoul256_background = 233
" jellybean時の設定が...これも消すかも
hi EasyMotionTarget guifg=#80a0ff ctermfg=81
set nobackup
set noswapfile
set matchpairs& matchpairs+=<:>
set hlsearch
set ignorecase
set smartcase
set infercase
set laststatus=2
set ruler
set number
set nowrap
set list
set wildmenu
set showcmd
set clipboard& clipboard+=unnamed
set autoindent
set shiftround
set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2
set smarttab
set foldmethod=indent
set foldlevel=30


"etc
set nf=hex
set mouse=a

"key-mapping
imap <C-j> <esc>
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap <Tab> %
vmap <Tab> %
" }}}
let NERDTreeShowHidden = 1
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1
set tags=tags;/,codex.tags;/
colorscheme hybrid
set hidden 
