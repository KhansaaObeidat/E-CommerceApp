import 'package:e_commerce_app/core/constant/approutes.dart';
import 'package:e_commerce_app/view/screen/auth/checkemail.dart';
import 'package:e_commerce_app/view/screen/auth/password/forgetpassword.dart.dart';
import 'package:e_commerce_app/view/screen/auth/password/resetpassword.dart';
import 'package:e_commerce_app/view/screen/auth/password/successresetpassword.dart';
import 'package:e_commerce_app/view/screen/auth/signin.dart';
import 'package:e_commerce_app/view/screen/auth/signup.dart';
import 'package:e_commerce_app/view/screen/auth/successsignup.dart';
import 'package:e_commerce_app/view/screen/auth/password/verifycodepassword.dart';
import 'package:e_commerce_app/view/screen/auth/verifycodesignup.dart';
import 'package:e_commerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRoute.signIn: (context) => const SignInScreen(),
  AppRoute.signUp: (context) => const SignUpScreen(),
  AppRoute.verifyCodeResetPassword: (context) => const VerifyCodeResetPasswordScreen(),
  AppRoute.resetPassword: (context) => const ResetPasswordScreen(),
  AppRoute.forgetPassword: (context) => const ForgetPasswordScreen(),
  AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),

  AppRoute.checkEmail: (context) => const CheckEmail(),
  AppRoute.verifyCodeSignUp:(context)=>const VerifyCodeSignUpScreen(),

  //OnBoarding
  AppRoute.oBoarding: (context) => const OnBoarding(),
};
