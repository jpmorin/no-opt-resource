#!/bin/bash

# execute script in the '/ci' directory.
cd "$(dirname "${BASH_SOURCE[0]}")"

fly -t poc sp -p no-opt-resource -c pipeline.yml -l parameters.yml -l ../tmp/secrets.yml