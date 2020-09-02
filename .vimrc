set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = ','
syntax enable
syntax on
let python_highlight_all = 1
set hlsearch
set showmatch
set cursorline
set ai
set si
set wrap
set smartcase
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
filetype indent on 
set backspace=indent,eol,start
nnoremap <leader>so :so ~/.vimrc<CR> 
nnoremap <leader>3 :set nonumber<CR> 
nnoremap <leader># :set number<CR> 
map <F8> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

set hidden
set undofile
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

if &term == "xterm-color"
  set t_kb=
endi

if &term == "xterm-256color"
  set t_kb=
endi

nnoremap j gj
nnoremap k gk
nnoremap <S-d> <C-d>
nnoremap <S-u> <C-u>
nnoremap m %
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>h <C-W>h
nnoremap <leader>> :vertical resize +5<CR>
nnoremap <leader>< :vertical resize -5<CR>
nnoremap <leader>+ :res +5<CR>
nnoremap <leader>- :res -5<CR>
nnoremap <leader>t <C-W>T
nnoremap <leader>] <C-W><C-]>
nnoremap <C-l> <C-i>
"map <C-a> <Home>

" tabs
nnoremap tj :tabprev<CR>  
nnoremap tk :tabnext<CR>  
nnoremap t1 1gt
nnoremap t2 2gt
nnoremap t3 3gt
nnoremap t4 4gt
nnoremap t5 5gt
nnoremap t6 6gt
nnoremap t7 7gt
nnoremap t8 8gt
nnoremap t9 9gt
" configure tab line
function! Tabline()
  let s = ''
  for i in range(tabpagenr('$'))
    let tab = i + 1
    let winnr = tabpagewinnr(tab)
    let buflist = tabpagebuflist(tab)
    let bufnr = buflist[winnr - 1]
    let bufname = bufname(bufnr)
    let bufmodified = getbufvar(bufnr, "&mod")

    let s .= '%' . tab . 'T'
    let s .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
    let s .= ' ' . tab .':'
    let s .= (bufname != '' ? ''. fnamemodify(bufname, ':t') . ' ' : '[No Name] ')

    if bufmodified
      let s .= '[+] '
    endif
  endfor

  let s .= '%#TabLineFill#'
  if (exists("g:tablineclosebutton"))
    let s .= '%=%999XX'
  endif
  return s
endfunction
set tabline=%!Tabline()

" buffer
nnoremap <leader>n :tab sb 
nnoremap <leader>d :bd<CR>1gt
nnoremap <S-Tab> :bp<CR> 
nnoremap <Tab> :bn<CR> 
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set switchbuf=usetab,useopen

" folding
set foldenable
set foldlevelstart=99
nnoremap <space> za
set foldmethod=indent

"hi Special ctermfg=red " for query specific keywords
"hi Underlined ctermfg=magenta cterm=bold " for local variables

if &diff
    colorscheme evening
endif

let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

" recursive fuzzy file search
set path+=**
set wildmenu
set wildignore+=**/.svn/**


" file browsing: netrw
nnoremap <leader>e :Vexplore<CR>
" nnoremap <leader>s1 :Vexplore /home/qmoperator/strategy<CR>
" nnoremap <leader>s2 :Vexplore /home/qmoperator/strategy2<CR>
let g:netrw_banner = 0
let g:netrw_browse_split = 3
let g:netrw_liststyle = 1
let g:netrw_altv = 1
let g:netrw_winsize = 25

" ctrlp
set rtp+=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'c'
let g:ctrlp_match_window='min:4,max:50'
let g:ctrlp_max_depth=40
let g:ctrlp_prompt_mappings = {
    \ 'PrtSelectMove("j")':   ['<c-y>', '<down>'],
    \ 'PrtSelectMove("k")':   ['<c-u>', '<up>'],
    \ 'PrtExpandDir()':       ['<space>'],
    \}
nnoremap <leader>p :CtrlP :pwd<CR> 


set background=dark
colorscheme monokai
"let g:solarized_diffmode="high"

