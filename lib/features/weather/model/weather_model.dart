class WeatherModel {
  final String? countryCode;
  final String? cityName;
  final double? temperature;
  final int? sunrise;
  final int? sunset;

  WeatherModel(
      {this.cityName,
      this.temperature,
      this.countryCode,
      this.sunset,
      this.sunrise});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
        cityName: json['name'],
        temperature: json['main']['temp'],
        countryCode: json['sys']['country'],
        sunrise: json['sys']['sunrise'],
        sunset: json['sys']['sunset']);
  }
}
