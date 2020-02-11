import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'dart:io' show Platform;

import './pages/home.dart';
import './pages/pixel_detail.dart';
import './pages/send_pixel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routes = {
      '/': (BuildContext ctx) => Home(),
      '/pixel_detail': (BuildContext ctx) => PixelDetail(),
      '/send_pixel': (BuildContext ctx) => SendPixel()
    };

    if (Platform.isAndroid) {
      return MaterialApp(
          title: 'My Pixels',
          theme: ThemeData(
              primarySwatch: Colors.blue,
          ),
          routes: routes
      );
    } else {
      return CupertinoApp(
          title: 'My Pixels',
          routes: routes,
      );
    }
  }
}
