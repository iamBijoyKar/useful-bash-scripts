#!/bin/bash

# The following line is used to load the KEY variable from the .env file
# KEY="YOUR_API_KEY" should be replaced with the actual API key from the .env file
source ./.env

CITY=$1
FLAG=$2

get_current_weather() {
    URL="https://api.weatherapi.com/v1/current.json?key=$1&q=$2"
    FORECAST=$(curl -s $URL)
    TEMP_C=$(echo $FORECAST | jq -r -C '.current.temp_c')
    TEMP_F=$(echo $FORECAST | jq -r '.current.temp_f')
    CONDITION=$(echo $FORECAST | jq -r '.current.condition.text')
    FELT_TEMP_C=$(echo $FORECAST | jq -r '.current.feelslike_c')
    FELT_TEMP_F=$(echo $FORECAST | jq -r '.current.feelslike_f')
    ICON=$(echo $FORECAST | jq -r '.current.condition.icon')

    echo "The temperature in $2 is $TEMP_C degrees Celsius"
    echo "The temperature in $2 is $TEMP_F degrees Fahrenheit"
    echo "The weather in $2 is $CONDITION"
    echo "It feels like $FELT_TEMP_C degrees Celsius"
    echo "It feels like $FELT_TEMP_F degrees Fahrenheit"
    ascii-image-converter https:$ICON -W 20 -C

    # If the flag is -m, then display the weather in a more detailed format
    if [ ${FLAG,,} == "-m" ]; then
        HUMIDITY=$(echo $FORECAST | jq -r '.current.humidity')
        WIND=$(echo $FORECAST | jq -r '.current.wind_kph')
        UV=$(echo $FORECAST | jq -r '.current.uv')
        PRESSURE=$(echo $FORECAST | jq -r '.current.pressure_mb')
        VISIBILITY=$(echo $FORECAST | jq -r '.current.vis_km')
        CLOUD=$(echo $FORECAST | jq -r '.current.cloud')
        echo "The humidity in $2 is $HUMIDITY%"
        echo "The wind speed in $2 is $WIND km/h"
        echo "The UV index in $2 is $UV"
        echo "The pressure in $2 is $PRESSURE mb"
        echo "The visibility in $2 is $VISIBILITY km"
        echo "The cloud cover in $2 is $CLOUD%"
        echo 
    fi

}

get_current_weather $KEY $CITY



