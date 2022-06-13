set encoding=utf-8
scriptencoding utf-8
set ambiwidth=double
filetype plugin indent on " ファイルタイプに応じたプラグインやインデントをオン
set incsearch " incremental search
set wrapscan " 検索で一番最後まで行ったら最初に戻る
set hlsearch " 検索結果ハイライト
set smartindent " いい感じの自動インデント
set belloff=all " no beep
set expandtab " tabをspaceに展開
set tabstop=4 " tabはspace4個ぶん
set shiftwidth=4 " インデントはspace4個ぶん
set backspace=2 " backspaceのふるまい。2がいちばん自然な感じがする
set clipboard& " clipboard設定を初期化 冪等性の確保
set clipboard^=unnamedplus " clipboardをシステムと共有
set nobackup
set noswapfile
set number
set ignorecase
set smartcase " 大文字を含むときだけ大文字と小文字を区別する
set laststatus=2 " 常にstatus bar表示
set virtualedit=onemore " 行末の1つ後ろまで編集可能になる
set showmatch " 閉じかっこを入力すると一瞬だけ対応するかっこに移動
set matchtime=1

nnoremap j gj
nnoremap k gk


let mapleader = "\<space>"
nnoremap <silent> <leader>a ggvg
nnoremap <silent> <leader><leader> :nohlsearch<cr>
inoremap <silent> jj <esc>
nnoremap <silent> + <c-a>
nnoremap <silent> - <c-x>
nnoremap <silent> U <C-r>
nnoremap Y y$ " Yで行末までyank C, Dとの類推

syntax on " 色付けon なんか最後に書いたほうがいいらしい
