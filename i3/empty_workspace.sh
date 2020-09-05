#!/bin/bash

#i3-msg workspace $(($(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sort -rn | head -1) + 1))
export PATH=/opt:$PATH
i3-msg workspace $(($(i3-msg -t get_workspaces | jq '.[] | select(.focused == true) | .num') + 1))
