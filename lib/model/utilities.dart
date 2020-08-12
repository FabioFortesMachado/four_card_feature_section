import 'package:flutter/widgets.dart';
import 'package:fourcardfeaturesection/model/constants.dart';

class CalculateSize implements SizeInfo {
  final double base;
  SizeInfo deviceInfo;

  CalculateSize({this.base, this.deviceInfo});

  double getLayoutSize(BuildContext context) {
    return deviceInfo.getLayoutSize(context);
  }

  double calculate(double value, BuildContext context) {
    return value / base * getLayoutSize(context);
  }
}

abstract class SizeInfo {
  double getLayoutSize(BuildContext context);
}

class MobileSizeInfo implements SizeInfo {
  double getLayoutSize(BuildContext context) {
    return MediaQuery.of(context).size.shortestSide;
  }
}

class DesktopSizeInfo implements SizeInfo {
  double getLayoutSize(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    var deviceLongestSide = MediaQuery.of(context).size.longestSide;
    var deviceShortestSide = MediaQuery.of(context).size.shortestSide;

    var containerWidth = orientation == Orientation.portrait
        ? deviceShortestSide - 40
        : (deviceShortestSide - 60) * desktopAspectRatio;

    if (containerWidth > deviceLongestSide) {
      containerWidth = deviceLongestSide - 40;
    }
    return containerWidth;
  }
}
