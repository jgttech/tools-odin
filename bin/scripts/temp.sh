#!/usr/bin/env zsh
TMP=""

function temp_new {
  TMP=`mktemp -d -t temp-${1}-odin`
}

function temp_clean {
  rm -rfv $TMP &>/dev/null
}
