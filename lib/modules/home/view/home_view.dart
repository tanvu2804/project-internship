import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_internship/constants/app_colors.dart';
import 'package:project_internship/constants/app_images.dart';
import 'package:project_internship/constants/app_string.dart';
import 'package:project_internship/modules/home/widgets/left_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: AppColors.white,
      child: Scaffold(
        key: _key,
        drawer: LeftDrawerWidget(),
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          centerTitle: true,
          shadowColor: AppColors.transparent,
          leading: IconButton(
            onPressed: () {
              _key.currentState?.openDrawer();
            },
            icon: Image.asset(
              AppImages.ic_bars,
              scale: 1.7,
            ),
          ),
          backgroundColor: AppColors.white,
          title: Text(
            'Home',
            style: TextStyle(
                color: AppColors.purplePink,
                fontWeight: FontWeight.w500,
                fontSize: 28),
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            Image.asset(
              AppImages.ic_bell,
              scale: 1.7,
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                //Conditions
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: AppColors.bluePurple,
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(
                        left: 8, right: 8, top: 15, bottom: 15),
                    horizontalTitleGap: 60,
                    leading: Container(
                      height: height / 9,
                      width: width / 6,
                      child: Image.asset(
                        AppImages.ic_file,
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: AppColors.white),
                          ),
                        ),
                        child: Text(
                          HomeString.CONDITIONS_WARRANTY,
                          textAlign: TextAlign.right,
                          style:
                              TextStyle(color: AppColors.white, fontSize: 28),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Status
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: AppColors.bluePurple,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8),
                    horizontalTitleGap: 60,
                    leading: Container(
                      height: height / 9,
                      width: width / 6,
                      child: Image.asset(
                        AppImages.ic_file_alt,
                        scale: 1.5,
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 15, bottom: 15),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: AppColors.white),
                          ),
                        ),
                        child: Text(
                          HomeString.STATUS_WARRANTY,
                          textAlign: TextAlign.right,
                          style:
                              TextStyle(color: AppColors.white, fontSize: 28),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Durations
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: AppColors.bluePurple,
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(
                        left: 8, right: 8, top: 20, bottom: 15),
                    horizontalTitleGap: 60,
                    leading: Container(
                      height: height / 9,
                      width: width / 6,
                      child: Image.asset(
                        AppImages.ic_board,
                      ),
                    ),
                    title: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: AppColors.white),
                        ),
                      ),
                      child: Text(
                        HomeString.DURATIONS_WARRANTY,
                        textAlign: TextAlign.right,
                        style: TextStyle(color: AppColors.white, fontSize: 28),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Reports
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: AppColors.bluePurple,
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(
                        left: 8, right: 8, top: 15, bottom: 15),
                    horizontalTitleGap: 60,
                    leading: Container(
                      height: height / 9,
                      width: width / 6,
                      child: Image.asset(
                        AppImages.ic_user_cong,
                      ),
                    ),
                    title: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: AppColors.white),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 60,
                          ),
                          Flexible(
                            child: Text(
                              HomeString.CUSTOMER_REPORT,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 28),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
