import 'package:agriculture_app/core/config/size_config.dart';
import 'package:agriculture_app/core/utils/asset_utils.dart';
import 'package:agriculture_app/core/utils/primary_app_bar.dart';
import 'package:agriculture_app/core/widgets/error_view.dart';
import 'package:agriculture_app/features/weather/controller/weather_controller.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

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
        backgroundColor: const Color(0xffA4DACB),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal:SizeConstants.horizontalSpacing),
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
      body: GetBuilder<WeatherController>(
        init: WeatherController(),
        builder: (controller) {
          final result = controller.result;
          if (result != null) {
            return result.fold(
                (l) => ErrorView(l.value),
                (r) => Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(13),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(blurRadius: 3, offset: Offset(0, 2)),
                                BoxShadow(
                                    blurRadius: 3,
                                    color: Colors.white,
                                    offset: Offset(-3, 0)),
                                BoxShadow(
                                    blurRadius: 3,
                                    color: Colors.white,
                                    offset: Offset(3, 0)),
                              ]),
                          padding: const EdgeInsets.symmetric(
                              horizontal: SizeConstants.horizontalSpacing, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "${r.cityName},",
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        DateFormat('dd MMM')
                                            .format(DateTime.now()),
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      // Text("${DateFormat('dd MMM').format(DateTime.now())}"),
                                    ],
                                  ),
                                  Text(
                                    "${r.temperature}°C",
                                    style: const TextStyle(fontSize: 36),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Sunset:',
                                        style: TextStyle(fontSize: 16),
                                      ),

                                      Builder(
                                        builder: (context) {
                                          final sunsetTime =
                                          DateTime.fromMillisecondsSinceEpoch((r.sunset??0)* 1000);
                                          final formattedTime = DateFormat('h:mm a').format(sunsetTime);
                                          return Text(
                                            formattedTime,
                                            style: const TextStyle(fontSize: 16),
                                          );
                                        }
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/img/Sun.png',
                                width: 60,
                              )
                            ],
                          ),
                        )
                      ],
                    ));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      bottomNavigationBar: MyNavigationBar(
        backgroundColor: const Color(0xffA4DACB),
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
