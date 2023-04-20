import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class PrimaryAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;

  const PrimaryAppBar({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        iconTheme: const IconThemeData(color: Colors.black, size: 33),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: RichText(
              text: const TextSpan(
            text: 'Farm',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: 'Center',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1BA37D),
                ),
              ),
            ],
          )),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

//     return AppBar(
//         title:
//         Padding(
//           padding: const EdgeInsets.fromLTRB(0,20,0,0),
//           child: RichText(
//               text: const TextSpan(
//                 text: 'Farm',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.black,
//                 ),
//                 children: [
//                   TextSpan(
//                     text: 'Center',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.w700,
//                       color: Colors.green,
//                     ),
//                   ),
//                 ],
//               ),
//       actions: [
//         IconButton(
//           icon: Icon(Icons.search),
//           onPressed: () {
//             // TODO: Implement search functionality
//           },
//         ),
//       ],
//     );
//   }
//
//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// }

// class AppBarWidget extends StatelessWidget {
//   const AppBarWidget({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(iconTheme:const IconThemeData(color: Colors.black,
//         size: 33) ,
//
//         centerTitle: true,
//         backgroundColor: Colors.white,
//
//         title:
//         Padding(
//           padding: const EdgeInsets.fromLTRB(0,20,0,0),
//           child: RichText(
//               text: const TextSpan(
//                 text: 'Farm',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.black,
//                 ),
//                 children: [
//                   TextSpan(
//                     text: 'Center',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.w700,
//                       color: Colors.green,
//                     ),
//                   ),
//                 ],
//
//
//
//               )
//           ),
//         )
//     );
//   }
// }
