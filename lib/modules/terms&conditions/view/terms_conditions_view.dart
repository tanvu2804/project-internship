import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          color: Color(0xffB23AB3),
          iconSize: 45,
          onPressed: () {},
        ),
        title: Text(
          'Terms & Conditions',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontFamily: 'Roboto',
            color: Color(0xffB23AB3),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
              left: BorderSide(
                color: Colors.grey,
              ),
              right: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text_Bold_Underline_Widget(
                text: 'TERMS & CONDITIONS OF DEVICE WARRANTY',
              ),
              Text_Normal_Widget(
                  text:
                      "Thank you for purchasing a Nu Skin device. This document sets out the terms of the warranty from Nu Skin Enterprise Singapore Pte Ltd('Nu Skin Singapore') in respect of the device purchased."),
              Text_Bold_Underline_Widget(
                text: "LIMITED WARRANTY",
              ),
              Text_Normal_Widget(
                  text:
                      "We provide the following limited warranty in respect of our Nu Skin devices that are purchased in Singapore through a Singapore Nu Skin Brand Affiliate."),
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                ),
              ),
              Text_Normal_Widget(
                text:
                    "In Respect of the following devices, we warrant each device to be free from defects in material and workmanship for a period of one (1) year form the date of purchase:",
              ),
              Text_Strike_Through_Widget(text: "ageLOC LumiSpa"),
              Text_Strike_Through_Widget(text: "ageLOC LumiSpa Accent"),
              Text_Strike_Through_Widget(text: "ageLOC Me"),
              Text_Strike_Through_Widget(text: "Galvanic Spa III"),
              Text_Strike_Through_Widget(text: "ageLOC Boost"),
              Text_Strike_Through_Widget(text: "EcoSphere Water Puriflier"),
              Text_Normal_Widget(
                  text:
                      "In respect of the following devices, we warrant each device to be free from defects in material and workmanship a period of two (2) years from the date of purchase:"),
              Text_Strike_Through_Widget(text: "ageLOC Galvanic Spa II"),
              Text_Strike_Through_Widget(text: "ageLOC Galvanic Body Spa*"),
              Text_Strike_Through_Widget(
                  text:
                      "ageLOC LumiSpa (only units purchased from January 2020 onwards)"),
              Text_Italic_Widget(
                  text:
                      "* Includes devices obtain free-of-charge through sales programs that requires specific qualification criteria to be met."),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 1),
                  ),
                  Text(
                    "This Warranty does ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 9,
                      wordSpacing: 0.5,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text(
                    "not",
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      fontSize: 9,
                      fontFamily: 'Roboto',
                      decoration: TextDecoration.underline,
                      decorationThickness: 2.0,
                      wordSpacing: 1.0,
                    ),
                  ),
                  Text(
                    " cover:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 9,
                      wordSpacing: 0.5,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
              Text_Strike_Through_Widget(
                  text:
                      "Damage to the product as a result of misuse or accident, including dropping the device;"),
              Text_Strike_Through_Widget(
                  text: "Cosmetic imperfections in the device;"),
              Text_Strike_Through_Widget(
                  text:
                      "Functional imperfections that do not affect the function of the device;"),
              Text_Strike_Through_Widget(
                  text:
                      "Devices that have been tampered with, modifed or altered in any way or manner by anyone other than Nu Skin Singapore;"),
              Text_Strike_Through_Widget(
                  text:
                      "Devices obtained free-of-charge in any promotional packages; and/or"),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 3),
                  ),
                  Text("-"),
                  SizedBox(width: 10),
                  Text(
                    "Devices ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 9,
                      wordSpacing: 0.5,
                    ),
                  ),
                  Text(
                    "not ",
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      fontSize: 9,
                      fontFamily: 'Roboto',
                      decoration: TextDecoration.underline,
                      decorationThickness: 2.0,
                      wordSpacing: 1.0,
                    ),
                  ),
                  Text(
                    "purchased from Nu Skin Singapore.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 9,
                      wordSpacing: 0.5,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
              Text_Bold_Underline_Widget(text: "Important Notes"),
              Text_Bold_Widget(
                  text:
                      "Nu Skin Singapore does not make satisfaction guarantees, performance guarantees, risk free guarantees or error free guarantees."),
              Text_Normal_Widget(
                  text:
                      "Please keep your original invoice to validate your warranty. In the absence of fraud or  manifest error, Nu Skin's determination as to the remaining period of the warranty, or whether to repair or replace a faulty device covered under this warranty shall be final. For avoidance of doubt, the repairing and replacing of a faulty device will not change, extend or renew the intial warranty period by Nu Skin at the time of purchase."),
              Text_Normal_Widget(
                  text:
                      "Nu Skin Singapore is not obliged to  send any device overseas or obtain parts from overseas to fulfil the terms of this warranty."),
              Text_Normal_Widget(
                  text:
                      "With the exception of the EcoSphere Water Purifiers, Nu Skin Singapore will not service or replace devices that are out-of-warranty. For EcoSphere Water Purifiers that are out-of-warranty, Nu Skin Singapore may impose any neccesary charges on any repair performed.")
            ],
          ),
        ),
      ),
    );
  }
}

class Text_Bold_Widget extends StatelessWidget {
  const Text_Bold_Widget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w900,
          fontSize: 9,
          fontFamily: 'Roboto',
          wordSpacing: 0.5,
        ),
      ),
    );
  }
}

class Text_Italic_Widget extends StatelessWidget {
  const Text_Italic_Widget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 8.5,
          wordSpacing: 0.5,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,
        ),
        // textAlign: TextAlign.,
      ),
    );
  }
}

class Text_Strike_Through_Widget extends StatelessWidget {
  const Text_Strike_Through_Widget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15, top: 3),
        ),
        Text('-'),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 9,
              wordSpacing: 0.5,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ],
    );
  }
}

class Text_Normal_Widget extends StatelessWidget {
  const Text_Normal_Widget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8, bottom: 1),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 9,
          wordSpacing: 0.5,
          fontStyle: FontStyle.normal,
        ),
        // textAlign: TextAlign.,
      ),
    );
  }
}

class Text_Bold_Underline_Widget extends StatelessWidget {
  const Text_Bold_Underline_Widget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w900,
          fontSize: 10,
          fontFamily: 'Roboto',
          decoration: TextDecoration.underline,
          decorationThickness: 2.0,
          wordSpacing: 1.0,
        ),
      ),
    );
  }
}
