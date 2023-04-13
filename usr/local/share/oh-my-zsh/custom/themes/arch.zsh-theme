# Mimics the default Arch installation media
PROMPT=$'%{$fg_bold[blue]%}%n%{$reset_color%}@%m %~$(git_prompt_info) $ '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
