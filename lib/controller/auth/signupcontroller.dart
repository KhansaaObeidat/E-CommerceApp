import 'package:e_commerce_app/core/constant/approutes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController mobile;
  late TextEditingController password;
  late TextEditingController repassword;
  bool isSelected = true;
  bool isSelectedRePassword = true;

  viewPassword() {
    isSelected = !isSelected;
    update();
  }

  viewRePassword() {
    isSelectedRePassword = !isSelectedRePassword;
    update();
  }

  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.signIn);
  }

  @override
  signUp() {
    var dataForm = formState.currentState;
    if (dataForm!.validate()) {    Get.offNamed(AppRoute.verifyCodeSignUp);
}
  }

  @override
  void onInit() {
    name = TextEditingController();
    email = TextEditingController();
    mobile = TextEditingController();
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    mobile.dispose();
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
