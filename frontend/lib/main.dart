import 'package:flutter/material.dart';
import 'package:frontend/phone/pLogin.dart';
import 'package:frontend/potraitTablet/ptLogin.dart';
import 'package:frontend/responsive.dart';
import 'package:frontend/smallTablet/stLogin.dart';
import 'package:frontend/tablet/tLogin.dart';

import 'bigDesktop/bdLogin.dart';
import 'desktop/dLogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: responsiveLayout(
            phoneBody: pLoginPage(),
            smallTabletBody: stLoginPage(),
            portraitTabletBody: ptLoginPage(),
            tabletBody: tLoginPage(),
            desktopBody: dLoginPage(),
            bigDesktopBody: bdLoginPage()));
  }
}
