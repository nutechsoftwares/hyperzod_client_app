import 'package:flutter/material.dart';
import 'package:hyperzod_client_app/views/delivery_address.dart';
import 'package:hyperzod_client_app/views/login.dart';
import 'package:hyperzod_client_app/views/splash.dart';
import 'package:hyperzod_client_app/views/tabs.dart';
import 'package:hyperzod_client_app/views/verify_otp.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "splash":
        return MaterialPageRoute(builder: (_) => Splash());
      case "login":
        return MaterialPageRoute(builder: (_) => Login());
      case "otp":
        return MaterialPageRoute(builder: (_) => VerifyOtp());
      case "delivery":
        return MaterialPageRoute(builder: (_) => DeliveryAddress());
      case "tabs":
        return MaterialPageRoute(builder: (_) => TabsStyle());

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
