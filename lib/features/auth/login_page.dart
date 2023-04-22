import 'package:agriculture_app/features/mainpage/home_page/home_page.dart';
import 'package:flutter/material.dart';

import '../../core/config/size_config.dart';
import '../../core/utils/button.dart';
import '../../core/widgets/primary_text_field.dart';

class LoginPage extends StatelessWidget {
  static const route = 'LoginPage';

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
              padding:  EdgeInsets.symmetric(horizontal: SizeConstants.horizontalSpacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  PrimaryTextField(
                    hintText: 'Enter email id',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PrimaryTextField(
                    hintText: 'Enter password',
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(color: Color(0xff564C4A),fontWeight: FontWeight.w700),
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: PrimaryButton(
                      text: 'Login',
                      borderRadius: 20,
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.route);
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Not registered yet?',
                  style: TextStyle(
                      color: Color(0xffB6B6B6),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Create Account',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700)),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
