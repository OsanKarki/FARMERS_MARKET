import 'package:agriculture_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp(const AgricultureApp());
}

class AgricultureApp extends StatelessWidget {
  const AgricultureApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
            indicatorColor: Colors.white,
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 15, color: Colors.black))),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.welcomePage,
      getPages: AppRoutes.routes

    );
  }
}
