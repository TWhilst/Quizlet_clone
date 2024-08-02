import 'package:flutter/material.dart';
import 'package:quizlet_clone_app/screens/onboarding_screens/widgets/onboarding_app_desc.dart';
import 'package:quizlet_clone_app/utils/constants/E_text_string.dart';
import 'package:quizlet_clone_app/utils/constants/image_string.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';


class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
    required this.controller,
  });
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return PageView(
      controller: controller,
      children: [
        OnboardingAppDesc(
          image: EImages.onboarding1,
          title: EText.onboardingTitle1,
        ),
        OnboardingAppDesc(
          image: EImages.onboarding2,
          title: EText.onboardingTitle2,
        ),
        OnboardingAppDesc(
          image: EImages.onboarding3,
          title: EText.onboardingTitle3,
        ),
        OnboardingAppDesc(
          image: EImages.onboarding4,
          title: EText.onboardingTitle4,
        ),
      ],
    );
  }
}

