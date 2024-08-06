import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizlet_clone_app/provider/login_provider.dart';
import 'package:quizlet_clone_app/screens/login/widgets/login_button.dart';
import 'package:quizlet_clone_app/screens/login/widgets/login_check_up_question.dart';
import 'package:quizlet_clone_app/screens/login/widgets/login_form.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/quick_sign_up_options.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/terms_and_privacy_policy.dart';
import 'package:quizlet_clone_app/shared/e_text.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late List<TextEditingController> _controller;
  final _formKey = [
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
  ];

  @override
  void initState() {
    _controller = [
      TextEditingController(),
      TextEditingController(),
    ];

    super.initState();
  }

  @override
  void dispose() {
    for (TextEditingController cont in _controller) {
      cont.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// check to see if you are a robot or not
    final isDark = EHelperFunctions.isDarkMode(context);
    // final data = ref.watch(loginControllerProvider);
    // final eLogic = ref.read(loginControllerProvider.notifier);
    // bool _hover = false;
    return Scaffold(
      backgroundColor: isDark ? EColors.secBGColor : Colors.grey[200],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: EColors.primary,
            size: 30,
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sign up title text
                  ETextSec1(text: "Login in quickly with".toUpperCase()),
                  const SizedBox(height: 12),

                  // Other sign up options
                  const QuickSignUpOptions(),
                  const SizedBox(height: 18),

                  // Sign up form
                  LoginForm(
                    formKey: _formKey,
                    controller: _controller,
                    // eLogic: eLogic,
                  ),
                  const SizedBox(height: 12),

                  // Sign up button
                  LoginButton(
                    // eLogic: eLogic,
                    controller: _controller,
                    formKey: _formKey,
                  ),
                  const SizedBox(height: 18),

                  // Terms and policy
                  const LoginCheckUpQuestion(),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 10,
            child: TermsAndPrivacyPolicy(),
          ),
        ],
      ),
    );
  }
}
