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
