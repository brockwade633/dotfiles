#!/bin/zsh

# install new zsh
echo "\nInstalling zsh..."
brew install zsh

# install oh-my-zsh
echo "\nInstalling oh-my-zsh with plugins and theme..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

# install syntax highlighting and auto suggestions oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install neovim
echo "\nInstalling neovim..."
brew install neovim

# install tmux
echo "\nInstalling tmux..."
brew install tmux

# install starship
echo "\nInstalling starship..."
brew install starship

# reload config from new dot files
echo "\nReloading shell with new dot files..."
cp -r .zshrc .config .tmux.conf ~
. ~/.zshrc
zsh
