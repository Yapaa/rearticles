import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var _isSignIng = false.obs;
  bool get isSignIng => _isSignIng.value;
  set isSignIng(bool value) => _isSignIng.value = value;

  var isHidden = true.obs;
  TextEditingController emailC = TextEditingController(text: "sppu3546@gmail.com");
  TextEditingController passwordC = TextEditingController(text: "surya11");

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
