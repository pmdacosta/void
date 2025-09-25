" System-wide vim configuration
" source /usr/share/vim/vim91/defaults.vim
" Leader is \
"

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
command! ClangFmt execute '%!clang-format'
nnoremap <leader>ff :ClangFmt<CR>

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

set number
" set relativenumber
set splitright
set splitbelow

" TODO: check how to do this only when it's a .c or .h file
autocmd VimEnter *.c,*.h vnew | wincmd h

set mouse=a " Allow mouse movement

" save current file and quit all windows
nnoremap XX :w<CR>:qa<CR>

" see https://stackoverflow.com/questions/597687/how-to-quickly-change-variable-names-in-vim
" For local replace
nnoremap gl gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" run ctags
nnoremap <F5> :!ctags -R ./src<CR>

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

  " Run build and populate quickfix
  cgetexpr systemlist('./make.sh')

  " If no quickfix entries, don't open the window
  if empty(getqflist())
    echo "Build OK — no errors"
    return
  endif

  " Ensure new vertical split opens on the right
  " let s_save_splitright = &splitright
  " set splitright

  " Open quickfix vertically
  vert copen

  " Resize quickfix to half the total columns
  " Use &columns (total Vim columns) — compute before measuring current window
  let l:target = float2nr(&columns / 2)
  execute 'vertical resize ' . l:target

  " restore splitright preference
  " let &splitright = s_save_splitright

  " Jump to first error (and leave focus on code)
  cfirst
  wincmd p
endfunction

nnoremap <C-M> :call ToggleQuickfixBuild()<CR>
nnoremap <leader>cc :cclose<CR>  " close quickfix
nnoremap <leader>cf :cfirst<CR>:cnext<CR>
nnoremap <leader>cn :cnext<CR>

" run binary
nnoremap <F7> :!clear<CR>:!./game<CR>

" ----- PLUGINS ------
"
map <F6> :NERDTreeToggle<CR>

" vim-plug plugins
call plug#begin()
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'preservim/nerdtree'
call plug#end()
