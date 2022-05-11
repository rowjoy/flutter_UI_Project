import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seepups/views/sign_up/su_signup_sucessfully.dart';

class SIGNOTPSUB extends GetxController {
  void nextfiled(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  otpsub(valu1, valu2, valu3, valu4, valu5, valu6) {
    if (valu1.text.isEmpty &&
        valu2.text.isEmpty &&
        valu3.text.isEmpty &&
        valu4.text.isEmpty &&
        valu5.text.isEmpty &&
        valu6.text.isEmpty) {
      Get.snackbar('Error', 'Your OTP field is empty');
    } else if (valu1.text.isNotEmpty &&
        valu2.text.isNotEmpty &&
        valu3.text.isNotEmpty &&
        valu4.text.isNotEmpty &&
        valu5.text.isNotEmpty &&
        valu6.text.isNotEmpty) {
      Get.snackbar('Successfully', '');
      Get.to(() => const SignupSucessfullypagedone());
    }
  }
}
