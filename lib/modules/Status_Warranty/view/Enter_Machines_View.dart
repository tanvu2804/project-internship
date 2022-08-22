import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_internship/modules/Status_Warranty/view/Reference_view.dart';
import 'package:project_internship/modules/Status_Warranty/view/Serial_view.dart';

void Show_Dialog_Alert_Enter(BuildContext context,
    GlobalKey<FormState> _FormKey, int index, String string) {
  _FormKey = GlobalKey<FormState>();

  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 8, right: 16, bottom: 16),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Serial_Number_Dialog(context, _FormKey, string);
                },
                child: Text(
                  'Enter serial number',
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      fontSize: 15),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 8, right: 16, bottom: 8),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Reference_Number_Dialog(context, _FormKey, index);
                },
                child: Text(
                  'Enter reference number',
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
      actions: [
        Container(
          width: 70,
          height: 40,
          child: Center(
            child: InkWell(
              onTap: () {
                print('success');
              },
              child: Text(
                'CANCEL',
                style: TextStyle(
                    color: Colors.blueAccent, fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ),
      ],
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.only(
        left: 50,
        right: 50,
        top: 200,
        bottom: 245,
      ),
      alignment: Alignment.centerLeft,
      scrollable: true,
      titlePadding: EdgeInsets.only(left: 5, top: 5),
    ),
  );
}
