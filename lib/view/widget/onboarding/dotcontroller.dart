import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class DotController extends StatelessWidget {
  const DotController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          onBoardingList.length,
              (index) => AnimatedContainer(
            margin: const EdgeInsets.only(
              right: 5,

            ),
            duration: const Duration(seconds: 1),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
  }
}