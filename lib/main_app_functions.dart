import 'package:flutter/services.dart';

import 'app/utils/helpers/package_info_utils.dart';
import 'app/utils/helpers/device_info.dart';
import 'app/utils/storage/box_storage.dart';

class MainAppFunctions {
  initialize() async {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await BoxStorage.init();
    await DeviceInfo().initPlatformState();
    await PackageInfoUtils().init();
  }
}
