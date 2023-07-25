import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../widget/authentication/customTextBodyAuth.dart';
import '../../widget/authentication/customTextFormAuth.dart';
import '../../widget/authentication/customTextTitleAuth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'sign in'.tr,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
        child: ListView(
          children:const  [
             SizedBox(
              height: 20,
            ),
             CustomTextTitleAuth(title: 'welcome',),
             SizedBox(
              height: 10,
            ),
             CustomTextBodyAuth(body: 'signHint',),
             SizedBox(
              height: 60,
            ),
              CustomTextFormAuth(
              hint: 'emailHint',
              label: 'email',
              icon: Icons.email_outlined,
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
            ),
             SizedBox(
              height: 25,
            ),
             CustomTextFormAuth(
              hint: 'passwordHint',
              label: 'password',
              icon: Icons.lock_outline_sharp,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
            ),
          ],
        ),
      ),
    );
  }
}




