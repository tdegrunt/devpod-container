#!/usr/bin/env bash
direnv allow 
eval "$(direnv export bash)" 
eval "$(rbenv init -)" 
npm install 
bundle install
rake db:prepare
bin/rails app:tailwindcss:config
