import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_string.dart';

class Status_Warranty_View extends StatefulWidget {
  const Status_Warranty_View({Key? key}) : super(key: key);

  @override
  State<Status_Warranty_View> createState() => _Status_Warranty_ViewState();
}

class _Status_Warranty_ViewState extends State<Status_Warranty_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Color(0xffB23AB3), size: 40),
          onPressed: () {},
        ),
        title: Text(
          "Check The Warranty Status",
          style: TextStyle(
            color: Color(0xffB23AB3),
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            fontStyle: FontStyle.normal,
            // wordSpacing: 0.5,
          ),
        ),
        titleSpacing: -2.0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 0.1, right: 0.1),
        child: SafeArea(
          child: Column(
            children: [
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.grey.shade400),
                      bottom: BorderSide(color: Colors.grey.shade400),
                      left: BorderSide(color: Colors.grey.shade400),
                      right: BorderSide(color: Colors.grey.shade400),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width / 8,
                  alignment: Alignment.centerLeft,
                  // color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      App_String.FILTERDEVICE,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  print('a');
                },
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10, top: 25, bottom: 25, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff7123D9),
                              borderRadius: BorderRadius.circular(5.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(3.5, 3.0),
                                  // spreadRadius: 5.0,
                                  blurRadius: 3.0,
                                ),
                              ],
                            ),
                            padding: EdgeInsets.only(
                              left: 25,
                              right: 25,
                            ),
                            alignment: Alignment.center,
                            height: (MediaQuery.of(context).size.width / 3) / 2,
                            width: MediaQuery.of(context).size.width / 2.4,
                            // color: Color(0xff7123D9),
                            child: Text(
                              App_String.Scan,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                          onTap: () {
                            print('d');
                          },
                        ),
                        InkWell(
                          // borderRadius: BorderRadius.circular(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff7123D9),
                              borderRadius: BorderRadius.circular(5.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(3.5, 3.0),
                                  // spreadRadius: 5.0,
                                  blurRadius: 3.0,
                                ),
                              ],
                            ),
                            padding: EdgeInsets.only(left: 20, right: 15),
                            height: (MediaQuery.of(context).size.width / 3) / 2,
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              App_String.Enter,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            // decoration: BoxDecoration(
                            //   border: Border.all(color: Colors.red),
                            //   borderRadius: BorderRadius.circular(5.0),
                            // ),
                          ),
                          onTap: () {
                            print('c');
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                    ),
                    Text('asdasdad'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
