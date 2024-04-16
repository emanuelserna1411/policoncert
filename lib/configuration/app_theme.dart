import 'package:flutter/material.dart';

List<Color> colors = 
[
  Colors.blue,
  Colors.lightBlue,
  Colors.purple,
  Colors.green,
  Colors.lightGreen
];

class AppTheme 
{
  final int colorSelected;

  AppTheme({required this.colorSelected});
  
  ThemeData getThemeData() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colors[colorSelected]
  ); 
}