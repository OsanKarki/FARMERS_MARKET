import 'package:agriculture_app/features/auth/signup_page/set_password_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';

import '../../../core/utils/button.dart';
import '../login_page/farmer_login_page/farmer_login_page.dart';
import 'controller/signup_controller.dart';
import 'model/farmers_signup_otp_model.dart';

class OtpVerificationPage extends StatefulWidget {
  static const route = 'OtpVerificationPage';

  const OtpVerificationPage({Key? key}) : super(key: key);

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  @override
  Widget build(BuildContext context) {
    final SignUpController signUpController = Get.find<SignUpController>();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: Stack(children: [
        Positioned(
          top: -50,
          left: -50,
          child: Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xff0B7E7F).withOpacity(0.3),
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
              color: const Color(0xff35BC88).withOpacity(0.5),
            ),
          ),
        ),
        SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(29, 120, 0, 0),
                child: Row(
                  children: [
                    const Text(
                      'OTP Verification',
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
                children: [
                  Pinput(
                    controller: signUpController.otpController,
                    length: 5,
                    defaultPinTheme: PinTheme(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        )),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Center(
                    child: PrimaryButton(
                      text: 'Continue',
                      borderRadius: 20,
                      onPressed: () {
                        print(
                          int.parse(
                            signUpController.otpController.text,
                          ),
                        );
                        print(signUpController.numberController.text);
                        signUpController.signUpOtp(SignupOtpRequest(
                            otp: int.parse(
                              signUpController.otpController.text,
                            ),
                            phoneNumber:
                                signUpController.numberController.text));
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
                ],
              ),
            ),
          ]),
        )
      ])),
    );
  }
}
