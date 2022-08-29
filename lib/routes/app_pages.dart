import 'package:flutter/material.dart';
import 'package:project_internship/modules/conditions_warranty/view/ageloc-boost.dart';
import 'package:project_internship/modules/conditions_warranty/view/ageloc_galvanic_spa.dart';
import 'package:project_internship/modules/conditions_warranty/view/ageloc_lumispa.dart';
import 'package:project_internship/modules/conditions_warranty/view/ageloc_lumispa_accent.dart';
import 'package:project_internship/modules/conditions_warranty/view/ageloc_me.dart';
import 'package:project_internship/modules/conditions_warranty/view/conditions_warranty_view.dart';
import 'package:project_internship/modules/conditions_warranty/view/contact_us.dart';
import 'package:project_internship/modules/conditions_warranty/view/ecos.dart';
import 'package:project_internship/modules/conditions_warranty/view/galvanic_body_spa.dart';
import 'package:project_internship/modules/device_series_scan/view/device_series_scan_view.dart';
import 'package:project_internship/modules/durations_warranty/view/durations_warranty_view.dart';
import 'package:project_internship/modules/home/view/home_view.dart';
import 'package:project_internship/modules/login/view/login_view.dart';
import 'package:project_internship/modules/sign_up/view/sign_up_view.dart';

import '../modules/durations_warranty_status/view/durations_error_scan.dart';
import '../modules/durations_warranty_status/view/durations_lack_information.dart';
import '../modules/durations_warranty_status/view/durations_out_of_warranty.dart';
import '../modules/durations_warranty_status/view/durations_warranty_available.dart';
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
      case Routes.FREQUENTLY_QUESTION:
        return MaterialPageRoute(builder: (_) => FrequentlyQuestions());
      case Routes.DURATIONS:
        return _slidePage(DurationsWarranty());
      case Routes.DURATIONS_AVAILABLE:
        return _slidePage(DurationsWarrantyStatus());
      case Routes.DURATIONS_OUT_OF_WARRANTY:
        return _slidePage(DurationsOutOfWarranty());
      case Routes.DURATIONS_LACK_INFOR:
        return _slidePage(DurationsLackInformation());
      case Routes.DURATIONS_ERROR_SCAN:
        return _slidePage(DurationsError());
      case Routes.DEVICES_SCAN:
        return MaterialPageRoute(builder: (_) => DeviceSeriesScan());
      case Routes.CONDITION_WARRANTY:
        return MaterialPageRoute(builder: (_) => ConditionsWarranty());
      default:
        return null;
    }
  }
}

PageRouteBuilder _slidePage(Widget Page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
