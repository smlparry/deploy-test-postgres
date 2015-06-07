#!/bin/bash
REPO="https://github.com/smlparry/deploy-test-postgres"
cd /home/rails/
git pull $REPO --no-edit
bundle install
rake assets:precompile
service unicorn restart
