import 'package:flutter/material.dart';
import 'package:navbar/home.dart';
import 'package:navbar/profile.dart';
import 'package:navbar/setting.dart';
import 'package:navbar/MyDrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkThemeEnabled = false;
  String dropdownvalue = 'Hospitals';
  var items = [
    'Hospitals',
    'Restaurants',
    'Pharmaceuticals',
    'Customer Service Centres'
  ];

  int index = 0;
  List<Widget> list = [
    Home(),
    Profile(),
    Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkThemeEnabled ? ThemeData.dark() : ThemeData.light(),
      // theme: darkThemeEnabled ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget HomePage() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discover"),
      ),
      body: list[index],
      drawer: MyDrawer(onTap: (ctx, i) {
        setState(() {
          index = i;
          Navigator.pop(ctx);
        });
      }),
    );
  }
}

// ignore: must_be_immutable
