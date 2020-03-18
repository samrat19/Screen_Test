import 'package:flutter/material.dart';

var defaultTheme = ThemeData.light();
TextTheme get defaultTextTheme => defaultTheme.textTheme;

ThemeData get myThemeData => defaultTheme.copyWith(
  textTheme: defaultTextTheme.copyWith(
    display1: defaultTextTheme.display1.copyWith(
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    display2: defaultTextTheme.display2.copyWith(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  ),
);
