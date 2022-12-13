#Create a dot vimrc
vim .vimrc

syntax on
set bg=dark
autocmd FileType yaml setlocal ai et ts=2 sw=2 cuc cul

#To make it available for sudo
sudo cp .vimrc /root/