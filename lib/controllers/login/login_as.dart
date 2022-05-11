import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seepups/views/login/su_login_page.dart';

class Loginas extends GetxController {
  login(value) {
    if (value == 0) {
      Get.snackbar(
        'Please',
        'Select your position',
        colorText: Colors.red,
      );
    } else if (value == 1) {
      Get.to(() => const Loginpage());
    } else if (value == 2) {
      Get.to(() => const Loginpage());
    }
  }
}
