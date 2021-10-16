// ignore_for_file: dead_code

// import 'dart:html';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  // const Home({ Key? key }) : super(key: key);
  String dropdownvalue = 'Hospitals';
  var items = [
    'Hospitals',
    'Restaurants',
    'Pharmaceuticals',
    'Customer Service Centres'
  ];
  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          children: [
            // Text("ANkita"),
            DropdownButton(
              items: items.map((itemsname) {
                return DropdownMenuItem(
                  value: itemsname,
                  child: Text(itemsname, textAlign: TextAlign.center),
                );
              }).toList(),
              onChanged: (newValue) {},
              value: dropdownvalue,
            )
          ],
        ),
      ),
    );
  }
}
