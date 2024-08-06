import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';

class EText1 extends StatelessWidget {
  const EText1({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.interTight(
        textStyle: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}

class EText2 extends StatelessWidget {
  const EText2({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.interTight(
        textStyle: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}

class ETextSub extends StatelessWidget {
  const ETextSub({super.key, required this.text, this.fontSize = 14, this.color, this.textAlign = TextAlign.center});

  final String text;
  final double? fontSize;
  final Color? color;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.interTight(
          textStyle: Theme.of(context).textTheme.titleSmall,
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.w800),
      textAlign: textAlign,
    );
  }
}

class ETextSec1 extends StatelessWidget {
  const ETextSec1({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.interTight(
          textStyle: Theme.of(context).textTheme.titleSmall,
          fontSize: 13,
          // letterSpacing: 1,
          fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class ETextSec5 extends StatelessWidget {
  const ETextSec5({super.key, required this.text, this.fontSize = 13, this.textAlign = TextAlign.center});

  final String text;
  final double? fontSize;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.interTight(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
      textAlign: textAlign,
    );
  }
}

class ETextSec2 extends StatelessWidget {
  const ETextSec2({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.interTight(
        textStyle: Theme.of(context).textTheme.titleSmall,
        fontSize: 12,
        letterSpacing: 2,
        fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class ETextSec3 extends StatelessWidget {
  const ETextSec3({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.interTight(
        textStyle: Theme.of(context).textTheme.titleSmall,
        fontSize: 12,
      ),
    );
  }
}

class ETextSec4 extends StatelessWidget {
  const ETextSec4({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.interTight(
        textStyle: Theme.of(context).textTheme.titleMedium,
        fontSize: 12,
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5,
        // color: Color(0xff95b3f3),
        color: const Color(0xff95a2f3),
      ),
      textAlign: TextAlign.center,
    );
  }
}

class ETextTitle extends StatelessWidget {
  const ETextTitle({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.interTight(
          height: 0,
          textStyle: Theme.of(context).textTheme.headlineSmall,
          fontSize: 22,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}

class ETextHeader extends StatelessWidget {
  const ETextHeader({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    final isDark = EHelperFunctions.isDarkMode(context);
    return Text(
      text,
      style: GoogleFonts.interTight(
        height: 0,
        textStyle: Theme.of(context).textTheme.headlineLarge,
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: isDark ? EColors.white : EColors.primary,
      ),
      textAlign: TextAlign.center,
    );
  }
}
