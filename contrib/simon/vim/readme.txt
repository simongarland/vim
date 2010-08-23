Vim Support for kdb+

Copy the files in the <vim> subdirectory to your vim home directory (probably $HOME/.vim except on window - there who knows …)

If you already have a filetype.vim then just insert the additional k & q lines.

Copy the *.vim files from <syntax> and <indent> to their corresponding directories, creating them if need be.

The <generate> subdirectory contains the q scripts to generate the very latest versions based on the contents of the .q etc locales from a live session, based on Rohit's earlier version for q. 

Most of the work is done in k.vim (which is loaded into q.vim) as q "only" adds the functions in <.q> as primitives, and relaxes the restriction on underscores in names.
