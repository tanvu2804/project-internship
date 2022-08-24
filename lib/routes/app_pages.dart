import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_string.dart';
import 'package:project_internship/modules/conditions_warranty/view/ageloc-boost.dart';
import 'package:project_internship/modules/conditions_warranty/view/ageloc_galvanic_spa.dart';
import 'package:project_internship/modules/conditions_warranty/view/ageloc_lumispa.dart';
import 'package:project_internship/modules/conditions_warranty/view/ageloc_lumispa_accent.dart';
import 'package:project_internship/modules/conditions_warranty/view/ageloc_me.dart';
import 'package:project_internship/modules/conditions_warranty/view/conditions_warranty_view.dart';
import 'package:project_internship/modules/conditions_warranty/view/contact_us.dart';
import 'package:project_internship/modules/conditions_warranty/view/ecos.dart';
import 'package:project_internship/modules/conditions_warranty/view/galvanic_body_spa.dart';
import 'package:project_internship/modules/login/view/login_view.dart';
import 'package:project_internship/modules/sign_up/view/sign_up_view.dart';
import 'package:project_internship/modules/home/view/home_view.dart';
import 'package:project_internship/modules/login/view/login_view.dart';
import 'package:project_internship/modules/sign_up/view/sign_up_view.dart';

import '../modules/frequently_questions/view/frequently_questions.dart';
import 'app_routes.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => ConditionsWarranty());
      // case Routes.LOGIN:
      //   return MaterialPageRoute(builder: (_) => Login());
      case Routes.SIGN_UP:
        return MaterialPageRoute(builder: (_) => SignUp());
      case Routes.GAVANIC_BODY_SPA:
        return MaterialPageRoute(builder: (_) => Galvanic());
      case Routes.AGELOC_LUMISPA:
        return MaterialPageRoute(builder: (_) => ageLumi());
      case Routes.AGELOC_BOOST:
        return MaterialPageRoute(builder: (_) => AgeLocBoost());
      case Routes.AGELOC_GALVANIC_SPA:
        return MaterialPageRoute(builder: (_) => ageLocGalvanic());
      case Routes.AGELOC_ME:
        return MaterialPageRoute(builder: (_) => AgeLocMe());
      case Routes.ECOSPHERE_WATER_PURIFIER:
        return MaterialPageRoute(builder: (_) => EcosWater());
      case Routes.AGELOC_LUMISPA_ACCENT:
        return MaterialPageRoute(builder: (_) => AgeLocAccent());
      case Routes.CONTACT_US:
        return MaterialPageRoute(builder: (_) => ContactUs());
      case Routes.HOME:
        return MaterialPageRoute(builder: (_) => Home());
      case Routes.FREQUENTLYQUESTION:
        return MaterialPageRoute(builder: (_) => FrequentlyQuestions());
      default:
        return null;
    }
  }
}
