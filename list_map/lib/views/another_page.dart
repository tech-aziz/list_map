import 'dart:html';

import 'package:flutter/material.dart';

class AnotherPage extends StatefulWidget {
  String name;
  int id;
  int age;
  String car;
  AnotherPage(
      {super.key,
      required this.name,
      required this.id,
      required this.age,
      required this.car});

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details about card"),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green,
            child: Row(
              children: [
                Text(
                  widget.name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
