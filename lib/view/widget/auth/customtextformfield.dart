import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.lableText,
      this.icon,
      required this.hintText,
      required this.myController,
      required this.isNumber,
      required this.valid,
      this.obScure,
      this.onTap});
  final String lableText;
  final IconData? icon;
  final String hintText;
  final TextEditingController myController;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obScure;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: TextFormField(
        keyboardType: isNumber
            ? TextInputType.numberWithOptions(decimal: true)
            : TextInputType.emailAddress,
        validator: valid,
        controller: myController,
        style: Theme.of(context)
            .textTheme
            .labelMedium
            ?.copyWith(color: Colors.black),
        decoration: InputDecoration(
            errorStyle: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: Color.fromARGB(255, 219, 50, 38)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20), gapPadding: 0),
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.labelSmall,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20), gapPadding: 0),
            label: Text(
              lableText,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            suffixIcon: InkWell(
                child: Icon(
                  icon,
                  size: 25,
                ),
                onTap: onTap)),
        obscureText: obScure == null || obScure == false ? false : true,
      ),
    );
  }
}
