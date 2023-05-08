import 'package:agriculture_app/core/utils/network_client.dart';
import 'package:agriculture_app/core/utils/network_connection_checker.dart';
import 'package:get/get.dart';

class CoreBindings extends Bindings{
  @override
  void dependencies() {
   Get.put(NetworkClient(),permanent: true);
   Get.put(NetworkConnectionChecker(),permanent: true);

  }

}