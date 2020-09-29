import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
 // backgroundColor: const Color(0xFF212121),
  backgroundColor: Colors.white,
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.black12,
  textTheme:TextTheme(bodyText1: TextStyle(color: Colors.white)),
  iconTheme:IconThemeData(color: Colors.white),
);

final lightTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.white,
  brightness: Brightness.light,
  //backgroundColor: const Color(0xFFE5E5E5),
  backgroundColor: Colors.black,
  accentColor: Colors.black,
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.white54,
  textTheme:TextTheme(bodyText1: TextStyle(color: Colors.black)),
  iconTheme:IconThemeData(color: Colors.black),
);