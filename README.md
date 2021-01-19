# mac-setup
Mac Setup

## VSCode key repeat
```
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```

```
cd ~
git clone https://github.com/seanwrightprft/mac-setup.git
cp mac-setup/bash_profile .bash_profile
cp mac-setup/vimrc .vimrc
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vi -c "PluginInstall" $HOME/.vimrc -c "qa"
```
