Vim Support for kdb+

Copy the files in the <vim> subdirectory to your vim home directory (probably $HOME/.vim except onwindow - there who knows …)

If you already have a filetype.vim then just insert the additional k & q lines.

Copy the *.vim files from <syntax> and <indent> to their corresponding directories, creating them if need be.

The <generate> subdirectory contains the q scripts to generate the very latest versions based on the contents of .q etc from a live session.
