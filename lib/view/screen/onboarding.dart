import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/onboarding_controller.dart';
import '../widget/onboarding/customButton.dart';
import '../widget/onboarding/dotcontroller.dart';
import '../widget/onboarding/slider.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpl());
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: CustomeSlider(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  DotController(),
                  Spacer(
                    flex: 2,
                  ),
                  CustomButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
