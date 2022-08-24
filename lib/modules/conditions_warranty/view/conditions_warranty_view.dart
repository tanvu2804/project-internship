import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_colors.dart';
import 'package:project_internship/routes/app_routes.dart';

class ConditionsWarranty extends StatefulWidget {
  const ConditionsWarranty({Key? key}) : super(key: key);

  @override
  State<ConditionsWarranty> createState() => _ConditionsWarrantyState();
}

class _ConditionsWarrantyState extends State<ConditionsWarranty> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent.withOpacity(0.0),
        elevation: 0,
        title: Text('Conditions Warranty'),
        titleTextStyle: TextStyle(
          color: Color(0xFF7123D9),
          fontSize: 20.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          padding: EdgeInsets.only(left: 10.0),
          icon: Icon(Icons.chevron_left),
          iconSize: 40.0,
          color: Color(0xFF7123D9),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 2, bottom: 2),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.GAVANIC_BODY_SPA);
                  },
                  child: Text('Galvanic Body Spa'),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 2),
                      fixedSize: Size(340, 5),
                      textStyle: TextStyle(fontSize: 15),
                      primary: Colors.white,
                      onPrimary: Colors.black54,
                      elevation: 3,
                      shadowColor: Colors.grey,
                      side: BorderSide(color: Colors.black54, width: 1),
                      alignment: Alignment.centerLeft),
                ),
                const ageLocLumi(),
                const ageLocBoost(),
                const ageLocGal(),
                const ageLocMe(),
                const EcoS(),
                const ageLocLu(),
                const Notes(),
                Padding(padding: EdgeInsets.only(top: 100)),
                const Contact(),
              ],
                ),
        ),
      ),
    );
  }
}

class ageLocLumi extends StatelessWidget {
  const ageLocLumi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.AGELOC_LUMISPA);
            },
            child: Text('ageLoc LumiSpa'),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                fixedSize: Size(340, 5),
                textStyle: TextStyle(fontSize: 15),
                primary: Colors.white,
                onPrimary: Colors.black54,
                elevation: 3,
                shadowColor: Colors.grey,
                side: BorderSide(color: Colors.black54, width: 1),
                alignment: Alignment.centerLeft),
          ),
        ]);
  }
}

class ageLocBoost extends StatelessWidget {
  const ageLocBoost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.AGELOC_BOOST);
            },
            child: Text('ageLoc Boost'),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                fixedSize: Size(340, 5),
                textStyle: TextStyle(fontSize: 15),
                primary: Colors.white,
                onPrimary: Colors.black54,
                elevation: 3,
                shadowColor: Colors.grey,
                side: BorderSide(color: Colors.black54, width: 1),
                alignment: Alignment.centerLeft),
          ),
        ]);
  }
}

class ageLocGal extends StatelessWidget {
  const ageLocGal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.AGELOC_GALVANIC_SPA);
            },
            child: Text('ageLoc Galvanic Spa'),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                fixedSize: Size(340, 5),
                textStyle: TextStyle(fontSize: 15),
                primary: Colors.white,
                onPrimary: Colors.black54,
                elevation: 3,
                shadowColor: Colors.grey,
                side: BorderSide(color: Colors.black54, width: 1),
                alignment: Alignment.centerLeft),
          ),
        ]);
  }
}

class ageLocMe extends StatelessWidget {
  const ageLocMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.AGELOC_ME);
            },
            child: Text('ageLoc ME'),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                fixedSize: Size(340, 5),
                textStyle: TextStyle(fontSize: 15),
                primary: Colors.white,
                onPrimary: Colors.black54,
                elevation: 3,
                shadowColor: Colors.grey,
                side: BorderSide(color: Colors.black54, width: 1),
                alignment: Alignment.centerLeft),
          ),
        ]);
  }
}

class EcoS extends StatelessWidget {
  const EcoS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.ECOSPHERE_WATER_PURIFIER);
            },
            child: Text('EcoSphere Water Purifier'),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                fixedSize: Size(340, 5),
                textStyle: TextStyle(fontSize: 15),
                primary: Colors.white,
                onPrimary: Colors.black54,
                elevation: 3,
                shadowColor: Colors.grey,
                side: BorderSide(color: Colors.black54, width: 1),
                alignment: Alignment.centerLeft),
          ),
        ]);
  }
}

class ageLocLu extends StatelessWidget {
  const ageLocLu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.AGELOC_LUMISPA_ACCENT);
            },
            child: Text('ageLoc Lumispa Accent'),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                fixedSize: Size(340, 5),
                textStyle: TextStyle(fontSize: 15),
                primary: Colors.white,
                onPrimary: Colors.black54,
                elevation: 3,
                shadowColor: Colors.grey,
                side: BorderSide(color: Colors.black54, width: 1),
                alignment: Alignment.centerLeft),
          ),
        ]);
  }
}

class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 70,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: AppColors.bluePurple,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'General Notes',
            style: TextStyle(fontSize: 18,
            color: Colors.white),
          ),
          Row(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
          Icon(Icons.info,
          size: 12,
          color: Colors.white,),
            SizedBox(width: 5),
        ],
      ),
              Flexible(
                child: Text('For self troubleshoot please refers to user guide in the each product tab. Please contact us for further infomation.',
                  style: TextStyle(
                  fontSize: 10,
                    color: Colors.white,
                ),
                ),
              ),
      ],
      ),
      ],
      ),
    );
  }
}


class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.CONTACT_US);
            },
            child: Text('CONTACT US'),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                fixedSize: Size(340, 5),
                textStyle: TextStyle(fontSize: 15,
                fontWeight: FontWeight.bold),
                primary: Color(0xFF7123D9),
                onPrimary: Colors.white,
                elevation: 3,
                side: BorderSide(color: Colors.transparent, width: 1),
                alignment: Alignment.center),
          ),
        ]
    );
  }
}
