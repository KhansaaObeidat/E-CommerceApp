import 'package:e_commerce_app/core/constant/approutes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToSignin();
}

class SuccessResetPasswordImpController extends SuccessResetPasswordController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  goToSignin() {
    Get.offNamed(AppRoute.signIn);
  }
}
