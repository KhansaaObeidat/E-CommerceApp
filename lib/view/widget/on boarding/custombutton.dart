import 'package:e_commerce_app/controller/onboardingcontroller.dart';
import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends GetView<OnBoardingControllerImp> {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.navyBlue,
        ),
        width: double.infinity,
        height: 50,
        child: MaterialButton(
          onPressed: () {
            controller.next();
          },
          child: Center(
            child: Text(
              "8".tr,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ));
  }
}
