#!/bin/bash
file="result-$(date +%F).txt"
clear
printf "\e[1;31mCase:\e[0m\n"
echo -e "\n	Case:\n" > "$file"

printf "\n	Hello, $(whoami). \n	Ready to \e[1;31mhack\e[0m\n"

read -p "	Target: " target

printf "	Scanning \e[1;31m$target\e[0m\n"

printf "	\e[1;31mPING\e[0m\n"
echo -e "\n	PING\n" >> "$file"

# ping
ping -c 3 "$target" | tee -a "$file"

#nslookup
printf "\n\e[1;31m	NSLOOKUP\n\e[0m"
echo -e "	NSLOOKUP\n" >> "$file"
nslookup "$target" | tee -a "$file"

#nmap
echo -e "	NMAP\n">>"$file"
printf "\n\e[1;31m	NMAP\n\e[0m"
nmap -F "$target" | tee -a "$file"

#result
printf "\n	\e[1;32mResult file: \e[1;33m"$file"\e[0m"
echo -e "\n	END" | tee -a "$file"
