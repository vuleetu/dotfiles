#!/usr/bin/env bash

wt=$PWD

#### GIT ####
# command, type, hash
# command -v foo >/dev/null 2>&1
# type foo >/dev/null 2>&1
# hash foo 2>/dev/null
if ! command -v brew > /dev/null 2>&1; then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

#http://linfan.info/blog/2012/02/27/colorful-terminal-in-mac/
#http://blog.bbkanba.com/配置linux下dircolorsls命令和mac下iterm2的颜色让终端iterm2或terminal也色彩/
brew install xz coreutils

cp dircolors.ansi-universal  ~/.dir_colors
eval `dircolors ~/.dir_colors`

if ! command -v vim > /dev/null 2>&1; then
    echo "Installing vim"
    brew install vim
fi

if ! command -v make > /dev/null 2>&1; then
    echo "Installing make"
    brew install make
fi

if ! command -v git > /dev/null 2>&1; then
    echo "Installing git"
    brew install git
fi

if ! command -v bzr > /dev/null 2>&1; then
    echo "Installing bzr"
    brew install bzr
fi

if ! command -v wget > /dev/null 2>&1; then
    echo "Installing wget"
    brew install wget
fi

if ! command -v go > /dev/null 2>&1; then
    if [ ! -f ~/download/go/bin/go ]; then
        echo "Installing golang"
        mkdir -p ~/download/
        mkdir -p ~/project/
        wget -O ~/download/go1.1.2.src.tar.gz http://go.googlecode.com/files/go1.1.2.src.tar.gz
        cd ~/download/ && tar zxvf go1.1.2.src.tar.gz && cd go/src && ./all.bash
    fi

    if [ ! -f $wt/env.sh ]; then
        echo "export GOROOT=~/download/go" >> $wt/env.sh
        echo "export GOPATH=~/project" >> $wt/env.sh
        echo "export GOBIN=\$GOROOT/bin" >> $wt/env.sh
        echo "export PATH=\$PATH:\$GOROOT/bin" >> $wt/env.sh
    fi

    echo "reload ./env.sh"
    source $wt/env.sh
fi

if ! command -v lua > /dev/null 2>&1; then
    brew install lua5.2
fi

if ! command -v curl > /dev/null 2>&1; then
    echo "Installing curl"
    brew install curl
fi

##### VIM #####
# install vundle
if [ ! -d ~/.vim/bundle/vundle ]; then
    echo "Installing vundle"
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

# install gocode, install golang first
if ! command -v gocode > /dev/null 2>&1; then
    echo "Installing gocode for golang auto complete feature"
    go get -u github.com/nsf/gocode
fi
# install nodejs
if ! command -v node > /dev/null 2>&1; then
    echo "Installing nodejs, we will have realtime syntax report"
    brew install nodejs
fi

if ! command -v ctags > /dev/null 2>&1; then
    echo "Installing exuberant-ctags, we will have ctags command"
    brew install exuberant-ctags
fi

if [ -f ~/.vimrc ]; then
    echo "Backup ~/.vimrc to ~/.vimrc.bbk"
    mv ~/.vimrc ~/.vimrc.bbk
fi

echo "Link to ~/.vimrc"
# link to .vimrc
ln $wt/vimrc ~/.vimrc
# bundle install
echo "Installing vim plugins via vundle"
vim +BundleInstall +qall

echo "Updating gocode"
cd ~/.vim/bundle/gocode/vim && ./update.sh

#### FONTS PATCH #####
# so we can use powerline-fonts for vim and zshrc
echo "Patch fonts"
if [ ! -d ~/fonts ]; then
    git clone https://github.com/Lokaltog/powerline-fonts.git ~/fonts
fi

if [ ! -d ~/.fonts ]; then
    mkdir -p ~/.fonts
fi

cp -rf ~/fonts/* ~/.fonts/
echo "Generate fonts cache"
if ! command -v fc-cache > /dev/null 2>&1; then
    echo "Installing fontconfig which contains fc-cache"
    brew install fontconfig
fi

fc-cache -vf ~/.fonts
#config the terminal to use SourceCode-Pro font(my prefered font)
echo "You may need to change the fonts in terminal(use SourceCode-Pro)"

#### ZSH ####
if ! command -v zsh > /dev/null 2>&1; then
    echo "Installing zsh"
    brew install zsh
fi

if [ ! -d ~/.oh-my-zsh ]; then
    echo "Installing oh-my-zsh"
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi

if [ ! -d ~/.oh-my-zsh/powerline-shell ]; then
    echo "Installing powerline-shell for zsh"
    git clone https://github.com/milkbikis/powerline-shell ~/.oh-my-zsh/powerline-shell
    cd ~/.oh-my-zsh/powerline-shell && ./install.py

    if [ -f ~/powerline-shell.py ]; then
        echo "Replace ~/powerline-shell.py with new one"
    fi

    ln ~/.oh-my-zsh/powerline-shell/powerline-shell.py ~/powerline-shell.py
fi

if ! command -v autojump > /dev/null 2>&1; then
    if [ ! -d $wt/autojump ]; then
        echo "Installing autojump"
        git clone git://github.com/joelthelion/autojump.git $wt/autojump
        cd $wt/autojump && ./install.sh
    fi
fi

if [ -f ~/.zshrc ]; then
    echo "Backup ~/.zshrc to ~/.zshrc.bbk"
    mv ~/.zshrc ~/.zshrc.bbk
fi

echo "Link to ~/.zshrc"
ln $wt/zshrc ~/.zshrc
echo "Changing shell"
chsh -s /bin/zsh

# install mostlike which support color for man page
if [ ! -f ~/.terminfo/mostlike.txt ]; then
    mkdir -p ~/.terminfo
    if [ ! -f $wt/mostlike.txt ]; then
        wget -O ~/.terminfo/mostlike.txt http://nion.modprobe.de/mostlike.txt
    else
        cp -rf $wt/mostlike.txt ~/.terminfo/
    fi
fi

tic ~/.terminfo/mostlike.txt
echo 'alias man="TERMINFO=~/.terminfo/ LESS=C TERM=mostlike PAGER=less man"' >> ~/.zshrc

if ! command -v tmux > /dev/null 2>&1; then
    echo -n "Install tmux(y/N)?"
    read dyn
    case $dyn in
        [Yy]* )
            echo "Installing tmux"
            brew install tmux
            echo 'alias tmux="tmux -2"' >> ~/.zshrc
            ;;
        * ) ;;
    esac
fi

cp -rf prettyping.sh /usr/local/bin/pping
chmod +x /usr/local/bin/pping
echo 'alias pping="pping"' >> ~/.zshrc
