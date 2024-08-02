// import 'package:flutter/material.dart';
// import 'package:flutter_holo_date_picker/date_picker.dart';
// import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
//
// class EDatePicker extends StatefulWidget {
//   const EDatePicker({super.key});
//
//   @override
//   State<EDatePicker> createState() => _EDatePickerState();
// }
//
// class _EDatePickerState extends State<EDatePicker> {
//   @override
//   Widget build(BuildContext context) {
//     return DatePickerWidget(
//       looping: false, // default is not looping
//       firstDate: DateTime.utc(1800, 1, 1),
//       lastDate: DateTime.now(),
//       initialDate: DateTime.now(), // DateTime(1994),
//       dateFormat:
//       // "MM-dd(E)",
//       "dd/MMMM/yyyy",
//       locale: DatePicker.localeFromString('en'),
//       onChange: (DateTime newDate, _) {
//         setState(() {
//           _selectedDate = newDate;
//         });
//         print(_selectedDate);
//       },
//       pickerTheme: DateTimePickerTheme(
//         backgroundColor: Colors.transparent,
//         itemTextStyle: TextStyle(
//             color: isDark ? Colors.white : Colors.black, fontSize: 16),
//         dividerColor: isDark ? Colors.white : EColors.disabledBtn,
//       ),
//     );
//   }
// }
