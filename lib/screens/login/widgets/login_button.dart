import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlet_clone_app/provider/login_provider.dart';
import 'package:quizlet_clone_app/provider/sign_up_provider.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';

class LoginButton extends ConsumerStatefulWidget {
  const LoginButton({
    super.key,
    // required this.eLogic,
    required this.controller,
    // required this.data,
    required this.formKey,
  });

  // final List<bool> data;
  // final LoginController eLogic;
  final List<TextEditingController> controller;
  final List<GlobalKey<FormState>> formKey;

  @override
  ConsumerState<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends ConsumerState<LoginButton> {
  @override
  Widget build(BuildContext context) {
    final eLogic = ref.read(loginControllerProvider.notifier);
    final data = ref.watch(loginControllerProvider);

    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: () {
          eLogic.loggingIn(widget.controller, widget.formKey);
          print("Input password: ${data[1]}");
          print("Input Email: ${data[0]}");
        },
        style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20),
            disabledBackgroundColor: EColors.disabledBtn),
        child: Text(
          "Log in",
          style: GoogleFonts.interTight(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
