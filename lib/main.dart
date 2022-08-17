import 'package:flutter/material.dart';
import 'package:project_internship/modules/Status_Warranty/view/Check_Status_Warranty_view.dart';
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
      theme: ThemeData(),
      // onGenerateRoute: _appRoutes.onGenerateRoute,
      home: Status_Warranty_View(),
    );
  }
}
