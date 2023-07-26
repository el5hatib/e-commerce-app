import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes_name.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();

  goToOTP();
}

class ForgetPasswordControllerImpl extends ForgetPasswordController {
  late TextEditingController emailController;
  @override
  checkEmail() {

  }

  @override
  goToOTP() {
    Get.toNamed(AppRoutes.otp);
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }


}
