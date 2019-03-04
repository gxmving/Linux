" ----------------------------- Vundle Start -----------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'git://git.wincent.com/command-t.git'

call vundle#end()
filetype plugin indent on
" ----------------------------- Vundle End   -----------------------------




set langmenu=en
let $LANG='en'
set shortmess=atI
"Configuration file for vim
"set modelines=0        " CVE-2007-2438

set shortmess=atI
"set cursorline
"test

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible    " Use Vim defaults instead of 100% vi compatibility
set backspace=2        " more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
"onfiguration file for vim
set modelines=0" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible" Use Vim defaults instead of 100% vi compatibility
set backspace=2" more powerful backspacing

syntax on


set smartindent

set autoindent

set confirm

set tabstop=4

set softtabstop=4
set shiftwidth=4


set number
" 

set history=50
" 

set hlsearch
set incsearch
" 

set gdefault
" 

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1

"colorscheme torte

"set guifont=Menlo:h16:cANSI

set cmdheight=2

set ruler

set laststatus=2

set showcmd

set scrolloff=3


set showmatch

set matchtime=5

set autowrite

set wildmenu

set linespace=2

set whichwrap=b,s,<,>,[,]

filetype plugin indent on

"==================diy keymap===================

vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

map <F7> :if exists("syntax_on") <BAR>
\    syntax off <BAR><CR>
\  else <BAR>
\syntax enable <BAR>
\  endif


" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup


"cscope set
if has("cscope")
  set csprg=/usr/bin/cscope
  "set cscopequickfix=s-,c-,d-,i-,t-,e-
  set csto=0
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  " else add database pointed to by environment
  elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
  endif
  set csverb
endif
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>    "search for this c symbol
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>    "search for this string
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
autocmd BufReadPost * if line("'\"")>0&&line("'\"")<=line("$") | exe "normal g'\"" | endif

"---------------------------------------------------------------
" NERDTree config
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"autocmd vimenter * NERDTree
"---------------------------------------------------------------
"
"
"
"
"


set t_Co=256
set list 
set lcs=tab:\|\ ,nbsp:%,trail:+,eol:$

set sw=4
set ts=4
set smarttab
set smartindent
set lbr
set fo+=mB
set sm
set selection=inclusive
set wildmenu

syntax on
set cul 
set shortmess=atI   " 
color colorful256     " set theme
set showcmd         " 
set scrolloff=3     "  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}     
set laststatus=2    
"set foldenable       
""set foldmethod=manual     
set nocompatible  
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set number
set history=1000
set hlsearch
set incsearch
set cmdheight=2
filetype on
filetype plugin on
filetype indent on
set viminfo+=!
set iskeyword+=_,$,@,%,#,-


nmap tt :%s/\t/    /g<CR>


autocmd BufNewFile * normal G


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"keyboard order
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" shift tab pages
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
map! <C-Z> <Esc>zzi
map! <C-O> <C-Y>,
map <C-A> ggVG$"+y
map <F12> gg=G
map <C-w> <C-w>w
imap <C-k> <C-y>,
imap <C-t> <C-q><TAB>
imap <C-j> <ESC>
"  Ctrl+c copy
"map <C-v> "*pa
imap <C-v> <Esc>"*pa
imap <C-a> <Esc>^
imap <C-e> <Esc>$
vmap <C-c> "+y
"set mouse=v
"set clipboard=unnamed
" remove null line  
nnoremap <F2> :g/^\s*$/d<CR> 
"compare file 
nnoremap <C-F2> :vert diffsplit 
"list directory 
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
"open tree directory 
map <C-F3> \be  


"define FormartSrc()
func FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc
"end FormartSrc


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
      autocmd BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \   exe "normal g`\"" |
          \ endif
endif
"auto open NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" auto closed
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" auto load
set autoread
" auto save
set autowrite
set magic                   
set guioptions-=T           
set guioptions-=m           
set nocompatible
" 
"set noeb
set confirm
"set nobackup
"set noswapfile
set ignorecase


set linespace=0
set wildmenu
set backspace=2
set whichwrap+=<,>,h,l
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=1
set scrolloff=3
filetype plugin indent on 
set completeopt=longest,menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set iskeyword+=.
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

let g:indentLine_char = '┊'
"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux


let NERDTreeIgnore=['\.pyc']
