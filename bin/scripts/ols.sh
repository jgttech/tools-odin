#!/usr/bin/env zsh
function ols {
  local conf=ols.json
  local var=$(cat `pwd`/${conf} | jq $@)

  var=$(echo "$var" | tr -d '"')

  printf '%s' "$var"
}
