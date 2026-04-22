#!/bin/bash

DEBOOTSTRAP=./tools/debootstrap/debootstrap.sh

#Кольори
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Функція допомоги
show_help() {
    echo -e "${BLUE}AskiStrap${NC}"
    echo
    echo "Використання: askistrap [commmand] [params]"
    echo "help          Показати це повідомлення"
}

if [ $# -eq 0 ]; then exit 0; fi

case $1 in
    help)
        show_help
        ;;

    dbs)
        CODENAME=$2
        TARGET=$3
        DISTRO=$4

        if [ "$DISTRO" == "ubuntu" ]; then
            MIRROR="http://archive.ubuntu.com/ubuntu/"
        else
            # За замовчуванням беремо Debian
            MIRROR="http://deb.debian.org/debian/"
        fi
        echo -e "${RED}[WARNING] Askistrap завжди збирає під amd64 (x86_64)${NC}"
        echo -e "${BLUE}[*] Починаю збірку $DISTRO ($CODENAME) у $TARGET...${NC}"
        sudo $DEBOOTSTRAP --arch=amd64 "$CODENAME" "$TARGET" "$MIRROR"
        ;;
    *)
        echo "Невідома команда: $1"
esac