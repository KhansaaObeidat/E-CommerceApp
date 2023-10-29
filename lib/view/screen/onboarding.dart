import 'package:e_commerce_app/controller/onboardingcontroller.dart';
import 'package:e_commerce_app/view/widget/on%20boarding/animatedcontainer.dart';
import 'package:e_commerce_app/view/widget/on%20boarding/custombutton.dart';
import 'package:e_commerce_app/view/widget/on%20boarding/customslider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: CustomSlider()),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    CustomDotControllerOnBoarding(),
                    Spacer(
                      flex: 2,
                    ),
                    CustomButton()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
