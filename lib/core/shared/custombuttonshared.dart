import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:flutter/material.dart';

class CustomButtonShared extends StatelessWidget {
  const CustomButtonShared(
      {super.key, required this.onPressed, required this.buttonText});
  final void Function() onPressed;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AppColor.navyBlue,
          borderRadius: BorderRadius.circular(20),
          // border:
          //     Border.all(color: AppColor.navyBlue, style: BorderStyle.solid),
        ),
        height: 50,
        width: double.infinity,
        child: MaterialButton(
          onPressed: onPressed,
          child: Text(buttonText,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.bold)),
        ));
  }
}
