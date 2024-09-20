#!/usr/bin/env zsh
function trim {
  local var="$*"
  var="${var#"${var%%[![:space:]]*}"}"
  var="${var%"${var##*[![:space:]]}"}"
  var=$(echo "$var" | tr -d '"')

  printf '%s' "$var"
}
