"------------------------------------------------------------
" Features
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
" Must have options
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
" Usability options
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
set laststatus=2

" バッファが変更されているとき、コマンドをエラーにするのでなく、保存する
" かどうか確認を求める
set confirm

" ビープの代わりにビジュアルベル（画面フラッシュ）を使う
set visualbell

" そしてビジュアルベルも無効化する
set t_vb=

" 全モードでマウスを有効化
set mouse=a

" コマンドラインの高さを1行に
set cmdheight=1

" 行番号を表示
set number

" マッピングはすぐにタイムアウト
set timeout timeoutlen=500
" キーコードはすぐにタイムアウト
set ttimeout ttimeoutlen=500

" <F11>キーで'paste'と'nopaste'を切り替える
set pastetoggle=<F11>

" インクリメンタルサーチは嫌い
set noincsearch

" ウィンドウ分割で上や左にではなく右や下に開くように
set splitright
set splitbelow

" 文字コード自動判別
set encoding=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932

" 改行コードの自動認識
set fileformats=unix,dos,mac

" 無名ヤンクへのコピー時にクリップボードにもコピーする
set clipboard+=unnamed

"------------------------------------------------------------
" Indentation options
" インデント関連のオプション
"------------------------------------------------------------
" タブ文字の代わりにスペース4個を使う場合の設定。
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4

" インデントにハードタブを使う場合の設定。
" タブ文字を4文字分の幅で表示する。
"set shiftwidth=4
"set tabstop=4


"------------------------------------------------------------
" Mappings
" マッピング
"------------------------------------------------------------
" Yの動作をDやCと同じにする
map Y y$


" バッファリストを表示
nnoremap <C-o> :call BufferList()<CR>

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


" 単語検索時に一つ戻す
"nnoremap * *N
nnoremap * viw"zyk$/<C-R>z<CR>


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


cnoremap qq qa<CR>
nnoremap <C-e> :Exp<CR>

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
"colorscheme industry

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


autocmd BufRead,BufNewFile *.bdy setfiletype sql
autocmd BufRead,BufNewFile *.def setfiletype sql

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
" Quickfix
"------------------------------------------------------------
au QuickfixCmdPost make,grep,grepadd,vimgrep copen

augroup QfAutoCommands
  autocmd!
  " Auto-close quickfix window
  autocmd WinEnter * if (winnr('$') == 1) && (getbufvar(winbufnr(0), '&buftype')) == 'quickfix' | quit | endif
augroup END



"------------------------------------------------------------
" その他
"------------------------------------------------------------

set backupdir=/tmp
set directory=/tmp

set shortmess+=I

let g:netrw_dirhistmax = 0
