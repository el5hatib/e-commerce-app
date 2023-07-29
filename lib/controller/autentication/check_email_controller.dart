import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes_name.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();

  goToRegisterOTP();
}

class CheckEmailControllerImpl extends CheckEmailController {
  late TextEditingController emailController;
  @override
  checkEmail() {

  }

  @override
  goToRegisterOTP() {
    Get.toNamed(AppRoutes.registerOTP);
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
