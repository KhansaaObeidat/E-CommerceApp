import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:flutter/material.dart';

class CustomTextSign extends StatelessWidget {
  const CustomTextSign(
      {super.key,
      required this.text1,
      required this.textButton1,
      required this.onPressed});
  final String text1;
  final String textButton1;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(fontWeight: FontWeight.bold)),
        TextButton(
            onPressed: onPressed,
            child: Text(
              textButton1,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColor.primaryColor, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
