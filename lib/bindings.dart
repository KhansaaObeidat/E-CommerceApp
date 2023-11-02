import 'package:e_commerce_app/controller/auth/signupcontroller.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(),fenix: true);
  }
}
