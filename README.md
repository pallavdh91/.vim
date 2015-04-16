Vim configuration
====

Likely does not support older versions of vim. It is recommended to have the latest `Huge` version, and to set the `TERM` environment variable to `xterm-256color`, if your terminal supports [256 colors](http://vim.wikia.com/wiki/256_colors_in_vim).

1. Clone the repository
    
        $ git clone git://github.com/traib/.vim.git ~/.vim
        $ ln -s ~/.vim/vimrc ~/.vimrc
        $ ln -s ~/.vim/gvimrc ~/.gvimrc

2. Set-up plugins
        
        $ cd ~/.vim/
        $ sh ./plugins.sh
    Additional plugins can listed in the plugins.sh file, please see the source for more details.

Note: Configuration will not load properly if the repository is not cloned into `~/.vim`
