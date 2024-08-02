import 'package:flutter/material.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/quick_sign_up_button.dart';

class QuickSignUpOptions extends StatelessWidget {
  const QuickSignUpOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        QuickSignUpButton(
          text: "Google",
          image: "assets/logo/google_image.png",
        ),
        QuickSignUpButton(
          text: "Facebook",
          image: "assets/logo/fb_image.png",
        ),
      ],
    );
  }
}