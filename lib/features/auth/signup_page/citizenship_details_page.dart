import 'package:agriculture_app/core/config/size_config.dart';
import 'package:agriculture_app/core/utils/primary_app_bar.dart';
import 'package:agriculture_app/core/widgets/primary_text_field.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/button.dart';
import '../../../core/utils/color_switch_text.dart';

import 'personal_details_page.dart';

class CitizenshipDetailsPage extends StatefulWidget {
  static const route = 'CitizenshipDetailsPage';

  const CitizenshipDetailsPage({Key? key}) : super(key: key);

  @override
  State<CitizenshipDetailsPage> createState() => _CitizenshipDetailsPageState();
}

class _CitizenshipDetailsPageState extends State<CitizenshipDetailsPage> {
  String? districtValue;
  String? fieldOfAgricultureWorkValue;
  List<String> district = ["Kathmandu", "Bhaktapur", "Lalitpur", "Janakpur", "Bara", "Baglung", "Chitwan", "Jhapa",];
  List<String> fieldWork = ["Agronomy","Animal Husbandry","Horticulture","Agricultural Engineering","Agricultural Economics","Soil Science","Agricultural Biotechnology",];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        drawer: const MyDrawerNew(selectedIndex: 0,),
        appBar:  PrimaryAppBar(
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Stack(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 200, top: 10),
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
                          '3',
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
                text1: 'Citizenship ',
                text2: 'Details',
                fontSize: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: SizeConstants.horizontalSpacing),
                child: Column(
                  children: [
                    const PrimaryTextField(
                      label: 'Citizenship Number',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'District of Issuing Citizenship',
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
                                  border: Border.all(
                                      color: Colors.black, width: 1.6),
                                  borderRadius: BorderRadius.circular(11),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        blurRadius: 3, offset: Offset(0, 3)),
                                    BoxShadow(
                                        blurRadius: 3,
                                        color: Colors.white,
                                        offset: Offset(-3, 0)),
                                    BoxShadow(
                                        blurRadius: 3,
                                        color: Colors.white,
                                        offset: Offset(3, 0)),
                                  ]),
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
                    const SizedBox(
                      height: 20,
                    ),
                    const ColorSwitchText(
                      text1: 'Details of ',
                      text2: 'Agricultural Work',
                      fontSize: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Field of agricultural work',
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
                                  border: Border.all(
                                      color: Colors.black, width: 1.6),
                                  borderRadius: BorderRadius.circular(11),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        blurRadius: 3, offset: Offset(0, 3)),
                                    BoxShadow(
                                        blurRadius: 3,
                                        color: Colors.white,
                                        offset: Offset(-3, 0)),
                                    BoxShadow(
                                        blurRadius: 3,
                                        color: Colors.white,
                                        offset: Offset(3, 0)),
                                  ]),
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
                                value: fieldOfAgricultureWorkValue,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                ),
                                onChanged: (newValue) {
                                  setState(() {
                                    fieldOfAgricultureWorkValue = newValue;
                                  });
                                },
                                items: fieldWork.map((fieldOfAgricultureWorkValue) {
                                  return DropdownMenuItem(
                                    value: fieldOfAgricultureWorkValue,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(fieldOfAgricultureWorkValue),
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
                    const ColorSwitchText(
                      text1: 'Other ',
                      text2: 'Details',
                      fontSize: 24,
                    ),
                    const PrimaryTextField(
                      label:
                          'On average, how many months per year are you engaged in agricultural work?',
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: PrimaryButton(
                            text: 'Previous',
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            borderRadius: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: PrimaryButton(
                          text: 'Save',
                          onPressed: () {},
                          borderRadius: 20,
                        )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
