# Useful Bash Scripts

This project contains a collection of useful Bash scripts that can be used for various purposes. Each script is designed to simplify common tasks and enhance productivity in a Bash shell environment.

## Table of Contents

- [Useful Bash Scripts](#useful-bash-scripts)
  - [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Scripts](#scripts)
    - [Weather Forecast](#weather-forecast)
  - [Contributing](#contributing)
  - [License](#license)

## Installation

To use these scripts, simply clone this repository to your local machine:

```
git clone https://github.com/iamBijoyKar/useful-bash-scripts.git
```

## Usage

Once you have cloned the repository, navigate to the project directory and execute the desired script using the Bash shell:

```
cd useful-bash-scripts
./script-name.sh
```

## Scripts

### Weather Forecast
- **Script:** [weather](/weather/weather.sh)
- Get the current weather forecast for a specific location using the OpenWeatherMap API.
- **Usage:** `./weather.sh <city>`
```bash

bijoy@BijoyKarPC:/mnt/h/bash-shell/useful-bash-scripts/weather$ ./weather.sh london
The temperature in london is 15.1 degrees Celsius
The temperature in london is 59.2 degrees Fahrenheit
The weather in london is Partly cloudy
It feels like 15.1 degrees Celsius
It feels like 59.2 degrees Fahrenheit

    . .. .
  ..::--:: :-:.
  :.=%%%#*%@@@@*
 .:.*%%@@@@@@@@@+
  :.=%@@@@@@@@@@@#
    +@@@@@@@@@@@@*
     .::::::::::.
```
View the [README](/weather/README.md) for more information.

## Contributing

Contributions are welcome! If you have any useful Bash scripts that you would like to add to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch.
3. Add your script to the appropriate directory.
4. Commit your changes.
5. Push your branch to your forked repository.
6. Open a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
