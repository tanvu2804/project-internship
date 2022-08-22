import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_colors.dart';
import 'package:project_internship/routes/app_routes.dart';


class Galvanic extends StatefulWidget {
  const Galvanic({Key? key}) : super(key: key);

  @override
  State<Galvanic> createState() => _GalvanicState();
}

class _GalvanicState extends State<Galvanic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent.withOpacity(0.0),
        elevation: 0,
        title: Text('Conditions Warranty'),
        titleTextStyle: TextStyle(
          color: AppColors.purplePink,
          fontSize: 20.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          padding: EdgeInsets.only(left: 10.0),
          icon: Icon(Icons.chevron_left),
          iconSize: 40.0,
          color: AppColors.purplePink,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
