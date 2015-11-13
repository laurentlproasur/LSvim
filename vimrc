
" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim


" Retour à la dernière position

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


"-----------------------------------------INTERFACE

" Menu pour auto-completion
set wildmenu

" Repere de position
set ruler

" Recherche avec casse ignorée
set ignorecase

" Recherche avec casse 
set smartcase

" Coloration resultats de recherches
set hlsearch

" Numero de ligne
set number

" Affichage de la commande
set showcmd

" Support de la souris
set mouse=a

"---------------------------------------COULEURS & TYPO

" Theme
colorscheme elrodeo

" Coloration syntaxique
syntax on

" Encodage avec caracteres FR
set encoding=utf-8



---------------------------------------


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

