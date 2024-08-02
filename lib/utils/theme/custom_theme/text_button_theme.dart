import 'package:flutter/material.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';

class MyTextButtonTheme{
  MyTextButtonTheme._();

  static TextButtonThemeData lightElevatedButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20),
      foregroundColor: EColors.dotColor,
      // surfaceTintColor: EColors.lightGrey,
      // shadowColor: EColors.lightGrey,
      overlayColor: EColors.dotColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: const BorderSide(color: EColors.lightGrey,width: 2),
      ),
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      // side: const BorderSide(color: Colors.blue),
      // padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(color: EColors.primary, fontWeight: FontWeight.w600,),
    )
  );

  static TextButtonThemeData darkElevatedButtonTheme = TextButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: EColors.darkBlue,
        padding: const EdgeInsets.symmetric(vertical: 20),
        foregroundColor: EColors.white,
        // surfaceTintColor: EColors.lightGrey,
        // shadowColor: EColors.lightGrey,
        overlayColor: EColors.dotColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(color: EColors.dotColor,width: 2),
        ),
        disabledForegroundColor: Colors.grey,
        disabledBackgroundColor: Colors.grey,
        // side: const BorderSide(color: Colors.blue),
        // padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle: const TextStyle(fontSize: 14, color: Colors.purple, fontWeight: FontWeight.w600,),
      )
  );
}