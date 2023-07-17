import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 45),
      height: 40,
      child: MaterialButton(onPressed: (){

      },
        color: AppColor.primaryColor,
        textColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        child: const Text("Continue"),
      ),
    );
  }
}