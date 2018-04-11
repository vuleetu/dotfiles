setopt inc_append_history
setopt share_history

export EDITOR=vim

#zsh_autosuggestions plugin tweak
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

#zsh_syntaxhighlightings plugin tweak
ZSH_HIGHLIGHT_STYLES[comment]='fg=10'

#qlmanage(QUICK LOOK)
alias qlf='qlmanage -p "$@" >& /dev/null'

#locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

#Used for zsh-completions
autoload -U compinit && compinit

##dvm(Docker Version Manager)
[ -f /usr/local/opt/dvm/dvm.sh ] && . /usr/local/opt/dvm/dvm.sh
[[ -r /usr/local/opt/dvm/etc/bash_completion.d/dvm ]] && . /usr/local/opt/dvm/etc/bash_completion.d/dvm
