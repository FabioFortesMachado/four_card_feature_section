import 'package:flutter/material.dart';
import 'package:fourcardfeaturesection/model/constants.dart';
import 'package:fourcardfeaturesection/responsive/responsive_size.dart';

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mySize = ResponsiveSize.of(context);
    var containerWidth = mySize.getLayoutSize(context);

    return Container(
      width: containerWidth,
      height: containerWidth * desktopInvertedAspectRatio,
      child: OverflowBox(
        maxHeight: containerWidth * desktopInvertedAspectRatio * 1.05,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Reliable, efficient delivery',
              style: Theme.of(context).textTheme.headline5.copyWith(
                    fontSize: mySize.calculateSize(desktop: 21),
                  ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Powered by Technology',
              style: Theme.of(context).textTheme.headline6.copyWith(
                    fontSize: mySize.calculateSize(desktop: 21),
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: mySize.calculateSize(desktop: 8),
            ),
            SizedBox(
              width: mySize.calculateSize(desktop: 308),
              child: Text(
                'Our Artificial Intelligence powered tools use millions of '
                'project data points to ensure that your project is successful',
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: grayishBlue,
                    fontSize: mySize.calculateSize(desktop: 9),
                    height: 1.6),
                maxLines: 3,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
            SizedBox(
              height: mySize.calculateSize(desktop: 36),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(child: cards['Supervisor']),
                SizedBox(
                  width: mySize.calculateSize(desktop: 16),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      cards['Team Builder'],
                      SizedBox(
                        height: mySize.calculateSize(desktop: 16),
                      ),
                      cards['Karma'],
                    ],
                  ),
                ),
                SizedBox(
                  width: mySize.calculateSize(desktop: 16),
                ),
                Expanded(child: cards['Calculator']),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
