import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_colors.dart';
import 'package:pdfx/pdfx.dart';

class ageLumi extends StatefulWidget {
  const ageLumi({Key? key}) : super(key: key);
  @override
  State<ageLumi> createState() => _ageLumiState();

}

class _ageLumiState extends State<ageLumi> {
  final pdfController = PdfController(
    document: PdfDocument.openAsset('assets/images/others/agelumi.pdf'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent.withOpacity(0.0),
        elevation: 0,
        title: Text('Conditions Warranty'),
        titleTextStyle: TextStyle(
          color: AppColors.purplePink,
          fontSize: 20.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          padding: EdgeInsets.only(left: 10.0),
          icon: Icon(Icons.chevron_left),
          iconSize: 40.0,
          color: AppColors.purplePink,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: PdfView(
        controller: pdfController,
        scrollDirection: Axis.vertical,
        renderer: (PdfPage page) => page.render(
            width: page.width * 2,
            height: page.height * 2),
      ),
    );
  }
}