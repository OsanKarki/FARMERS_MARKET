import 'package:agriculture_app/core/config/size_config.dart';
import 'package:agriculture_app/core/utils/button.dart';
import 'package:agriculture_app/core/utils/primary_app_bar.dart';

import 'package:agriculture_app/features/mainpage/drawer/drawer_Page.dart';
import 'package:agriculture_app/features/mainpage/home_page/home_page3.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/color_switch_text.dart';
import '../../../core/widgets/primary_text_field.dart';
import 'home_page.dart';

class HomePage2 extends StatefulWidget {
  static const route = 'HomePage2';

  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  String? nochildrenvalue;
  String? gendervalue;

  List<String> noOfChildren = ["1", "2", "3", "4", "5", "6", "7",];
  List<String> gender = ["Male", "Female", "Others", ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          drawer: const NavBar(),
          appBar: const PrimaryAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Stack(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizeConstants.horizontalSpacing),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: PrimaryTextField(
                              label: 'First Name',
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: PrimaryTextField(
                              label: 'Middle Name',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children:  [
                          const Expanded(
                            child: PrimaryTextField(
                              label: 'Last Name',
                            ),
                          ),
                          const SizedBox(width: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Gender',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 182,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 1),
                                    decoration: BoxDecoration(
                                      border:
                                      Border.all(color: Colors.black, width: 1.6),
                                      borderRadius: BorderRadius.circular(11),
                                      boxShadow: const [
                                      BoxShadow(
                                          blurRadius: 3,
                                          offset: Offset(0, 2)
                                      ),
                                      BoxShadow(
                                          blurRadius: 3,
                                          color: Colors.white,
                                          offset: Offset(-3, 0)
                                      ),
                                      BoxShadow(
                                          blurRadius: 3,
                                          color: Colors.white,
                                          offset: Offset(3, 0)
                                      ),
                                      ]
                                    ),
                                    child: DropdownButton(
                                      borderRadius: BorderRadius.circular(10),
                                      dropdownColor: const Color(0xff35BC88),
                                      underline: const SizedBox(),
                                      isExpanded: true,
                                      menuMaxHeight: 300,
                                      hint: const Text(''),
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.black,
                                      ),
                                      iconSize: 36,
                                      value: gendervalue,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                      ),
                                      onChanged: (newValue) {
                                        setState(() {
                                          gendervalue = newValue;
                                        });
                                      },
                                      items: gender.map((gendervalue) {
                                        return DropdownMenuItem(
                                          value: gendervalue,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7),
                                            child: Text(gendervalue),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const PrimaryTextField(
                        label: 'Dob',
                      ),
                      const PrimaryTextField(
                        label: 'Educational Qualification',
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: PrimaryTextField(
                              label: 'Wife Name',
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: PrimaryTextField(
                              label: '',
                              hintText: 'Occupation of wife',
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Number Of Children',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 182,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 1),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 1.6),
                                  borderRadius: BorderRadius.circular(11),
                                  boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(0, 3)
                                  ),
                                  BoxShadow(
                                      blurRadius: 3,
                                      color: Colors.white,
                                      offset: Offset(-3, 0)
                                  ),
                                  BoxShadow(
                                      blurRadius: 3,
                                      color: Colors.white,
                                      offset: Offset(3, 0)
                                  ),
                                  ]
                                ),
                                child: DropdownButton(
                                  borderRadius: BorderRadius.circular(10),
                                  dropdownColor: const Color(0xff35BC88),
                                  underline: const SizedBox(),
                                  isExpanded: true,
                                  hint: const Text(''),
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.black,
                                  ),
                                  menuMaxHeight: 300,
                                  iconSize: 36,
                                  value: nochildrenvalue,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                  ),
                                  onChanged: (newValue) {
                                    setState(() {
                                      nochildrenvalue = newValue;
                                    });
                                  },
                                  items: noOfChildren.map((nochildrenvalue) {
                                    return DropdownMenuItem(
                                      value: nochildrenvalue,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(nochildrenvalue),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: PrimaryButton(
                              text: 'Previous',
                              onPressed: () {
                                Navigator.pushNamed(context, HomePage.route);
                              },
                              borderRadius: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: PrimaryButton(
                            text: 'Continue',
                            onPressed: () {
                              Navigator.pushNamed(context, HomePage3.route);
                            },
                            borderRadius: 20,
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
