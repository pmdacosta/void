# Setup autocompletion for vim

## Install vim-plug

[vim-plug](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Setup Conquer of Completion

[coc](https://github.com/neoclide/coc.nvim)

open `.vimrc`
```bash
call plug#begin()

" List your plugins here
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
```

inside a `vim` session run:
```bash
:PlugInstall
```
