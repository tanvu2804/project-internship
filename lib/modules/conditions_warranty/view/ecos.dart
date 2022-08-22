import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_colors.dart';
class EcosWater extends StatefulWidget {
  const EcosWater({Key? key}) : super(key: key);

  @override
  State<EcosWater> createState() => _EcosWater();
}

class _EcosWater extends State<EcosWater> {
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
