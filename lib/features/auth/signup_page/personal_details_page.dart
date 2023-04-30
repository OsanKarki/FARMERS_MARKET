import 'package:agriculture_app/core/config/size_config.dart';
import 'package:agriculture_app/core/utils/button.dart';
import 'package:agriculture_app/core/utils/primary_app_bar.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_screen.dart';
import 'package:agriculture_app/core/widgets/no_of_children_dropdown.dart';
import 'package:agriculture_app/features/auth/signup_page/citizenship_details_page.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/color_switch_text.dart';
import '../../../core/widgets/primary_text_field.dart';
import 'address_detail_page.dart';

class PersonalDetailsPage extends StatefulWidget {
  static const route = 'PersonalDetailsPage';

  const PersonalDetailsPage({Key? key}) : super(key: key);

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
  String? genderValue;
  String? daysValue;
  String? monthsValue;
  String? yearsValue;

  List<String> gender = [
    "Male",
    "Female",
    "Others",
  ];
  List<String> months = [
    'Month',
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  List<String> days = [
    'Day',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
  ];
  List<String> years = [];

  @override
  void initState() {
    super.initState();
    int currentYear = DateTime.now().year;
    years = List.generate(24, (index) => (currentYear - index).toString());
    years.insert(0, 'Year');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: PrimaryAppBar(
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
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,

                            ),
                            const Text('नेपालीमा :',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                            Row(
                              children: const [

                                Expanded(
                                  child: PrimaryTextField(
                                    label: 'First Name(पहिलो नाम)',
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: PrimaryTextField(
                                    label: 'Middle Name(बीचको नाम)',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 180,
                              child: PrimaryTextField(
                                label: 'Last Name(थर)',
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,

                            ),
                            const Text('In English :',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),

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
                            const SizedBox(
                              width: 180,
                              child: PrimaryTextField(
                                label: 'Last Name',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
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
                                  border: Border.all(
                                      color: Colors.black, width: 1.6),
                                  borderRadius: BorderRadius.circular(11),
                                  boxShadow: const [
                                    BoxShadow(
                                        blurRadius: 3, offset: Offset(0, 2)),
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
                                menuMaxHeight: 300,
                                hint: const Text(''),
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                                iconSize: 36,
                                value: genderValue,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                ),
                                onChanged: (newValue) {
                                  setState(() {
                                    genderValue = newValue;
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dob',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 90,
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
                                              offset: Offset(0, 2)),
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
                                      menuMaxHeight: 300,
                                      hint: const Text(' Day'),
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.black,
                                      ),
                                      iconSize: 36,
                                      value: daysValue,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                      ),
                                      onChanged: (newValue) {
                                        setState(() {
                                          daysValue = newValue;
                                        });
                                      },
                                      items: days.map((daysValue) {
                                        return DropdownMenuItem(
                                          value: daysValue,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7),
                                            child: Text(daysValue),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
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
                                              offset: Offset(0, 2)),
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
                                      menuMaxHeight: 300,
                                      hint: const Text(' Month'),
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.black,
                                      ),
                                      iconSize: 36,
                                      value: monthsValue,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                      ),
                                      onChanged: (newValue) {
                                        setState(() {
                                          monthsValue = newValue;
                                        });
                                      },
                                      items: months.map((monthsValue) {
                                        return DropdownMenuItem(
                                          value: monthsValue,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7),
                                            child: Text(monthsValue),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 120,
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
                                              offset: Offset(0, 2)),
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
                                      menuMaxHeight: 300,
                                      hint: const Text(' Years'),
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.black,
                                      ),
                                      iconSize: 36,
                                      value: yearsValue,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                      ),
                                      onChanged: (newValue) {
                                        setState(() {
                                          yearsValue = newValue;
                                        });
                                      },
                                      items: years.map((yearsValue) {
                                        return DropdownMenuItem(
                                          value: yearsValue,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7),
                                            child: Text(yearsValue),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
                      const ChildrenDropDownTextField(),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
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
                              text: 'Continue',
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, CitizenshipDetailsPage.route);
                              },
                              borderRadius: 20,
                            )),
                          ],
                        ),
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
