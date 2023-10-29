import 'package:e_commerce_app/controller/auth/verifycodesignupcontroller.dart';
import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:e_commerce_app/view/widget/auth/customtext_m_body.dart';
import 'package:e_commerce_app/view/widget/auth/customtext_s_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCodeSignUpScreen extends StatelessWidget {
  const VerifyCodeSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpImpController controller =
        Get.put(VerifyCodeSignUpImpController());
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Verify Code",
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: AppColor.black),
          ),
        ),
        backgroundColor: AppColor.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Center(
            child: Column(children: [
              CustomTextMediumBody(
                textBody: "We have sent an OTP to your Email",
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextSmallBody(
                  textBody:
                      "Please check your Email  khan**@gmil.com continue to reset your password"),
              SizedBox(
                height: 20,
              ),
              OtpTextField(
                borderRadius: BorderRadius.circular(15),
                borderWidth: 2,
                enabledBorderColor: AppColor.grey,
                numberOfFields: 5,
                fieldWidth: 45,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controller.goToSignIn();
                }, // end onSubmit
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
