import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:flutter/material.dart';

class CustomTextSmallBody extends StatelessWidget {
  const CustomTextSmallBody({super.key, required this.textBody});
  final String textBody;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        textBody,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: AppColor.lightgrey),
        textAlign: TextAlign.center,
      ),
    );
  }
}
