// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../config/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kPadding.horizontal,
        vertical: kPadding.vertical,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //   color: Colors.grey.shade100,
              //   borderRadius: BorderRadius.circular(20),
              //   // boxShadow: [
              //   //   BoxShadow(
              //   //     color: Colors.grey.shade300,
              //   //     spreadRadius: 2,
              //   //     blurRadius: 10, 
              //   //     offset: Offset(0, 3)
              //   //   )
              //   // ]
              // ),
              child: Icon(
                FontAwesomeIcons.bars,
                size: 16,
                color: Colors.grey,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //   color: Colors.grey.shade100,
              //   borderRadius: BorderRadius.circular(20),
              //   // boxShadow: [
              //   //   BoxShadow(
              //   //     color: Colors.grey.shade300,
              //   //     spreadRadius: 2,
              //   //     blurRadius: 10, 
              //   //     offset: Offset(0, 3)
              //   //   )
              //   // ]
              // ),
              //child: Icon(Icons.notifications),
              child: Icon(
                FontAwesomeIcons.bell,
                size: 16,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}