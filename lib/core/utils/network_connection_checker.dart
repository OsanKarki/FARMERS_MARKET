import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkConnectionChecker {
  Future<bool> hasConnection() async {
    bool result = await InternetConnectionChecker().hasConnection;
  return result;
}
}