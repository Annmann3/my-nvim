let mapleader = "\<Space>"
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
" 補完ウィンドウ
set pumblend=30
set termguicolors

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
set runtimepath+=/Users/ak_pc/.cache/dein/repos/github.com/Shougo/dein.vim

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


 call plug#begin()
 Plug 'jiangmiao/auto-pairs'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'posva/vim-vue'
 Plug 'yuezk/vim-js'
 Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
 Plug 'Shougo/denite.nvim', {'do': ':UpdateRemotePlugins'}
 Plug 'kristijanhusak/defx-git'
 Plug 'kristijanhusak/defx-icons'
 Plug 'ryanoasis/vim-devicons'
 
 Plug 'dense-analysis/ale'
 Plug 'tpope/vim-endwise'
 Plug 'tpope/vim-rails'
 call plug#end()
 
 " 定義元にジャンプ
 nmap gd (coc-definition)
 
 
 " Escでノーマルに戻るとき、日本語入力を切る
 inoremap <silent> <ESC> <Esc>:call system('im-select com.google.inputmethod.Japanese.Roman')<CR>
 
 
 
