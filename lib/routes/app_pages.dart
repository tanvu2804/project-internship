import 'package:flutter/material.dart';
import 'package:project_internship/modules/login/view/login_view.dart';
import 'package:project_internship/modules/sign_up/view/sign_up_view.dart';

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
      default:
        return null;
    }
  }
}
