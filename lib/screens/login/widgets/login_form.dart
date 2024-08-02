import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlet_clone_app/provider/login_provider.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/e_text_form_field.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/teacher_section.dart';
import 'package:quizlet_clone_app/shared/e_text.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({
    super.key,
    required this.formKey,
    required this.controller,
    // required this.eLogic,
    // required this.data,
  });

  final List<GlobalKey<FormState>> formKey;
  final List<TextEditingController> controller;
  // final List<bool> data;
  // final LoginController eLogic;

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(loginControllerProvider);
    final eLogic = ref.read(loginControllerProvider.notifier);
    final isDark = EHelperFunctions.isDarkMode(context);
    return Form(
      key: widget.formKey[1],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ETextSec1(text: "Or log in with your email address".toUpperCase()),
          const SizedBox(height: 12),

          // Email field
          EField(
            controller: widget.controller[0],
            hintText: "Enter your email address or username",
            // errorText: widget.eLogic.inputEmail? "please enter an email address or username.".toUpperCase() : null,
            validator: (email) {
              return eLogic.validateEmail(email);
            } ,
          ),
          const SizedBox(height: 6),

          // this is where the error message will be
          data[0]? const SizedBox() :
          Text(
            "Email address or username".toUpperCase(),
            style: GoogleFonts.interTight(
                textStyle: Theme.of(context).textTheme.titleSmall,
                fontSize: 13,
                letterSpacing: 2,
                fontWeight: FontWeight.w600,
                color: isDark ? EColors.white : Colors.black),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          // Password field
          EField(
            controller: widget.controller[1],
            hintText: "Enter your password",
            obscureText: true,
            validator: (password) => eLogic.validatePassword(password),
            // errorText: widget.eLogic.inputPassword? "Please enter a password".toUpperCase() : null,
          ),
          const SizedBox(height: 6),
          data[1]? const SizedBox() :
          ETextSec2(text: "Password".toUpperCase()),
        ],
      ),
    );
  }
}
