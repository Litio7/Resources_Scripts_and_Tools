#!/bin/bash

#Colours
end="\033[0m\e[0m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"
gray="\e[0;37m\033[1m"

extractPorts(){
    ip="$(grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' "$1" | sort -u | head -n 1)"
    ports="$(grep -oP '\d{1,5}/open' "$1" | awk -F'/' '{print $1}' | xargs | tr ' ' ',')"

    echo -e "\n${yellow}[+]${end}${gray} Extracting information...${end}"
    echo -e "\t${yellow}[+]${end}${gray} IP Address: ${end}${blue}$ip${end}"
    echo -e "\t${yellow}[+]${end}${gray} Open ports: ${end}${blue}$ports${end}"
    printf "%s" "$ports" | xsel --clipboard --input && echo -e "${yellow}[*]${end}${gray} Ports copied to clipboard successfully${end}\n"
}
extractPorts "$1"
