import 'package:agriculture_app/core/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class BnbFarmerPage extends StatelessWidget {
  const BnbFarmerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:Padding(
        padding: const EdgeInsets.only(top: 5),
        child: ListView.builder(
          itemCount: 3,

          itemBuilder: (BuildContext context,int index) {

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                height: 120,
                color: const Color(0xffEBF0F5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: SizeConstants.horizontalSpacing),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                         children: [  Container(
                           height: 80,
                           width: 80,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                           ),
                           child: const Icon(Icons.person),

                         ),
                           const SizedBox(
                             width: 15,
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: const [
                               Text('Aashish Mallick',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                               Text('Madesh-Dhanusha '),
                               Text('Janakpur Metropolitian-7'),
                               Text('9844329569',style: TextStyle(fontWeight: FontWeight.w400),),
                             ],
                           )

                         ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(Icons.arrow_forward_ios,size: 40,),
                          const SizedBox(height: 10,),
                          Container(
                            width: 95,
                            height: 30,

                            decoration: BoxDecoration(
                                color: const Color(0xff40BF8E),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset("assets/messageicon.svg",height: 23),
                                const Text('Message',style: TextStyle(color: Colors.white),)
                              ],
                            ),

                          )
                        ],
                      )


                    ],
                  ),
                ),
              ),
            );
          }
        ),
      )
    );
  }
}

