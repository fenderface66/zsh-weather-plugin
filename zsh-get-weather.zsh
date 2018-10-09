# MUST RUN brew install jq before it works

_getWeather() {
	weather=$(curl -s "api.openweathermap.org/data/2.5/weather?q=London&APPID={INSERT_APP_ID}" \
		| jq '.weather[0].description?')

	echo $weather
}

alias getWeather=_getWeather
