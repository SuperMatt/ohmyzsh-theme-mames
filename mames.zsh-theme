function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

local return_code="%(?..%{$fg[red]%}%? %{$reset_color%})"

PROMPT='%{$FG[245]%}%n%{$fg[white]%}@%{$FG[172]%}%m %{$FG[005]%}%(!.%1~.%~) %{$fg[yellow]%}$(git_prompt_info)% ${return_code}%{$reset_color%}$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
