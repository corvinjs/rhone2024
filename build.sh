#!/usr/bin/env bash

BASE_URL="${1:-/}"

gem install jekyll bundler --user-install
bundle install
bundle exec JEKYLL_ENV=production jekyll build --baseurl "$BASE_URL"
