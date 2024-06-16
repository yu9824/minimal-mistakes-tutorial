#!/bin/bash

# fオプションを使ってdockerのスコープを調整
docker build -f docker/Dockerfile -t yu9824/jekyll-minimal:1.0.0 .
