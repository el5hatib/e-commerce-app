import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hint;

  final String label;

  final IconData icon;

  final bool obscureText;

  final TextInputType keyboardType;

  final TextEditingController myController ;

  const CustomTextFormAuth({
    super.key,
    required this.hint,
    required this.label,
    required this.icon,
    required this.obscureText,
    required this.keyboardType,
  required this.myController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        hintStyle: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: AppColor.grey),
        hintText: hint.tr,
        suffixIcon: Icon(icon),
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
        label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              label.tr,
            )),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
