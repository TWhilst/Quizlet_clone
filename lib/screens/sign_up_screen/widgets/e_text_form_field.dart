import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlet_clone_app/provider/login_provider.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';

class EField extends ConsumerWidget {
  const EField({
    super.key,
    this.node,
    required this.controller,
    this.readOnly = false,
    this.obscureText = false,
    this.errorText,
    required this.hintText,
    this.suffixIcon,
    this.suffixIconColor,
    this.enabledBorder,
    this.focusedBorder,
    this.fontSize = 13,
    this.onTap,
    this.onChanged,
    this.validator,
  });

  final FocusNode? node;
  final TextEditingController controller;
  final bool? readOnly, obscureText;
  final String? errorText;
  final String hintText;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final double? fontSize;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = EHelperFunctions.isDarkMode(context);
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      obscureText: obscureText!,
      cursorWidth: 1,
      cursorColor: isDark ? EColors.white : Colors.black,
      focusNode: node,
      controller: controller,
      onTap: onTap,
      readOnly: readOnly!,
      decoration: InputDecoration(
        errorText: errorText,
        hintText: hintText,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor,
        enabledBorder: enabledBorder,
        focusedBorder: focusedBorder,
        errorStyle: GoogleFonts.interTight(
          textStyle: Theme.of(context).textTheme.titleSmall,
          fontSize: fontSize,
          letterSpacing: 2,
          fontWeight: FontWeight.w600,
          color: Colors.redAccent.shade100,
        ),
      ),
    );
  }
}
