import 'package:e_commerce_app/core/constant/appcolor.dart';
import 'package:flutter/material.dart';


ThemeData themeEnglish = ThemeData(
  fontFamily: "Nunito", 
   textTheme: const TextTheme(
    titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    bodyMedium: TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      height: 2,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
    bodySmall: const TextStyle(
      color: AppColor.lightgrey,
      height: 2,
      fontWeight: FontWeight.bold,
      fontSize: 15,
    ),
    bodyLarge: TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      height: 2,
      fontWeight: FontWeight.bold,
      fontSize: 28,
    ),
    headlineMedium: TextStyle(
      color: AppColor.white,
      fontSize: 18,
    ),
    titleSmall: TextStyle(
      color: Color.fromARGB(255, 7, 7, 7),
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      fontSize: 14,
    ),
    labelMedium: TextStyle(
      fontSize: 16,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);
ThemeData themeArabic = ThemeData(
  fontFamily: "Cario", 
   textTheme: const TextTheme(
    titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    bodyMedium: TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      height: 2,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
    bodySmall: TextStyle(
      color: AppColor.lightgrey,
      height: 2,
      fontWeight: FontWeight.bold,
      fontSize: 15,
    ),
    bodyLarge: TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      height: 2,
      fontWeight: FontWeight.bold,
      fontSize: 28,
    ),
    headlineMedium: TextStyle(
      color: AppColor.white,
      fontSize: 18,
    ),
    titleSmall: TextStyle(
      color: Color.fromARGB(255, 7, 7, 7),
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      fontSize: 14,
    ),
    labelMedium: TextStyle(
      fontSize: 16,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);
