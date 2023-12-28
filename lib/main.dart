import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}



class Onboarding extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Fashion Store',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'assets/onboard3.png',
    ),
    Introduction(
      title: 'Delivery',
      subTitle: 'Your order will be immediately collected and',
      imageUrl: 'assets/onboard2.png',
    ),
    Introduction(
      title: 'Receive Money',
      subTitle: 'Pick up delivery at your door and enjoy groceries',
      imageUrl: 'assets/onboard1.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: const Color(0xFFf9f9f9),
      foregroundColor: const Color(0xFFFFAA00),
      introductionList: list,
      onTapSkipButton: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Demo(),
          )),
      skipTextStyle: const TextStyle(
        color: Colors.blueGrey,
        fontSize: 18,
      ),
    );
  }
}



class Demo extends StatelessWidget {
  const Demo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("new page")),
    );
  }
}