import 'package:e_commerce/view/widget/authentication/customButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/autentication/forget_password_controller.dart';
import '../../../core/constant/color.dart';
import '../../widget/authentication/customTextBodyAuth.dart';
import '../../widget/authentication/customTextFormAuth.dart';
import '../../widget/authentication/customTextTitleAuth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImpl controller = Get.put(ForgetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'forgotPassword'.tr,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomTextTitleAuth(
              title: 'checkEmail',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextBodyAuth(
              body: 'enterEmailBody',
            ),
            const SizedBox(
              height: 75,
            ),

            CustomTextFormAuth(
              hint: 'emailHint',
              label: 'email',
              icon: Icons.email_outlined,
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
              myController: controller.emailController,
            ),

            const SizedBox(
              height: 80,
            ),
            CustomButtonAuth(buttonText: 'check'.tr, onPressed: () {
              controller.goToOTP();
            }),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
