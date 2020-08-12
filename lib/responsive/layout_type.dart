import 'package:flutter/material.dart';
import 'package:fourcardfeaturesection/model/utilities.dart';

enum Layout { mobileLayout, desktopLayout }

const String desktopPortraitBreakpoint = 'desktopPortraitBreakpoint';
const String desktopLandscapeBreakpoint = 'desktopLandscapeBreakpoint';

// Change Layout at breakpoint
class LayoutType extends InheritedWidget {
  LayoutType({
    this.context,
    this.breakpoint,
    this.info,
    Widget child,
  }) : super(child: child);

  final BuildContext context;
  final double breakpoint;
  final SizeInfo info;

  Layout layoutTypeOf() {
    final width = info.getLayoutSize(context);
    return width > breakpoint ? Layout.desktopLayout : Layout.mobileLayout;
  }

  bool isLayoutMobile() => layoutTypeOf() == Layout.mobileLayout;

  bool isLayoutDesktop() => layoutTypeOf() == Layout.desktopLayout;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static LayoutType of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<LayoutType>();
}
