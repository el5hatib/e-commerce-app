import 'package:e_commerce/view/widget/authentication/customButtonAuth.dart';
import 'package:e_commerce/view/widget/authentication/logoAuth.dart';
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
          children:  [
             const LogoAuth(),
              const SizedBox(
                height: 20,),
            const CustomTextTitleAuth(title: 'welcome',),
             const SizedBox(
              height: 10,
            ),
             const CustomTextBodyAuth(body: 'signHint',),
             const SizedBox(
              height: 50,
            ),
              const CustomTextFormAuth(
              hint: 'emailHint',
              label: 'email',
              icon: Icons.email_outlined,
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
            ),
             const SizedBox(
              height: 25,
            ),
             const CustomTextFormAuth(
              hint: 'passwordHint',
              label: 'password',
              icon: Icons.lock_outline_sharp,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            Text("forgetPassword".tr,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColor.grey,
              ),
              textAlign: TextAlign.end,
            ),
            CustomButtonAuth(buttonText: 'login'.tr, onPressed: (){}),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("haven't account".tr,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: AppColor.grey,
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Text('sign up'.tr,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColor.primaryColor,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}




