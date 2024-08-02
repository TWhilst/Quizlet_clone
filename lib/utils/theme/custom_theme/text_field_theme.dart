import 'package:flutter/material.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';

class MyTextFieldTheme {
  MyTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.red,
    // constraints: const BoxConstraints.expand(height: 14,),
    labelStyle: const TextStyle().copyWith(color: EColors.primary),
    // hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle().copyWith(color: Colors.red),
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
    // floatingLabelStyle: const TextStyle().copyWith(color: Colors.white.withOpacity(0.8)),
    // border: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(14),
    //   borderSide: const BorderSide(width: 1, color: Colors.grey),
    // ),
    // enabledBorder: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(14),
    //   borderSide: const BorderSide(width: 1, color: Colors.grey),
    // ),
    // focusedBorder: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(14),
    //   borderSide: const BorderSide(width: 1, color: Colors.white),
    // ),
    errorBorder: const UnderlineInputBorder().copyWith(
      borderSide: BorderSide(width: 4, color: Colors.red.shade900),
    ),
    focusedErrorBorder: const UnderlineInputBorder().copyWith(
      borderSide: BorderSide(width: 4, color: Colors.red.shade900),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    // focusColor: EColors.primary,
    suffixIconColor: EColors.lightGrey.withOpacity(0.2),
    // constraints: const BoxConstraints.expand(height: 14,),
    labelStyle: const TextStyle(color: Colors.purple),
    floatingLabelStyle:
    const TextStyle().copyWith(color: Colors.purple),
    border: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2, color: EColors.white),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2, color: EColors.white),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 4, color: EColors.primary),
    ),
    // labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle().copyWith(
        fontSize: 14, color: EColors.lightGrey.withOpacity(0.2)),
    errorStyle: const TextStyle().copyWith(color: Colors.red),
    // floatingLabelStyle: const TextStyle().copyWith(color: Colors.white.withOpacity(0.8)),
    // border: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(14),
    //   borderSide: const BorderSide(width: 1, color: Colors.grey),
    // ),
    // enabledBorder: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(14),
    //   borderSide: const BorderSide(width: 1, color: Colors.grey),
    // ),
    // focusedBorder: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(14),
    //   borderSide: const BorderSide(width: 1, color: Colors.white),
    // ),
    errorBorder: const UnderlineInputBorder().copyWith(
      borderSide: BorderSide(width: 4, color: Colors.red.shade900),
    ),
    focusedErrorBorder: const UnderlineInputBorder().copyWith(
      borderSide: BorderSide(width: 4, color: Colors.red.shade900),
    ),
  );
}
