import 'package:e_commerce_app/core/constant/approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  goToSuccessSignUp();
}

class CheckEmailImpController extends CheckEmailController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  goToSuccessSignUp() {
    var dataForm = formState.currentState;
    if (dataForm!.validate()) {
      Get.offAllNamed(AppRoute.verifyCodeSignUp);
    }
  }
}
