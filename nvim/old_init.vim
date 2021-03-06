"Configs padrão
set nu!
set textwidth=80
set hlsearch
set clipboard=unnamedplus
syntax on
set mouse=a

"navegação entre tabs
nnoremap <M-Right> :tabnext<CR>
nnoremap <M-Left> :tabNext<CR>
nnoremap <M-S-Right> :tabmove +1<CR>
nnoremap <M-S-Left> :tabmove -1<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-x> :tabclose<CR> 

"fontes
set guifont=DroidSansMono\ Nerd\ Font\ Mono:h12

"Undo and Redo (Ctrl+z && Shift + z)
map <C-z> :undo<CR>
map <S-z> :redo<CR>

""Identação
set autoindent
set smartindent
set tabstop=2 softtabstop=2 expandtab shiftwidth=2

"criação de blocos de codigos
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za

"Usando alt para mover as linhas
nnoremap <silent><A-DOWN> :m .+1<CR>==
nnoremap <silent><A-UP> :m .-2<CR>==
inoremap <silent><A-DOWN> <Esc>:m .+1<CR>==gi
inoremap <silent><A-UP> <Esc>:m .-2<CR>==gi
vnoremap <silent><A-DOWN> :m '>+1<CR>gv=gv
vnoremap <silent><A-UP> :m '<-2<CR>gv=gv

"Desativar o hlsearch
nnoremap <F4> :nohlsearch<CR>

"Trocar o Buff Ctrl + h
nnoremap <C-h> :bn<CR>title

"Plugins
call plug#begin('~/.config/nvim/plugged')
  "Explorer
    Plug 'preservim/nerdtree'
  "auto complete
    Plug 'neoclide/coc.nvim', {'branch' : 'release'}
  "misc
    Plug 'ryanoasis/vim-devicons'
    Plug 'itchyny/vim-gitbranch'
    Plug 'tomasiser/vim-code-dark'
    Plug 'Yggdroot/indentLine'
    Plug 'itchyny/lightline.vim'
call plug#end()


""Cor
set t_Co=256
set t_ut=
colorscheme codedark

"abrir o NERDTree F2
nnoremap <silent> <F2> :NERDTreeToggle<CR>
set encoding=utf8
set noshowmode
set laststatus=2



"indentLine
let g:indentLine_enabled = 1
map <silent><F5> :IndentLinesToggle<cr>
let g:indentLine_color_term = 239
let g:indentLine_char = '|'



let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }




nmap <leader>gd <Plug>(coc-definition) 
nmap <leader>gr <Plug>(coc-references) 
