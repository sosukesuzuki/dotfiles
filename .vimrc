if &compatible
    set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

let s:toml_dir = expand('~/.vim/config')

call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

call dein#end()
call dein#save_state()

source ~/.vim/config/plugins/neocomplete.vim
source ~/.vim/config/plugins/nerdtree.vim
source ~/.vim/config/plugins/unite.vim

source ~/.vim/config/editor.vim
