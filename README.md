# recon-bash

Simple reconnaissance script written in **Bash**.  
Automates basic information gathering using common system tools.

## Features
- ICMP reachability check (`ping`)
- DNS resolution (`nslookup`)
- Fast port scan (`nmap -F`)
- Colored terminal output
- Saves results to a file with date-based naming

## Requirements
- bash
- ping
- nslookup
- nmap

## Usage

Make script executable:

    chmod +x recon.sh
---
    ./recon.sh

Output

Scan results are saved into:

    result-YYYY-MM-DD.txt
