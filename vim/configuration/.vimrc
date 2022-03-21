set nu
set et
set ts=4 sw=4
set smartindent
set clipboard=exclude:.*
set fileencodings=utf-8,cp936


"colorscheme darkblue
filetype plugin indent on

au BufRead,BufNewFile *.scad set filetype=scad
au BufRead,BufNewFile *.ps1 set filetype=ps1
au BufRead,BufNewFile *.kt  set filetype=kotlin

if has("syntax")
    syntax on
endif


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

let g:snipMate = { 'snippet_version' : 1 }



Plugin 'itchyny/lightline.vim'

let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'active': {
            \   'right':[[ 'lineinfo'],
            \               ['percent'],
            \               ['fileformat', 'fileencoding', 'filetype', 'charvaluehex']]
            \ },
            \ 'component': {
            \   'charvaluehex': '0x%B',
            \ },
            \ 'component_function':{
            \   'filetype': 'MyFiletype',
            \   'fileformat': 'MyFileformat',
            \ },
            \ }

function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? $filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileTypeSymbol()) : ''
endfunction


set laststatus=2



Plugin 'tpope/vim-surround'
Plugin 'preservim/nerdcommenter'
Plugin 'AutoComplPop'
Plugin 'pprovost/vim-ps1'



Plugin 'lervag/vimtex'

let g:tex_flavor='xelatex'
let g:vimtex_view_general_viewer='/Applications/Skim.app/Contents/MacOS/Skim'
let g:vimtex_compiler_enabled=0
let g:vimtex_syntax_enabled=0
let g:vimtex_quickfix_mode=2
let g:tex_conceal='abdmg'


Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'

set guifont=DroidSansMono_Nerd_Font:h11
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_ctrlp = 1
let g:NERDTreeWinPos = "right"

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


Plugin 'udalov/kotlin-vim'

Plugin 'rizzatti/dash.vim'


call vundle#end()

noremap <leader>ll :silent !xelatex --shell-escape -8bit %<cr> <C-L>
imap <C-G> <Esc>Go
imap <C-H> <Esc>hi
imap <C-J> <Esc>ja
imap <C-K> <Esc>ka
imap <C-L> <Esc>li

imap <C-W> <Esc>wa
imap <C-B> <Esc>bi
