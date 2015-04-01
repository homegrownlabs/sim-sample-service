#!/usr/bin/env bash

git_dirty() {
  [ -n "$(git status --porcelain)" ] && echo -n "-dirty"
}

shorten_sha(){
  echo $1 | cut -c1-${2}
}

git_sha() {
  local sha=$(git rev-parse HEAD)
  local dirty=$(git_dirty)

  if [ -n "$1" ]; then
    echo "$(shorten_sha $sha $1)${dirty}"
  else
    echo "${sha}${dirty}"
  fi
}

git_repo() {
  git remote show -n origin | head -n 2 | tail -n 1 | tr " " "\n" | tail -n 1
}

version_file() {
  printf "GIT_REPO=$(git_repo)\nGIT_SHA=$(git_sha)\n"
}

version_file > version.env

docker build --tag homegrownlabs/sample-service .
