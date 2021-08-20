import 'package:get/instance_manager.dart';

import 'app/core/services/internet_connectivity/internet_connectivity.dart';
import 'app/modules/auth/controllers/auth_controller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(InternetConnectivityController(), permanent: true);
    Get.put(AuthController(), permanent: true);
  }
}
