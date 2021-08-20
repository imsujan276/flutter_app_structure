import 'package:car_juggle_photo_app/app/core/repositories/auth_repository.dart';
import 'package:car_juggle_photo_app/app/data/models/user.dart';
import 'package:car_juggle_photo_app/app/routes/app_pages.dart';
import 'package:car_juggle_photo_app/app/utils/helpers/getSnackbar.dart';
import 'package:car_juggle_photo_app/app/utils/storage/auth_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  final AuthRepository authRepository = AuthRepositortImpl();

  RxBool isLoggedIn = false.obs;
  RxBool isLoginForm = true.obs;
  late Rx<User>? user;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  toggleForm() {
    print(isLoginForm);
    isLoginForm.toggle();
    print(isLoginForm);
  }

  Future<void> loginWithEmail() async {
    // authRepository.loginWithEmail(email: "email", password: "password");
    Future.delayed(2.seconds, setUser());
  }

  setUser() {
    AuthStorage.setToken("thisistest");
    print(AuthStorage.token);
    isLoggedIn.value = true;
    Get.offAllNamed(Routes.HOME);
  }

  Future<void> registerWithEmail() async {
    getSnackbar(message: "Not yet implemented");
  }

  Future<void> logout() async {
    AuthStorage.reset();
    print(AuthStorage.token);
    Get.offAllNamed(Routes.AUTH);
  }
}
