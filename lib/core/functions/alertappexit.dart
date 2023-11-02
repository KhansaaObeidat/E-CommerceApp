import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertAppExit() {
  Get.defaultDialog(
      title: "Alert",
      middleText: "Did you sure exit ?",
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: Text("Confirm")),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Cancel"))
      ]);
  return Future.value(true);
}
