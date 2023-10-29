import 'package:e_commerce_app/core/constant/approutes.dart';
import 'package:e_commerce_app/data/datasource/static/static.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  next() {
    currentPage++;

    currentPage > onBoardingList.length - 1
        ? Get.offAllNamed(AppRoute.signIn)
        : pageController.animateToPage(currentPage,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
