# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ---- ALIAS --------
# To set 'nvim' as default when calling 'vim'
alias vi='nvim'

# Runs the clientSetup
alias clientSetup='zsh ~/.snippets/clientSetup.sh'

# A path to MV's code
alias code='cd ~/Documents/MV/code;pwd'

# Copy path to clipboard using proper escape sequences
alias cwd='printf "%q\n" "$(pwd)" | pbcopy'

# ALWAYS confirm of file removal
alias rm='rm -i'

# To set editor to load 'nvim'
export EDITOR='nvim'

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

eval "$(pyenv virtualenv-init -)"

export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

# Load the widget 
autoload -U edit-command-line

# Link Zsh line editor with widget
zle -N edit-command-line

# ---- KEY BINDINGS --------
export Z_LEADER='/z'

# (zz) to open `edit-command-line''
bindkey "${Z_LEADER}z" edit-command-line

# Enter Vim normal mode in command prompt
bindkey -v "${Z_LEADER}n" vi-cmd-mode

# Delete word on command prompt
bindkey "${Z_LEADER}^?" backward-delete-word

# Open zshrc, but FAST
bindkey -s "${Z_LEADER}." 'vi ~/.zshrc\n'


source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias config='/usr/bin/git --git-dir=/Users/marcosvelazquez/.cfg/ --work-tree=/Users/marcosvelazquez'
