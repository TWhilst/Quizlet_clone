import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlet_clone_app/provider/onboarding_provider.dart';
import 'package:quizlet_clone_app/shared/e_text.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingAppDesc extends ConsumerWidget {
  const OnboardingAppDesc({
    super.key,
    required this.image,
    required this.title,
    this.padding = 100,
  });

  final double? padding;

  final String image, title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(onboardingControllerProvider.notifier);
    final darkMode = EHelperFunctions.isDarkMode(context);
    return Container(
      width: EHelperFunctions.getScreenWidth(context),
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: EHelperFunctions.getScreenWidth(context),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 24),
          Center(
            child: SizedBox(
              width: EHelperFunctions.getScreenWidth(context) * 0.75,
              child: ETextTitle(
                text: title,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
