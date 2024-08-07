import 'package:flutter/material.dart';

class MyChipTheme {
  MyChipTheme._();

  static ChipThemeData lightChipTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
      disabledColor: Colors.grey,
      labelStyle: TextStyle(color: Colors.white),
      selectedColor: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: Colors.white
  );
}