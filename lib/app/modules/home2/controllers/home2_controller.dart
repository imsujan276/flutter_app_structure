import 'package:get/get.dart';

class Home2Controller extends GetxController {
  //TODO: Implement Home2Controller

  final count = 0.obs;
  @override
  void onInit() {
    var args = Get.arguments;
    print(args);
    print(args[0]);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
