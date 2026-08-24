#!/usr/bin/env bash

BASE_URL="${1:-/}"

JEKYLL_ENV=production jekyll build --baseurl "$BASE_URL"
