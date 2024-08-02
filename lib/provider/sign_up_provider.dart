import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:intl/intl.dart';
import 'package:quizlet_clone_app/shared/e_text.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'sign_up_provider.g.dart';

@riverpod
class SignUpController extends _$SignUpController{
  @override
  build() {
    throw UnimplementedError();
  }

  bool teacher = false;
  bool activeButton = false;
  bool correctMail = true;
  bool passwordVisible = false;
  bool incorrectDate = false;
  bool? aTeacher = false;
  // bool? notATeacher = true;

  void toggleObscure() {
    passwordVisible = !passwordVisible;
  }

  void onFocusChange(FocusNode node, TextEditingController controller) {
    RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    if (!node.hasFocus) {
      if (emailRegex.hasMatch(controller.text.trim())) {
        correctMail = true;
        activeButton = true;
      } else {
        correctMail = false;
      }
    }
  }

  void teacherCheck(bool check) {
    if(aTeacher == false) {
      aTeacher = check;
      return;
    }
    if(aTeacher == true) {
      aTeacher = !check;
    }
  }

  void isTyping() {
    correctMail = true;
    activeButton = false;
  }

  Future<dynamic> selectBirthDialog(BuildContext context, TextEditingController controller) {
    DateTime? selectedDate = DateTime.now();
    final isDark = EHelperFunctions.isDarkMode(context);
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        // titleTextStyle: ,
        title: const ETextSub(
          text: 'Please enter your date of birth.',
        ),
        backgroundColor: isDark ? EColors.secBGColor : EColors.white,
        contentPadding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        content: DatePickerWidget(
          looping: false, // default is not looping
          firstDate: DateTime.utc(1800, 1, 1),
          lastDate: DateTime.now(),
          initialDate: DateTime.now(), // DateTime(1994),
          dateFormat:
          // "MM-dd(E)",
          "dd/MMMM/yyyy",
          locale: DatePicker.localeFromString('en'),
          onChange: (DateTime newDate, _) {
            selectedDate = newDate;
            print(selectedDate);
          },
          pickerTheme: DateTimePickerTheme(
            backgroundColor: Colors.transparent,
            itemTextStyle: TextStyle(
                color: isDark ? Colors.white : Colors.black, fontSize: 16),
            dividerColor: isDark ? Colors.white : EColors.disabledBtn,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              overlayColor: EColors.lightGrey,
              backgroundColor: isDark ? EColors.secBGColor : EColors.white,
              foregroundColor: EColors.primary,
              side: BorderSide(
                width: 0,
                color: isDark? EColors.secBGColor : EColors.white,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
            ),
            child: const ETextSec5(
              text: "Cancel",
            ),
          ),
          TextButton(
            // onHover: (hover) {
            //   _hover = hover;
            //   print("hover = $_hover");
            // },
            onPressed: () {
              String formattedDate = DateFormat("dd MMMM y").format(selectedDate!.toLocal());
              String date = DateFormat("dd MMMM y").format(DateTime.now().toLocal());
              DateTime currentDate = DateTime(DateTime.now().year - 22, DateTime.now().month, DateTime.now().day);
              if (formattedDate.isNotEmpty) {
                if (formattedDate == date) {
                  controller.text = formattedDate;
                  incorrectDate = true;
                } else {
                  controller.text = formattedDate;
                  incorrectDate = false;
                  if (currentDate.compareTo(selectedDate!) >= 0) {
                    teacher = true;
                  } else {
                    teacher = false;
                  }
                }
                print("Boy this is ${selectedDate}");
                print("Datetime is ${DateTime.now()}");
                print("incorrectData = $incorrectDate");
                print("current date = $currentDate");
                print("i can be a teacher? $teacher");
              }

              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
                overlayColor: EColors.lightGrey,
                backgroundColor: isDark ? EColors.secBGColor : EColors.white,
                foregroundColor: EColors.primary,
                side: BorderSide(
                    width: 0,
                    color: isDark ? EColors.secBGColor : EColors.white),
                padding:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 15)),
            child: ETextSec5(
              text: "Ok".toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }
}