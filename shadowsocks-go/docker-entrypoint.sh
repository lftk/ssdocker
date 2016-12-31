#!/bin/bash

set -eo pipefail

__init() {
    echo -e "\e[34minit shadowsocks ...\e[0m"

    go get -v -u github.com/orvice/shadowsocks-go/mu

    cp $GOPATH/src/github.com/orvice/shadowsocks-go/mu/example.conf $GOPATH/bin/config.conf
    sed -i 's/localhost/redis/g' $GOPATH/bin/config.conf
    sed -i '/pass ""/s/^/#&/' $GOPATH/bin/config.conf
    sed -i 's/db 1/db 0/g' $GOPATH/bin/config.conf
}

__update() {
    echo -e "\e[34mupdate shadowsocks ...\e[0m"

    go get -v -u github.com/orvice/shadowsocks-go/mu
}

__run() {
    echo -e "\e[34mrun shadowsocks ...\e[0m"

    cd $GOPATH/bin && mu
}

if [ "$1" == "init" ]; then
    __init
elif [ "$1" == "update" ]; then
    __update
elif [ "$1" == "run" ]; then
    __run
else
    echo -e "\e[31mcommand not found: $1\e[0m"
fi
