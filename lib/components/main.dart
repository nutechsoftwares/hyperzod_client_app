import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbar_text_color/flutter_statusbar_text_color.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import '../helpers/constants.dart';
import '../routes.dart';

class MainComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: KLightTheme,
      initialRoute: 'splash',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
