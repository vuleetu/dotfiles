#!/usr/bin/env bash

#### GIT ####
# command, type, hash
# command -v foo >/dev/null 2>&1
# type foo >/dev/null 2>&1
# hash foo 2>/dev/null
if command -v vim > /dev/null 2>&1; then
    echo "vim exists"
else
    echo "Installing vim"
    sudo apt-get install vim
fi

if command -v make > /dev/null 2>&1; then
    echo "make exists"
else
    echo "Installing make"
    sudo apt-get install make
fi

if command -v git > /dev/null 2>&1; then
    echo "git exists"
else
    echo "Installing git"
    sudo apt-get install git
fi

if command -v bzr > /dev/null 2>&1; then
    echo "git exists"
else
    echo "Installing bzr"
    sudo apt-get install bzr
fi

if command -v go > /dev/null 2>&1; then
    echo "golang exists"
else
    echo "Installing golang"
    mkdir -p ~/download/
    mkdir -p ~/project/
    wget -O ~/download/go1.1.2.src.tar.gz http://go.googlecode.com/files/go1.1.2.src.tar.gz ~/download/
    cd ~/download/ && tar zxvf go1.1.2.src.tar.gz && cd go/src && ./all.bash
    export PATH=$PATH:~/download/go/bin
    export GOPATH=~/project
    export GOBIN=~/download/go/bin
fi

##### VIM #####
# install vundle
echo "Installing vundle"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
# install gocode, install golang first
if command -v gocode > /dev/null 2>&1; then
    echo "gocode exists"
else
    echo "Installing gocode for golang auto complete feature"
    go get -u github.com/nsf/gocode
    cd .vim/bundle/gocode/vim && ./update.sh
fi
# install nodejs
if command -v node > /dev/null 2>&1; then
    echo "node.js exists"
else
    echo "Installing nodejs, we will have realtime syntax report"
    sudo apt-get install nodejs
fi

echo "Link to ~/.vimrc"
# link to .vimrc
ln vimrc ~/.vimrc
# bundle install
echo "Installing vim plugins via vundle"
vim +BundleInstall +qall

#### FONTS PATCH #####
# so we can use powerline-fonts for vim and zshrc
echo "Patch fonts"
git clone https://github.com/Lokaltog/powerline-fonts.git ~/fonts
mkdir ~/.fonts && cp -rf ~/fonts/* ~/.fonts/
echo "Generate fonts cache"
sudo apt-get install fontconfig
fc-cache -vf ~/.fonts
#config the terminal to use SourceCode-Pro font(my prefered font)
echo "You may need to change the fonts in terminal(use SourceCode-Pro)"

#### ZSH ####
echo "Installing zsh"
sudo apt-get install zsh
echo "Installing oh-my-zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
echo "Installing powerline-shell for zsh"
git clone https://github.com/milkbikis/powerline-shell ~/.oh-my-zsh/
cd ~/.oh-my-zsh/powerline-bash && ./install.py && ln powerline-shell.py ~/powerline-shell.py
echo "Installing autojump"
git clone git://github.com/joelthelion/autojump.git
cd autojump && ./install.sh
echo "Backup ~/.zshrc to ~/.zshrc.bbk"
cp -rf ~/.zshrc ~/.zshrc.bbk
echo "Link to ~/.zshrc"
ln zshrc ~/.zshrc
echo "Changing shell"
chsh -s /bin/zsh
