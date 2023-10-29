import 'package:e_commerce_app/core/constant/approutes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkkCode();
  goToResetPassword();
}

class VerifyCodeImpController extends VerifyCodeController {
  late String verifyCode;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  goToResetPassword() {
    Get.offAllNamed(AppRoute.resetPassword);
  }

  @override
  checkkCode() {}
}
