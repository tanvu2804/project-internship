import 'package:flutter/material.dart';
import 'package:project_internship/modules/terms&conditions/view/terms_conditions_view.dart';
import 'package:project_internship/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRoutes = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TermsConditions(),
      // onGenerateRoute: _appRoutes.onGenerateRoute,
    );
  }
}
