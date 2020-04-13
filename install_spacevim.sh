#!/bin/bash
source utils/shutils.sh

CHECK sudo yum install ncurses-devel -y
if [ ! -f master.zip]; then
    CHECK wget https://github.com/vim/vim/archive/master.zip 
else
    echo "master.zip exists skipping wget"
fi
CHECK unzip master.zip 
CHECK cd vim-master/src/ 
CHECK ./configure --enable-multibyte --enable-pythoninterp=yes
CHECK make -j4 && sudo make install 
vim --version
CHECK source ~/.zshrc
CHECK curl -sLf https://spacevim.org/install.sh | bash
