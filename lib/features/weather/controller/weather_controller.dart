import 'package:agriculture_app/features/weather/model/weather_model.dart';
import 'package:agriculture_app/features/weather/repository/weather_repository.dart';

class WeatherController{


  Future<WeatherModel>getWeatherInfo()async{
  return await WeatherRepository().getWeatherInfo();
  }


}