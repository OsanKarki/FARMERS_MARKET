import 'package:agriculture_app/core/config/size_config.dart';
import 'package:agriculture_app/core/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectCropsPage extends StatelessWidget {
  static const route = 'SelectCropsPage';

  const SelectCropsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: SizeConstants.horizontalSpacing),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60,),
                  child: RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Select',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w700)),
                          TextSpan(
                              text: 'Crops',
                              style: TextStyle(
                                  color: Color(0xff1BA37D),
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold))
                        ]),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: SvgPicture.asset("assets/apple.svg"),

                      ),
                      SizedBox(height: 5,),
                      Text('Apple',style: TextStyle(fontSize: 16),)
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: SvgPicture.asset("assets/apple.svg"),

                      ),
                      SizedBox(height: 5,),
                      Text('Apple',style: TextStyle(fontSize: 16),)
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: SvgPicture.asset("assets/apple.svg"),

                      ),
                      SizedBox(height: 5,),
                      Text('Apple',style: TextStyle(fontSize: 16),)
                    ],
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10,top: 550),
                    child: PrimaryButton(
                      width: 150,
                        text: 'save',
                        borderRadius: 20,
                        onPressed: (){

                    }),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
