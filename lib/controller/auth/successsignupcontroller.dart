import 'package:e_commerce_app/core/constant/approutes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goToSignin();
}

class SuccessSignUpImpController extends SuccessSignUpController {
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
