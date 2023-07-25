import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'chooseLang': 'Choose Your Preferred Language',
          'welcome': 'Welcome Back',
          'signHint' : 'Sign In With Your Email And Password \n Or Continue With Social Media',
          'emailHint' : 'Enter Your Email',
          'email' : 'Email',
          'password' : 'Password',
          'passwordHint' : 'Enter Your Password',
        },
        'ar': {
          'chooseLang': 'أختر لغتك المفضله ',
          'welcome': 'مرحبا بعودتك',
          'signHint' : 'سجل الدخول بإستخدام البريد الإلكتروني وكلمة المرور \n أو إستمر بإستخدام وسائل التواصل الإجتماعي',
          'emailHint' : 'أدخل بريدك الإلكتروني',
          'email' : 'البريد الإلكتروني',
          'password' : 'كلمة المرور',
          'passwordHint' : 'أدخل كلمة المرور',
        },
      };
}