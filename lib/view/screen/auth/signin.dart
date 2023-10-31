import 'package:e_commerce_app/controller/auth/signincontroller.dart';
import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:e_commerce_app/core/constant/appimageassets.dart';
import 'package:e_commerce_app/core/functions/input_validator.dart';
import 'package:e_commerce_app/core/shared/custombuttonshared.dart';
import 'package:e_commerce_app/view/widget/auth/customiconbutton.dart';
import 'package:e_commerce_app/view/widget/auth/customtext_s_body.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitle.dart';
import 'package:e_commerce_app/view/widget/auth/emailtextformfield.dart';
import 'package:e_commerce_app/view/widget/auth/textsign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignInControllerImp controller = Get.put(SignInControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "9".tr,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: AppColor.black),
        ),
        backgroundColor: AppColor.white,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    key: controller.formState,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 200,
                          child: Image.asset(
                            AppImageAsset.logo,
                            fit: BoxFit.fill,
                          ),
                        ),
                        CustomTextTitle(
                          textTitle: "10".tr,
                        ),
                        Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            child: CustomTextSmallBody(
                              textBody: "11".tr,
                            )),
                        CustomTextFormField(
                          valid: (val) {
                            return inputValidator(val!, 10, 14, "email");
                          },
                          lableText: "18".tr,
                          icon: (Icons.email),
                          hintText: "12".tr,
                          myController: controller.email,
                        ),
                        const SizedBox(height: 25),
                        CustomTextFormField(
                          valid: (val) {
                            return inputValidator(val!, 10, 14, "phonenumber");
                          },
                          lableText: "19".tr,
                          icon: (Icons.password),
                          hintText: "13".tr,
                          myController: controller.password,
                        ),
                        // const SizedBox(
                        //   height: 5,
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              child: Text("14".tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(fontWeight: FontWeight.bold)),
                              onPressed: () {
                                controller.goToForgetPassword();
                              },
                            ),
                          ],
                        ),
                        CustomButtonShared(
                          onPressed: () {
                            controller.signIn();
                          },
                          buttonText: "15".tr,
                        ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        Text(
                          "11".tr,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CustomIconButton(
                              color: AppColor.navyBlue,
                              size: 40,
                              icon: Icons.facebook,
                            ),
                            // const SizedBox(
                            //   width: 50,
                            // ),
                            InkWell(
                              child: Image.asset(
                                AppImageAsset.google,
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ],
                        ),
                        CustomTextSign(
                          text1: "16".tr,
                          textButton1: "17".tr,
                          onPressed: () {
                            controller.goToSignUp();
                          },
                        )
                      ],
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
