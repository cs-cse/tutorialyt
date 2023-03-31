import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorialyt/Pages/homepage.dart';
import 'package:tutorialyt/Pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorialyt/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }

  bringVegetables({int rupees = 100, bool thaila = false}) {
    // take cycle

    // go to market
  }
}
