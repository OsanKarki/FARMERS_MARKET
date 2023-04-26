class WeatherModel {
  final String? cityName;

  WeatherModel({this.cityName});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(cityName: json['name']);
  }
}
