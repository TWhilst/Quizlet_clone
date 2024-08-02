import 'package:flutter/material.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';

class MyOutlinedTheme {
  MyOutlinedTheme._();

  static final lightOutlinedButtonTheme = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      disabledBackgroundColor: EColors.disabled,
      disabledForegroundColor: EColors.white,
      elevation: 0,
      foregroundColor: EColors.white,
      backgroundColor: EColors.primary,
      // side: const BorderSide(color: Colors.blue,),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      textStyle: const TextStyle(fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16),
    ),
  );

  static final darkOutlinedButtonTheme = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      disabledBackgroundColor: EColors.disabled,
      disabledForegroundColor: EColors.white,
      elevation: 0,
      foregroundColor: EColors.white,
      backgroundColor: EColors.primary,
      // side: const BorderSide(color: Colors.white,),
      textStyle: const TextStyle(fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16,),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
  );
}