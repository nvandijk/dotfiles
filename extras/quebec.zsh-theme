# Git info
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}:%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Mercurial info
local hg_info='$(hg_prompt_info)'
ZSH_THEME_HG_PROMPT_PREFIX="%{$reset_color%} hg:%{$fg[yellow]%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_HG_PROMPT_DIRTY=" %{$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_HG_PROMPT_CLEAN=""

# Virtualenv info
function virtualenv_prompt_info() {
    if [[ -n $VIRTUAL_ENV ]]; then
        echo " %{$fg[white]%}(${${VIRTUAL_ENV}:t})%{$reset_color%}"
    fi
}
local virtual_env_info='$(virtualenv_prompt_info)'

local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'

PROMPT="%{$reset_color%}\
%{$fg[white]%}\
%2~\
${git_info}\
${hg_info}\
${virtual_env_info}
%{$reset_color%}$ "

RPROMPT="%{$reset_color%}${return_code} %{$fg[white]%}%T%{$reset_color%}"
