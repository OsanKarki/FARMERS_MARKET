import 'dart:io';

import 'package:agriculture_app/features/weather/model/weather_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class WeatherRepository {
  Future<Either<NetworkException, WeatherModel>> getWeatherInfo() async {
    final dio = Dio();
    final logger = PrettyDioLogger();

    dio.interceptors.add(logger);

    try {
      final response = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=27.71&lon=85.32&appid=9dc079c10f12c05fd35111f94b7cd311&units=metric');
 final weatherModel = WeatherModel.fromJson(response.data);


      return right(weatherModel);
    } catch (e) {
      if (e is DioError && e.error.runtimeType == SocketException) {
        return left(NetworkException("No Internet Connection"));
      } else {
        return left(NetworkException("${e.toString()}"));
      }
    }
  }
}

class NetworkException {
  String value;

  NetworkException(this.value);
}
