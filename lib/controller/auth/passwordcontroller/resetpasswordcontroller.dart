import 'package:e_commerce_app/core/constant/approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  matchPassword();
  goToSuccessResetPassword();
}

class ResetPasswordImpController extends ResetPasswordController {
  late TextEditingController newPassword;
  late TextEditingController rePassword;
  @override
  @override
  void onInit() {
    newPassword = TextEditingController();
    rePassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    newPassword.dispose();
    rePassword.dispose();
    super.dispose();
  }

  @override
  goToSuccessResetPassword() {
    Get.offAllNamed(AppRoute.successResetPassword);
  }

  @override
  matchPassword() {}
}
