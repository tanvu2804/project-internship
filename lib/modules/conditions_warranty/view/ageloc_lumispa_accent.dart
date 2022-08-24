import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_colors.dart';
import 'package:pdfx/pdfx.dart';

class AgeLocAccent extends StatefulWidget {
  const AgeLocAccent({Key? key}) : super(key: key);
  @override
  State<AgeLocAccent> createState() => _AgeLocAccentState();

}

class _AgeLocAccentState extends State<AgeLocAccent> {
  final pdfController = PdfController(
    document: PdfDocument.openAsset('assets/images/others/ageaccent.pdf'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent.withOpacity(0.0),
        elevation: 0,
        title: Text('Conditions Warranty'),
        titleTextStyle: TextStyle(
          color: Color(0xFF7123D9),
          fontSize: 20.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          padding: EdgeInsets.only(left: 10.0),
          icon: Icon(Icons.chevron_left),
          iconSize: 40.0,
          color: Color(0xFF7123D9),
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