"------------------------------------------------------------
" NeoBundle
"------------------------------------------------------------
if has('vim_starting')
    set nocompatible               " Be iMproved

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
"NeoBundle 'jiangmiao/simple-javascript-indenter'
"NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vimtaku/hl_matchit.vim.git'
NeoBundle 'tpope/vim-surround'
"NeoBundle 'scrooloose/syntastic'

" My Bundles here:
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
" NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'kien/ctrlp.vim'
" NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


"------------------------------------------------------------
" Features {{{1
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
"------------------------------------------------------------

" Vi互換モードをオフ（Vimの拡張機能を有効）
set nocompatible

" ファイル名と内容によってファイルタイプを判別し、ファイルタイププラグインを有効にする
filetype indent plugin on

" 色づけをオン
syntax on
let g:hl_matchit_enable_on_vim_startup = 1

"------------------------------------------------------------
" Must have options {{{1
" 強く推奨するオプション
"------------------------------------------------------------
" バッファを保存しなくても他のバッファを表示できるようにする
set hidden

" コマンドライン補完を便利に
set wildmenu

" タイプ途中のコマンドを画面最下行に表示
set showcmd

" 検索語を強調表示（<C-n>を押すと現在の強調表示を解除する）
set hlsearch


"------------------------------------------------------------
" Usability options {{{1
"------------------------------------------------------------
" 検索時に大文字・小文字を区別しない。ただし、検索後に大文字小文字が
" 混在しているときは区別する
set ignorecase
set smartcase

" オートインデント、改行、インサートモード開始直後にバックスペースキーで
" 削除できるようにする。
set backspace=indent,eol,start

" オートインデント
set autoindent

" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline

" 画面最下行にルーラーを表示する
set ruler

" ステータスラインを常に表示する
set laststatus=1

" バッファが変更されているとき、コマンドをエラーにするのでなく、保存する
" かどうか確認を求める
set confirm

" ビープの代わりにビジュアルベル（画面フラッシュ）を使う
set visualbell

" そしてビジュアルベルも無効化する
set t_vb=

" 全モードでマウスを有効化
set mouse=a

" コマンドラインの高さを2行に
set cmdheight=1

" 行番号を表示
set number

" キーコードはすぐにタイムアウト。マッピングはタイムアウトしない
set notimeout ttimeout ttimeoutlen=200

" <F11>キーで'paste'と'nopaste'を切り替える
set pastetoggle=<F11>

" インクリメンタルサーチは嫌い
set noincsearch

" ウィンドウ分割で上や左にではなく右や下に開くように
set splitright
set splitbelow

"------------------------------------------------------------
" Indentation options {{{1
" インデント関連のオプション {{{1
"------------------------------------------------------------
" タブ文字の代わりにスペース2個を使う場合の設定。
" この場合、'tabstop'はデフォルトの8から変えない。
set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=4

" インデントにハードタブを使う場合の設定。
" タブ文字を2文字分の幅で表示する。
"set shiftwidth=2
"set tabstop=2


"------------------------------------------------------------
" Mappings {{{1
" マッピング
"------------------------------------------------------------
" Yの動作をDやCと同じにする
map Y y$


" バッファリストを表示
nnoremap <C-i> :call BufferList()<CR>

" vvで選択
vnoremap v iw

" マークmに移動
nnoremap <C-m> 'm

" 選択部分をヤンクバッファyにコピー
vnoremap <C-y> "yy
cnoremap <C-y> "yy

