" vim�N�����̂�runtimepath��neobundle.vim��ǉ�
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vim�̏����� 
" NeoBundle���X�V���邽�߂̐ݒ�
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" �ǂݍ��ރv���O�C�����L��
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

" �ǂݍ��񂾃v���O�C�����܂߁A�t�@�C���^�C�v�̌��o�A�t�@�C���^�C�v�ʃv���O�C��/�C���f���g��L��������
filetype plugin indent on

" �C���X�g�[���̃`�F�b�N
NeoBundleCheck



"--------------------------------
" ���X�̐ݒ�
"--------------------------------

set shortmess+=I

" ��ʕ\���̐ݒ�
set number         " �s�ԍ���\������
set cursorline     " �J�[�\���s�̔w�i�F��ς���
set cursorcolumn   " �J�[�\���ʒu�̃J�����̔w�i�F��ς���
set laststatus=2   " �X�e�[�^�X�s����ɕ\��
set cmdheight=1    " ���b�Z�[�W�\������2�s�m��
set showmatch      " �Ή����銇�ʂ������\��
set helpheight=999 " �w���v����ʂ����ς��ɊJ��
set list           " �s��������\��
" �s�������̕\���L���w��
set listchars=tab:>\ 


" �J�[�\���ړ��֘A�̐ݒ�
set backspace=indent,eol,start " Backspace�L�[�̉e���͈͂ɐ�����݂��Ȃ�
"set whichwrap=b,s,h,l,<,>,[,]  " �s���s���̍��E�ړ��ōs���܂���
set scrolloff=4                " �㉺4�s�̎��E���m��
set sidescrolloff=16           " ���E�X�N���[�����̎��E���m��
set sidescroll=1               " ���E�X�N���[���͈ꕶ���Âs��


" �t�@�C�������֘A�̐ݒ�
set confirm    " �ۑ�����Ă��Ȃ��t�@�C��������Ƃ��͏I���O�ɕۑ��m�F
set hidden     " �ۑ�����Ă��Ȃ��t�@�C��������Ƃ��ł��ʂ̃t�@�C�����J�����Ƃ��o����
set autoread   "�O���Ńt�@�C���ɕύX�����ꂽ�ꍇ�͓ǂ݂Ȃ���
set nobackup   " �t�@�C���ۑ����Ƀo�b�N�A�b�v�t�@�C�������Ȃ�
set noswapfile " �t�@�C���ҏW���ɃX���b�v�t�@�C�������Ȃ�
set directory=c:\TEMP
set backupdir=c:\TEMP
set undodir=c:\TEMP


" ����/�u���̐ݒ�
set hlsearch   " ������������n�C���C�g����
"set incsearch  " �C���N�������^���T�[�`���s��
set noincsearch  " �C���N�������^���T�[�`���s��
set ignorecase " �啶���Ə���������ʂ��Ȃ�
set smartcase  " �啶���Ə����������݂������t�Ō������s�����ꍇ�Ɍ���A�啶���Ə���������ʂ���
set wrapscan   " �Ō���܂Ō������I�����玟�̌����Ő擪�Ɉڂ�
set gdefault   " �u���̎� g �I�v�V�������f�t�H���g�ŗL���ɂ���


" �^�u/�C���f���g�̐ݒ�
set expandtab     " �^�u���͂𕡐��̋󔒓��͂ɒu��������
set tabstop=4     " ��ʏ�Ń^�u��������߂镝
set shiftwidth=4  " �����C���f���g�ł���镝
set softtabstop=4 " �A�������󔒂ɑ΂��ă^�u�L�[��o�b�N�X�y�[�X�L�[�ŃJ�[�\����������
set autoindent    " ���s���ɑO�̍s�̃C���f���g���p������
set smartindent   " ���s���ɓ��͂��ꂽ�s�̖����ɍ��킹�Ď��̍s�̃C���f���g�𑝌�����


set guioptions+=A
set guioptions-=T
" ������Ƃ̓����֘A�̐ݒ�
" OS�̃N���b�v�{�[�h�����W�X�^�w�薳���� Yank, Put �o����悤�ɂ���
"set clipboard=unnamed,unnamedplus
set clipboard=unnamed,autoselect
" �}�E�X�̓��͂��󂯕t���� gvimrc �Ɉړ�
"set mouse=a
" Windows �ł��p�X�̋�؂蕶���� / �ɂ���
set shellslash
" �C���T�[�g���[�h���甲����Ǝ����I��IME���I�t�ɂ���
set iminsert=2

" 1�s�������Ă����ׂĕ\��
set display=lastline

" �R�}���h���C���̐ݒ�
" �R�}���h���C�����[�h��TAB�L�[�ɂ��t�@�C�����⊮��L���ɂ���
set wildmenu wildmode=list:longest,full
" �R�}���h���C���̗�����10000���ۑ�����
set history=10000

source $VIMRUNTIME/macros/matchit.vim

"�J���Ă���o�b�t�@�ɃJ�����g�f�B���N�g���ړ�
"au BufEnter * execute ":lcd " . expand("%:p:h")
set autochdir


"--------------------------------------
"" �L�[�}�b�s���O
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

"Sakura�ŊJ��
nnoremap <F3> :!"C:\Program Files (x86)\sakura\sakura.exe" %<CR>

"�I��͈͂��N���b�v�{�[�h�ɃR�s�[
vnoremap <C-c> "+y

"�I��͈͂��N���b�v�{�[�h�̓��e�œ\�t��
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

" SPACE�L�[��IME�I���œ��̓��[�h�ɂ���
nnoremap <SPACE> i<C-^>
