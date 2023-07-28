import 'package:e_commerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/routes_name.dart';
import '../../widget/authentication/customButtonAuth.dart';
class SuccessResetPassword extends StatelessWidget {

  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        padding: const EdgeInsets.all( 15.0,),
        child:  Column(
          children: [
            const Center(child: Icon(Icons.check_circle_outline, size: 150 , color: AppColor.primaryColor,),),
            const SizedBox(height: 30,) ,
            Text("checkSuccess".tr),
            const SizedBox(height: 10,) ,
            Container(
              width: double.infinity,
              child: CustomButtonAuth(buttonText: 'login'.tr, onPressed: () {
                Get.offNamed(AppRoutes.login);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
