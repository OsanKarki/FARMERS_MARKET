import 'package:agriculture_app/features/auth/login_page/farmer_login_page/farmer_login_page.dart';
import 'package:agriculture_app/features/mainpage/home_page/Government_home_page/government_homePage.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/size_config.dart';
import '../../../../core/utils/button.dart';
import '../../../../core/widgets/primary_text_field.dart';

class GovernmentLoginPage extends StatelessWidget {
  static const route = 'GovernmentLoginPage';
  const GovernmentLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
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

                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(29, 120, 0, 0),
                          child: Row(
                            children: [
                              const Text(
                                'Login Account',
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
                        height: 30,
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: SizeConstants.horizontalSpacing),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const PrimaryTextField(
                              hintText: 'Enter Email',
                              prefixIcon: Icons.mail,


                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const PrimaryTextField(
                              prefixIcon: Icons.lock,
                              hintText: 'Enter password',
                              isPassword: true,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forget Password?',
                                  style: TextStyle(color: Color(0xff564C4A),fontWeight: FontWeight.w700),
                                )),
                            const SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: PrimaryButton(
                                text: 'Login',
                                borderRadius: 20,
                                onPressed: () {
                                  Navigator.pushNamed(context, GovernmentHomePage.route);

                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 148,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Are you a User?',
                            style: TextStyle(
                                color: Color(0xffB6B6B6),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, FarmerLoginPage.route);
                            },
                            child: const Text('Login',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700)),
                          )
                        ],
                      )
                    ]),
                  ),
                ]
            )
        )
    );
  }}
