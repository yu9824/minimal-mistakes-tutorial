#!/bin/bash
# docker run -it --rm --name github-pages -p "4000:4000" yu9824/jekyll:1.1.0
docker run -it --rm --name minimal-mistakes \
    --mount type=bind,src="$(pwd)",dst=/home/reichen/app/,readonly \
     -p "4000:4000" yu9824/jekyll-minimal:1.0.0
