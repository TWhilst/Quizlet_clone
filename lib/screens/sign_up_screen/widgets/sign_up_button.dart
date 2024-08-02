import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlet_clone_app/provider/login_provider.dart';
import 'package:quizlet_clone_app/provider/sign_up_provider.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';

class SignUpButton extends StatefulWidget {
  const SignUpButton({
    super.key,
    required this.data,
  });

  final SignUpController data;

  @override
  State<SignUpButton> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: widget.data.activeButton ? () {} : null,
        style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20),
            disabledBackgroundColor: EColors.disabledBtn),
        child: Text(
          "Sign up",
          style: GoogleFonts.interTight(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}