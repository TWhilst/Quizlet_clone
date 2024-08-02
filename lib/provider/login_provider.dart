import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

@Riverpod()
class LoginController extends _$LoginController {
  @override
  List<bool> build() {
    return [
      false,
      false
    ];
    throw UnimplementedError();
  }


  String? validateEmail(String? email) {
    if(state[0] == true && email!.isEmpty) {
      return "Please enter an email address or username.".toUpperCase();
    }
    return null;
  }

  String? validatePassword(String? password) {
    if(state[0] == false && state[1] == true && password!.isEmpty) {
      return "Please enter a password".toUpperCase();
    }
    return null;
  }



  void loggingIn(List<TextEditingController> controller, List<GlobalKey<FormState>> formKey) {
    state[0] = false;
    state[1] = false;
    if(controller[0].text.isEmpty) {
      state[0] = true;
      formKey[1].currentState!.validate();
      return;
    }
    if(controller[1].text.isEmpty) {
      state[1] = true;
      formKey[1].currentState!.validate();
    }
    if(formKey[1].currentState!.validate()){
      print("The deed is done");
    }

  }

}