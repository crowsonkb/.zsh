# path
# path=(~/anaconda3/bin $path)
path=(~/.local/bin /usr/local/cuda/bin ~/.gem/ruby/2.0.0/bin $path)

# options
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt auto_cd auto_pushd extended_history hist_ignore_dups notify share_history
bindkey -e

# completion
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit
compinit
zstyle ':completion:::::' completer _complete
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes

# set terminal title
chpwd() {
  [[ -t 1 ]] || return
  case $TERM in
    sun-cmd) print -Pn "\e]l%~\e\\"
      ;;
    *xterm*|rxvt|(dt|k|E)term) print -Pn "\e]2;%~\a"
      ;;
  esac
}
chpwd

# help (homebrew location)
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-git-prompt/zshrc.sh
source ~/.zsh/irc_like_input.zsh

# key bindings
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

# customizations
alias ls='ls -G'

# prompt
PS1='%n@%m:%~%# '
RPROMPT='$(git_super_status)'

source ~/torch/install/bin/torch-activate

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kat/.local/opt/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/kat/.local/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kat/.local/opt/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/kat/.local/opt/google-cloud-sdk/completion.zsh.inc'; fi
