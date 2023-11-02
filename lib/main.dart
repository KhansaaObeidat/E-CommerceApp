import 'package:e_commerce_app/bindings.dart';
import 'package:e_commerce_app/core/localization/translations.dart';
import 'package:e_commerce_app/core/service/services.dart';
import 'package:e_commerce_app/routes.dart';
import 'package:e_commerce_app/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/localization/changelocal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ChangeLangController controller = Get.put(ChangeLangController());
    return GetMaterialApp(
      locale: controller.language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: controller.appTheme,
      home: const ChangeLanguage(),
      routes: routes,
      initialBinding: MyBindings(),
    );
  }
}
