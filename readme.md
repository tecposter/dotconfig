
# Set up dotconfig

## Install neovim
ref: https://github.com/neovim/neovim/wiki/Installing-Neovim


**ubuntu**

```
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```


## Install tmux

Remove old version
```
sudo apt purge tmux
```

[Install tmux from source code](http://www.tecposter.cn/a/install-tmux-source-code) 

```
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
sudo cp tmux /usr/local/bin/
```

install tmux-plugins/tpm
```
cd ~/.dotconfig/tmux/plugins
git clone https://github.com/tmux-plugins/tpm
```


## set up dotconfig

git clone 
```
mkdir ~/.dotconfig
cd ~/.dotconfig
git clone https://github.com/tecposter/dotconfig.git .
```

tmux & nvim
```
mkdir ~/.config
cd ~/.config
ln -s ./../.dotconfig/tmux

cd ~
ln -s .dotconfig/tmux/tmux.conf .tmux.conf
```

nvim
```
cd ~/.config
ln -s ./../.dotconfig/nvim 

## install dein.vim
cd ~/.dotconfig/nvim/
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installler.sh ./bundle
```

open nvim
```
:call dein#install()
```

bash
```
cd ~ 
ln -s .dotconfig/bash/bash_aliases.sh .bash_aliases
ln -s .dotconfig/bash/bash_logout.sh .bash_logout
ln -s .dotconfig/bash/bash_profile.sh .bash_profile
ln -s .dotconfig/bash/bashrc.sh .bashrc
```

install tmux plugin
```
<C-b> I // install plugins
<C-b> R // reload tmux config
```


------------------------


# ssh key

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

# git-subrepo

```
sudo mkdir /usr/local/src/git-subrepo
sudo chown i:i /usr/local/src/git-subrepo

git clone https://github.com/ingydotnet/git-subrepo /usr/local/src/git-subrepo
```

```
$ echo 'source /usr/local/src/git-subrepo/.rc' >> ~/.bashrc
$ source ~/.profile
```

# tmux

```
$ git subrepo clone https://github.com/tmux-plugins/tpm vendor/tmux/tpm --debug -v
```


```
// in ~/.profile
export TERM="xterm-256color"
```

```
$ source ~/.profile
```

```
tmux new -t sessionname
<C-b> I // install plugins
<C-b> R // reload tmux config
```

# neovim

```
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```

deprecate neobundle
```
cd ~/.config
$ git subrepo clone https://github.com/Shougo/neobundle.vim vendor/neobundle.vim
```

use dein.vim instead
```
cd ~/.dotconfig/nvim/
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installler.sh ./bundle
```

copy code to ~/.dotconfig/nvim/dein.local.vim

```
nvim
:call dein#install()
```


# php

```
$ sudo pacpan -S php
$ curl -sS https://getcomposer.org/installer | php
$ mv composer.phar /usr/bin/composer
$ composer config -g repo.packagist composer https://packagist.phpcomposer.com

// php_codesniffer
$ composer global require "squizlabs/php_codesniffer=*"
$ composer global require phpmd/phpmd
```

# nodejs
```
$ sudo pacman -S nodejs npm
$ sudo npm i -g eslint
$ sudo npm i -g sass-lint
```


# ref

https://github.com/slomkowski/bash-full-of-colors
https://github.com/alebcay/awesome-shell

