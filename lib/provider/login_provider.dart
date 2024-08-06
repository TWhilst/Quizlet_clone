import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/e_text_form_field.dart';
import 'package:quizlet_clone_app/shared/e_text.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

@Riverpod()
class LoginController extends _$LoginController {
  @override
  List<bool> build() {
    return [false, false];
    throw UnimplementedError();
  }

  String? validateEmail(String? email) {
    if (state[0] == true && email!.isEmpty) {
      return "Please enter an email address or username.".toUpperCase();
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (state[0] == false && state[1] == true && password!.isEmpty) {
      return "Please enter a password".toUpperCase();
    }
    return null;
  }

  void loggingIn(List<TextEditingController> controller,
      List<GlobalKey<FormState>> formKey) {
    state[0] = false;
    state[1] = false;
    if (controller[0].text.isEmpty) {
      state[0] = true;
      formKey[1].currentState!.validate();
      return;
    }
    if (controller[1].text.isEmpty) {
      state[1] = true;
      formKey[1].currentState!.validate();
    }
    if (formKey[1].currentState!.validate()) {
      print("The deed is done");
    }
  }

  Future<dynamic> enterUsername(BuildContext context, TextEditingController emailCheckController) {
    final isDark = EHelperFunctions.isDarkMode(context);
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          insetPadding: const EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: isDark ? const Color(0xff2e3756) : EColors.white,
          // contentPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          // title: const ETextSub(text: "Forgotten your username?"),
          child: Container(
            height: EHelperFunctions.getScreenHeight(context) * 0.30,
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 24),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // width: EHelperFunctions.getScreenWidth(context) *0.6,
                children: [
                  const ETextSub(text: "Forgotten your username?", fontSize: 16,),
                  const SizedBox(
                    height: 12,
                  ),
                  EField(
                    controller: emailCheckController,
                    hintText: "Enter email address",
                  ),
                  const SizedBox(height: 12,),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 90,
                        height: 60,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                            overlayColor: EColors.lightGrey,
                            backgroundColor: isDark ? EColors.secBGColor : EColors.white,
                            foregroundColor: EColors.primary,
                            side: BorderSide(
                              width: 0,
                              color: isDark ? EColors.secBGColor : EColors.white,
                            ),
                            // padding:
                            // const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                          ),
                          child: ETextSub(
                            text: "Cancel".toUpperCase(), fontSize: 16, color: EColors.secTextColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      SizedBox(
                        width: 90,
                        height: 60,
                        child: TextButton(
                          onPressed: () {
                            const ScaffoldMessenger(
                              child: SnackBar(
                                content: Text("No user matching that information exists"),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                              overlayColor: EColors.lightGrey,
                              backgroundColor: isDark ? EColors.secBGColor : EColors.white,
                              foregroundColor: EColors.primary,
                              side: BorderSide(
                                  width: 0,
                                  color: isDark ? EColors.secBGColor : EColors.white),
                              // padding:
                              // const EdgeInsets.symmetric(horizontal: 0, vertical: 15)
                          ),
                          child: ETextSub(
                            text: "Ok".toUpperCase(), fontSize: 16, color: EColors.secTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
          // actions: [

          // ],
        );
      },
    );
  }

  Future<dynamic> enterPassword (BuildContext context, TextEditingController emailCheckController) {
    final isDark = EHelperFunctions.isDarkMode(context);
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          insetPadding: const EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: isDark ? const Color(0xff2e3756) : EColors.white,
          // contentPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          // title: const ETextSub(text: "Forgotten your username?"),
          child: Container(
            height: EHelperFunctions.getScreenHeight(context) * 0.47,
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 24),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // width: EHelperFunctions.getScreenWidth(context) *0.6,
                children: [
                  const ETextSub(text: "Reset your password", fontSize: 16,),
                  const SizedBox(
                    height: 12,
                  ),
                  const ETextSec5(
                    text: "Enter the email address you signed up with on Quizlet. We'll email you a link to log in and reset your password. If you signed up with a parent's email, we'll send them the link.",
                    fontSize: 16,
                    textAlign: TextAlign.left,

                  ),
                  EField(
                    controller: emailCheckController,
                    hintText: "Enter email address",
                  ),
                  const SizedBox(height: 12,),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 90,
                        height: 60,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                            // overlayColor: isDark? Colors.white.withOpacity(0.5) : Colors.grey.shade900,
                            overlayColor: Colors.white,
                            backgroundColor: isDark ? const Color(0xff2e3756) : EColors.white,
                            foregroundColor: EColors.primary,
                            side: BorderSide(
                              width: 0,
                              color: isDark ? const Color(0xff2e3756) : EColors.white,
                            ),
                            // padding:
                            // const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                          ),
                          child: ETextSub(
                            text: "Cancel".toUpperCase(), fontSize: 16, color: isDark? EColors.secTextColor : EColors.primary,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      SizedBox(
                        width: 90,
                        height: 60,
                        child: TextButton(
                          onPressed: () {
                            // Show snack bar
                          },
                          style: TextButton.styleFrom(
                            overlayColor: isDark? EColors.lightGrey : Colors.grey.shade900,
                            backgroundColor: isDark ? const Color(0xff2e3756) : EColors.white,
                            foregroundColor: EColors.primary,
                            side: BorderSide(
                                width: 0,
                                color: isDark ? const Color(0xff2e3756) : EColors.white),
                            // padding:
                            // const EdgeInsets.symmetric(horizontal: 0, vertical: 15)
                          ),
                          child: ETextSub(
                            text: "Ok".toUpperCase(), fontSize: 16, color: isDark? EColors.secTextColor : EColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
          // actions: [

          // ],
        );
      },
    );
  }
}
