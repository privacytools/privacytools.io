#!/usr/bin/env bash
set -e # halt script on error

bundle install
bundle exec jekyll build --profile
