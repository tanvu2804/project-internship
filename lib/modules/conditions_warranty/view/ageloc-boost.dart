import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_colors.dart';
class AgeLocBoost extends StatefulWidget {
  const AgeLocBoost({Key? key}) : super(key: key);

  @override
  State<AgeLocBoost> createState() => _AgeLocBoostState();
}

class _AgeLocBoostState extends State<AgeLocBoost> {
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
