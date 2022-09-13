#!/usr/bin/bash

red='\033[0;31m'
nc='\033[0m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
white='\033[0;37m'

if [[ ! -n "$1" ]] ; then
    echo -e "${red} [ ! ] Lütfen uygun parametleri giriniz. Uygun parametleri görmek için --help kullanınız. ${nc}"
elif [[ "$1" == "--help" ]] ; then
    echo -e "${cyan} Şifreleme için --encode <şifre> ${nc}"
    echo -e "${cyan} Şifrelemeyi çözmek için --decode <şifre> ${nc}"
elif [[ "$1" == "--encode" ]] ; then
    ENCRYPTED="$(echo $2 | base64 )"
    echo -e "${purple} Kodun şifreli hali: $ENCRYPTED ${nc}"
elif [[ "$1" == "--decode" ]] ; then
    DEENCRYPTED="$(echo $2 | base64 -d)"
    echo -e "${green} Çözülen şifre: $DEENCRYPTED ${nc}"
else
    echo -e "${red} Geçersiz parametle lütfen --help yazarak bilgi alınız. ${nc}"
fi
