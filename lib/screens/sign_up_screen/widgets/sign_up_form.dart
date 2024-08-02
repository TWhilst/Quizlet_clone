import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlet_clone_app/provider/sign_up_provider.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/e_text_form_field.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/teacher_section.dart';
import 'package:quizlet_clone_app/shared/e_text.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key, required this.formKey, required this.focusNodes, required this.node, required this.controller, required this.data, required this.eLogic,
  });

  final GlobalKey<FormState> formKey;
  final List<FocusNode> focusNodes;
  final FocusNode node;
  final List<TextEditingController> controller;
  final SignUpController data;
  final SignUpController eLogic;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    final isDark = EHelperFunctions.isDarkMode(context);
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ETextSec1(text: "Or sign up with an email address".toUpperCase()),
          const SizedBox(height: 12),
          // Date of birth field
          EField(
            onTap: () => widget.eLogic.selectBirthDialog(context, widget.controller[0]),
            node: widget.focusNodes[0],
            readOnly: true,
            controller: widget.controller[0],
            fontSize: 12,
            hintText: "17 Jul 2024",
            errorText: widget.data.incorrectDate
                ? "That's today's date. Please select your date of birth."
                : null,
            suffixIcon: const Icon(Icons.info_outline),
            suffixIconColor: widget.focusNodes[0].hasFocus
                ? EColors.primary
                : isDark
                ? EColors.lightGrey.withOpacity(0.2)
                : Colors.black,
          ),
          const SizedBox(height: 6),
          widget.data.incorrectDate
              ? const SizedBox()
              : ETextSec2(text: "date of birth".toUpperCase()),
          const SizedBox(height: 6),

          // Email field
          EField(
            node: widget.node,
            controller: widget.controller[1],
            hintText: "email@example.co.uk",
            onChanged: (v) {
              setState(() {
                widget.eLogic.isTyping();
              });
            },
            suffixIcon: widget.data.activeButton
                ? const Icon(
              Icons.check,
              color: Colors.green,
            )
                : null,
            errorText: widget.data.correctMail
                ? null
                : "Enter a valid email".toUpperCase(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  width: 2,
                  color: widget.data.activeButton
                      ? Colors.green
                      : isDark
                      ? EColors.white
                      : Colors.black),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  width: 4,
                  color: widget.data.activeButton
                      ? Colors.green
                      : isDark
                      ? EColors.primary
                      : Colors.blue.shade900),
            ),
          ),
          const SizedBox(height: 6),
          // this is where the error message will be
          widget.data.correctMail ? Text(
            "Parent's email".toUpperCase(),
            style: GoogleFonts.interTight(
                textStyle: Theme.of(context).textTheme.titleSmall,
                fontSize: 13,
                letterSpacing: 2,
                fontWeight: FontWeight.w600,
                color: widget.data.activeButton
                    ? Colors.green
                    : isDark
                    ? EColors.white
                    : Colors.black),
            textAlign: TextAlign.center,
          )
              : const SizedBox(),
          const SizedBox(height: 6),

          // Password field
          EField(
            node: widget.focusNodes[1],
            controller: widget.controller[2],
            hintText: ".........",
            obscureText: widget.data.passwordVisible,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  widget.eLogic.toggleObscure();
                  print(widget.data.passwordVisible);
                });
              },
              icon: Icon(
                widget.data.passwordVisible ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            suffixIconColor: widget.focusNodes[1].hasFocus ? EColors.primary :
            isDark ? EColors.lightGrey.withOpacity(0.2) : Colors.black,
          ),
          const SizedBox(height: 6),
          ETextSec2(text: "password".toUpperCase()),
          widget.data.teacher ? TeacherSection(data: widget.data, eLogic: widget.eLogic,) : const SizedBox(),
        ],
      ),
    );
  }
}
