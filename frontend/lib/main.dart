import 'package:flutter/material.dart';
import './phone/pLogin.dart';
import './potraitTablet/ptLogin.dart';
import './responsive.dart';
import './tablet/tLogin.dart';
import './desktop/dLogin.dart';

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
            portraitTabletBody: ptLoginPage(),
            tabletBody: tLoginPage(),
            desktopBody: dLoginPage()));
  }
}
