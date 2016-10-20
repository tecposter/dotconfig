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
echo 'source /usr/local/src/git-subrepo/.rc' >> ~/.bashrc
```

# tmux

in ~/.profile

```
export TERM="xterm-256color"
```

