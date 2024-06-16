#!/bin/bash

# cp /home/reichen/app/Gemfile /srv/jekyll/
# bundle install
# bundle add webrick
bundle exec jekyll serve \
    --host "0.0.0.0" \
    --source "/home/reichen/app/" \
    --destination "/srv/jekyll/public" \
    --watch --force_polling