" ファイル内検索とGREP
vnoremap / y/<C-R>=escape(@", '\\.*$^[]')<CR>
vnoremap gr y:vimgrep /<C-R>=escape(@", '\\.*$^[]')<CR>/gj 
nnoremap <F9> :cr<C-r>=line('.')<CR><CR>

" <C-L>でハイライト表示
vmap <C-L> /<CR>N

" インデントをTABで可能にする。（繰り返し不可）
vnoremap <TAB> >
vnoremap <S-TAB> <

" バッファ操作
nnoremap bb :b#<CR>
nnoremap bp :bprevious<CR>
nnoremap bn :bnext<CR>
nnoremap bd :bdelete<CR>

""Tern
"nnoremap <F3> :TernDef<CR>
"vnoremap <F3> :TernDef<CR>
"nnoremap <F4> :TernRefs<CR>
"vnoremap <F4> :TernRefs<CR>

"------------------------------------------------------------
" NORMALモードで、","で始まるコマンド群
"------------------------------------------------------------
" .vimrcをオープン
nnoremap ,ev :e ~/.vimrc<CR>

" .vimrcを読み込み
nnoremap ,r :source ~/.vimrc<CR>

" 検索後のハイライト表示を解除する
nnoremap ,l :nohl<CR>


"------------------------------------------------------------
" 色関連
"------------------------------------------------------------
" ターミナル上の色設定
set background=dark
"set background=light

colorscheme jellybeans
"colorscheme desert
"colorscheme solarized

" hl_matchitの設定
let g:hl_matchit_hl_groupname = 'SignColumn'
let g:hl_matchit_allow_ft= 'html\|vim\|ruby\|sh'


" ユーザ定義のハイライト
" 1.全角スペースを視覚化
" 全角スペースをライトブルーのアンダーラインで表す
" 2.行末の空白文字をハイライト
autocmd ColorScheme * call s:my_highlights()
function! s:my_highlights()
  highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
  highlight WhitespaceEOL ctermbg=red guibg=red
  let w:m1 = matchadd('ZenkakuSpace', '　')
  let w:m2 = matchadd('WhitespaceEOL', '\s\+$')
endfunction

"------------------------------------------------------------
" ウィンドウ関連
"------------------------------------------------------------
" <C-hjkl>でウィンドウ移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Window分割時の幅や高さを調整
cnoremap <C-h> <ESC><C-w>>:
cnoremap <C-j> <ESC><C-w>+:
cnoremap <C-k> <ESC><C-w>-:
cnoremap <C-l> <ESC><C-w><:


"------------------------------------------------------------
" シンタックス
"------------------------------------------------------------
" 合っているか不明。ファイルは~/.vim/syntax
"au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
"
"let g:syntastic_check_on_open=0
"let g:syntastic_check_on_save=1
"let g:syntastic_auto_loc_list=1
"let g:syntastic_loc_list_height=6
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_mode_map = {
"      \ 'mode': 'active',
"      \ 'active_filetypes': ['javascript'],
"      \ 'passive_filetypes': []
"      \ }
"let g:syntastic_enable_signs=1
"let g:syntastic_error_symbol='✗'
"let g:syntastic_warning_symbol='⚠'
"

"------------------------------------------------------------
" Quickfix
"------------------------------------------------------------
au QuickfixCmdPost make,grep,grepadd,vimgrep copen

augroup QfAutoCommands
  autocmd!
  " Auto-close quickfix window
  autocmd WinEnter * if (winnr('$') == 1) && (getbufvar(winbufnr(0), '&buftype')) == 'quickfix' | quit | endif
augroup END


"------------------------------------------------------------
" NERDTree
"------------------------------------------------------------
" <C-e>でNERDTreeをオンオフ いつでもどこでも
nmap <silent> <C-e>      :NERDTreeToggle<CR>
vmap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
omap <silent> <C-e>      :NERDTreeToggle<CR>
imap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
cmap <silent> <C-e> <C-u>:NERDTreeToggle<CR>
" 引数なしでvimを開いたらNERDTreeを起動、
" 引数ありならNERDTreeは起動しない、引数で渡されたファイルを開く
"autocmd vimenter * if !argc() | NERDTree | endif
" 他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 無視するファイルを設定する
let g:NERDTreeIgnore=['\.clean$', '\.swp$', '\.bak$', '\~$']
" 隠しファイルを表示するか
let g:NERDTreeShowHidden=0
" ブックマークやヘルプのショートカットをメニューに表示する
let g:NERDTreeMinimalUI=1
" +|`などを使ってツリー表示をするか
" 0 : 綺麗に見せる
" 1 : +|`などを使わない
let g:NERDTreeDirArrows=1
" マウス操作方法
" 1 : ファイル、ディレクトリ両方共ダブルクリックで開く
" 2 : ディレクトリのみシングルクリックで開く
" 3 : ファイル、ディレクトリ両方共シングルクリックで開く
let g:NERDTreeMouseMode=2


" eでNERDTreeを表示
"nnoremap e <ESC>:NERDTree<CR>


"------------------------------------------------------------
" その他
"------------------------------------------------------------

set backupdir=/tmp
set directory=/tmp

set shortmess+=I


" netrwは常にtree view
"let g:netrw_liststyle = 3
" CVSと.で始まるファイルは表示しない
"let g:netrw_list_hide = 'CVS,\(^\|\s\s\)\zs\.\S\+'
" 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
"let g:netrw_altv = 1
" 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
"let g:netrw_alto = 1

