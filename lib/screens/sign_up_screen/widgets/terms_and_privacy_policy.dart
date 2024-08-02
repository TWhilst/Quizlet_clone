import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlet_clone_app/utils/constants/E_text_string.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';

class TermsAndPrivacyPolicy extends StatelessWidget {
  const TermsAndPrivacyPolicy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = EHelperFunctions.isDarkMode(context);
    return Center(
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan(
              text: "${EText.onboardingSub} \n",
              style: GoogleFonts.interTight(
                textStyle: Theme.of(context).textTheme.titleSmall,
                fontSize: 12,
              ),
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap = () {},
              text: EText.termsOfService,
              style: GoogleFonts.interTight(
                textStyle: Theme.of(context).textTheme.titleMedium,
                fontSize: 12,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
                // color: Color(0xff95b3f3),
                color: isDark ? EColors.secTextColor : EColors.primary,
              ),
            ),
            TextSpan(
              text: " ${EText.and} ",
              style: GoogleFonts.interTight(
                textStyle: Theme.of(context).textTheme.titleSmall,
                fontSize: 12,
              ),
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap = () {},
              text: EText.privacyPolicy,
              style: GoogleFonts.interTight(
                textStyle: Theme.of(context).textTheme.titleMedium,
                fontSize: 12,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
                // color: Color(0xff95b3f3),
                color: isDark ? EColors.secTextColor : EColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}