import 'package:agriculture_app/features/auth/signup_page/details/address_detail_page.dart';
import 'package:agriculture_app/features/auth/signup_page/details/personal_details_page.dart';
import 'package:flutter/material.dart';

import '../../../core/config/size_config.dart';
import '../../../core/utils/button.dart';
import '../../../core/widgets/primary_text_field.dart';

class SetPasswordPage extends StatelessWidget {

  static const route = 'SetPasswordPage';
  const SetPasswordPage({Key? key}) : super(key: key);

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
        ), SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(29, 120, 0, 0),
                child: Row(
                  children: [
                    const Text(
                      'Set Password',
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
            Column(
              children: [
                Padding(
                  padding:   const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      const PrimaryTextField(
                        hintText: 'New Password',
                        isPassword: true
                        ,

                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const PrimaryTextField(isPassword: true,
                        hintText: 'Confirm Password',
                      ),

                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: PrimaryButton(

                          text: 'Signup',
                          borderRadius: 20,

                          onPressed: () {
                            Navigator.pushNamed(context,AddressDetailsPage.route );

                          },
                        ),
                      ),
                      const SizedBox(
                        height: 100,
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
              ],
            ),


          ]),
        ),

        ]
        )
      ),
    );

  }
}
