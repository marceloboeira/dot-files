# vim: ft=zsh

update_prompt() {
  _cwd="${GREEN}%1~${RESET}"
  _return_code=" %(0?..${RED}%? ↵${RESET})"

  PROMPT='$(git_prompt_string) λ ${RESET}'

  if type gdate > /dev/null; then
    RPROMPT='(${LAST_COMMAND_TIME}ms)${_return_code}${RESET}'
  else
    RPROMPT='${return_code}${RESET}'
  fi
}

update_prompt
