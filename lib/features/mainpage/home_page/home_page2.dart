import 'package:agriculture_app/core/utils/primary_app_bar.dart';
import 'package:agriculture_app/core/utils/text_field_box.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_Page.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/color_switch_text.dart';
import '../../../core/widgets/home_page_text_field.dart';

class HomePage2 extends StatefulWidget {
  static const route = 'HomePage2';
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavBar(),
        appBar: const PrimaryAppBar(),
        body: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Stack(
                children: const [
                  Padding(
                    padding: EdgeInsets.only( top: 10),
                    child: Divider(
                      thickness: 2,
                      color: Color(0xff8DD9BC),
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Color(0xff35BC88),
                      radius: 17,
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const ColorSwitchText(
              text1: 'Personal',
              text2: ' Details',
              fontSize: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                HomePageTextField(

                  text: 'First Name',
                  width: 169,
                  height: 100,
                ),
                HomePageTextField(

                  text: 'middle Name',
                  width: 169,
                  height: 100,
                ),


              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                HomePageTextField(

                  text: 'Last Name',
                  width: 169,
                  height: 100,
                ),
              


              ],
            ),

          ],
        ));
  }
}
