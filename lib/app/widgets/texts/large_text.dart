import 'package:car_juggle_photo_app/app/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final double? fontSize;
  final bool isBold;
  final bool hasUnderline;
  final String text;
  final bool isCentered;

  const LargeText(
    this.text, {
    this.fontSize,
    this.isBold = true,
    this.hasUnderline = false,
    this.isCentered = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3!.copyWith(
            fontSize: fontSize != null ? fontSize!.sp : null,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            decoration: hasUnderline ? TextDecoration.underline : null,
          ),
      textAlign: isCentered ? TextAlign.center : null,
    );
  }
}
