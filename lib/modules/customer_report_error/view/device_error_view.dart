import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_colors.dart';
import 'package:project_internship/routes/app_routes.dart';

class DeviceError extends StatefulWidget {
  const DeviceError({Key? key}) : super(key: key);

  @override
  State<DeviceError> createState() => _DeviceErrorState();
}

class _DeviceErrorState extends State<DeviceError> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent.withOpacity(0.0),
        elevation: 0,
        centerTitle: true,
        title: Text('Ecosphere Device Error'),
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
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const DeviceandScan(),
              Padding(padding: EdgeInsets.all(8)),
              const ScanProduct(),
            ],
          ),
        ),
      ),
    );
  }
}


class DeviceandScan extends StatelessWidget {
  const DeviceandScan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Device serial number',
          style: TextStyle(
          color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
          ),
          Padding(padding: EdgeInsets.all(8)),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(Routes.DEVICES_SCAN);
            },
            child: Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                  color: AppColors.bluePurple,
                borderRadius: BorderRadius.all(Radius.circular(3)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    offset: Offset(0,2)
                  )
                ]
              ),
              child: Text('SCAN',
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.7,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
            ),
          )
         ]
      ),
    );
  }
}
class ScanProduct extends StatelessWidget {
  const ScanProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(3)),
        border: Border.all(color: Colors.grey),
      ),
      child: TextFormField(
        textAlign: TextAlign.start,
        cursorColor: Colors.blue,
        keyboardType: TextInputType.text,
        style: TextStyle(
          height: 2,
          color: Colors.black,
          fontSize: 16,
        ),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.0, color: Colors.white)),
          hintText: "Scan product barcode",
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
