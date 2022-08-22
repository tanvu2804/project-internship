import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void Show_Dialog_Alert_Enter(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Text('asdasd'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FlatButton(
            onPressed: () {},
            child: Text('Enter the serial number'),
          ),
          FlatButton(
            onPressed: () {},
            child: Text('asdasd'),
          ),
        ],
      ),
      contentPadding: EdgeInsets.all(16.0),
    ),
  );
}
