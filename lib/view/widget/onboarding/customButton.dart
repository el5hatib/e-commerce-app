import 'package:e_commerce/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';

class CustomButton extends GetView<OnBoardingControllerImpl> {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 45),
      height: 40,
      child: MaterialButton(onPressed: (){
          controller.goToNextPage();
      },
        color: AppColor.primaryColor,
        textColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        child:  Text("onBoardingButton".tr,),
      ),
    );
  }
}