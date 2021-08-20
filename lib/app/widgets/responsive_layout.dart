import 'package:car_juggle_photo_app/app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// responsive layout builder to detect and build different layout for mobile and tablet
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.mobile,
    this.tablet,
  }) : super(key: key);

  final Widget mobile;
  final Widget? tablet;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: (context.isLandscape || !context.isPhone)
          ? (tablet ?? mobile)
          : mobile,
    );
    // return LayoutBuilder(builder: (context, dimension) {
    //   if (dimension.maxWidth < Constants.kTabletBreakpoint) {
    //     return mobile;
    //   } else {
    //     return tablet ?? mobile;
    //   }
    // });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return LayoutBuilder(builder: (context, dimension) {
  //     return OrientationBuilder(builder: (context, orientation) {
  //       if (dimension.maxWidth < Constants.kTabletBreakpoint) {
  //         if (orientation == Orientation.portrait) {
  //           return mobile;
  //         } else {
  //           return tablet ?? mobile;
  //         }
  //       } else {
  //         return tablet ?? mobile;
  //       }
  //     });
  //   });
  // }
}
