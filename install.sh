#!/usr/bin/env bash

#### GIT ####
@echo "Installing vim"
sudo apt-get install vim
@echo "Installing git, bzr"
sudo apt-get install git bzr
@echo "Installing golang"
wget http://go.googlecode.com/files/go1.1.2.src.tar.gz
tar zxvf go1.1.2.src.tar.gz && cd go/src && ./all.bash

##### VIM #####
# install gocode, install golang first
@echo "Installing gocode for golang auto complete feature"
go get -u github.com/nsf/gocode
cd .vim/bundle/gocode/vim && ./update.sh
# install nodejs
@echo "Installing nodejs, we will have realtime syntax report"
sudo apt-get install nodejs
@echo "Link to ~/.vimrc"
# link to .vimrc
ln vimrc ~/.vimrc
# install vundle
@echo "Installing vundle"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
# bundle install
@echo :Installing vim plugins via vundle
vim +BundleInstall +qall

#### FONTS PATCH #####
# so we can use powerline-fonts for vim and zshrc
@echo "Patch fonts"
git clone https://github.com/Lokaltog/powerline-fonts.git ~/fonts
cp -rf ~/fonts/* ~/.fonts/
@echo "Generate fonts cache"
fc-cache -vf ~/.fonts
#config the terminal to use SourceCode-Pro font(my prefered font)
@echo "You may need to change the fonts in terminal(use SourceCode-Pro)"

#### ZSH ####
@echo "Installing zsh"
sudo apt-get install zsh
@echo "Installing oh-my-zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
@echo "Installing powerline-shell for zsh"
git clone https://github.com/milkbikis/powerline-shell ~/.oh-my-zsh/
cd ~/.oh-my-zsh/powerline-bash && ./install.py && ln powerline-shell.py ~/powerline-shell.py
@echo "Backup ~/.zshrc to ~/.zshrc.bbk"
cp -rf ~/.zshrc ~/.zshrc.bbk
@echo "Link to ~/.zshrc"
ln zshrc ~/.zshrc
@echo "Changing shell"
chsh -s /bin/zsh
