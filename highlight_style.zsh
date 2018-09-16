# Modified from Atom's 'One Light' style.

export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main pattern)


# main highlighter. See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md

unset ZSH_HIGHLIGHT_STYLES
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=9,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=blue'
ZSH_HIGHLIGHT_STYLES[alias]='fg=blue'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=blue'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[function]='fg=blue'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=blue'
ZSH_HIGHLIGHT_STYLES[path]=''
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=''
ZSH_HIGHLIGHT_STYLES[path_prefix]=''
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=''
ZSH_HIGHLIGHT_STYLES[globbing]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=green'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=green'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=green'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=green'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=green'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=green'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=green'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=green'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=green'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=9'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[assign]='fg=9'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[comment]='fg=white'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=blue'
ZSH_HIGHLIGHT_STYLES[default]=''

export ZSH_HIGHLIGHT_STYLES


# pattern highlighter. See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/pattern.md

unset ZSH_HIGHLIGHT_PATTERNS
typeset -A ZSH_HIGHLIGHT_PATTERNS

ZSH_HIGHLIGHT_PATTERNS+=('~' 'fg=cyan')
ZSH_HIGHLIGHT_PATTERNS+=(';' 'fg=cyan')
ZSH_HIGHLIGHT_PATTERNS+=('$[[:IDENT:]]##' 'fg=9')
ZSH_HIGHLIGHT_PATTERNS+=('${[[:IDENT:]]##}' 'fg=9')

export ZSH_HIGHLIGHT_PATTERNS
