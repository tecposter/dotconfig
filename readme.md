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
sudo add-apt-repository ppa:neovim-ppa/unstable
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
