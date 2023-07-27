import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes_name.dart';

abstract class OTPController extends GetxController {
  checkOTP();

  goToResetPassword();
}

class OTPControllerImpl extends OTPController {
  late String otpCode ;
  @override
  checkOTP() {

  }

  @override
  goToResetPassword() {
    Get.toNamed(AppRoutes.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }

}
