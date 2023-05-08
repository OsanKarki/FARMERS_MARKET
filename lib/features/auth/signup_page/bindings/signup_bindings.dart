import 'package:agriculture_app/core/utils/network_client.dart';
import 'package:agriculture_app/core/utils/network_connection_checker.dart';
import 'package:agriculture_app/features/auth/signup_page/controller/signup_controller.dart';
import 'package:agriculture_app/features/auth/signup_page/repository/signup_repository.dart';
import 'package:get/get.dart';

class SignUPBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<SignUpRepository>(SignUpRepositoryImpl(Get.find<NetworkConnectionChecker>(),Get.find<NetworkClient>()));

    Get.put(SignUpController());
  }

}