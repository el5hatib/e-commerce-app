import 'package:e_commerce/view/widget/authentication/customButtonAuth.dart';
import 'package:e_commerce/view/widget/authentication/logoAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/autentication/login_controller.dart';
import '../../../core/constant/color.dart';
import '../../widget/authentication/customTextBodyAuth.dart';
import '../../widget/authentication/customTextFormAuth.dart';
import '../../widget/authentication/customTextTitleAuth.dart';
import '../../widget/authentication/textSign.dart';

class Login extends StatelessWidget {

  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImpl controller= Get.put(LoginControllerImpl());
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
               CustomTextFormAuth(
              hint: 'emailHint',
              label: 'email',
              icon: Icons.email_outlined,
              obscureText: false,
              keyboardType: TextInputType.emailAddress, myController: controller.emailController,
            ),
             const SizedBox(
              height: 25,
            ),
              CustomTextFormAuth(
              hint: 'passwordHint',
              label: 'password',
              icon: Icons.lock_outline_sharp,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword, myController: controller.passwordController,
            ),
            InkWell(
              onTap: (){
                controller.goToForgetPassword();
              },
              child: Text("forgetPassword".tr,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColor.grey,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            CustomButtonAuth(buttonText: 'login'.tr, onPressed: (){}),
            const SizedBox(
              height: 20,
            ),
              CustomTextSignUpOrIn(title: 'sign up',title2: "haven't account",onPressed:(){
                controller.goToRegister();
              },),
          ],
        ),
      ),
    );
  }
}






