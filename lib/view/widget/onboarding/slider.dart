import 'package:e_commerce/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/datasource/static/static.dart';

class CustomeSlider extends GetView<OnBoardingControllerImpl> {
  const CustomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (index) => controller.onPageChanged(index),
      itemCount: onBoardingList.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Text(
              onBoardingList[index].title!,
              style: Theme.of(context).textTheme.titleLarge,
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
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        );
      },
    );
  }
}