import 'dart:io';
import 'package:car_juggle_photo_app/app/core/resources/flavor_config.dart';
import 'package:car_juggle_photo_app/app/data/models/user.dart';
import 'package:car_juggle_photo_app/app/utils/helpers/device_info.dart';
import 'package:car_juggle_photo_app/app/utils/helpers/package_info_utils.dart';
import 'package:car_juggle_photo_app/app/utils/helpers/string_utils.dart';
import 'package:car_juggle_photo_app/app/utils/storage/auth_storage.dart';
import 'package:dio/dio.dart';
import 'package:sentry/sentry.dart';

Future<void> sentryError(dynamic error, dynamic stackTrace) async {
  User? user = AuthStorage.currentUser;
  var event = SentryEvent(
    release: PackageInfoUtils.packageInfo.version,
    environment: getEnumName(FlavorConfig.instance.flavor.toString()),
    platform: Platform.operatingSystem,
    timestamp: DateTime.now(),
    user: SentryUser(
      id: user != null ? user.id.toString() : "",
      email: user != null ? user.email : "",
      extras: <String, dynamic>{
        'device': DeviceInfo.name,
        'devideId': DeviceInfo.id,
        'deviceVersion': DeviceInfo.version,
      },
    ),
    // stackTrace: stackTrace,
    culprit: error is DioError ? error.response!.realUri.path : "",
    throwable: error,
  );

  await Sentry.captureEvent(event);
}
