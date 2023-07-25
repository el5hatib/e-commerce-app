import 'package:e_commerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;

  const CustomButtonAuth({super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: AppColor.white,
        child: Text(buttonText),
      ),
    );
  }
}
