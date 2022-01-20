import 'dart:ui';

import 'package:cyberdine/util.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    backgroundColor: Colors.black54,
    scaffoldBackgroundColor: Colors.black87,
    appBarTheme: AppBarTheme(backgroundColor: Colors.black87),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(primary: Colors.white, textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 24), backgroundColor: Colors.black12,),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(primary: Colors.transparent, side: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),)
    ),

    // Define the default font family.
    fontFamily: 'Georgia',

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 64, fontWeight: FontWeight.bold, color: Colors.white),
      headline2: TextStyle(fontSize: 50, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.white),
      headline3: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
      headline4: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
      headline6: TextStyle(fontSize: 28),
      bodyText1: TextStyle(fontSize: 24),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );
}