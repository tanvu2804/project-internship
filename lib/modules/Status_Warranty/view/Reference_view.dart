import 'package:flutter/material.dart';

void Reference_Number_Dialog(
    BuildContext context, GlobalKey<FormState> _FormKey, int number) {
  _FormKey = GlobalKey<FormState>();
  bool check = false;

  void _Submit() {
    if (_FormKey.currentState!.validate()) {
      _FormKey.currentState?.save();
      print(number);
      Navigator.pop(context);
    } else
      print('b');
  }

  showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          // insetPadding: EdgeInsets.only(
          //   left: 50,
          //   right: 50,
          //   top: 200,
          //   bottom: 245,
          // ),
          title: Text('Enter reference number'),
          content: Form(
            key: _FormKey,
            child: TextFormField(
              validator: (value) => value!.isEmpty ? "asd" : null,
              onSaved: (value) {
                number = int.tryParse(value!)!;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 25),
                // Border(
                //   bottom: BorderSide(color:Colors.grey.shade400),
                // ),
              ),
            ),
          ),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('CANCEL'),
            ),
            FlatButton(
              onPressed: () {
                _Submit();
              },
              child: Text("OK"),
            ),
          ],
          contentPadding: EdgeInsets.zero,
        );
      });
}
