import 'package:flutter/material.dart';
import 'package:fourcardfeaturesection/home_page.dart';
import 'package:fourcardfeaturesection/model/utilities.dart';
import 'package:fourcardfeaturesection/responsive/layout_type.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Four cards Challenge',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.copyWith(
              headline5: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(
                    fontWeight: FontWeight.w200,
                  )
                  .apply(fontFamily: 'Poppins'),
              headline6: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(
                    fontWeight: FontWeight.w600,
                  )
                  .apply(fontFamily: 'Poppins'),
              bodyText1: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(
                    fontWeight: FontWeight.w400,
                  )
                  .apply(fontFamily: 'Poppins'),
            ),
      ),
      home: LayoutType(
          context: context,
          breakpoint: 496,
          info: DesktopSizeInfo(),
          child: HomePage()),
    );
  }
}
