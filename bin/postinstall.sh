#!/bin/bash

# 1. Store the absolute path of this script in a variable
# 2. Make sure our starting point is aways the same

SCRIPT_PATH="$(cd "$(dirname "$0")" && pwd)" # [1]
cd "$SCRIPT_PATH" # [2]


# Declare a function to be used recustively
#
# 1. If, in the current directory, there is a (node_modules|bower_components) 
#    directory, start the search.
#    
#    [find ./$1] Search inside the [$1](node_modules|bower_components) dir...
#    [-maxdepth 2] no more than 2 levels deep (normalize.css/normalize.css)...
#    [-type f] for a file...
#    [-name 'normalize.css'] named 'normalize.css'...
#    [-exec cp...] then copy this file, making it a inuitcss styled partial 
#                  and dropping it in the appropriate place and exit.
#
# 2. If not, go back one level and try again.

normalize()
{
  if [ -d $1 ]; then # [1]
    
    find ./$1 -maxdepth 2 -type f -name 'normalize.css' \
      -exec cp {} "$SCRIPT_PATH"/../generic/_generic.normalize.scss \; &&
    exit

  else # [2]

    cd .. && normalize $1

  fi
}


# Grab the mode parameter and store it in a variable.

MODE=$1 # (npm|bower|none/0)


# 1. If no mode was passed, the script wasn't called from either 
#    npm or bower hooks.
# 2. If the mode was specified, we call the normalize function, 
#    telling it the name of the packages directory to expect.

if [ -z "$MODE" ] ; then # [1]
  echo -e "# manual download"
  exit

elif [ $MODE = 'npm' ]; then # [2]
  normalize 'node_modules'

elif [ $MODE = 'bower' ]; then # [2]
  normalize 'bower_components'
fi
