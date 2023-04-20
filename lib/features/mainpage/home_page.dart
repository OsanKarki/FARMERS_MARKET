import 'package:agriculture_app/core/utils/button.dart';
import 'package:agriculture_app/core/utils/color_switch_text.dart';
import 'package:agriculture_app/core/utils/text_field_box.dart';
import 'package:flutter/material.dart';

import '../../core/utils/primary_app_bar.dart';
import 'drawer/drawer_Page.dart';

class HomePage extends StatefulWidget {
  static const route = 'HomePage';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? valueChoose;
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
    "13",
    "13",
    "13",
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CircleAvatar(
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
                  Container(
                    height: 2,
                    width: 180,
                    color: const Color(0xff8DD9BC),
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
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.6),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: DropdownButton(
                          dropdownColor: Color(0xff35BC88),
                          underline: SizedBox(),
                          isExpanded: true,
                          hint: const Text(''),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                          iconSize: 36,
                          value: valueChoose,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                          onChanged: (newValue) {
                            setState(() {
                              valueChoose = newValue as String?;
                            });
                          },
                          items: listItem.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
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
                      'District',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
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
                              child: Text(districtValue),
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
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
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
                              child: Text(municipalitiesvalue),
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
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
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
                              child: Text(wardValue),
                            );
                          }).toList(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Toll',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(

                        hintStyle: const TextStyle(color: Color(0xffB6B6B6)),
                        focusedBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(color: Color(0xFF35BC88),width: 1.6)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: const BorderSide(

                            width: 1.6,
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: ButtonWidgets(text: 'Continue', onPressed: () {  }, borderRadius: 20,width: 265,),
            ),

          ],
        ),
      ),
    );
  }
}
