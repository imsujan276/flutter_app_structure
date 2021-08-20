import 'package:get/get.dart';

import 'package:car_juggle_photo_app/app/modules/auth/bindings/auth_binding.dart';
import 'package:car_juggle_photo_app/app/modules/auth/views/auth_view.dart';
import 'package:car_juggle_photo_app/app/modules/home/bindings/home_binding.dart';
import 'package:car_juggle_photo_app/app/modules/home/views/home_view.dart';
import 'package:car_juggle_photo_app/app/modules/home2/bindings/home2_binding.dart';
import 'package:car_juggle_photo_app/app/modules/home2/views/home2_view.dart';
import 'package:car_juggle_photo_app/app/modules/splash/bindings/splash_binding.dart';
import 'package:car_juggle_photo_app/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME2,
      page: () => Home2View(),
      binding: Home2Binding(),
    ),
  ];
}
