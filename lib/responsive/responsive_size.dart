import 'package:flutter/material.dart';
import 'package:fourcardfeaturesection/model/utilities.dart';
import 'package:fourcardfeaturesection/responsive/layout_type.dart';

class ResponsiveSize extends InheritedWidget implements SizeInfo {
  final BuildContext context;
  final CalculateSize mobileSize;
  final CalculateSize desktopSize;

  ResponsiveSize({
    this.context,
    this.mobileSize,
    this.desktopSize,
    Widget child,
  }) : super(child: child);

  double calculateSize({double mobile, double desktop}) {
    var layout = LayoutType.of(context);
    return layout.isLayoutMobile()
        ? mobileSize.calculate(mobile, context)
        : desktopSize.calculate(desktop, context);
  }

  double getLayoutSize(BuildContext context) {
    var layout = LayoutType.of(context);
    return layout.isLayoutMobile()
        ? mobileSize.getLayoutSize(context)
        : desktopSize.getLayoutSize(context);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static ResponsiveSize of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ResponsiveSize>();
}
