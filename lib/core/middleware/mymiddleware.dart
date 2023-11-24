import 'package:e_commerce_app/core/constant/approutes.dart';
import 'package:e_commerce_app/core/service/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  MyServices myService = Get.find();

  int? get priority => 1;
  RouteSettings? redirect(String? route) {
     if (myService.sharedPreference.getString("onBoarding") == "1") {
      return const RouteSettings(name: AppRoute.signIn);
    }
  }
}
