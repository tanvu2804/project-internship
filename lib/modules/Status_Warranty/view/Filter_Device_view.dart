import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_images.dart';

class Filter_Device extends StatefulWidget {
  const Filter_Device({Key? key}) : super(key: key);

  @override
  State<Filter_Device> createState() => _Filter_DeviceState();
}

class _Filter_DeviceState extends State<Filter_Device> {
  TextEditingController controller = new TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Image.asset(
            AppImages.ic_times,
            color: Color(0xffB23AB3),
            height: 20,
            width: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Filter device list',
          style: TextStyle(
            color: Color(0xffB23AB3),
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              TextFormField(
                controller: controller,
                onTap: () {},
                decoration: InputDecoration(
                  hintText: "Search device with series number",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide(
                      color: Color(0xff858585),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide(
                      color: Color(0xff858585),
                    ),
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff858585),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                ),
                child: Container(
                  // color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Group device",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff858585),
                        ),
                        // textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Ecosphere_Radio_Widget(),
                  Galvanic_Body_Widget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LumiSpa_Radio_Widget(),
                  AgelocMe_Radio_Widget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AgelocBoost_Radio_Widget(),
                  OtherDevice_Radio_Widget(),
                ],
              ),
              GalvanicSpa_Radio_Widget(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                ),
                child: Container(
                  // color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Receiving office",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff858585),
                        ),
                        // textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
              Loremipsum_Radio_Widget(),
              Loremipsum_Radio_Widget1(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                ),
                child: Container(
                  // color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Warranty Status",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff858585),
                        ),
                        // textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.zero,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xff858585),
                    ),
                    top: BorderSide(
                      color: Color(0xff858585),
                    ),
                    right: BorderSide(
                      color: Color(0xff858585),
                    ),
                    left: BorderSide(
                      color: Color(0xff858585),
                    ),
                  ),
                ),
                child: InkWell(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        color: Color(0xff333333),
                        onPressed: () {},
                      )
                    ],
                  ),
                  onTap: () {
                    print('a');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Color(0xff7123D9),
            child: Center(
              child: Text(
                'EXIT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ),
          onTap: () {
            var sunmit = {"1": controller.text, "2": "ghdjwfujk"};

            Navigator.pop(context, sunmit);
          },
        ),
      ),
    );
  }
}

class Loremipsum_Radio_Widget1 extends StatelessWidget {
  const Loremipsum_Radio_Widget1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(0.0),
          // color: Colors.red,
          width: MediaQuery.of(context).size.width / 1.8,
          child: Row(
            children: [
              Radio(
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
                activeColor: Color(0xffB23AB3),
              ),
              Text(
                'Lorem ipsum',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff858585),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Loremipsum_Radio_Widget extends StatelessWidget {
  const Loremipsum_Radio_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(0.0),
          // color: Colors.red,
          width: MediaQuery.of(context).size.width / 1.8,
          child: Row(
            children: [
              Radio(
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
                activeColor: Color(0xffB23AB3),
              ),
              Text(
                'Lorem ipsum',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff858585),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class GalvanicSpa_Radio_Widget extends StatelessWidget {
  const GalvanicSpa_Radio_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(0.0),
          // color: Colors.red,
          width: MediaQuery.of(context).size.width / 1.8,
          child: Row(
            children: [
              Radio(
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
                activeColor: Color(0xffB23AB3),
              ),
              Text(
                'Galvanic Spa',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff858585),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OtherDevice_Radio_Widget extends StatelessWidget {
  const OtherDevice_Radio_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // color: Colors.red,
        // width: MediaQuery.of(context).size.width / 2,
        child: Row(
          children: [
            Radio(
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
              activeColor: Color(0xffB23AB3),
            ),
            Text(
              'Other Device',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff858585),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AgelocBoost_Radio_Widget extends StatelessWidget {
  const AgelocBoost_Radio_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0.0),
      // color: Colors.red,
      width: MediaQuery.of(context).size.width / 1.8,
      child: Row(
        children: [
          Radio(
            value: 1,
            groupValue: 1,
            onChanged: (value) {},
            activeColor: Color(0xffB23AB3),
          ),
          Text(
            'Ageloc Boost',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xff858585),
            ),
          ),
        ],
      ),
    );
  }
}

class AgelocMe_Radio_Widget extends StatelessWidget {
  const AgelocMe_Radio_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // color: Colors.red,
        // width: MediaQuery.of(context).size.width / 2,
        child: Row(
          children: [
            Radio(
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
              activeColor: Color(0xffB23AB3),
            ),
            Text(
              'Ageloc Me',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff858585),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LumiSpa_Radio_Widget extends StatelessWidget {
  const LumiSpa_Radio_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0.0),
      // color: Colors.red,
      width: MediaQuery.of(context).size.width / 1.8,
      child: Row(
        children: [
          Radio(
            value: 1,
            groupValue: 1,
            onChanged: (value) {},
            activeColor: Color(0xffB23AB3),
          ),
          Text(
            'Lumispa',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xff858585),
            ),
          ),
        ],
      ),
    );
  }
}

class Galvanic_Body_Widget extends StatelessWidget {
  const Galvanic_Body_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // color: Colors.red,
        // width: MediaQuery.of(context).size.width / 2,
        child: Row(
          children: [
            Radio(
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
              activeColor: Color(0xffB23AB3),
            ),
            Text(
              'Galvanic Body',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff858585),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Ecosphere_Radio_Widget extends StatelessWidget {
  const Ecosphere_Radio_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: MediaQuery.of(context).size.width / 1.8,
      child: Row(
        children: [
          Radio(
            value: 1,
            groupValue: 1,
            onChanged: (value) {},
            activeColor: Color(0xffB23AB3),
          ),
          Text(
            'Ecosphere',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xff858585),
            ),
          ),
        ],
      ),
    );
  }
}
