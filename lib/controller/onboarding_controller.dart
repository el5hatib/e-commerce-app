import 'package:e_commerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/routes_name.dart';

abstract class OnBoardingController extends GetxController {
  goToNextPage();
  onPageChanged(int index);
}

class OnBoardingControllerImpl extends OnBoardingController {
  int currentPageIndex = 0;
  late PageController pageController;

  @override
  goToNextPage() {
    if (currentPageIndex == onBoardingList.length - 1) {
     return Get.offAllNamed(AppRoutes.login);
    }
    else {
      return pageController.animateToPage(currentPageIndex + 1,
          duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    }
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
