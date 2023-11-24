import 'package:e_commerce_app/core/constant/approutes.dart';
import 'package:e_commerce_app/core/middleware/mymiddleware.dart';
import 'package:e_commerce_app/view/screen/auth/password/forgetpassword.dart';
import 'package:e_commerce_app/view/screen/auth/password/resetpassword.dart';
import 'package:e_commerce_app/view/screen/auth/password/successresetpassword.dart';
import 'package:e_commerce_app/view/screen/auth/signin.dart';
import 'package:e_commerce_app/view/screen/auth/signup.dart';
import 'package:e_commerce_app/view/screen/auth/successsignup.dart';
import 'package:e_commerce_app/view/screen/auth/password/verifycodepassword.dart';
import 'package:e_commerce_app/view/screen/auth/verifycodesignup.dart';
import 'package:e_commerce_app/view/screen/language.dart';
import 'package:e_commerce_app/view/screen/onboarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
    //Auth
GetPage(name:'/',page: ()=>const ChangeLanguage(),middlewares:[ MyMiddleware()]),
  GetPage(name:AppRoute.signIn 
, page:  () => const SignInScreen()),
GetPage(name:  AppRoute.signUp, page: () => const SignUpScreen()),
GetPage(name: AppRoute.verifyCodeResetPassword, page: () => const VerifyCodeResetPasswordScreen()),
GetPage(name: AppRoute.resetPassword, page: () => const ResetPasswordScreen()),
GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPasswordScreen()),
GetPage(name: AppRoute.successResetPassword, page: () => const SuccessResetPassword()),
GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
GetPage(name: AppRoute.verifyCodeSignUp, page: () => const VerifyCodeSignUpScreen()),
  //OnBoarding

GetPage(name: AppRoute.oBoarding, page: () => const OnBoarding()),

];

