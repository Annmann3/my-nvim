let mapleader = "\<Space>"

" 行の色を変更
autocmd ColorScheme * highlight LineNr guifg=#9e9e9e
" 透かすために背景色を変更
autocmd ColorScheme * highlight Normal guibg=NONE
colorscheme hybrid


" 行番号を表示
set number
" タブ文字の代わりにスペースを使う(切り替え)
set expandtab
" プログラミング言語に合わせて適切にインデントを自動挿入(切り替え)
set smartindent
" 自動で入るインデント数
set shiftwidth=2
" Tabキーで挿入するスペースの数(数値)
set softtabstop=2
" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
" 補完ウィンドウ
set pumblend=30
" TRUECOLOR有効
set termguicolors
" カーソルラインを表示
set cursorline
" yankでクリップボードにコピー
set clipboard=unnamed
" 画面の更新頻度をあげる
set updatetime=100

autocmd BufNewFile,BufRead *.slim setlocal filetype=slim


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " dein.toml, dein_layz.tomlファイルのディレクトリをセット
  let s:toml_dir = expand('~/.config/nvim/dein')

  " 起動時に読み込むプラグイン群
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  " 遅延読み込みしたいプラグイン群
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

let mapleader = "\<Space>"
colorscheme hybrid



"シンタックスハイライト有効
syntax on
filetype plugin indent on
filetype indent on


inoremap <silent> <ESC> <ESC>:call system('im-select com.apple.keylayout.US')<CR>
"" 画面分割
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

