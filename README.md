# Dotfiles 

My settings

## Installation

```
sudo apt-get install git
cd ~
git clone https://github.com/rezerbit/.dotfiles.git ~/.dotfiles
```

### Git
```
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```
* Create or add ssh key

### Fonts

```
ln -s ~/.doftiles/.fonts ~/.fonts
```
* Change terminal font (with "Powerline" postfix)

### Terminal

https://github.com/Anthony25/gnome-terminal-colors-solarized

### Zsh
* Install zsh
```
sudo apt-get install zsh
sudo usermod rezerbit -s /usr/bin/zsh
```

* Install oh-my-zsh
```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```
** for mac
```
ln -s ~/.doftiles/zsh/zshrc_mac ~/.zshrc
cp ~/.doftiles/zsh/zsh_themes/tuts01.zsh-theme ~/.oh-my-zsh/themes/
```
** for linux

```
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.doftiles/.zlogin ~/.zlogin
ln -s ~/.dotfiles/.oh-my-zsh/custom ~/.oh-my-zsh/custom

cp ~/.doftiles/zsh_themes/tuts02.zsh-theme ~/.oh-my-zsh/themes/
```

* Restart system

Great theme by tuts+:
http://code.tutsplus.com/tutorials/how-to-customize-your-command-prompt--net-24083


### RubyMine
* Download RubyMine, unzip and move to /opt/rubymine

```
ln -s ~/.dotfiles/.rubymine.desktop ~/.local/share/applications
```
* instal Java
```
http://www.linuxrussia.com/2013/04/oracle-java-7-ubuntu-1304-1204-1210.html
```

* Import settings from ruby_mine_settings.jar

### Tmux

TODO
```
git clone https://github.com/erikw/tmux-powerline
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
cp ~/.dotfiles/tmux/mytheme.sh ~/.dotfiles/tmux/tmux-powerline/themes/ 
```
Update `~/.dotfiles/tmux/tmux-powerline/config/defaults.sh` by
```
export TMUX_POWERLINE_DEBUG_MODE_ENABLED_DEFAULT="false"
export TMUX_POWERLINE_PATCHED_FONT_IN_USE_DEFAULT="false"
export TMUX_POWERLINE_THEME_DEFAULT="mytheme"
```

### Vim
TODO
```
sudo apt-get install vim
ln -s ~/.doftiles/vim .vim
ln -s ~/.doftiles/vim/vimrc ~/.vimrc
```
* install Vundle

```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

* install plugins: open vim and fire command `:BundleInstall`

