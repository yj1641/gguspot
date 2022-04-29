import 'package:flutter/material.dart';
import 'package:ggupot/screens/main_screen.dart';
import 'package:ggupot/theme.dart';

void main() {
  runApp(const GguPot());
}

class GguPot extends StatelessWidget {
  const GguPot({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot_market_ui',
      debugShowCheckedModeBanner: false,
      home: MainScreens(),
      theme: theme(),
    );
  }
}