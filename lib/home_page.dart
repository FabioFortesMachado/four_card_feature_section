import 'package:flutter/material.dart';
import 'package:fourcardfeaturesection/responsive/responsive_size.dart';
import 'package:fourcardfeaturesection/responsive/responsive_widget.dart';
import 'package:fourcardfeaturesection/model/utilities.dart';
import 'package:fourcardfeaturesection/ui/mobile_layout.dart';
import 'package:fourcardfeaturesection/ui/desktop_layout.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSize(
      context: context,
      mobileSize: CalculateSize(
        base: 320,
        deviceInfo: MobileSizeInfo(),
      ),
      desktopSize: CalculateSize(
        base: 620,
        deviceInfo: DesktopSizeInfo(),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ResponsiveWidget(
          mobile: MobileLayout(),
          desktop: Center(child: DesktopLayout()),
        ),
      ),
    );
  }
}
