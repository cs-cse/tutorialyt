import 'package:flutter/material.dart';
import 'package:tutorialyt/Pages/homepage.dart';
import 'package:tutorialyt/Pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }

  bringVegetables({int rupees = 100, bool thaila = false}) {
    // take cycle

    // go to market
  }
}
