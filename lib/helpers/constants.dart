import 'package:flutter/material.dart';

final KLightTheme = ThemeData(
  fontFamily: "Open Sans",
  primaryColor: Color(0xFF000000),
  backgroundColor: Color(0xFFFFFFFF),
  accentIconTheme: IconThemeData(color: Color(0xFFddb400)),
  accentColor: Color(0xFFddb400),
  textTheme: TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        height: 1.8,
        color: Color(0xFF121829),
      ),
      headline2: TextStyle(
        fontSize: 18,
        height: 1.8,
      ),
      headline3: TextStyle(
        fontSize: 16,
        height: 1.8,
      ),
      headline4: TextStyle(
          fontSize: 14, height: 1.6, color: Color(0xFF121829).withOpacity(0.8)),
      headline5: TextStyle(
          fontSize: 12, height: 1.4, color: Color(0xFF121829).withOpacity(0.8)),
      headline6: TextStyle(fontSize: 10, height: 1.1)),
);
const KTextPrimary = Color(0xFF121829);
const KLightBackground = Color(0xFFf3f3f4);
const KRadius = BorderRadius.all(Radius.circular(10));
const KAppName = "Hyperzod - Client App";
