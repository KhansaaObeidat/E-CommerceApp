import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:flutter/material.dart';

class CustomTextTitle extends StatelessWidget {
  const CustomTextTitle({super.key, required this.textTitle});
  final String textTitle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        textTitle,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: AppColor.primaryColor),
      ),
    );
  }
}
