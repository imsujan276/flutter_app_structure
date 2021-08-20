import 'package:car_juggle_photo_app/app/data/enum/enum.dart';
import 'package:car_juggle_photo_app/app/utils/helpers/string_utils.dart';

/// Set values for respective flavor of the app
class FlavorValues {
  FlavorValues({required this.baseUrl});
  final String baseUrl;
  //Add other flavor specific values, e.g database name
}

/// configure the flavor of the app
class FlavorConfig {
  final Flavor flavor;
  final String name;
  final FlavorValues values;
  static late FlavorConfig _instance;

  factory FlavorConfig(
      {required Flavor flavor,
      required String name,
      required FlavorValues values}) {
    _instance = FlavorConfig._internal(flavor, name, values);
    return _instance;
  }

  FlavorConfig._internal(this.flavor, this.name, this.values);
  static FlavorConfig get instance {
    return _instance;
  }

  static String getName() => _instance.flavor == Flavor.PROD
      ? _instance.name
      : "${getEnumName(_instance.flavor.toString())} ${_instance.name}";
  static bool isProduction() => _instance.flavor == Flavor.PROD;
  static bool isDevelopment() => _instance.flavor == Flavor.DEV;
}
