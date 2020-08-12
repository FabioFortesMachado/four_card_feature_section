import 'package:flutter/material.dart';
import 'layout_type.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;

  ResponsiveWidget({this.desktop, this.mobile});

  @override
  Widget build(BuildContext context) {
    var layout = LayoutType.of(context);
    return layout.isLayoutMobile() ? mobile : desktop;
  }
}
