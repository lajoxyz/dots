export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# >>> conda initialize >>>
__conda_setup="$('$HOME/miniforge3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniforge3/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source <(fzf --zsh)

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias vimconfig="nvim ~/.config/nvim/init.lua"
alias vim="nvim"
alias ls="lsd"
alias ga="git add -A"
alias gc="git commit -a"
alias gp="git push"
alias gs="git status"
alias vf='nvim $(fzf --preview "bat --style=numbers --color=always {} 2>/dev/null || cat {}")'
alias mux=tmuxinator




git_tree() {
  git ls-files | awk '
  {
    n = split($0, parts, "/")
    path = ""
    for (i = 1; i < n; i++) {
      path = ""
      for (j = 1; j <= i; j++) path = path parts[j] "/"
      if (!seen[path]++) {
        printf "%*s%s\n", (i-1)*4, "", "├─ " parts[i]
      }
    }
    printf "%*s%s\n", (n-1)*4, "", "└─ " parts[n]
  }
  '
}
# Added by Windsurf
export PATH="$HOME/.codeium/windsurf/bin:$PATH"
export EDITOR=nvim
