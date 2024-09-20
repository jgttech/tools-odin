#!/usr/bin/env zsh
function pkg {
  local conf_file=pkg.json
  local var=$(cat `pwd`/${conf_file} | jq $@)

  var=$(echo "$var" | tr -d '"')

  printf '%s' "$var"
}
