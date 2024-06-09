#!/bin/bash

# Colors
RED='\033[0;31m'
NC='\033[0m' # No Color


# Arguments passed to the script
IP=$1

get_ip_info(){
    # The function takes in one argument, the IP address
    IP=$1
    URL="https://ipinfo.io/$IP/geo"
    INFO=$(curl -s $URL)
    CITY=$(echo $INFO | jq -r '.city')
    REGION=$(echo $INFO | jq -r '.region')
    COUNTRY=$(echo $INFO | jq -r '.country')
    ORG=$(echo $INFO | jq -r '.org')
    POSTAL=$(echo $INFO | jq -r '.postal')
    TIMEZONE=$(echo $INFO | jq -r '.timezone')
    echo "City: $CITY"
    echo "Region: $REGION"
    echo "Country: $COUNTRY"
    echo "Organization: $ORG"
    echo "Postal: $POSTAL"
    echo "Timezone: $TIMEZONE"
    echo 
}


if [ $# -eq 0 ]; then
    MY_IP=$(curl -s "https://api.ipify.org/?format=json" | jq -r '.ip')
    echo -e "Your IP is:${RED} $MY_IP ${NC}"
    echo "Use --help for more information"
fi

if [ $# -eq 1 ]; then
    if [ "${IP,,}" == "--help" ]; then
        echo "With no arguments, it will display your IP address"
        echo "Usage: ip [ip]"
        echo "ip: The IP address to get the information for"
        echo "--my-ip: Get information for your IP address"
        exit 0
    elif [ "${IP,,}" == "--my-ip" ]; then
        MY_IP=$(curl -s "https://api.ipify.org/?format=json" | jq -r '.ip')
        echo -e "Your IP is:${RED} $MY_IP ${NC}"
        get_ip_info $MY_IP
    else
        get_ip_info $IP
    fi
fi