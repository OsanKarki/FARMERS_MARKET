import 'package:agriculture_app/core/utils/button.dart';
import 'package:agriculture_app/core/utils/color_switch_text.dart';
import 'package:agriculture_app/features/mainpage/home_page/home_page2.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/primary_app_bar.dart';
import '../../../core/widgets/home_page_text_field.dart';
import '../drawer/drawer_Page.dart';

class HomePage extends StatefulWidget {
  static const route = 'HomePage';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? listValue;
  String? districtValue;
  String? municipalitiesvalue;
  String? wardValue;

  List<String> listItem = [
    "State 1 ",
    "State 2",
    "State 3",
    "State 4",
    "State 5",
    "State 6",
    "State 7",
  ];
  List<String> district = [
    "Kathmandu",
    "Bhaktapur",
    "Lalitpur",
    "Janakpur",
    "Bara",
    "Baglung",
    "Chitwan",
    "Jhapa",
  ];

  List<String> municipalty = [
    "Gokarneswor",
    "Daksinkali",
    "Tarakeshwor",
    "Chandragiri",
    "tokha",
    "jeetpur-Simara nagarpalika",
  ];
  List<String> wardNo = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: const PrimaryAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Stack(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 200, top: 10),
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
                        '1',
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
              text1: 'Address',
              text2: ' Details',
              fontSize: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 83,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'State',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        boxShadow: [],
                        border: Border.all(color: Colors.black, width: 1.6),
                        borderRadius: BorderRadius.circular(11),
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
                        iconSize: 36,
                        value: listValue,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                        ),
                        onChanged: (newValue) {
                          setState(() {
                            listValue = newValue;
                          });
                        },
                        items: listItem.map((listValue) {
                          return DropdownMenuItem(
                            value: listValue,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              child: Text(listValue),
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(
                height: 83,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'District',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.6),
                          borderRadius: BorderRadius.circular(11),
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
                          iconSize: 36,
                          value: districtValue,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                          onChanged: (newValue) {
                            setState(() {
                              districtValue = newValue;
                            });
                          },
                          items: district.map((districtValue) {
                            return DropdownMenuItem(
                              value: districtValue,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(districtValue),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(
                height: 83,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Municipality',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.6),
                          borderRadius: BorderRadius.circular(11),
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
                          iconSize: 36,
                          value: municipalitiesvalue,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                          onChanged: (newValue) {
                            setState(() {
                              municipalitiesvalue = newValue;
                            });
                          },
                          items: municipalty.map((municipalitiesvalue) {
                            return DropdownMenuItem(
                              value: municipalitiesvalue,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(municipalitiesvalue),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(
                height: 83,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ward No',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.6),
                          borderRadius: BorderRadius.circular(11),
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
                          iconSize: 36,
                          value: wardValue,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                          onChanged: (newValue) {
                            setState(() {
                              wardValue = newValue;
                            });
                          },
                          items: wardNo.map((wardValue) {
                            return DropdownMenuItem(
                              value: wardValue,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(wardValue),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const HomePageTextField(
              text: 'Toll',
              width: 300,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: ButtonWidgets(
                text: 'Continue',
                onPressed: () {
                  Navigator.pushNamed(context, HomePage2.route);
                },
                borderRadius: 20,
                width: 265,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
