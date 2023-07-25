import 'package:get/get.dart';

import '../../../core/constant/imageasset.dart';
import '../../model/onboardingmodel.dart';

List<OnboardingModel> onBoardingList = [
  OnboardingModel(
    title: "onBoardingChooseProduct".tr,
    image: AppImageAsset.onBoardingImageOne,
    body:
        "onBoardingBody1".tr,
  ),
  OnboardingModel(
    title: "easySafePayment".tr,
    image: AppImageAsset.onBoardingImageTwo,
    body:
    "onBoardingBody2".tr,
  ),
  OnboardingModel(
    title: "trackYourOrder".tr,
    image: AppImageAsset.onBoardingImageThree,
    body:
    "onBoardingBody3".tr,
  ),
  OnboardingModel(
    title: "fastDelivery".tr,
    image: AppImageAsset.onBoardingImageFour,
    body:
    "onBoardingBody4".tr,
  ),
];
