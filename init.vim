set hlsearch
set incsearch
set inccommand=split
"set inccommand=nosplit
set hidden


"
" minpac managed plugins, except some separate ones with more configurations below
"
packadd minpac
call minpac#init()
call minpac#add('tpope/vim-unimpaired')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('rust-lang/rust.vim')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
call minpac#add('ktakata/minpac', {'type': 'opt'})
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()


"
" FZF/fzf
"
" this is for mac's homebrew
set rtp+=/usr/local/opt/fzf
" normal mode mapping
nnoremap <C-p> :<C-u>FZF<CR>


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
