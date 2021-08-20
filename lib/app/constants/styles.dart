import 'package:flutter/material.dart';

BoxDecoration nMbox = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: Colors.grey,
  boxShadow: [
    BoxShadow(
      color: Colors.red,
      offset: Offset(10, 10),
      blurRadius: 10,
    ),
    BoxShadow(
      color: Colors.blue,
      offset: Offset(-10, -10),
      blurRadius: 10,
    ),
  ],
);

BoxDecoration nMboxCategoryOff = BoxDecoration(
  shape: BoxShape.circle,
  color: Colors.grey,
  boxShadow: [
    BoxShadow(
      color: Colors.red,
      offset: Offset(10, 10),
      blurRadius: 10,
    ),
    BoxShadow(
      color: Colors.blue,
      offset: Offset(-10, -10),
      blurRadius: 10,
    ),
  ],
);

BoxDecoration nMboxCategoryOn = BoxDecoration(
  shape: BoxShape.circle,
  color: Colors.red,
  boxShadow: [
    BoxShadow(
        color: Colors.blue,
        offset: Offset(3, 3),
        blurRadius: 3,
        spreadRadius: -3),
  ],
);

BoxDecoration nMboxInvert = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.red,
    boxShadow: [
      BoxShadow(
          color: Colors.blue,
          offset: Offset(3, 3),
          blurRadius: 3,
          spreadRadius: -3),
    ]);

BoxDecoration nMboxInvertActive = nMboxInvert.copyWith(
  color: Colors.red.shade200,
);

BoxDecoration nMbtn = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: Colors.grey,
  boxShadow: [
    BoxShadow(
      color: Colors.red,
      offset: Offset(2, 2),
      blurRadius: 2,
    )
  ],
);
