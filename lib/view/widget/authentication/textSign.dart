import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustomTextSignUpOrIn extends StatelessWidget {
  final String title;

  final String title2;
  final void Function() onPressed;

  const CustomTextSignUpOrIn({
    super.key,
    required this.title,
    required this.title2,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title2.tr,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColor.grey,
              ),
        ),
        InkWell(
          onTap: () {
            onPressed();
          },
          child: Text(
            title.tr,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColor.primaryColor,
                ),
          ),
        )
      ],
    );
  }
}
