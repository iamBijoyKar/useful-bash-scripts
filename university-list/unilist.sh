#!/bin/bash


# Arguments
COUNTRY=$1
FLAG=$2
VALUE=$3

get_uni(){
    local COUNTRY=$1
    local FLAG=$2
    local VALUE=$3
    URL="http://universities.hipolabs.com/search?country=$COUNTRY"
    UNIVERSITIES=$(curl -s $URL)
    echo $UNIVERSITIES | jq -r 
}

if [ $# -eq 0 ]; then
    echo "Please provide a country name or --help for more information"
    exit 1
fi

if [ "${COUNTRY,,}" == "--help" ]; then
    echo "Usage: unilist [country] [flag]"
    echo "country: The name of the country to get the list of universities for"
    echo "flag: -m for more detailed university information"
    exit 0
fi

# Call the function with the country name
get_uni $COUNTRY $FLAG $VALUE