#!/bin/bash

#### DOCKER ####
#https://github.com/dotcloud/docker
if ! command -v docker > /dev/null 2>&1; then
    echo -n "Install docker(y/N)?"
    read dyn
    case $dyn in
        [Yy]* )
            echo "Installing docker"
            curl https://get.docker.io | sudo sh -x
            ;;
        * ) ;;
    esac
fi

#
if ! command -v http > /dev/null 2>&1; then
    echo -n "Install httpie, A cURL-like tool (y/N)?"
    read dyn
    case $dyn in
        [Yy]* )
            #check if pip or easy_install installed
            #sudo apt-get install python-setuptools
            #easy_install httpie
            if ! command -v pip > /dev/null 2>&1; then
                sudo apt-get install python-pip
            fi

            echo "Installing httpie"
            sudo pip install --upgrade httpie
            ;;
        * ) ;;
    esac
fi

echo "Done"
