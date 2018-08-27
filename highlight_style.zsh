# Modified from Atom's 'One Light' style.

unset ZSH_HIGHLIGHT_STYLES
typeset -A ZSH_HIGHLIGHT_STYLES

# main highlighter. See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=9,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=5,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=4'
ZSH_HIGHLIGHT_STYLES[alias]='fg=4'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=4'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=6'
ZSH_HIGHLIGHT_STYLES[function]='fg=4'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=6'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=5,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=4'
ZSH_HIGHLIGHT_STYLES[path]=''
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=''
ZSH_HIGHLIGHT_STYLES[path_prefix]=''
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=''
ZSH_HIGHLIGHT_STYLES[globbing]='fg=6'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=6'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=3'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=3'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=2'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=2'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=2'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=2'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=2'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=2'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=2'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=2'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=2'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=9'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=6'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=6'
ZSH_HIGHLIGHT_STYLES[assign]='fg=9'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=6'
ZSH_HIGHLIGHT_STYLES[comment]='fg=7'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=4'
ZSH_HIGHLIGHT_STYLES[default]=''

export ZSH_HIGHLIGHT_STYLES
