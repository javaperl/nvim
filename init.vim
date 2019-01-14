set hlsearch
set incsearch
set inccommand=split
"set inccommand=nosplit
set hidden
set mouse=a


"
" Tab stops
"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


"
" Autocmd with FileType
"
if has("autocmd")
"  filetype on
"
"  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
"  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
"  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
"  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
"  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
"  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
"  autocmd FileType rust setlocal ts=4 sts=4 sw=4 expandtab
endif


"
" Invisible characters
"
"set list
"set nolist
"set listchars=tab:▸\ ,eol:¬


"
" Enable and run minpac
"
packadd minpac
call minpac#init()
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()


"
" minpac managed plugins, except some separate ones with more configurations below
"
call minpac#add('tpope/vim-unimpaired')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('rust-lang/rust.vim')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('itchyny/lightline.vim')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
call minpac#add('k-takata/minpac', {'type': 'opt'})


"
" FZF/fzf
"
" this is for mac's homebrew
set rtp+=/usr/local/opt/fzf
" normal mode mapping
nnoremap <C-p> :<C-u>FZF<CR>


"
" NeoVim Terminal mappings
"
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <A-[> <Esc>
"  " Map meta-r for inserting register values
"  tnoremap <expr> <A-r> '<C-\><C-n>"'.nr2char(getchar()).'pi'
"  " Switching between split windows:
"  tnoremap <A-h> <C-\><C-n><C-w>h
"  tnoremap <A-j> <C-\><C-n><C-w>j
"  tnoremap <A-k> <C-\><C-n><C-w>k
"  tnoremap <A-l> <C-\><C-n><C-w>l
"  nnoremap <A-h> <C-w>h
"  nnoremap <A-j> <C-w>j
"  nnoremap <A-k> <C-w>k
"  nnoremap <A-l> <C-w>l
endif


"
" vim-colors-solarized colorscheme
"
"call minpac#add('altercation/vim-colors-solarized')
"syntax enable
"set background=dark
"set background=light
"colorscheme solarized


"
" vim-solarized8 colorscheme
"
call minpac#add('lifepillar/vim-solarized8')
"syntax enable
set background=dark
"set background=light
colorscheme solarized8
"colorscheme solarized8_low
"colorscheme solarized8_high
"colorscheme solarized8_flat


"
" mysticaltutor colorscheme
"
"call minpac#add('caksoylar/vim-mysticaltutor')
"colorscheme mysticaltutor


"
" Source more scripts
"
"runtime source_airline.vim
"runtime source_base16-vim.vim
"runtime source_vim-colorschemes.vim


"
" cscope
" http://jhshi.me/2013/02/21/using-cscope-inside-vim/index.html#.XDzWmvxJmL4
" <ctrl-\> s: find all appearance of this symbol
" <ctrl-\> g: go to the definition of this symbol
" <ctrl-\> d: functions that called by this function
" <ctrl-\> c: functions that calling this function
"
if has("cscope")
    set csprg=/usr/local/bin/cscope
    set csto=0
    set cst
    set csverb
    " C symbol
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    " definition
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    " functions that called by this function
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
    " funtions that calling this function
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    " test string
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    " egrep pattern
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    " file
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    " files #including this file
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

    " Automatically make cscope connections
    function! LoadCscope()
        let db = findfile("cscope.out", ".;")
        if (!empty(db))
            let path = strpart(db, 0, match(db, "/cscope.out$"))
            set nocscopeverbose " suppress 'duplicate connection' error
            exe "cs add " . db . " " . path
            set cscopeverbose
        endif
    endfunction
    au BufEnter /* call LoadCscope()
endif
