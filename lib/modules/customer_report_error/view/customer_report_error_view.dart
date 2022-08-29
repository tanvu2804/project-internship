import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_images.dart';
import 'package:project_internship/modules/customer_report_error/view/widget.dart';
import 'package:project_internship/routes/app_routes.dart';

import '../../../constants/app_colors.dart';

class CustomerError extends StatefulWidget {
  const CustomerError({Key? key}) : super(key: key);

  @override
  State<CustomerError> createState() => _CustomerErrorState();
}

class _CustomerErrorState extends State<CustomerError> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent.withOpacity(0.0),
          elevation: 0,
          title: Text('Customer report machine error'),
          titleTextStyle: TextStyle(
            color: AppColors.purplePink,
            fontSize: 19,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
          leading: IconButton(
            padding: EdgeInsets.only(left: 10.0),
            icon: Icon(Icons.chevron_left),
            iconSize: 40.0,
            color: AppColors.purplePink,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // CategoryAdapter(
                //   icon: AppImages.ecosphere,
                //   textTitle: "Ecosphere",
                //   textDescription: "Ecosphere Device",
                //   function: () {
                //     Navigator.of(context).pushNamed(Routes.DEVICE_ERROR);
                //   },
                // ),
                const EcosphereDevice(),
                Padding(padding: EdgeInsets.all(8)),
                const LumiSpa(),
                Padding(padding: EdgeInsets.all(8)),
                const AgeBoost(),
                Padding(padding: EdgeInsets.all(8)),
                const GalvanicSpa(),
                Padding(padding: EdgeInsets.all(8)),
                const GalvanicBody(),
                Padding(padding: EdgeInsets.all(8)),
                const AgeMe(),
                Padding(padding: EdgeInsets.all(8)),
                const OtherDevice(),
              ],
            ),
          ),
        ));
  }
}

class EcosphereDevice extends StatelessWidget {
  const EcosphereDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 7,
      width: width / 1,
      decoration: BoxDecoration(
        color: AppColors.bluePurple,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child:InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(Routes.DEVICE_ERROR);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(AppImages.ecosphere),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Text(
                    'Ecosphere Device',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LumiSpa extends StatelessWidget {
  const LumiSpa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 7,
      width: width /1,
      decoration: BoxDecoration(
        color: AppColors.bluePurple,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(AppImages.lumi),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Text(
                    'Lumispa',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class AgeBoost extends StatelessWidget {
  const AgeBoost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 7,
      decoration: BoxDecoration(
        color: AppColors.bluePurple,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(AppImages.agelocboost),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Text(
                    'AgeLoc Boost',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GalvanicSpa extends StatelessWidget {
  const GalvanicSpa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 7,
      decoration: BoxDecoration(
        color: AppColors.bluePurple,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(AppImages.galvanicspa),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Text(
                    'Galvanic Spa',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GalvanicBody extends StatelessWidget {
  const GalvanicBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 7,
      decoration: BoxDecoration(
        color: AppColors.bluePurple,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(AppImages.galvanicbody),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Text(
                    'Galvanic Body',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AgeMe extends StatelessWidget {
  const AgeMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 7,
      decoration: BoxDecoration(
        color: AppColors.bluePurple,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(AppImages.agelocme),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Text(
                    'Ageloc Me',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OtherDevice extends StatelessWidget {
  const OtherDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 7,
      width: width / 1,
      decoration: BoxDecoration(
        color: AppColors.bluePurple,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(AppImages.otherdevice),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Text(
                    'Other Device',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}