import 'package:flutter/material.dart';

class responsiveLayout extends StatelessWidget {
  /*
    320px  phone
    481px  small tablet
    641px  portrait tablets
    961px  tablet
    1025px  desktop
    1281px  bigDesktop
  */
  final Widget phoneBody;
  final Widget portraitTabletBody;
  final Widget tabletBody;
  final Widget desktopBody;
  final Widget bigDesktopBody;

  responsiveLayout(
      {required this.phoneBody,
      required this.portraitTabletBody,
      required this.tabletBody,
      required this.desktopBody,
      required this.bigDesktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 481) {
        // phone
        return phoneBody;
      } else if (constraints.maxWidth <= 641) {
        // potrait tablet
        return portraitTabletBody;
      } else if (constraints.maxWidth <= 961) {
        // tablet
        return tabletBody;
      } else if (constraints.maxWidth <= 1025) {
        // desktop
        return desktopBody;
      } else {
        // big
        return bigDesktopBody;
      }
    });
  }
}
