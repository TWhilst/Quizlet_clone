import 'package:flutter/material.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/theme/custom_theme/appbar_theme.dart';
import 'package:quizlet_clone_app/utils/theme/custom_theme/chip_theme.dart';
import 'package:quizlet_clone_app/utils/theme/custom_theme/filled_button_theme.dart';
import 'package:quizlet_clone_app/utils/theme/custom_theme/text_button_theme.dart';
import 'package:quizlet_clone_app/utils/theme/custom_theme/text_field_theme.dart';
import 'package:quizlet_clone_app/utils/theme/custom_theme/text_form_field_theme.dart';



class MyTheme{
  MyTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: "Poppins",
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    // textTheme: MyTextTheme.lightTextTheme,
    textButtonTheme: MyTextButtonTheme.lightElevatedButtonTheme,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    filledButtonTheme: MyOutlinedTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MyTextFieldTheme.lightInputDecorationTheme,
    chipTheme: MyChipTheme.lightChipTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    // fontFamily: "Poppins",
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: EColors.darkBlue,
    // textTheme: MyTextTheme.darkTextTheme,
    textButtonTheme: MyTextButtonTheme.darkElevatedButtonTheme,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    filledButtonTheme: MyOutlinedTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ETextFormFieldTheme.darkInputDecorationTheme,
    chipTheme: MyChipTheme.darkChipTheme
  );
}