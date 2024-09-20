#!/usr/bin/env zsh
function script {
  if [ "$1" != "script" ]; then
    source `pwd`/bin/scripts/${1}.sh
  fi
}
