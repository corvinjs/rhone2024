#!/usr/bin/env bash

BASE_URL="${1:-/}"

export GEM_HOME="$HOME/.gems"
export PATH="$GEM_HOME/bin:$PATH"
gem install jekyll bundler
bundle install

JEKYLL_ENV=production bundle exec jekyll build --baseurl "$BASE_URL"
