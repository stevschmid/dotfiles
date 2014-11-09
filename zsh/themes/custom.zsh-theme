ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Customized git status, oh-my-zsh currently does not allow render dirty status before branch
# http://heim.no/Unix/2012/04/14/displaying-time-since-last-git-commit-in-the-prompt/
git_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    local t=`git log -1 --pretty=format:"%ar" | sed 's/\([0-9]*\) \(.\).*/\1\2/'`
    echo "%{$fg[green]%}$t%{$reset_color%} $(parse_git_dirty)%{$fg_bold[yellow]%}%{$reset_color%}$ZSH_THEME_GIT_PROMPT_PREFIX$cb$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

RPS1='$(git_status) %{$fg[red]%}[`rbenv version | sed -e "s/ (set.*$//"`]%{$reset_color%} $EPS1'
PROMPT='%{$fg[cyan]%}[%~% ]%(?.%{$fg[green]%}.%{$fg[red]%})%B$%b '
