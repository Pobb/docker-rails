#!/bin/sh
set -e

# Remove tmp files
rm -rf /myapp/tmp/*

# Wait for database ready (using wait-for-it tool)
wait-for-it db:5432

bundle check || bundle install

rails db:create
rails db:migrate

rails s -b 0.0.0.0