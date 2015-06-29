:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
:set laststatus=2
:set incsearch
:set nocompatible

:set cindent
:set tabstop=8
:syntax on
:set guifont=Liberation\ Mono\ 12
:autocmd FileType python setlocal tabstop=4|setlocal autoindent|setlocal softtabstop=4|setlocal expandtab|setlocal shiftwidth=4
:autocmd FileType *     set formatoptions=tcql nocindent comments&
:autocmd FileType c,cpp,cc set formatoptions=croql tabstop=8

:set incsearch
:set autowrite
:set showmatch
:set vb t_vb=

:color darkblue
:map <silent> <C-F2> :if &guioptions =~# 'T' <Bar>
                        \set guioptions-=T <Bar>
                        \set guioptions-=m <Bar>
                \else <Bar>
                        \set guioptions+=T <Bar>
                        \set guioptions+=m <Bar>
                \endif <CR>

:highlight SignColumn guibg=darkgrey
:sign define info text=>> linehl=Warning texthl=Error
:map <F1> :exe ":sign place 100 line=" . line(".") . " name=info file=" . expand ("%:p")
:map <C-F1> :exe ":sign unplace"
