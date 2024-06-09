# Weather.sh

## Description
`weather.sh` is a useful bash script that allows you to quickly check the weather forecast for a specific location.

## Features
- Retrieves weather data from the [weatherapi.com](https://www.weatherapi.com/) API.
- Supports both Celsius and Fahrenheit temperature units.
- Provides current weather conditions, including temperature, humidity, wind speed, and more.
- Easy to use and customizable.

## Prerequisites
- Bash shell (version 4 or higher)
- curl command-line tool
- ascii-image-converter (optional, for displaying weather icons)

## Installation
1. Clone or download the `weather.sh` script to your local machine.
2. Open a terminal and navigate to the directory where the script is located.
3. Make the script executable by running the following command:
    ```
    chmod +x weather.sh
    ```

4. Get a free API key from [weatherapi.com](https://www.weatherapi.com/) by signing up for an account.
5. Put the API key in the `.env` file in the same directory as the script, like this:
    ```
    KEY=your_api_key_here
    ```

## Usage
To check the weather for a specific location, simply run the script followed by the desired location as an argument. For example:
```bash
./weather.sh "New York"
```
This will display the weather forecast for New York.
```bash
bijoy@BijoyKarPC:/mnt/h/bash-shell/useful-bash-scripts/weather$ ./weather.sh "New York" -m
The temperature in New is 28.3 degrees Celsius
The temperature in New is 82.9 degrees Fahrenheit
The weather in New is Sunny
It feels like 33.6 degrees Celsius
It feels like 92.5 degrees Fahrenheit


       : .. :
     :.:-==-:.:
     :.+%%%%+.:.
    .:.+%%%%+.:.
     :.:-==-:.:
       : .. :

```

## Options
- `-m` flag: Display more detailed weather information, including humidity, wind speed, and visibility.

## Examples
- Check the weather in London using Fahrenheit:

  ```
  ./weather.sh London
  ```
- Display help information:

  ```
  ./weather.sh --help
  ```

## License
This project is licensed under the MIT License. See the [LICENSE](../LICENSE) file for more information.
