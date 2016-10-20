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
