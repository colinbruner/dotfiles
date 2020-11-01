#!/bin/bash

if ! test -d .salt; then
    mkdir -p .salt
fi

echo "Setting custom salt-call to alias 'sc'"
alias sc="salt-call --refresh-grains-cache --file-root=$PWD/states/ --config=$PWD/config/"

if ! $(find .salt/ -name "user_state.py" | grep -q .); then
    echo "Syncing custom grains to local cachedir..."
    sc saltutil.sync_grains
fi
