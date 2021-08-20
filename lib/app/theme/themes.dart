import 'package:car_juggle_photo_app/app/constants/app_colors.dart';
import 'package:car_juggle_photo_app/app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Themes {
  /// Light Theme
  static final ThemeData light = ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: AppColors.PRIMARY_COLOR,
    accentColor: AppColors.ACCENT_COLOR,
    backgroundColor: AppColors.PRIMARY_COLOR_LIGHT,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // elevatedButtonTheme: _lightElevatedButtonThemeData,
    // textButtonTheme: _lightTextButtonThemeData,
    // outlinedButtonTheme: _lightOutlinedButtonThemeData,
    textTheme: lightTextTheme,
    scaffoldBackgroundColor: AppColors.WHITE,
    primaryIconTheme: IconThemeData(
      color: AppColors.BLACK,
    ),
  );

  static final TextTheme lightTextTheme = TextTheme(
    headline1: _lightHeadline1,
    headline2: _lightHeadline2,
    headline3: _lightHeadline3,
    headline4: _lightHeadline4,
    headline5: _lightHeadline5,
    headline6: _lightHeadline6,
    bodyText1: _lightBodyText1,
    bodyText2: _lightBodyText2,
    caption: _lightCaption,
    subtitle1: _lightSubtitle1,
    subtitle2: _lightSubtitle2,
    // button: _lightButton,
  );

  static final _lightHeadline1 = TextStyle(
    color: Colors.black,
    fontSize: Constants.defaultFontSize + 14.sp, //30
  );
  static final _lightHeadline2 = TextStyle(
    color: Colors.black,
    fontSize: Constants.defaultFontSize + 12.sp, //28
  );
  static final _lightHeadline3 = TextStyle(
    color: Colors.black,
    fontSize: Constants.defaultFontSize + 10.sp, //26
  );
  static final _lightHeadline4 = TextStyle(
    color: Colors.black,
    fontSize: Constants.defaultFontSize + 8.sp, //24
  );
  static final _lightHeadline5 = TextStyle(
    color: Colors.black,
    fontSize: Constants.defaultFontSize + 6.sp, //22
  );
  static final _lightHeadline6 = TextStyle(
    color: Colors.black,
    fontSize: Constants.defaultFontSize + 4.sp, //20
  );
  static final _lightBodyText2 = TextStyle(
    color: Colors.black,
    fontSize: Constants.defaultFontSize + 2.sp, //18
  );
  static final _lightBodyText1 = TextStyle(
    color: Colors.black,
    fontSize: Constants.defaultFontSize, //16
  );
  static final _lightSubtitle1 = TextStyle(
    color: Colors.black,
    fontSize: Constants.defaultFontSize - 1.sp, //15
  );
  static final _lightSubtitle2 = TextStyle(
    color: Colors.black,
    fontSize: Constants.defaultFontSize - 2.sp, //14
  );
  static final _lightCaption = TextStyle(
    color: Colors.black,
    fontSize: Constants.defaultFontSize - 4.sp, //12
  );
  // static final _lightButton = TextStyle(
  //   color: Colors.black,
  //   fontSize: Constants.defaultFontSize, //16
  //   fontWeight: FontWeight.normal,
  // );

  // static final _lightElevatedButtonThemeData = ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     primary: AppColors.GREY, // background
  //     onPrimary: AppColors.BLACK, // foreground/text
  //     onSurface: AppColors.GREY, // disabled
  //     textStyle: TextStyle(
  //       fontWeight: FontWeight.normal,
  //       fontSize: Constants.defaultFontSize,
  //     ),
  //   ),
  // );

  // static final _lightTextButtonThemeData = TextButtonThemeData(
  //   style: TextButton.styleFrom(
  //     primary: Colors.purple, // foreground/text
  //     backgroundColor: Colors.amber, // background
  //     textStyle: TextStyle(
  //       fontSize: Constants.defaultFontSize,
  //     ),
  //   ),
  // );

  // static final _lightOutlinedButtonThemeData = OutlinedButtonThemeData(
  //   style: OutlinedButton.styleFrom(
  //     primary: Colors.white, // foreground
  //     onSurface: Colors.grey, // disabled
  //     backgroundColor: Colors.teal, // background
  //   ),
  // );

  /// Dark Theme
  static final ThemeData dark = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: AppColors.PRIMARY_COLOR_DARK,
    accentColor: AppColors.ACCENT_COLOR,
    backgroundColor: AppColors.PRIMARY_COLOR_DARK,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: darkTextTheme,
    scaffoldBackgroundColor: AppColors.BLACK,
    primaryIconTheme: IconThemeData(
      color: AppColors.WHITE,
    ),
  );

  static final TextTheme darkTextTheme = TextTheme(
    headline1: _darkHeadline1,
    headline2: _darkHeadline2,
    headline3: _darkHeadline3,
    headline4: _darkHeadline4,
    headline5: _darkHeadline5,
    headline6: _darkHeadline6,
    bodyText1: _darkBodyText1,
    bodyText2: _darkBodyText2,
    caption: _darkCaption,
    subtitle1: _darkSubtitle1,
    subtitle2: _darkSubtitle2,
  );

  static final TextStyle _darkHeadline1 =
      _lightHeadline1.copyWith(color: Colors.white);
  static final TextStyle _darkHeadline2 =
      _lightHeadline2.copyWith(color: Colors.white);
  static final TextStyle _darkHeadline3 =
      _lightHeadline3.copyWith(color: Colors.white);
  static final TextStyle _darkHeadline4 =
      _lightHeadline4.copyWith(color: Colors.white);
  static final TextStyle _darkHeadline5 =
      _lightHeadline5.copyWith(color: Colors.white);
  static final TextStyle _darkHeadline6 =
      _lightHeadline6.copyWith(color: Colors.white);
  static final TextStyle _darkBodyText1 =
      _lightBodyText1.copyWith(color: Colors.white);
  static final TextStyle _darkBodyText2 =
      _lightBodyText2.copyWith(color: Colors.white);
  static final TextStyle _darkCaption =
      _lightCaption.copyWith(color: Colors.white);
  static final TextStyle _darkSubtitle1 =
      _lightSubtitle1.copyWith(color: Colors.white);
  static final TextStyle _darkSubtitle2 =
      _lightSubtitle2.copyWith(color: Colors.white);
}
