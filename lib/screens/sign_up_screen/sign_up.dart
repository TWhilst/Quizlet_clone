import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:quizlet_clone_app/provider/login_provider.dart';
import 'package:quizlet_clone_app/provider/sign_up_provider.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/e_text_form_field.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/quick_sign_up_options.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/sign_up_button.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/sign_up_form.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/teacher_section.dart';
import 'package:quizlet_clone_app/screens/sign_up_screen/widgets/terms_and_privacy_policy.dart';
import 'package:quizlet_clone_app/shared/e_text.dart';
import 'package:quizlet_clone_app/utils/constants/E_text_string.dart';
import 'package:quizlet_clone_app/utils/constants/e_colors.dart';
import 'package:quizlet_clone_app/utils/e_helper_functions.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  late List<FocusNode> _focusNodes;
  late FocusNode _node;
  late List<TextEditingController> _controller;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _controller = [
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
    ];
    _focusNodes = [
      FocusNode(),
      FocusNode(),
    ];
    for (FocusNode node in _focusNodes) {
      node.addListener(() {
        setState(() {});
      });
    }

    _node = FocusNode();
    _node.addListener(() {
      ref
          .read(signUpControllerProvider.notifier)
          .onFocusChange(_node, _controller[1]);
    });

    super.initState();
  }

  @override
  void dispose() {
    for (FocusNode node in _focusNodes) {
      node.dispose();
    }
    _node.dispose();
    for(TextEditingController cont in _controller) {
      cont.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// check to see if you are a robot or not
    final isDark = EHelperFunctions.isDarkMode(context);
    final data = ref.watch(signUpControllerProvider.notifier);
    final eLogic = ref.read(signUpControllerProvider.notifier);
    // bool _hover = false;
    return Scaffold(
      backgroundColor: isDark ? EColors.secBGColor : Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: EColors.primary,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Sign up title text
              ETextSec1(text: "Quickly Sign Up With".toUpperCase()),
              const SizedBox(height: 12),

              // Other sign up options
              const QuickSignUpOptions(),
              const SizedBox(height: 36),

              // Sign up form
              SignUpForm(formKey: _formKey, focusNodes: _focusNodes, node: _node, controller: _controller, data: data, eLogic: eLogic,),
              const SizedBox(height: 12),

              // Sign up button
              SignUpButton(data: data,),
              const SizedBox(height: 24),

              // Terms and policy
              const TermsAndPrivacyPolicy(),
            ],
          ),
        ),
      ),
    );
  }
}

