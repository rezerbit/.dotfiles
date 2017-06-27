# Dotfiles 

My settings

## Git

```
sudo apt-get install git
cd ~
git clone https://github.com/rezerbit/.dotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```
## Create or add ssh key

## Zsh
### Install zsh
```
sudo apt-get install zsh
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zlogin ~/.zlogin
sudo usermod rezerbit -s /usr/bin/zsh
```

### Install oh-my-zsh
```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```

## Setting zsh them

### Step 1: Install Powerlevel9k
There are several ways to install and use the Powerlevel9k theme: vanilla ZSH, Oh-My-Zsh, Prezto, Antigen, Zgen, Antibody, ZPM and ZIM. Some Distributions like Arch Linux also provides a package. Do **one** of the following, depending on how you use ZSH.

#### Arch Linux

```
pacman -Syu zsh-theme-powerlevel9k
```

#### Option 1: Install for Vanilla ZSH

If you just use a vanilla ZSH install, simply clone this repository and reference it in your `~/.zshrc`:

```
git clone https://github.com/bhilburn/powerlevel9k.git ~/.powerlevel9k
echo 'source  ~/.powerlevel9k/powerlevel9k.zsh-theme' >> ~/.zshrc
```

#### Option 2: Install for Oh-My-ZSH

To install this theme for use in Oh-My-Zsh, clone this repository into your OMZ `custom/themes` directory.

```
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

You then need to select this theme in your `~/.zshrc`:

```
ZSH_THEME="powerlevel9k/powerlevel9k"
```

### Step 2: Install a Powerline Fonts

You can find the [installation instructions for Powerline Fonts here](https://powerline.readthedocs.io/en/latest/installation/linux.html#fonts-installation). You can also find the raw font files [in this Github repository](https://github.com/powerline/fonts) if you want to manually install them for your OS.

After you have installed Powerline fonts, make the default font in your terminal emulator the Powerline font you want to use.

### Step 3: Set terminal theme
### Step 4: Install [awesome-terminal-fonts](https://github.com/gabrielelana/awesome-terminal-fonts)


## RubyMine
* Download RubyMine, unzip and move to /opt/rubymine

```
ln -s ~/.dotfiles/.rubymine.desktop ~/.local/share/applications
```
* instal Java
```
http://www.linuxrussia.com/2013/04/oracle-java-7-ubuntu-1304-1204-1210.html
```

* Import settings from ruby_mine_settings.jar
* Create application launcher
```
Tools -> Create Desktop Entry
```

## Vim
TODO
```
sudo apt-get install vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
```
* install Vundle

```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

* install plugins: open vim and fire command `:BundleInstall`
## Tmux

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
