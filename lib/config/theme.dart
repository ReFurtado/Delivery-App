import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/constants.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
  );
}

ThemeData darkTheme(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.black,
  );
}