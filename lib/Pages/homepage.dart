import 'package:flutter/material.dart';
import 'package:tutorialyt/models/catalog.dart';
import 'package:tutorialyt/widgets/drawer.dart';
import 'package:tutorialyt/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String hello = "hello";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CataloguModal.items[0]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "Catalog App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
