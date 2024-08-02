import 'package:flutter/material.dart';
import 'package:quizlet_clone_app/screens/login/login_screen.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/sign_up.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'onboarding_provider.g.dart';

@riverpod
class OnboardingController extends _$OnboardingController{
  @override
  int build() {
    return 0;
    throw UnimplementedError();
  }

  PageController controller = PageController();

  void moveToSignUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const SignUpScreen()),
    );
  }

  void moveToLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }


}