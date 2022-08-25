import 'package:flutter/material.dart';
import 'package:project_internship/modules/Status_Warranty/view/Check_Status_Warranty_view.dart';
import 'package:project_internship/modules/Status_Warranty/view/Filter_Device_view.dart';
import 'package:project_internship/modules/home/view/home_view.dart';
import 'package:project_internship/modules/login/view/login_view.dart';
import 'package:project_internship/modules/sign_up/view/sign_up_view.dart';

import '../modules/frequently_questions/view/frequently_questions.dart';
import 'app_routes.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => Filter_Device());
      case Routes.LOGIN:
        return MaterialPageRoute(builder: (_) => Login());
      case Routes.SIGN_UP:
        return MaterialPageRoute(builder: (_) => SignUp());
      case Routes.HOME:
        return MaterialPageRoute(builder: (_) => Home());
      case Routes.FREQUENTLYQUESTION:
        return MaterialPageRoute(builder: (_) => FrequentlyQuestions());
      case Routes.CHECK:
        return MaterialPageRoute(builder: (_) => Status_Warranty_View());
      case Routes.FILTER:
        return MaterialPageRoute(builder: (_) => Filter_Device());
      default:
        return null;
    }
  }
}
