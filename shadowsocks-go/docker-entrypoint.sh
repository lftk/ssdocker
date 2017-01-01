#!/bin/bash

set -eo pipefail

__init() {
    go get -v -u github.com/orvice/shadowsocks-go/mu

    cp $GOPATH/src/github.com/orvice/shadowsocks-go/mu/example.conf $GOPATH/bin/config.conf
    sed -i 's/localhost/redis/g' $GOPATH/bin/config.conf
    sed -i '/pass ""/s/^/#&/' $GOPATH/bin/config.conf
    sed -i 's/db 1/db 0/g' $GOPATH/bin/config.conf
}

__update() {
    go get -v -u github.com/orvice/shadowsocks-go/mu
}

__run() {
    cd $GOPATH/bin && mu
}

if [ "$1" == "init" ]; then
    __init
elif [ "$1" == "update" ]; then
    __update
elif [ "$1" == "run" ]; then
    __run
elif [ "$1" == "bash" ]; then
    /bin/bash
else
    echo -e "command not found: $1"
fi
