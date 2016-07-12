" vim起動時のみruntimepathにneobundle.vimを追加
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vimの初期化 
" NeoBundleを更新するための設定
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" 読み込むプラグインを記載
NeoBundle 'Shougo/unite.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'roblillack/vim-bufferlist'

NeoBundle 'vim-scripts/twilight'
NeoBundle 'tomasr/molokai'
NeoBundle 'sjl/badwolf'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'aereal/vim-colors-japanesque'
call neobundle#end()

" 読み込んだプラグインも含め、ファイルタイプの検出、ファイルタイプ別プラグイン/インデントを有効化する
filetype plugin indent on

" インストールのチェック
NeoBundleCheck



"--------------------------------
" 諸々の設定
"--------------------------------

set shortmess+=I

" 画面表示の設定
set number         " 行番号を表示する
set cursorline     " カーソル行の背景色を変える
set cursorcolumn   " カーソル位置のカラムの背景色を変える
set laststatus=2   " ステータス行を常に表示
set cmdheight=1    " メッセージ表示欄を2行確保
set showmatch      " 対応する括弧を強調表示
set helpheight=999 " ヘルプを画面いっぱいに開く
set list           " 不可視文字を表示
" 不可視文字の表示記号指定
set listchars=tab:>\ 


" カーソル移動関連の設定
set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない
"set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ
set scrolloff=4                " 上下4行の視界を確保
set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う


" ファイル処理関連の設定
set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   "外部でファイルに変更がされた場合は読みなおす
set nobackup   " ファイル保存時にバックアップファイルを作らない
set noswapfile " ファイル編集中にスワップファイルを作らない
set directory=c:\TEMP
set backupdir=c:\TEMP
set undodir=c:\TEMP


" 検索/置換の設定
set hlsearch   " 検索文字列をハイライトする
"set incsearch  " インクリメンタルサーチを行う
set noincsearch  " インクリメンタルサーチを行う
set ignorecase " 大文字と小文字を区別しない
set smartcase  " 大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan   " 最後尾まで検索を終えたら次の検索で先頭に移る
set gdefault   " 置換の時 g オプションをデフォルトで有効にする


" タブ/インデントの設定
set expandtab     " タブ入力を複数の空白入力に置き換える
set tabstop=4     " 画面上でタブ文字が占める幅
set shiftwidth=4  " 自動インデントでずれる幅
set softtabstop=4 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent    " 改行時に前の行のインデントを継続する
set smartindent   " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する


set guioptions+=A
set guioptions-=T
" 動作環境との統合関連の設定
" OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
"set clipboard=unnamed,unnamedplus
set clipboard=unnamed,autoselect
" マウスの入力を受け付ける gvimrc に移動
"set mouse=a
" Windows でもパスの区切り文字を / にする
set shellslash
" インサートモードから抜けると自動的にIMEをオフにする
set iminsert=2

" 1行が長くてもすべて表示
set display=lastline

" コマンドラインの設定
" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=10000

source $VIMRUNTIME/macros/matchit.vim

"開いているバッファにカレントディレクトリ移動
"au BufEnter * execute ":lcd " . expand("%:p:h")
set autochdir


"--------------------------------------
"" キーマッピング
"--------------------------------------
nnoremap <C-e> :Explore!<CR>
nnoremap <C-o> :call BufferList()<CR>
let g:BufferListMaxWidth = 30

vnoremap v iw

nnoremap * viwyk/\<<C-R>=escape(@", '\\.*$^[]')<CR>\>\c<CR>
nnoremap <MiddleMouse> viwyk/\<<C-R>=escape(@", '\\.*$^[]')<CR>\>\c<CR>
vnoremap <MiddleMouse> yk/\<<C-R>=escape(@", '\\.*$^[]')<CR>\>\c<CR>

nnoremap ,ev :e C:\Users\caster\_vimrc<CR>
nnoremap ,eg :e C:\Users\caster\_gvimrc<CR>
nnoremap ,rv :source C:\Users\caster\_vimrc<CR>

nnoremap <C-m> 'm
nnoremap <F12> '"

vnoremap <C-y> "yy

nnoremap Y y$
nnoremap + <C-a>
nnoremap - <C-x>

"Sakuraで開く
nnoremap <F3> :!"C:\Program Files (x86)\sakura\sakura.exe" %<CR>

"選択範囲をクリップボードにコピー
vnoremap <C-c> "+y

"選択範囲をクリップボードの内容で貼付け
vnoremap <C-v> <ESC>"+gP
inoremap <C-v> <ESC>"+gpa


vnoremap / y/<C-R>=escape(@", '\\.*$^[]')<CR>
vnoremap gr y:vimgrep /<C-R>=escape(@", '\\.*$^[]')<CR>/jg *
au QuickfixCmdPost make,grep,grepadd,vimgrep copen

nnoremap <F9> :cr<C-r>=line('.')<CR><CR>
nnoremap <F10> :ccl<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-w><C-h> <C-w>H
nnoremap <C-w><C-j> <C-w>J
nnoremap <C-w><C-k> <C-w>K
nnoremap <C-w><C-l> <C-w>L

nnoremap <S-Left>  <C-w><
nnoremap <S-Right> <C-w>>
nnoremap <S-Down>  <C-w>-
nnoremap <S-Up>    <C-w>+

nnoremap bb :b#<CR>
nnoremap bp :bprevious<CR>
nnoremap bn :bnext<CR>
nnoremap bd :bdelete<CR>
nnoremap bc :Bufferclose<CR>

cnoremap qq qa!<CR>

" SPACEキーでIMEオンで入力モードにする
nnoremap <SPACE> i<C-^>
