import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_colors.dart';
import 'package:project_internship/constants/app_images.dart';
import 'package:project_internship/constants/app_string.dart';

import '../../../routes/app_routes.dart';

class LeftDrawerWidget extends StatelessWidget {
  const LeftDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                AppImages.ic_user_circle,
                scale: 1.3,
              ),
            ),
            accountName: Container(),
            accountEmail: Text('useraccount@gmail.com'),
            decoration: BoxDecoration(
              color: AppColors.purplePink,
              image: DecorationImage(
                image: AssetImage(AppImages.logo_nuskin_right),
                alignment: Alignment.centerRight,
              ),
            ),
          ),
          //Technical assistance
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: AppColors.bluePurple,
            child: ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 16, right: 4, top: 2, bottom: 2),
              horizontalTitleGap: 15,
              leading: Image.asset(
                AppImages.ic_bell_drawer,
                scale: 1.3,
              ),
              title: Text(
                LoginString.TECHNICAL,
                textAlign: TextAlign.left,
                style: TextStyle(color: AppColors.white, fontSize: 20),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //Frequently asked
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: AppColors.bluePurple,
            child: ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 16, right: 4, top: 2, bottom: 2),
              horizontalTitleGap: 15,
              leading: Image.asset(
                AppImages.ic_question,
                scale: 1.3,
              ),
              title: Text(
                LoginString.FREQUENTLY_LOWERCASE,
                textAlign: TextAlign.left,
                style: TextStyle(color: AppColors.white, fontSize: 20),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //Close app
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: AppColors.bluePurple,
            child: ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 16, right: 4, top: 2, bottom: 2),
              horizontalTitleGap: 15,
              leading: Image.asset(
                AppImages.ic_times,
                scale: 1.3,
              ),
              title: Text(
                CommonString.CLOSE,
                textAlign: TextAlign.left,
                style: TextStyle(color: AppColors.white, fontSize: 20),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //Signout
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: AppColors.bluePurple,
            child: ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 16, right: 4, top: 2, bottom: 2),
              horizontalTitleGap: 15,
              leading: Image.asset(
                AppImages.ic_signoutalt,
                scale: 1.3,
              ),
              title: Text(
                CommonString.SIGN_OUT,
                textAlign: TextAlign.left,
                style: TextStyle(color: AppColors.white, fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.LOGIN);
              },
            ),
          ),
        ],
      ),
    );
  }
}
