import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizlet_clone_app/provider/onboarding_provider.dart';
import 'package:quizlet_clone_app/screens/onboarding_screens/widgets/onboarding_buttons.dart';
import 'package:quizlet_clone_app/screens/onboarding_screens/widgets/onboarding_page_view.dart';
import 'package:quizlet_clone_app/shared/e_text.dart';
import 'package:quizlet_clone_app/utils/constants/E_text_string.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    final controller = ref.watch(onboardingControllerProvider.notifier);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const ETextHeader(text: "Quizlet"),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.search_rounded,
                      size: 32,
                      color: darkMode? EColors.white : EColors.dotColor,
                    ),
                  ),
                ],
              ),
            ),
            //  scrollable items
            SizedBox(
              height: 450,
              width: EHelperFunctions.getScreenWidth(context),
              child: OnboardingPageView(
                controller: controller.controller,
              ),
            ),
        
            const SizedBox(height: 12,),
        
            // next button
            OnboardingButtons(controller: controller),
          ],
        ),
      ),
    );
  }
}
