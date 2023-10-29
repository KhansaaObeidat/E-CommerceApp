import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.lableText,
      this.icon,
      required this.hintText,
      required this.myController});
  final String lableText;
  final IconData? icon;
  final String hintText;
  final TextEditingController myController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 400,
      child: TextFormField(
        controller: myController,
        style: Theme.of(context)
            .textTheme
            .labelMedium
            ?.copyWith(color: Colors.black),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.labelSmall,
            // floatingLabelBehavior: FloatingLabelBehavior.always,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            label: Text(
              lableText,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            suffixIcon: Icon(icon)),
      ),
    );
  }
}
