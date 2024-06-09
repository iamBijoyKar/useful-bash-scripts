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

## Usage
To check the weather for a specific location, simply run the script followed by the desired location as an argument. For example:
```bash
./weather.sh "New York"
```
This will display the weather forecast for New York.

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
