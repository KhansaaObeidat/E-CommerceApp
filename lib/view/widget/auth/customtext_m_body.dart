import 'package:flutter/material.dart';

class CustomTextMediumBody extends StatelessWidget {
  const CustomTextMediumBody({super.key, required this.textBody});
  final String textBody;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        textBody,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: const Color.fromARGB(255, 0, 0, 0)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
