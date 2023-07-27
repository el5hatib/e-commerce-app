import 'package:e_commerce/view/widget/authentication/customButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/autentication/reset_password_controller.dart';
import '../../../core/constant/color.dart';
import '../../widget/authentication/customTextBodyAuth.dart';
import '../../widget/authentication/customTextFormAuth.dart';
import '../../widget/authentication/customTextTitleAuth.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImpl controller = Get.put(ResetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'resetPassword'.tr,
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
              title: 'resetPasswordBody',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextBodyAuth(
              body: 'resetPasswordBodyHint',
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextFormAuth(
              hint: 'resetPasswordBody',
              label: 'password',
              icon: Icons.lock_outline_sharp,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              myController: controller.passwordController,
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextFormAuth(
              hint: 'reTypePassword',
              label: 'confirmPassword',
              icon: Icons.lock_outline_sharp,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              myController: controller.confirmPasswordController,
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButtonAuth(buttonText: 'save'.tr, onPressed: () {
              controller.goToSuccessResetPassword();
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
