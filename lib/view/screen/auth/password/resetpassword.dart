import 'package:e_commerce_app/controller/auth/passwordcontroller/resetpasswordcontroller.dart';
import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:e_commerce_app/core/functions/input_validator.dart';
import 'package:e_commerce_app/core/shared/custombuttonshared.dart';
import 'package:e_commerce_app/view/widget/auth/customtext_s_body.dart';
import 'package:e_commerce_app/view/widget/auth/emailtextformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordImpController controller =
        Get.put(ResetPasswordImpController());
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "New Password",
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: AppColor.black),
          ),
        ),
        backgroundColor: AppColor.white,
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextSmallBody(
                textBody:
                    "35".tr),
            SizedBox(
              height: 30,
            ),
            CustomTextFormField(valid: (val) {
                          return inputValidator(val!, 10, 14, "phonenumber");
                        },
                lableText: "19".tr,
                hintText: "35".tr,
                icon: Icons.password,
                myController: controller.rePassword),
            SizedBox(
              height: 30,
            ),
            CustomTextFormField(valid: (val) {
                          return inputValidator(val!, 10, 14, "phonenumber");
                        },
                lableText: "Re-Password",
                hintText: "Enter Re-Password",
                icon: Icons.password,
                myController: controller.newPassword),
            CustomButtonShared(
                onPressed: () {
                  controller.goToSuccessResetPassword();
                },
                buttonText: "33".tr)
          ],
        ),
      )),
    );
  }
}
