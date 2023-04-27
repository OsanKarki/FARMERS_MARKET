import 'package:agriculture_app/features/weather/model/weather_model.dart';
import 'package:agriculture_app/features/weather/repository/weather_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

class WeatherController extends GetxController {
  @override
  onInit() {
    super.onInit();

    getWeatherInfo();
  }

  Either<NetworkException, WeatherModel>? result;

  Future<void> getWeatherInfo() async {
    result = await WeatherRepository().getWeatherInfo();

    update();
    // result.isLoading=false;
    // either.fold((l) {
    //   return result.error=l;
    // }, (r) {
    //   return result.data=r;
    // });
  }
}


