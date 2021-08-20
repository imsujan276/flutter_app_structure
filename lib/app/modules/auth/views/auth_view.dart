import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import 'widgets/auth_login_widget.dart';
import 'widgets/auth_register_widget.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoginForm.isTrue
          ? AuthLoginWidget()
          : AuthRegisterWidget(),
    );
  }
}
