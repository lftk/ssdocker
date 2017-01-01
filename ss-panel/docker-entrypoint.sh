#!/bin/bash

set -eo pipefail

__init() {
    git clone https://github.com/orvice/ss-panel.git .
    curl -sS https://getcomposer.org/installer | php 
    php composer.phar install
    chmod -R 777 storage

    cp .env.example .env
    sed -i -e "s/'md5'/'sha256'/g" .env
    sed -i -e "s/'file'/'redis'/g" .env
    sed -i -e "s/localhost/mysql/g" .env
    sed -i -e "s/127.0.0.1/redis/g" .env
}

if [ "$1" == "init" ]; then
    __init
elif [ "$1" == "create-admin" ]; then
    php xcat createAdmin
elif [ "$1" == "reset-traffic" ]; then
    php xcat resetTraffic
elif [ "$1" == "reset-diary-mail" ]; then
    php xcat sendDiaryMail
elif [ "$1" == "php-fpm" ]; then
    php-fpm
elif [ "$1" == "bash" ]; then
    /bin/bash
else
    echo "command not found: $1"
fi
