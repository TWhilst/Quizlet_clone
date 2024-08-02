import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlet_clone_app/provider/onboarding_provider.dart';
import 'package:quizlet_clone_app/shared/e_text.dart';
import 'package:quizlet_clone_app/utils/constants/E_text_string.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({
    super.key,
    required this.controller,
  });

  final OnboardingController controller;

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SmoothPageIndicator(
            controller: controller.controller,
            count: 4,
            effect: ScrollingDotsEffect(
                radius: 8,
                dotHeight: 8,
                dotWidth: 8,
                dotColor: darkMode ? EColors.dotColor : EColors.lightGrey,
                activeDotColor: darkMode ? EColors.white : EColors.dotColor,
                activeDotScale: 1),
          ),
          const SizedBox(height: 24,),
          SizedBox(
            width: EHelperFunctions.getScreenWidth(context)*0.75,
            child: Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                children: [
                  TextSpan(text: "${EText.onboardingSub} \n", style: GoogleFonts.interTight(textStyle: Theme.of(context).textTheme.titleSmall)),
                  TextSpan(text: EText.termsOfService, style: GoogleFonts.interTight(textStyle: Theme.of(context).textTheme.titleMedium)),
                  TextSpan(text: " ${EText.and} ", style: GoogleFonts.interTight(textStyle: Theme.of(context).textTheme.titleSmall)),
                  TextSpan(text: EText.privacyPolicy, style: GoogleFonts.interTight(textStyle: Theme.of(context).textTheme.titleMedium)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {
                controller.moveToSignUp(context);
              },
              style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20)),
              child: Text(
                EText.signUp,
                style: GoogleFonts.interTight(fontWeight: FontWeight.w600),
              ),
            ),
          ),

          const SizedBox(height: 12),

          // skip button
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                controller.moveToLogin(context);
              },
              child: Text(
                EText.login,
                style: GoogleFonts.interTight(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
