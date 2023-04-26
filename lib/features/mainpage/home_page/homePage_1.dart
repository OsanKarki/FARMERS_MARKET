import 'package:agriculture_app/core/utils/asset_utils.dart';
import 'package:agriculture_app/core/utils/primary_app_bar.dart';
import 'package:agriculture_app/features/weather/controller/weather_controller.dart';
import 'package:agriculture_app/features/weather/model/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/navigation_bar.dart';

class HomePage extends StatefulWidget {
  static const route = 'HomePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        backgroundColor: Color(0xffA4DACB),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                // print('@@@@@@@@@@@@@');
              },
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: FutureBuilder<WeatherModel>(builder: (

          BuildContext context, AsyncSnapshot<dynamic> snapshot) {


        if(snapshot.hasData){
          final WeatherModel weatherInfo=snapshot.data;
        return Text("${weatherInfo.cityName}");

        }
        else if(snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        else{
          return CircularProgressIndicator();
        }
      },
        future:  WeatherController().getWeatherInfo(),

      ),
      bottomNavigationBar: MyNavigationBar(
        backgroundColor: Color(0xffA4DACB),
        onItemTap: (int tappedIndex) {
          print('Tapped index: $tappedIndex');
        },
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,

        destinations: [
          NavigationDestination(
            icon: buildNavLogo(AssetUtils.navHome),
            label: 'Home',


          ),
          NavigationDestination(
            icon: buildNavLogo(AssetUtils.navMarket),
            label: 'Settings',

          ),
          NavigationDestination(
            icon: buildNavLogo(AssetUtils.navUser),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Image buildNavLogo(String imagePath) => Image.asset(
        imagePath,
        height: 30,
      );
}
