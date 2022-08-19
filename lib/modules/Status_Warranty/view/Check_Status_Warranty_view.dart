import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_colors.dart';
import 'package:project_internship/constants/app_string.dart';

class Status_Warranty_View extends StatefulWidget {
  const Status_Warranty_View({Key? key}) : super(key: key);

  @override
  State<Status_Warranty_View> createState() => _Status_Warranty_ViewState();
}

class _Status_Warranty_ViewState extends State<Status_Warranty_View> {
  var GetData;

  // File data = new File();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var getData = [
      {
        "error": 0,
        "data": [
          {
            "id": "7084",
            "serries": "9M4R114A0020205",
            "product": "ageLOC LumiSpa",
            "status": "153",
          },
          {
            "id": "7083",
            "serries": "0M1R214A0011224",
            "product": "ageLOC LumiSpa",
            "status": "153",
          },
          {
            "id": "7082",
            "serries": "/00001703/9L102572",
            "product": "EcoSphere Water Purifier",
            "status": "151",
          },
          {
            "id": "7081",
            "serries": "/00001703/1A100203",
            "product": "EcoSphere Water Purifier",
            "status": "153",
          },
          {
            "id": "7084",
            "serries": "9M4R114A0020205",
            "product": "ageLOC LumiSpa",
            "status": "153",
          },
          {
            "id": "7083",
            "serries": "0M1R214A0011224",
            "product": "ageLOC LumiSpa",
            "status": "153",
          },
          {
            "id": "7082",
            "serries": "/00001703/9L102572",
            "product": "EcoSphere Water Purifier",
            "status": "151",
          },
          {
            "id": "7081",
            "serries": "/00001703/1A100203",
            "product": "EcoSphere Water Purifier",
            "status": "153",
          },
          {
            "id": "7079",
            "serries": "0J1R214A0011984",
            "product": "ageLOC LumiSpa",
            "status": "151",
          },
        ]
      },
      {"id:3"}
    ];
    GetData = getData;

    print('a');
  }

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
                        fontSize: 15,
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
                    EdgeInsets.only(left: 10, top: 16, bottom: 25, right: 10),
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
                                fontSize: 15,
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
                            padding: EdgeInsets.only(left: 15, right: 15),
                            height: (MediaQuery.of(context).size.width / 3) / 2,
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              App_String.Enter,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
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
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Your device list',
                      style: TextStyle(
                        color: Color(0xff858585),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color(0xff858585),
                          ),
                          top: BorderSide(
                            width: 1,
                            color: Color(0xff858585),
                          ),
                          left: BorderSide(
                            width: 1,
                            color: Color(0xff858585),
                          ),
                          right: BorderSide(
                            width: 1,
                            color: Color(0xff858585),
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row_Title_Warranty_Status(
                                string: App_String.REFERENCE,
                              ),
                              Row_Title_Warranty_Status(
                                string: App_String.SERIAL,
                              ),
                              Row_Title_Warranty_Status(
                                string: App_String.DEVICE,
                              ),
                              Row_Title_Warranty_Status(
                                string: App_String.STATUS,
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.15,
                            color: Color(0xff858585),
                          ),
                          fill_in_Data(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xff7123D9),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(3.5, 3.0),
                            // spreadRadius: 5.0,
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 8,
                      child: InkWell(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'EXIT',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          setState(() {
                            print(GetData[0]["data"][0]["id"]);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //print(GetData[0]["data"][0]["id"]);

  Widget fill_in_Data() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            8,
            (int index) {
              Padding(padding: EdgeInsets.all(15.0));
              return All_Data_Table(index);
            },
          ),
        ),
      ),
    );
  }

  Widget All_Data_Table(int index) {
    return Column(
      children: [
        Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Fill_In_Table_id(index),
            Fill_In_Table_serries(index),
            Fill_In_Table_device(index),
            Fill_In_Table_status(index),
          ],
        ),
        Divider(
          color: AppColors.gray,
        )
      ],
    );
  }

  Widget Fill_In_Table_id(int index) {
    return Container(
        child: Text(
          (GetData[0]["data"][index]["id"]),
          style: TextStyle(
            color: Color(0xff858585),
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        width: 70);
  }

  Widget Fill_In_Table_serries(int index) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
          child: Text(
            (GetData[0]["data"][index]["serries"]),
            style: TextStyle(
              color: Color(0xff858585),
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          width: 70),
    );
  }

  Widget Fill_In_Table_device(int index) {
    return SizedBox(
        child: Text(
          (GetData[0]["data"][index]["product"]),
          style: TextStyle(
            color: Color(0xff858585),
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        width: 70);
  }

  Widget Fill_In_Table_status(int index) {
    return SizedBox(
        child: Text(
          (GetData[0]["data"][index]["status"]),
          style: TextStyle(
            color: Color(0xff858585),
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        width: 70);
  }
}

class Row_Title_Warranty_Status extends StatelessWidget {
  const Row_Title_Warranty_Status({
    Key? key,
    required this.string,
  }) : super(key: key);
  final String string;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Text(
          this.string,
          style: TextStyle(
            color: Color(0xff858585),
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        width: 70);
  }
}
