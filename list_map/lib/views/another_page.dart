import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        title: Text("Details about card",style: TextStyle(fontSize: 20.sp),),
      ),
      body: Column(
        children: [
          Container(
            height: 100.h,
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
