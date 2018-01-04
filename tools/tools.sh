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

if ! command -v storm > /dev/null 2>&1; then
    echo -n "Install storm, A ~/.ssh/config manager tool(y/N)?"
    read dyn
    case $dyn in
        [Yy]* )
            #check if pip or easy_install installed
            #sudo apt-get install python-setuptools
            #easy_install httpie
            if ! command -v pip > /dev/null 2>&1; then
                sudo apt-get install python-pip
            fi

            echo "Installing storm"
            sudo pip install --upgrade stormssh
            ;;
        * ) ;;
    esac
fi

if ! command -v dstat > /dev/null 2>&1; then
    echo -n "Install dstat, a combine of iostat, vmstat and ifstat(y/N)?"
    read dyn
    case $dyn in
        [Yy]* )
            echo "Installing dstat"
            sudo apt-get install dstat
            echo 'alias dstat="dstat -cdlmnpsy"' >> ~/.zshrc
            ;;
        * ) ;;
    esac
fi

if ! command -v slurm > /dev/null 2>&1; then
    echo -n "Install slurm(y/N)?"
    read dyn
    case $dyn in
        [Yy]* )
            echo "Installing slurm"
            sudo apt-get install slurm
            ;;
        * ) ;;
    esac
fi

if ! command -v htop > /dev/null 2>&1; then
    echo -n "Install htop, ncursed-based process viewer similar to top(y/N)?"
    read dyn
    case $dyn in
        [Yy]* )
            echo "Installing htop"
            sudo apt-get install htop
            ;;
        * ) ;;
    esac
fi

if ! command -v atop > /dev/null 2>&1; then
    echo -n "Install atop(y/N)?"
    read dyn
    case $dyn in
        [Yy]* )
            echo "Installing atop"
            sudo apt-get install atop
            ;;
        * ) ;;
    esac
fi

if ! command -v iotop > /dev/null 2>&1; then
    echo -n "Install iotop(y/N)?"
    read dyn
    case $dyn in
        [Yy]* )
            echo "Installing iotop"
            sudo apt-get install iotop
            ;;
        * ) ;;
    esac
fi

if ! command -v newsbeuter > /dev/null 2>&1; then
    echo -n "Install newsbeuter, rss reader(y/N)?"
    read dyn
    case $dyn in
        [Yy]* )
            echo "Installing newsbeuter"
            sudo apt-get install newsbeuter
            ;;
        * ) ;;
    esac
fi

if ! command -v iftop > /dev/null 2>&1; then
    echo -n "Install iftop(y/N)?"
    read dyn
    case $dyn in
        [Yy]* )
            echo "Installing iftop"
            sudo apt-get install iftop
            ;;
        * ) ;;
    esac
fi

if ! command -v ethstatus > /dev/null 2>&1; then
    echo -n "Install ethstatus(y/N)?"
    read dyn
    case $dyn in
        [Yy]* )
            echo "Installing ethstatus"
            sudo apt-get install ethstatus
            ;;
        * ) ;;
    esac
fi

echo "Done"
