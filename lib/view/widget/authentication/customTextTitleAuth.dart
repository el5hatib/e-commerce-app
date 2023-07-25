import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextTitleAuth extends StatelessWidget {
  final String title;
  const CustomTextTitleAuth({
    super.key, required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      title.tr,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}