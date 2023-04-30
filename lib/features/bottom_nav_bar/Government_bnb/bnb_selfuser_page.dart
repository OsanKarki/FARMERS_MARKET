import 'package:flutter/material.dart';
class BnbSelfuserPage extends StatelessWidget {
  const BnbSelfuserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [Text('user'), Icon(Icons.access_alarm)],
        ),
      ),
    );
  }
}