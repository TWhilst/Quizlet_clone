import 'package:flutter/material.dart';
import 'package:quizlet_clone_app/shared/e_text.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';

class QuickSignUpButton extends StatelessWidget {
  const QuickSignUpButton({
    super.key,
    required this.image,
    required this.text,
  });

  final String image, text;

  @override
  Widget build(BuildContext context) {
    final isDark = EHelperFunctions.isDarkMode(context);
    return SizedBox(
      width: EHelperFunctions.getScreenWidth(context) * 0.43,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            side: BorderSide(
                color: isDark ? EColors.white : EColors.lightGrey, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
              height: 24,
            ),
            ETextSub(text: text),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}