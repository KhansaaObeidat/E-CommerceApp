import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonLocalization extends StatelessWidget {
  final String textButton;
  final void Function() onPressed;
  const CustomButtonLocalization(
      {super.key, required this.textButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.navyBlue,
        ),
        width: double.infinity,
        height: 50,
        child: MaterialButton(
          onPressed: onPressed,
          child: Center(
            child: Text(
              textButton.tr,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ));
  }
}
