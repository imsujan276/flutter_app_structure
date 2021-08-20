import 'package:car_juggle_photo_app/app/core/resources/flavor_config.dart';
import 'package:car_juggle_photo_app/app/routes/app_pages.dart';
import 'package:car_juggle_photo_app/app/utils/storage/auth_storage.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final int duration = 2;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(duration.seconds, getNextPage);
  }

  @override
  void onClose() {}

  void getNextPage() async {
    final bool hasAuthToken = AuthStorage.token.isNotEmpty;
    if (hasAuthToken) {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.offAllNamed(Routes.AUTH);
    }
  }
}
