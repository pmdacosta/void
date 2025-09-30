" System-wide vim configuration
" source /usr/share/vim/vim91/defaults.vim
" Leader is \
"

" remap Leader to space
nnoremap <SPACE> <Nop>
let mapleader=" "

set nocompatible
set backspace=indent,eol,start
set history=50
filetype plugin indent on
set cindent
set cinoptions=:0,l1,g0,t0
" :0 put { at column 0 important for [[ / ]]
" l1 align case labels 1 shiftwidth from the switch
" g0 braces in struct/unions align to column 0
" t0 function return type sticks to the function name

let g:loaded_matchparen = 1
set noshowmatch
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set termguicolors
" colorscheme industry
" colorscheme delek
" colorscheme desert
" colorscheme habamax
colorscheme darkblue

set is hls
set number
" set relativenumber
set splitright
set splitbelow

" autocmd VimEnter *.c,*.h vnew | wincmd h

set mouse=a " Allow mouse movement

set completeopt=menuone,noinsert,noselect

nnoremap <c-h> :wincmd w<CR>
nnoremap <c-t> :tag
nnoremap <c-r> :buffer
" Open definition in vsplit
nnoremap <c-p> :vert stjump <C-r><C-w><CR>

nnoremap XX :w<CR>:qa<CR>
nnoremap QQ :qa<CR>

" see https://stackoverflow.com/questions/597687/how-to-quickly-change-variable-names-in-vim
" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Open file in vsplit
nnoremap gF :vert wincmd f<CR>


command! ClangFmt execute '%!clang-format'
nnoremap <leader>ff :ClangFmt<CR>
nnoremap <leader>cc :cclose<CR>  " close quickfix
nnoremap <leader>n :cnext<CR>
nnoremap <leader>p :cprevious<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>v :vsplit
nnoremap <leader>e :e

" run ctags
nnoremap <F5> :!ctags -R ./src<CR>
" run binary
nnoremap <F7> :!clear<CR>:!./game<CR>

" Function to rename the variable under the cursor
function! Rnvar()
  let word_to_replace = expand("<cword>")
  let replacement = input("new name: ")
  execute '%s/\(\W\)' . word_to_replace . '\(\W\)/\1' . replacement . '\2/gc'
endfunction
nnoremap <F2> :call Rnvar()<CR>

" run make
" nnoremap <c-m> :!clear<CR>:!./make.sh<CR>
" Compile project in a vertical split using quickfix
function! ToggleQuickfixBuild()
  " If quickfix is open, close it
  for win in range(1, winnr('$'))
    if getwinvar(win, '&buftype') ==# 'quickfix'
      cclose
      return
    endif
  endfor

  "execute "w"

  " Run build and populate quickfix
  cgetexpr systemlist('./make.sh')

  " If no quickfix entries, don't open the window
  if empty(getqflist())
    echo "Build OK — no errors"
    return
  endif

  copen

  " Jump to first error (and leave focus on code)
  wincmd p
  cfirst
  cnext
endfunction

nnoremap <C-M> :call ToggleQuickfixBuild()<CR>
" nnoremap <C-M> :cgetexpr systemlist('./make.sh')<CR>:copen<CR>:cfirst<CR>:cnext<CR>

" ----- PLUGINS ------
"
nnoremap <leader>t :NERDTreeToggle<CR>

" vim-plug plugins
call plug#begin()
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'preservim/nerdtree'
    Plug 'jlanzarotta/bufexplorer'
call plug#end()

" <Leader>be normal open
" <Leader>bt toggle open / close
" <Leader>bs force horizontal split open
" <Leader>bv force vertical split open
