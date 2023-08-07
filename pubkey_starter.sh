#!/bin/bash

cd $(dirname $0) # enters the directory of the script

# starts the playbook
ansible-playbook --ask-pass pubkeycopy.yaml
