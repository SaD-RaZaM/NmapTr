#!/bin/bash
printf "\e[34m
    [0] Sitenin İp Adresini Bul
    [1] Port Taraması Yap
    [2] Dns Çözümlemesi Yap
    [3] Daha Hızlı Tarama Yap
    [4] Syn Taraması Yap
    [5] Sadece Açık Portlar

" 
read -e -p 'secim=' secim  
if [[ $secim == 0 ]];then
  read -e -p $'\e[31m───────[ \e[97mSİTEYİ GİRİNİZ\e[31m ]───────► \e[0m' ip
    history -s $ip
    ping "$ip"
elif [[ $secim == 1 ]];then
read -e -p $'\e[31m───────[ \e[97mİP ADRESİ GİRİNİZ\e[31m ]───────►  \e[0m' ip
history -s $ip
nmap -sV "$ip"
elif [[ $secim == 2 ]];then 
read -e -p $'\e[31m───────[ \e[97mİP ADRESİ GİRİNİZ\e[31m ]───────►  \e[0m' ip
history -s $ip
nmap -n  "$ip"
elif [[ $secim == 3 ]];then 
read -e -p $'\e[31m───────[ \e[97mİP ADRESİ GİRİNİZ\e[31m ]───────►  \e[0m' ip
history -s $ip
nmap -f "$ip"
elif [[ $secim == 4 ]];then 
read -e -p $'\e[31m───────[ \e[97mİP ADRESİ GİRİNİZ\e[31m ]───────►  \e[0m' ip
history -s $ip
nmap -sS "ip"
elif [[ $secim == 5 ]];then 
read -e -p $'\e[31m───────[ \e[97mİP ADRESİ GİRİNİZ\e[31m ]───────►  \e[0m' ip
history -s $ip
nmap --open "$ip"
fi
