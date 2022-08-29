import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:project_internship/Data/ProductDataModel.dart';
import 'package:project_internship/constants/app_string.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';
import '../../../routes/app_routes.dart';

class DurationsWarrantyStatus extends StatelessWidget {
  const DurationsWarrantyStatus({Key? key}) : super(key: key);
  Future<List<ProductDataModel>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('jsonfile/productlist.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => ProductDataModel.fromJSON(e)).toList();
  }

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
                Navigator.of(context).pushNamed(Routes.HOME);
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
          body: DurationsWarrantyDetail(),
          // body: FutureBuilder(
          //   future: ReadJsonData(),
          //   builder: (context, data) {
          //     if (data.hasData) {
          //       var items = data.data as List<ProductDataModel>;
          //       return DurationsWarrantyDetail(
          //         items: items,
          //       );
          //     } else
          //       return ErrorScanDeviceSeries();
          //   },
          // ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.bluePurple,
                  shadowColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.HOME);
                },
                child: Text(
                  WarrantyStatusString.BTN_EXIT,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DurationsWarrantyDetail extends StatelessWidget {
  const DurationsWarrantyDetail({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.DEVICES_SCAN);
                },
                style: ElevatedButton.styleFrom(primary: AppColors.bluePurple),
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
            height: 10,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              left: 8,
              right: 8,
              top: 16,
              bottom: 12,
            ),
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(
                color: AppColors.grayLight,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      WarrantyStatusString.DETAIL_DEVICE_SERIAL,
                      style: TextStyle(
                        color: AppColors.grayLight,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'items[1].id.toString()',
                      style: TextStyle(
                        color: AppColors.bluePurple,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      WarrantyStatusString.DETAIL_DEVICE_NAME,
                      style: TextStyle(
                        color: AppColors.grayLight,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'asdasdad',
                      style: TextStyle(
                        color: AppColors.bluePurple,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      WarrantyStatusString.DETAIL_DATE_OF_PURCHASE,
                      style: TextStyle(
                        color: AppColors.grayLight,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'asdasdad',
                      style: TextStyle(
                        color: AppColors.bluePurple,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      WarrantyStatusString.DETAIL_ORDER_NUMBER,
                      style: TextStyle(
                        color: AppColors.grayLight,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'asdasdad',
                      style: TextStyle(
                        color: AppColors.bluePurple,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      WarrantyStatusString.DETAIL_CONTACT_SELLER,
                      style: TextStyle(
                        color: AppColors.grayLight,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'asdasdad',
                      style: TextStyle(
                        color: AppColors.bluePurple,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      WarrantyStatusString.DETAIL_DURATIONS_WARRANTY,
                      style: TextStyle(
                        color: AppColors.grayLight,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'asdasdad',
                      style: TextStyle(
                        color: AppColors.bluePurple,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              left: 8,
              right: 8,
              top: 16,
              bottom: 12,
            ),
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(
                color: AppColors.grayLight,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      WarrantyStatusString.DETAIL_REMAINING_WARRANTY,
                      style: TextStyle(
                        color: AppColors.grayLight,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '280 days',
                      style: TextStyle(
                        color: AppColors.bluePurple,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ErrorScanDeviceSeries extends StatelessWidget {
  const ErrorScanDeviceSeries({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                style: ElevatedButton.styleFrom(primary: AppColors.bluePurple),
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
            height: 10,
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
          SizedBox(
            height: 20,
          ),
          Text(
            WarrantyStatusString.ERROR_TITLE,
            style: TextStyle(
              color: AppColors.grayLight,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              left: 8,
              right: 8,
              top: 16,
              bottom: 12,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.grayLight,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  WarrantyStatusString.ERROR_1,
                  style: TextStyle(
                    color: AppColors.grayLight,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  WarrantyStatusString.ERROR_2,
                  style: TextStyle(
                    color: AppColors.grayLight,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  WarrantyStatusString.ERROR_CONTACT,
                  style: TextStyle(
                    color: AppColors.grayLight,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      AppImages.ic_phone_purple,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      WarrantyStatusString.ERROR_CONTACT_HOTLINE,
                      style: TextStyle(
                        color: AppColors.bluePurple,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      AppImages.ic_envelope_purple,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      WarrantyStatusString.ERROR_CONTACT_EMAIL,
                      style: TextStyle(
                        color: AppColors.bluePurple,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
