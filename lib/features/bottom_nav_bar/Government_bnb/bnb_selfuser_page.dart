import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class BnbSelfuserPage extends StatelessWidget {
  const BnbSelfuserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 35),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 50,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/bluetick.svg'),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Aashish Mallick',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                backgroundColor: Color(0xffCEE5E5),
                                child: SvgPicture.asset("assets/edit.svg")),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Edit Profile',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SvgPicture.asset("assets/circlearrow.svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar( backgroundColor: Color(0xffCEE5E5),
                                child: SvgPicture.asset("assets/usersetting.svg")),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Settings',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SvgPicture.asset("assets/circlearrow.svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                backgroundColor: Color(0xffCEE5E5),
                                child: SvgPicture.asset("assets/information.svg")),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Information',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SvgPicture.asset("assets/circlearrow.svg"),
                      ],
                    ),


                    const SizedBox(
                      height: 175,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(


                              backgroundColor: Color(0xffCEE5E5),


                              child: SvgPicture.asset("assets/userlogout.svg"),),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Logout',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SvgPicture.asset("assets/circlearrow.svg"),
                      ],
                    ),
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