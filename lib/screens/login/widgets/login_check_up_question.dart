import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlet_clone_app/provider/login_provider.dart';
import 'package:quizlet_clone_app/utils/constants/E_text_string.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';

class LoginCheckUpQuestion extends ConsumerStatefulWidget {
  const LoginCheckUpQuestion({
    super.key,
  });

  @override
  ConsumerState<LoginCheckUpQuestion> createState() => _LoginCheckUpQuestionState();
}

class _LoginCheckUpQuestionState extends ConsumerState<LoginCheckUpQuestion> {

  late TextEditingController emailCheckController;
  late TextEditingController passwordCheckController;

  @override
  void initState() {
    emailCheckController = TextEditingController();
    passwordCheckController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailCheckController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final eLogic = ref.read(loginControllerProvider.notifier);
    final isDark = EHelperFunctions.isDarkMode(context);
    return Center(
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan(
              text: "${EText.loginCheck} ",
              style: GoogleFonts.interTight(
                textStyle: Theme.of(context).textTheme.titleSmall,
                fontSize: 12,
              ),
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap = () {
                eLogic.enterUsername(context, emailCheckController);
              },
              text: EText.username,
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
              text: " ${EText.or} ",
              style: GoogleFonts.interTight(
                textStyle: Theme.of(context).textTheme.titleSmall,
                fontSize: 12,
              ),
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap = () {
                eLogic.enterPassword(context, emailCheckController);
              },
              text: EText.password,
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
              text: "?",
              style: GoogleFonts.interTight(
                textStyle: Theme.of(context).textTheme.titleSmall,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}