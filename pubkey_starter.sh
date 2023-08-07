#!/bin/bash

cd $(dirname $0) # enters the directory of the script

# gets the filename (equal to the username) and starts the playbook with the username for all files in users folder
for file in users/*; do
  if [ -f "$file" ]; then
    username=$(echo $file | cut -c7-)
    echo "username: $username"
    ansible-playbook -e "filename=$username" pubkeycopy.yaml # HA ping-et használsz kell ez is: --ask-pass (sshpass telepitve kell legyen)
  fi
done