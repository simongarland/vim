Vim Support for kdb+

Copy <vimrc> to $HOME/.vimrc if you don't have one already, otherwise use it as a basis for cut'n'paste attacks. To use it properly you'll need to install a powerline font (google it) and the vim package manager NeoBundle. 

Copy the files in the <vim> subdirectory to your vim home directory (probably $HOME/.vim)

If you already have a filetype.vim then just insert the additional k & q lines.

Copy the *.vim files from <syntax> and <indent> to their corresponding directories, creating them if need be.

Most of the work is done in k.vim (which is loaded into q.vim) as q "only" adds the functions in <.q> as primitives, and relaxes the restriction on underscores in names.
