// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import '../config/constants.dart';

class SplashContent extends StatelessWidget {
  SplashContent({
    super.key, required this.text, required this.image,
  });

  String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        Spacer(),
        Image.asset(
          image,
          height: 300,
          width: 300,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}