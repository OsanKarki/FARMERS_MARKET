import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:intl/intl.dart';

import '../../../core/config/size_config.dart';
import '../../../core/widgets/error_view.dart';
import '../../weather/controller/weather_controller.dart';

class BnBCropsPage extends StatelessWidget {
  const BnBCropsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        padding:  EdgeInsets.symmetric(
                            horizontal: SizeConstants.horizontalSpacing,
                            vertical: 10),
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
                                    Builder(builder: (context) {
                                      final sunsetTime =
                                      DateTime.fromMillisecondsSinceEpoch(
                                          (r.sunset ?? 0) * 1000);
                                      final formattedTime =
                                      DateFormat('h:mm a')
                                          .format(sunsetTime);
                                      return Text(
                                        formattedTime,
                                        style: const TextStyle(fontSize: 16),
                                      );
                                    }),
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
                      ),

                    ],
                  )
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }

          },
        )
    );
  }
}
