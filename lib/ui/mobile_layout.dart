import 'package:flutter/material.dart';
import 'package:fourcardfeaturesection/responsive/responsive_size.dart';
import 'package:fourcardfeaturesection/model/constants.dart';

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mySize = ResponsiveSize.of(context);

    return ListView(
      padding: EdgeInsets.symmetric(
        vertical: mySize.calculateSize(mobile: 48),
        horizontal: mySize.calculateSize(mobile: 26),
      ),
      children: <Widget>[
        FittedBox(
          child: Text(
            'Reliable, efficient delivery',
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: mySize.calculateSize(mobile: 6),
        ),
        FittedBox(
          child: Text(
            'Powered by Technology',
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: mySize.calculateSize(mobile: 16),
        ),
        Text(
          'Our Artificial Intelligence powered tools use millions of '
          'project data points to ensure that your project is successful',
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: grayishBlue,
                fontSize: mySize.calculateSize(mobile: 13),
              ),
          maxLines: 3,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: mySize.calculateSize(mobile: 60)),
        cards['Supervisor'],
        SizedBox(height: mySize.calculateSize(mobile: 25)),
        cards['Team Builder'],
        SizedBox(height: mySize.calculateSize(mobile: 25)),
        cards['Karma'],
        SizedBox(height: mySize.calculateSize(mobile: 25)),
        cards['Calculator'],
      ],
    );
  }
}
