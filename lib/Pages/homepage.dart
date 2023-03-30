import 'package:flutter/material.dart';
import 'package:tutorialyt/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String hello = "hello";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text(
              "Welcome to flutter app for the $days'th day ,\n my name is $hello  "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
