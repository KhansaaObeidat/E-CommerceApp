import 'package:e_commerce_app/core/localization/changelocal.dart';
import 'package:e_commerce_app/view/widget/localization/custombuttonlocale.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLanguage extends GetView<ChangeLangController> {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "1".tr,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40.0, left: 40),
            child: CustomButtonLocalization(
              textButton: "41".tr,
              onPressed: () {
                controller.changeLang("ar");
                Get.offAllNamed("/onBoarding");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: CustomButtonLocalization(
              textButton: "42".tr,
              onPressed: () {
                controller.changeLang("en");
                Get.offAllNamed("/onBoarding");
              },
            ),
          )
        ],
      ),
    );
  }
}
