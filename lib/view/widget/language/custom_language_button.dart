import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
class languageButton extends StatelessWidget {
  final String languageTitle;
  final Function()? changeLanguage;
  const languageButton({
    super.key, required this.languageTitle, required this.changeLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal:100),
        textColor: AppColor.white,
        color: AppColor.primaryColor,
        onPressed: changeLanguage,
        child:  Text(
          languageTitle,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}