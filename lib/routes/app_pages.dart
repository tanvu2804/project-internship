import 'package:flutter/material.dart';
import 'package:project_internship/modules/device_series_scan/view/device_series_scan_view.dart';
import 'package:project_internship/modules/durations_warranty/view/durations_warranty_view.dart';
import 'package:project_internship/modules/durations_warranty_error/view/durations_warranty_status_view.dart';
import 'package:project_internship/modules/home/view/home_view.dart';
import 'package:project_internship/modules/login/view/login_view.dart';
import 'package:project_internship/modules/sign_up/view/sign_up_view.dart';

import '../modules/frequently_questions/view/frequently_questions.dart';
import 'app_routes.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => Login());
      case Routes.LOGIN:
        return MaterialPageRoute(builder: (_) => Login());
      case Routes.SIGN_UP:
        return MaterialPageRoute(builder: (_) => SignUp());
      case Routes.HOME:
        return MaterialPageRoute(builder: (_) => Home());
      case Routes.FREQUENTLY_QUESTION:
        return MaterialPageRoute(builder: (_) => FrequentlyQuestions());
      case Routes.DURATIONS:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              DurationsWarranty(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
      case Routes.DURATIONS_ERROR:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              DurationsWarrantyError(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
      case Routes.DEVICES_SCAN:
        return MaterialPageRoute(builder: (_) => DeviceSeriesScan());
      default:
        return null;
    }
  }
}
