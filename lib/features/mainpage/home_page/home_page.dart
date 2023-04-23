import 'package:agriculture_app/core/config/size_config.dart';
import 'package:agriculture_app/core/utils/button.dart';
import 'package:agriculture_app/core/utils/color_switch_text.dart';
import 'package:agriculture_app/features/mainpage/home_page/home_page2.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/primary_app_bar.dart';
import '../../../core/widgets/primary_text_field.dart';
import '../drawer/drawer_screen.dart';

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
    "jeetpur-Simara-nagarpalika",
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        drawer:  const MyDrawerNew(selectedIndex: 0,),
        appBar: const PrimaryAppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
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
                padding: const EdgeInsets.symmetric(
                    horizontal: SizeConstants.horizontalSpacing),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'State',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 1),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.6),
                              borderRadius: BorderRadius.circular(11),
                                color: Colors.white,
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7),
                                    child: Text(listValue),
                                  ),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'District',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 1),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1.6),
                                borderRadius: BorderRadius.circular(11),
                                  color: Colors.white,
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
                                hint: const Text(''),
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                                menuMaxHeight: 300,
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Municipality',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 1),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1.6),
                                borderRadius: BorderRadius.circular(11),

                                  color: Colors.white,
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
                                menuMaxHeight: 300,
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Ward No',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 1),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1.6),
                                borderRadius: BorderRadius.circular(11),
                                  color: Colors.white,
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
                                menuMaxHeight: 300,
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
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
                    const PrimaryTextField(
                      label: 'Toll',
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    PrimaryButton(
                      text: 'Continue',
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage2.route);
                      },
                      borderRadius: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
