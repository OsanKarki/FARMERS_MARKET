
import 'package:agriculture_app/features/weather/model/weather_model.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class WeatherRepository {
  Future<WeatherModel> getWeatherInfo() async {
    final dio = Dio();
    final logger = PrettyDioLogger();

    dio.interceptors.add(logger);
    final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=27.71&lon=85.32&appid=9dc079c10f12c05fd35111f94b7cd311');
    return WeatherModel.fromJson(response.data);
  }
}
