#!/bin/bash
source utils/shutils.sh

## install tmux 2.+

#CHECK wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
#CHECK tar xzvf libevent-2.0.21-stable.tar.gz
#CHECK cd libevent-2.0.21-stable
#CHECK ./configure && make
#CHECK sudo make install
#
#CHECK cd -
#
##CHECK sudo yum install ncurses-devel -y
##CHECK wget https://github.com/tmux/tmux/releases/download/2.4/tmux-2.4.tar.gz
##CHECK tar xzf tmux-2.4.tar.gz
#CHECK cd tmux-2.4
#CHECK ./configure && make
#CHECK sudo make install
#
#CHECK cd -

CHECK cp confs/tmux/tmux.conf ~/.tmux.conf
