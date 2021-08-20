import 'package:car_juggle_photo_app/app/core/resources/flavor_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/constants/constants.dart';
import 'app/routes/app_pages.dart';
import 'app/theme/theme_service.dart';
import 'app/theme/themes.dart';
import 'app/translation/translation_service.dart';
import 'app/utils/helpers/logger_utils.dart';
import 'initial_bindings.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: Size(360, 690),
//       builder: () {
//         return GetMaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: Strings.APP_NAME,
//           theme: Themes.dark,
//           initialRoute: AppPages.INITIAL,
//           getPages: AppPages.routes,
//           initialBinding: InitialBinding(),
//         );
//       },
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            return ScreenUtilInit(
              designSize: (orientation == Orientation.landscape ||
                      constraints.maxWidth > Constants.kTabletBreakpoint)
                  ? Size(690, 360) // tablet design size
                  : Size(360, 690), // mobile design size
              builder: () {
                return GetMaterialApp(
                  title: FlavorConfig.getName(),
                  debugShowCheckedModeBanner: false,
                  theme: Themes.light,
                  themeMode: ThemeService().getThemeMode(),
                  initialRoute: AppPages.INITIAL,
                  getPages: AppPages.routes,
                  enableLog: true,
                  logWriterCallback: Logger.write,
                  initialBinding: InitialBinding(),
                  locale: TranslationService.locale,
                  fallbackLocale: TranslationService.fallbackLocale,
                  translations: TranslationService(),
                );
              },
            );
          },
        );
      },
    );
  }
}
