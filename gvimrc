if has('gui_macvim')
  set autochdir
  set showtabline=2   " タブを常に表示
  set imdisable       " IMを無効化
  set transparency=1  " 透明度を指定
  set antialias
  set lines=40 columns=120
"  set guifont=Monaco:h14
"  colorscheme desert
" colorscheme solarized
" set background=light
  set background=dark
  set guioptions-=T
endif

if has('multi_byte_ime') || has('xim') 
  highlight Cursor guifg=NONE guibg=White
  highlight CursorIM guifg=NONE guibg=DarkRed
endif

