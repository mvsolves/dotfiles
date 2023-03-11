# MV's Dotfiles

This repository is designed specifically to contain all of Marc's essential tools for development.

## Required tools 
- [Homebrew](https://brew.sh) (package manager)
- [Zsh](https://formulae.brew.sh/formula/zsh) (if not already installed on system)


## Installing dotfiles

Run the command below when cloning MV's dotfiles
```
git clone --bare https://github.com/mvsolves/dotfiles.git $HOME/.cfg
```

Set Git alias for configuration repository with custom directory locations.

```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
with that done, checkout files:
```
config checkout
exec zsh
```

## Next steps
- All Brew bundle packages will be in `$HOME/.config/brewfiles`
- [MVIM](https://github.com/mvsolves/MVIM)


## Reference material
- [Dotfile instructions](https://www.paultman.com/git-for-dotfile-configs/)
- [Dotfiles Atlassian instructions](https://www.atlassian.com/git/tutorials/dotfiles)
- [Paulirish dotfiles reference](https://github.com/paulirish/dotfiles)
- [Mathias Bynens dotfiles reference](https://github.com/mathiasbynens/dotfiles)
- [Kyle Chui dotfiles reference](https://github.com/kylechui/dotfiles)
