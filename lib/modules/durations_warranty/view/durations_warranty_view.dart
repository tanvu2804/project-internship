import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_string.dart';

import '../../../constants/app_colors.dart';
import '../../../routes/app_routes.dart';

class DurationsWarranty extends StatelessWidget {
  const DurationsWarranty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColors.purplePink,
              ),
            ),
            shadowColor: Colors.transparent,
            backgroundColor: AppColors.white,
            centerTitle: true,
            title: Text(
              HomeString.DURATIONS_WARRANTY,
              style: TextStyle(
                color: AppColors.purplePink,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      WarrantyStatusString.DEVICE_SERIAL_NUMBER,
                      style: TextStyle(
                        color: AppColors.grayLight,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Routes.DEVICES_SCAN);
                      },
                      style: ElevatedButton.styleFrom(
                          primary: AppColors.bluePurple),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 4,
                          right: 4,
                        ),
                        child: Text(
                          WarrantyStatusString.BTN_SCAN,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    hintText: ReportFaultyString.SERIAL_NUMBER_TITLE,
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: AppColors.grayLight,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.grayLight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.grayLight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
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
