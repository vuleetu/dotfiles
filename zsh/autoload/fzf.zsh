if [ -f ~/.fzf.zsh ] ; then
    source ~/.fzf.zsh
    fzf-history-widget-accept() {
      fzf-history-widget
      zle accept-line
    }
    zle     -N     fzf-history-widget-accept
    bindkey '^X^R' fzf-history-widget-accept
fi
