#!/usr/bin/env bash

#Download golang
install_golang() {
  echo "Type golang version"
  read GO
  if [[ $GO == "" ]]; then
      echo "Invalid golang version"
      exit 1
  fi

  if [[ ! -d /usr/local/go ]]; then
      wget https://storage.googleapis.com/golang/go$GO.darwin-amd64.tar.gz && sudo tar -C /usr/local -xzf go1.9.2.darwin-amd64.tar.gz
  fi

  [[ ! -d ~/go/mygo ]] && mkdir -p  ~/go/mygo
  [[ ! -d ~/go/bin ]] && mkdir -p  ~/go/bin
  export GOPATH=~/go/mygo
  export GOBIN=~/go/bin
}

