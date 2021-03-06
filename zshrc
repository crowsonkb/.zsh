# path
# path=(~/anaconda3/bin $path)
path=(~/.local/bin ~/.gem/ruby/2.3.0/bin $path)

# options
HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000
setopt auto_pushd extended_history hist_ignore_dups interactivecomments notify rm_star_silent share_history
bindkey -e

# completion
fpath=(/usr/local/share/zsh-completions $fpath)
# source <(npm completion)
autoload -Uz compinit
compinit
zstyle ':completion:::::' completer _complete
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
zstyle ':completion:*' verbose yes

# set terminal title
chpwd() {
  [[ -t 1 ]] || return
  print -Pn "\e]2;%~\a"
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
bindkey "^I" expand-or-complete-prefix

# customizations
alias ls='ls -G'
alias swift='PATH=/usr/bin:"$PATH" swift'  # fix path to python 2

# prompt
PS1='%n@%m:%~%# '
RPROMPT='$(git_super_status)'

# source ~/torch/install/bin/torch-activate

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kat/.local/opt/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/kat/.local/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kat/.local/opt/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/kat/.local/opt/google-cloud-sdk/completion.zsh.inc'; fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# These plugins must come near/at the end of .zshrc
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/highlight_style.zsh
source ~/.zsh/zsh-autoenv/autoenv.zsh
