import 'package:e_commerce_app/controller/auth/checkemailcontroller.dart';
import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:e_commerce_app/core/shared/custombuttonshared.dart';
import 'package:e_commerce_app/view/widget/auth/emailtextformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailImpController controller = Get.put(CheckEmailImpController());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "",
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: AppColor.black),
          ),
          backgroundColor: AppColor.white,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text(
                  "Check Email",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                CustomTextFormField(
                    lableText: "check email",
                    hintText: "check",
                    myController: controller.email),
                Spacer(),
                CustomButtonShared(
                    onPressed: () {
                      controller.goToSuccessSignUp();
                    },
                    buttonText: "check"),
              ],
            ),
          ),
        ));
  }
}
