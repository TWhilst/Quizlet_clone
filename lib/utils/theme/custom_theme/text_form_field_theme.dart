import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';

class ETextFormFieldTheme {
  ETextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorStyle: GoogleFonts.interTight(
      fontSize: 12,
      letterSpacing: 1,
      fontWeight: FontWeight.w600,
      color: Colors.redAccent.shade100,
    ),
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.red,
    // constraints: const BoxConstraints.expand(height: 14,),
    labelStyle: const TextStyle().copyWith(color: EColors.primary),
    // hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    floatingLabelStyle: const TextStyle().copyWith(color: EColors.primary),
    border: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2, color: Colors.black),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2, color: Colors.black),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(width: 4, color: Colors.blue.shade900),
    ),
    // labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: EColors.lightGrey),
    errorBorder: const UnderlineInputBorder().copyWith(
      borderSide: BorderSide(width: 4, color: Colors.red.shade900),
    ),
    focusedErrorBorder: const UnderlineInputBorder().copyWith(
      borderSide: BorderSide(width: 4, color: Colors.red.shade900),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorStyle: GoogleFonts.interTight(
      fontSize: 12,
      letterSpacing: 1,
      fontWeight: FontWeight.w600,
      color: Colors.redAccent.shade100,
    ),
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    // focusColor: EColors.primary,
    suffixIconColor: EColors.lightGrey.withOpacity(0.2),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2, color: EColors.white),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 4, color: EColors.primary),
    ),
    // labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle().copyWith(
        fontSize: 14, color: EColors.lightGrey.withOpacity(0.2)),
    errorBorder: const UnderlineInputBorder().copyWith(
      borderSide: BorderSide(width: 4, color: Colors.red.shade900),
    ),
    focusedErrorBorder: const UnderlineInputBorder().copyWith(
      borderSide: BorderSide(width: 4, color: Colors.red.shade900),
    ),
  );
}

