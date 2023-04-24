import 'package:agriculture_app/features/auth/signup_page/otp_verification_page.dart';
import 'package:flutter/material.dart';

import '../../../core/config/size_config.dart';
import '../../../core/utils/button.dart';
import '../../../core/utils/primary_app_bar.dart';
import '../../../core/widgets/primary_text_field.dart';
import '../../mainpage/drawer/drawer_screen.dart';

class SignUpPage extends StatefulWidget {
  static const route = 'SignUPPage';

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String? countryCodeValue;

  List<String> countryCode = [
    "NP",
    "US",
    "IND",
    "UK",
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: Stack(
            children: [
            Positioned(
            top: -50,
            left: -50,
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff0B7E7F).withOpacity(0.3),
              ),
            ),
          ),
          Positioned(
            top: -80,
            left: 150,
            child: Container(
              width: 290,
              height: 290,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff35BC88).withOpacity(0.5),
              ),
            ),
          ),
          SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(29, 120, 0, 0),
              child: Row(
                children: [
                  const Text(
                    'Sign up Account',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Image.asset('assets/duckicon.png')
                ],
              )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 39, vertical: 13),
            child: Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Farm',
                        style: TextStyle(
                            fontSize: 58, fontWeight: FontWeight.w700)),
                    TextSpan(
                        text: 'Center',
                        style: TextStyle(
                            color: Color(0xff1BA37D),
                            fontSize: 58,
                            fontWeight: FontWeight.bold))
                  ]),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.6),
                            borderRadius: BorderRadius.circular(11),
                            color: Colors.white,
                            boxShadow: const [
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
                        child: DropdownButton(
                          borderRadius: BorderRadius.circular(10),
                          dropdownColor: const Color(0xff35BC88),
                          underline: const SizedBox(),
                          isExpanded: true,
                          selectedItemBuilder: (context) {
                            return countryCode
                                .map((e) => Center(
                                        child: Text(
                                      e,
                                      style: TextStyle(color: Colors.black),
                                    )))
                                .toList();
                          },
                          menuMaxHeight: 300,
                          hint: Center(child: const Text('NP')),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                          iconSize: 36,
                          value: countryCodeValue,
                          onChanged: (newValue) {
                            setState(() {
                              countryCodeValue = newValue;
                            });
                          },
                          items: countryCode.map((countryCodeValue) {
                            return DropdownMenuItem(
                              value: countryCodeValue,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7),
                                child: Text(
                                  countryCodeValue,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                      child: PrimaryTextField(
                        hintText: 'Enter Phone number',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Center(
                  child: PrimaryButton(
                    text: 'Continue',
                    borderRadius: 20,
                    onPressed: () {
                      Navigator.pushNamed(context, OtpVerificationPage.route);
                    },
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account ?',
                      style: TextStyle(
                          color: Color(0xffB6B6B6),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    )
                  ],
                )
              ],
            ),
          ),
        ]
        ),
      )
          ]
      )

    )



    );
  }
}
