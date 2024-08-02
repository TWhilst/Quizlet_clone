
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:intl/intl.dart';
import 'package:quizlet_clone_app/shared/e_text.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';

class EHelperFunctions {

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double logoSize(BuildContext context) {
    return getScreenHeight(context) * 0.11;
  }

  // static Future<dynamic> selectBirthDialog(BuildContext context, bool _hover, Widget widget) {
  //   DateTime? _selectedDate = DateTime.now();
  //   return showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       // titleTextStyle: ,
  //       title: const ETextSub(
  //         text: 'Please enter your date of birth.',
  //       ),
  //       backgroundColor: isDarkMode(context) ? EColors.secBGColor : EColors.white,
  //       contentPadding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
  //       shape: const RoundedRectangleBorder(
  //         borderRadius: BorderRadius.zero,
  //       ),
  //       content: DatePickerWidget(
  //         looping: false, // default is not looping
  //         firstDate: DateTime.utc(1800, 1, 1),
  //         lastDate: DateTime.now(),
  //         initialDate: DateTime.now(), // DateTime(1994),
  //         dateFormat:
  //         // "MM-dd(E)",
  //         "dd/MMMM/yyyy",
  //         locale: DatePicker.localeFromString('en'),
  //         onChange: (DateTime newDate, _) {
  //           setState(() {
  //             _selectedDate = newDate;
  //           });
  //           print(_selectedDate);
  //         },
  //         pickerTheme: DateTimePickerTheme(
  //           backgroundColor: Colors.transparent,
  //           itemTextStyle: TextStyle(
  //               color: isDark ? Colors.white : Colors.black, fontSize: 16),
  //           dividerColor: isDark ? Colors.white : EColors.disabledBtn,
  //         ),
  //       ),
  //       actions: [
  //         TextButton(
  //           onPressed: () {
  //             Navigator.pop(context);
  //           },
  //           style: TextButton.styleFrom(
  //             overlayColor: EColors.lightGrey,
  //             backgroundColor: isDarkMode(context) ? EColors.secBGColor : EColors.white,
  //             foregroundColor: EColors.primary,
  //             side: BorderSide(
  //               width: 0,
  //               color: isDarkMode(context) ? EColors.secBGColor : EColors.white,
  //             ),
  //             padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
  //           ),
  //           child: const ETextSec5(
  //             text: "Cancel",
  //           ),
  //         ),
  //         TextButton(
  //           onHover: (hover) {
  //             _hover = hover;
  //             print("hover = $_hover");
  //           },
  //           onPressed: () {
  //             String formattedDate = DateFormat("dd MMMM y").format(_selectedDate!.toLocal());
  //             String date = DateFormat("dd MMMM y").format(DateTime.now().toLocal());
  //             DateTime currentDate = DateTime(DateTime.now().year - 22, DateTime.now().month, DateTime.now().day);
  //             if (formattedDate.isNotEmpty) {
  //               if (formattedDate == date) {
  //                 setState(() {
  //                   _controller[0].text = formattedDate;
  //                   _incorrectDate = true;
  //                 });
  //               } else {
  //                 setState(() {
  //                   _controller[0].text = formattedDate;
  //                   _incorrectDate = false;
  //                 });
  //                 if (currentDate.compareTo(_selectedDate!) >= 0) {
  //                   setState(() {
  //                     _teacher = true;
  //                   });
  //                 } else {
  //                   setState(() {
  //                     _teacher = false;
  //                   });
  //                 }
  //               }
  //               print("Boy this is ${_selectedDate}");
  //               print("Datetime is ${DateTime.now()}");
  //               print("incorrectData = $_incorrectDate");
  //               print("current date = $currentDate");
  //               print("i can be a teacher? $_teacher");
  //             }
  //
  //             Navigator.pop(context);
  //           },
  //           style: TextButton.styleFrom(
  //               overlayColor: EColors.lightGrey,
  //               backgroundColor: isDark ? EColors.secBGColor : EColors.white,
  //               foregroundColor: _hover ? Colors.yellow : EColors.primary,
  //               side: BorderSide(
  //                   width: 0,
  //                   color: isDark ? EColors.secBGColor : EColors.white),
  //               padding:
  //               const EdgeInsets.symmetric(horizontal: 0, vertical: 15)),
  //           child: ETextSec5(
  //             text: "Ok".toUpperCase(),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }


}