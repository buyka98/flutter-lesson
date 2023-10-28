import 'dart:math';

import 'package:flutter/material.dart';

double getWidth(BuildContext context, dynamic value) {
  return MediaQuery.of(context).size.width * value / 100;
}

double getHeight(BuildContext context, dynamic value) {
  return MediaQuery.of(context).size.height * value / 100;
}

double fontSize(BuildContext context, double size) {
  var shortDimension = MediaQuery.of(context).size.width < MediaQuery.of(context).size.height
      ? MediaQuery.of(context).size.width
      : MediaQuery.of(context).size.height;

  var tempLongDimension = (16 / 9) * shortDimension;
  return sqrt(pow(tempLongDimension, 2) + pow(shortDimension, 2)) * (size / 100);
}

double getSize(BuildContext context, dynamic value) {
  double width = MediaQuery.of(context).size.width;

  return value * width / 375;
}
