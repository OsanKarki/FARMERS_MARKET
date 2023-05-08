import 'package:agriculture_app/core/config/size_config.dart';
import 'package:agriculture_app/core/widgets/primary_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BnbPushNotificationPage extends StatelessWidget {
  const BnbPushNotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SizeConstants.horizontalSpacing),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  const SizedBox(
                    width: 310,
                    child: PrimaryTextField(
                      height: 18,
                      borderRadius: 20,
                      hintText: 'type your message to farmer',
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffD9D9D9),
                    radius: 27,
                    child:SvgPicture.asset("assets/sendicon.svg"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
