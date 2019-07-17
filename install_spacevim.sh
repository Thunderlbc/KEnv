#!/bin/bash
source utils/shutils.sh

#CHECK sudo yum install ncurses-devel -y
#CHECK wget https://github.com/vim/vim/archive/master.zip 
#CHECK unzip master.zip 
#CHECK cd vim-master/src/ 
#CHECK ./configure --enable-multibyte --enable-pythoninterp=yes
#CHECK make && sudo make install 
#vim --version
CHECK source ~/.zshrc
CHECK curl -sLf https://spacevim.org/install.sh | bash
