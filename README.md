# MV's Dotfiles

## Run the command below when cloning MV's dotfiles
```
git clone --bare https://github.com/mvsolves/dotfiles.git $HOME/.cfg
```

## Ensure that you have updated git command
```
(which includes the repo and your working tree locations):
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
## With that done, checkout files:
```
config checkout
```
## Reference material
[Dotfile instructions](https://www.paultman.com/git-for-dotfile-configs/)

[Dotfiles Atlassian instructions](https://www.atlassian.com/git/tutorials/dotfiles)

[Paulirish dotfiles reference](https://github.com/paulirish/dotfiles)

[Mathias Bynens dotfiles reference](https://github.com/mathiasbynens/dotfiles)

[Kyle Chui dotfiles reference](https://github.com/kylechui/dotfiles)

