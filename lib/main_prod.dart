import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sentry/sentry.dart';
import 'app/constants/api_endpoints.dart';
import 'app/constants/constants.dart';
import 'app/constants/sentry_url.dart';
import 'app/core/resources/flavor_config.dart';
import 'app/data/enum/enum.dart';
import 'app/utils/helpers/sentry_utils.dart';
import 'main.dart';
import 'main_app_functions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MainAppFunctions().initialize();

  FlutterError.onError = (FlutterErrorDetails details) {
    print("================== CAUGHT FLUTTER ERROR");
    print("Error => ${details.exception}");
    print("StackTrace => ${details.stack}");
    sentryError(details.exception, details.stack);
  };

  FlavorConfig(
    flavor: Flavor.PROD,
    name: APP_NAME,
    values: FlavorValues(
      baseUrl: ApiUrl.PROD,
    ),
  );

  runZonedGuarded(() async {
    await Sentry.init(
      (options) {
        options.dsn = SentryUrl.PROD;
      },
      appRunner: () => runApp(MyApp()),
    );
  }, (dynamic error, dynamic stackTrace) {
    print("=================== CAUGHT DART ERROR");
    print("Error => $error}");
    print("StackTrace => $stackTrace");
    sentryError(error, stackTrace);
  });
}
