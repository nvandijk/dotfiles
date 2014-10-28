# Directory info
local current_dir='${PWD/#$HOME/~}'

# Git info
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%} git:%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"

# Mercurial info
local hg_info='$(hg_prompt_info)'
ZSH_THEME_HG_PROMPT_PREFIX="%{$reset_color%} hg:%{$fg[green]%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_HG_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_HG_PROMPT_CLEAN=" %{$fg[green]%}✔"

# Prompt format: \n DIRECTORY hg/git:BRANCH STATE \n ➜
PROMPT="
%{$fg[cyan]%}${current_dir}\
${git_info}\
${hg_info}
%{$reset_color%}➜ "

# RPromt format: TIME
# RPROMPT="%{$reset_color%}${time}"
