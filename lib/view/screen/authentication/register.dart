import 'package:e_commerce/view/widget/authentication/customButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/autentication/register_controller.dart';
import '../../../core/constant/color.dart';
import '../../widget/authentication/customTextBodyAuth.dart';
import '../../widget/authentication/customTextFormAuth.dart';
import '../../widget/authentication/customTextTitleAuth.dart';
import '../../widget/authentication/textSign.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterControllerImpl controller = Get.put(RegisterControllerImpl());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'sign up'.tr,
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
              title: 'welcome',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextBodyAuth(
              body: 'signHint',
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextFormAuth(
              hint: 'userNameHint',
              label: 'userName',
              icon: Icons.person_outline_sharp,
              obscureText: false,
              keyboardType: TextInputType.name,
              myController: controller.nameController,
            ),
            const SizedBox(
              height: 25,
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
              height: 25,
            ),
            CustomTextFormAuth(
              hint: 'phoneNumberHint',
              label: 'phoneNumber',
              icon: Icons.phone_android_outlined,
              obscureText: false,
              keyboardType: TextInputType.phone,
              myController: controller.phoneController,
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextFormAuth(
              hint: 'passwordHint',
              label: 'password',
              icon: Icons.lock_outline_sharp,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              myController: controller.passwordController,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButtonAuth(buttonText: 'sign up'.tr, onPressed: () {
              controller.register();
            }),
            const SizedBox(
              height: 20,
            ),
             CustomTextSignUpOrIn(
              title: 'login',
              title2: 'alreadyHaveAccount',
              onPressed: () {
                controller.goToLogin();
              },
            ),
          ],
        ),
      ),
    );
  }
}
