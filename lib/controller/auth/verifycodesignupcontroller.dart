import 'package:e_commerce_app/core/constant/approutes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  goToSignIn();
}

class VerifyCodeSignUpImpController extends VerifyCodeSignUpController {
  late String verifyCode;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  goToSignIn() {
    Get.offAllNamed(AppRoute.successSignUp);
  }
}
