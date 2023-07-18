import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  goToNextPage();

  onPageChanged(int index);
}

class OnBoardingControllerImpl extends OnBoardingController {
  int currentPageIndex = 0;
  late PageController pageController;

  @override
  goToNextPage() {
    pageController.animateToPage(currentPageIndex + 1,
        duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int index) {
    currentPageIndex = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
