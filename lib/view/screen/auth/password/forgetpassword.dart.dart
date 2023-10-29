import 'package:e_commerce_app/controller/auth/passwordcontroller/forgetpaswwordcontroller.dart';
import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:e_commerce_app/core/shared/custombuttonshared.dart';
import 'package:e_commerce_app/view/widget/auth/customtext_s_body.dart';
import 'package:e_commerce_app/view/widget/auth/emailtextformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordImpController controller =
        Get.put(ForgetPasswordImpController());
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Reset Pasword",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColor.black),
            ),
          ),
          backgroundColor: AppColor.white,
        ),
        body: SafeArea(
            child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: const CustomTextSmallBody(
                    textBody:
                        "Please enter your email to receive alink to  create a new password via email"),
              ),
              CustomTextFormField(
                  lableText: "Email",
                  hintText: "Enter Your Email",
                  icon: Icons.email,
                  myController: controller.email),
              CustomButtonShared(
                  onPressed: () {
                    controller.goToVerifyCode();
                  },
                  buttonText: "Send")
            ],
          ),
        )));
  }
}
