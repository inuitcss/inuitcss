#!/bin/bash

SCRIPT_PATH="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_PATH"

normalize()
{
  if [ -d $1 ]; then
    find ./$1 -maxdepth 2 -type f -name 'normalize.css' -exec cp {} "$SCRIPT_PATH"/../generic/_generic.normalize.scss \; &&
    exit
  else
    cd .. && normalize $1
  fi
}

MODE=$1
if [ -z "$MODE" ] ; then
  echo -e "# manual download"
  exit

elif [ $MODE = 'npm' ]; then
  normalize 'node_modules'

elif [ $MODE = 'bower' ]; then
  normalize 'bower_components'
fi
