PROMPT='%B%2~ - time: 0ms %{$fg_bold[white]%}- $(git_prompt_info) $(git_prompt_status) %{$fg[none]%} 
%{$fg[white]%}→ '

#info
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}(%{$fg_bold[blue]%}on: %{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f)"
ZSH_THEME_GIT_PROMPT_MODIFIED="test"
ZSH_THEME_GIT_PROMPT_DIRTY=""
#git status
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✓"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ●"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✘ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ●"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[red]%} ●"
prompt_preexec() {
	prompt_prexec_realtime=${EPOCHREALTIME}
}

prompt_precmd() {
	if (( prompt_prexec_realtime )); then
		local -rF elapsed_realtime=$(( EPOCHREALTIME - prompt_prexec_realtime ))
			local -rF s=$(( elapsed_realtime%60 ))
			local -ri elapsed_s=${elapsed_realtime}
	local -ri m=$(( (elapsed_s/60)%60 ))
		local -ri h=$(( elapsed_s/3600 ))
		if (( h > 0 )); then
			printf -v prompt_elapsed_time '%ih%im' ${h} ${m}
	elif (( m > 0 )); then
		printf -v prompt_elapsed_time '%im%is' ${m} ${s}
	elif (( s >= 10 )); then

		PS1='%B%2~ - time: %{$fg_bold[red]%}${prompt_elapsed_time}%{$fg_bold[white]%} - $(git_prompt_info) $(git_prompt_status) %{$fg[none]%} 
%{$fg_bold[white]%}→ '

		printf -v prompt_elapsed_time '%.2fs' ${s} # 12.34s
		elif
		PS1='%B%2~ - time: %{$fg_bold[yellow]%}${prompt_elapsed_time}%{$fg_bold[white]%} - $(git_prompt_info) $(git_prompt_status) %{$fg[none]%} 
%{$fg[white]%}→ '
		(( s >= 1 )); then
		printf -v prompt_elapsed_time '%.3fs' ${s} # 1.234s
		else
			PS1='%B%2~ - time: %{$fg_bold[green]%}${prompt_elapsed_time} %{$fg_bold[white]%}- $(git_prompt_info) $(git_prompt_status) %{$fg[none]%} 
%{$fg_bold[white]%}→ '
		printf -v prompt_elapsed_time '%ims' $(( s*1000 ))
		fi
		unset prompt_prexec_realtime
	else
# Clear previous result when hitting ENTER with no command to execute
		unset prompt_elapsed_time
			fi
}

setopt nopromptbang prompt{cr,percent,sp,subst}

autoload -Uz add-zsh-hook
add-zsh-hook preexec prompt_preexec
add-zsh-hook precmd prompt_precmd

RPROMPT='%(?.%{$fg[green]%}✔%f.%{$fg[red]%}✘%f)'

