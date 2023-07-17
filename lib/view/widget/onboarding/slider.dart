import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomeSlider extends StatelessWidget {
  const CustomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onBoardingList.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Text(
              onBoardingList[index].title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              onBoardingList[index].image!,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[index].body!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 2,
                  color: AppColor.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}