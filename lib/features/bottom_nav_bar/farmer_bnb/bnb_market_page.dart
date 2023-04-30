import 'package:flutter/material.dart';

class BnbMarketPage extends StatelessWidget {
  const BnbMarketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [Text('market'), Icon(Icons.access_alarm)],
        ),
      ),
    );
  }
}
