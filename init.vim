set hlsearch
set incsearch
set inccommand=split
"set inccommand=nosplit
set hidden
set mouse=a


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
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
call minpac#add('ktakata/minpac', {'type': 'opt'})


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
"  tnoremap <Esc> <C-\><C-n>
"  tnoremap <A-[> <Esc>
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
"set background=dark
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
runtime airline.vim
"runtime base16-vim.vim
"runtime vim-colorschemes.vim
