import 'package:get_storage/get_storage.dart';

import 'auth_storage.dart';

class BoxStorage {
  static init() async {
    await GetStorage.init(boxKey);
  }
}
