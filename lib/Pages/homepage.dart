import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tutorialyt/models/catalog.dart';
import 'package:tutorialyt/widgets/drawer.dart';
import 'package:tutorialyt/widgets/item_widget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String hello = "hello";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CataloguModal.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
        child: CataloguModal.items != null && CataloguModal.items.isNotEmpty
            ? ListView.builder(
                itemCount: CataloguModal.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CataloguModal.items[index],
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
