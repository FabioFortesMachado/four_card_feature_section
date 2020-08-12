import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fourcardfeaturesection/model/constants.dart';
import 'package:fourcardfeaturesection/responsive/responsive_size.dart';

class UsableCard extends StatelessWidget {
  final String title;
  final String bodyText;
  final String iconName;
  final Color cardColor;

  UsableCard({this.title, this.bodyText, this.iconName, this.cardColor});

  @override
  Widget build(BuildContext context) {
    var mySize = ResponsiveSize.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: mySize.calculateSize(mobile: 26, desktop: 16),
        horizontal: mySize.calculateSize(mobile: 18, desktop: 18),
      ),
      decoration: BoxDecoration(
        color: veryLightGray,
        // top border
        // If you try to draw only one border with border radius in all sides
        // does not work, gets conflicted. So I learn online that you can use
        // linear gradient to draw a border in one side
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.015, 0.015],
          colors: [cardColor, Colors.white],
        ),
        borderRadius: BorderRadius.circular(
          mySize.calculateSize(mobile: 6, desktop: 3),
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            spreadRadius: -1.0,
            offset: Offset(
              0.0,
              mySize.calculateSize(mobile: 5, desktop: 9),
            ),
            blurRadius: mySize.calculateSize(mobile: 5, desktop: 7),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontSize: mySize.calculateSize(mobile: 16, desktop: 11),
                ),
          ),
          SizedBox(
            height: mySize.calculateSize(mobile: 8, desktop: 4),
          ),
          Text(
            bodyText,
            softWrap: true,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontSize: mySize.calculateSize(mobile: 12, desktop: 7.5),
                  color: grayishBlue,
                  height: 1.8,
                ),
          ),
          SizedBox(
            height: mySize.calculateSize(mobile: 26, desktop: 22),
          ),
          // Without the row the alignment doesn't have effect
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SvgPicture.asset(
                iconName,
                width: mySize.calculateSize(mobile: 50, desktop: 36),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
