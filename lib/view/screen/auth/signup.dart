import 'package:e_commerce_app/controller/auth/signupcontroller.dart';
import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:e_commerce_app/core/functions/alertappexit.dart';
import 'package:e_commerce_app/core/functions/input_validator.dart';
import 'package:e_commerce_app/core/shared/custombuttonshared.dart';
import 'package:e_commerce_app/view/widget/auth/customtext_s_body.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformfield.dart';
import 'package:e_commerce_app/view/widget/auth/textsign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/appimageassets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: alertAppExit,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "17".tr,
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
            child: SingleChildScrollView(
                child: GetBuilder<SignUpControllerImp>(
              builder: (controller) => Center(
                child: Form(
                  key: controller.formState,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 230,
                        child: Image.asset(
                          AppImageAsset.logo,
                          fit: BoxFit.fill,
                        ),
                      ),
                      CustomTextSmallBody(textBody: "24".tr),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        child: Column(children: [
                          CustomTextFormField(
                            valid: (val) {
                              return inputValidator(val!, 8, 50, "username");
                            },
                            icon: Icons.person_outline,
                            lableText: "20".tr,
                            hintText: "23".tr,
                            myController: controller.name,
                            isNumber: false,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomTextFormField(
                            isNumber: true,
                            valid: (val) {
                              return inputValidator(val!, 10, 100, "email");
                            },
                            lableText: "18".tr,
                            hintText: "12".tr,
                            icon: Icons.email,
                            myController: controller.email,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomTextFormField(
                            isNumber: true,
                            valid: (val) {
                              return inputValidator(
                                  val!, 10, 14, "phonenumber");
                            },
                            lableText: "21".tr,
                            hintText: "22".tr,
                            icon: Icons.phone,
                            myController: controller.mobile,
                          ),
                          const SizedBox(height: 15),
                          GetBuilder<SignUpControllerImp>(
                              builder: (controller) => CustomTextFormField(
                                    obScure: controller.isSelected,
                                    onTap: () {
                                      controller.viewPassword();
                                    },
                                    isNumber: true,
                                    valid: (val) {
                                      return inputValidator(
                                          val!, 10, 14, "phonenumber");
                                    },
                                    lableText: "35".tr,
                                    hintText: '13'.tr,
                                    icon: controller.isSelected
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    myController: controller.password,
                                  )),
                          const SizedBox(
                            height: 15,
                          ),
                          GetBuilder<SignUpControllerImp>(
                            builder: (controller) => CustomTextFormField(
                              obScure: controller.isSelectedRePassword,
                              onTap: () {
                                controller.viewRePassword();
                              },
                              isNumber: true,
                              valid: (val) {
                                return inputValidator(
                                    val!, 10, 14, "phonenumber");
                              },
                              lableText: "35".tr,
                              hintText: '13'.tr,
                              icon: controller.isSelectedRePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              myController: controller.repassword,
                            ),
                          ),
                          // ),
                          SizedBox(
                            height: 15,
                          ),
                          CustomButtonShared(
                              onPressed: () {
                                controller.signUp();
                              },
                              buttonText: "17".tr),
                          CustomTextSign(
                            text1: "25".tr,
                            textButton1: "26".tr,
                            onPressed: () {
                              controller.goToLogin();
                            },
                          )
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            )),
          ),
        ));
  }
}
