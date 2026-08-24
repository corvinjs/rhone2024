#!/usr/bin/env bash

BASE_URL="${1:-/}"

gem install jekyll bundler
bundle install
bundle exec JEKYLL_ENV=production jekyll build --baseurl "$BASE_URL"
