import 'package:e_commerce_app/core/constant/approutes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SignInController extends GetxController {
  signIn();
  goToSignUp();
  goToForgetPassword();
}

class SignInControllerImp extends SignInController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isSelected = true;
  viewPassword() {
    isSelected = !isSelected;
    update();
  }

  @override
  signIn() {
    var dataForm = formState.currentState;
    if (dataForm!.validate()) {
      return print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignUp() {
    Get.offAllNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
