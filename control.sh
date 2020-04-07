#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

GH_PAGES=gh-pages


cmd="${1}"

case ${cmd} in
  index)
    cd $GH_PAGES
    helm repo index --url https://github.com/TencentCloudContainerTeam/charts .
    git add .
    git commit -m "update"
    git push origin gh-pages
  ;;
  pkg)
    helm package prometheus-operator -d $GH_PAGES
  ;;
  *)
  echo "not support"
    ;;
esac
