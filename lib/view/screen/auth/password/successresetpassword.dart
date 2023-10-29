import 'package:e_commerce_app/controller/auth/passwordcontroller/successresetcontroller.dart';
import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:e_commerce_app/core/shared/custombuttonshared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordImpController controller =
        Get.put(SuccessResetPasswordImpController());
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
                  "Success",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.check_circle_outline,
                  size: 200,
                  color: AppColor.green,
                ),
                Spacer(),
                CustomButtonShared(
                    onPressed: () {
                      controller.goToSignin();
                    },
                    buttonText: "Go To Sigin"),
                    
              ],
            ),
          ),
        ));
  }
}
