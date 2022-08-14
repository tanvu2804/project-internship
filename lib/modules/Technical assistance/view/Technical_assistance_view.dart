import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_images.dart';

class Technical_assistance_view extends StatefulWidget {
  const Technical_assistance_view({Key? key}) : super(key: key);

  @override
  State<Technical_assistance_view> createState() =>
      _Technical_assistance_viewState();
}

class _Technical_assistance_viewState extends State<Technical_assistance_view> {
  final _formStateKey = GlobalKey<FormState>();
  final _formStateKeyPhone = GlobalKey<FormState>();
  int? Phone;
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }
  bool check_Phone(String value) {
    print("value : $value");

    Phone = int.tryParse(value);
    print("phoneee : $Phone");
    if (Phone == null) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(
          Icons.chevron_left,
          color: Color(0xffB23AB3),
          size: 40,
        ),
        // leadingWidth: 70,
        titleSpacing: 32,
        title: Text(
          'Technical assistance',
          style: TextStyle(
            color: Color(0xffB23AB3),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            fontSize: 35,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppImages.ic_phone,
                      height: 40,
                      width: 48,
                      color: Color(0xff5FCEFF),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Material(
                        shadowColor: Colors.grey,
                        elevation: 4.0,
                        child: Form(
                          key: _formStateKeyPhone,
                          child: TextFormField(
                            onSaved: (value) {},
                            validator: (value) =>
                                value != null && !check_Phone(value)
                                    ? "Not Correct Telephone , Try again ! "
                                    : null,
                            decoration: InputDecoration(
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0),
                                borderSide: BorderSide(
                                  color: Color(0xff858585),
                                  width: 1.5,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 0.0,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 0.0,
                                ),
                              ),
                              errorStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0),
                                borderSide: BorderSide(
                                  color: Color(0xff858585),
                                  width: 1.5,
                                ),
                              ),
                              contentPadding: EdgeInsets.only(left: 20),
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(10),
                              //   borderSide: BorderSide(color: Color(0xff858585)),
                              // ),
                              hintText: "Phone Number",
                              // errorText: "Please try again !!",
                              // errorBorder: UnderlineInputBorder(),
                              hintStyle: TextStyle(
                                color: Color(0xff858585),
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto',
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            cursorColor: Color(0xff858585),
                            textInputAction: TextInputAction.go,
                            keyboardType: TextInputType.phone,
                            style: TextStyle(
                              color: Color(0xff858585),
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                Email_TextFormField_Widget_view(formStateKey: _formStateKey),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                Content_TextFormField_view(),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                GestureDetector(
                  child: Container(
                    height: 68,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xff7123D9),
                    child: Center(
                      child: Text(
                        "SEND",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                  onTap: () => _Submit(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _SubmitPhone() {
    if (_formStateKeyPhone.currentState!.validate()) {
      print("phone : $Phone ");
    } else {
      print("Don't have phone ");
    }
  }

  void _SubmitEmail() {
    if (_formStateKey.currentState!.validate()) {
      print("Correct");
    } else {
      print("no correct");
    }
  }

  void _Submit() {
    _SubmitPhone();
    _SubmitEmail();
  }
}

class Content_TextFormField_view extends StatelessWidget {
  const Content_TextFormField_view({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(
            color: Color(0xff858585),
            width: 1.5,
          ),
          top: BorderSide(
            color: Color(0xff858585),
            width: 1.5,
          ),
          bottom: BorderSide(
            color: Color(0xff858585),
            width: 1.5,
          ),
          right: BorderSide(
            color: Color(0xff858585),
            width: 1.5,
          ),
        ),
        // borderRadius: BorderRadius.circular(15),
      ),
      height: 358,
      child: TextFormField(
        decoration: InputDecoration(
          // enabled: true,
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
            borderSide: BorderSide(
              color: Colors.black,
              width: 0.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
            borderSide: BorderSide(
              color: Colors.black,
              width: 0.0,
            ),
          ),
          errorStyle: TextStyle(fontWeight: FontWeight.bold),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
            borderSide: BorderSide(color: Colors.white),
          ),
          contentPadding: EdgeInsets.only(left: 15, right: 10),
          hintText: "Content",
          // errorText: "Please try again !!",
          // errorBorder: UnderlineInputBorder(),
          hintStyle: TextStyle(
            color: Color(0xff858585),
            fontSize: 24,
            fontWeight: FontWeight.w400,
            fontFamily: 'Roboto',
            fontStyle: FontStyle.normal,
          ),
        ),
        cursorColor: Color(0xff858585),
        textInputAction: TextInputAction.go,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        style: TextStyle(
          color: Color(0xff858585),
          fontSize: 24,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}

class Email_TextFormField_Widget_view extends StatelessWidget {
  const Email_TextFormField_Widget_view({
    Key? key,
    required GlobalKey<FormState> formStateKey,
  })  : _formStateKey = formStateKey,
        super(key: key);

  final GlobalKey<FormState> _formStateKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          AppImages.ic_email,
          height: 40,
          width: 48,
          color: Color(0xff5FCEFF),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Material(
            shadowColor: Colors.grey,
            elevation: 4.0,
            child: Form(
              key: _formStateKey,
              child: TextFormField(
                onSaved: (value) {},
                validator: (value) => value != null && !value.contains("@")
                    ? "Not Correct Email , Try again !"
                    : null,
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(
                      color: Color(0xff858585),
                      width: 1.5,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 0.0,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 0.0,
                    ),
                  ),
                  errorStyle: TextStyle(fontWeight: FontWeight.bold),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(
                      color: Color(0xff858585),
                      width: 1.5,
                    ),
                  ),
                  contentPadding: EdgeInsets.only(left: 20),

                  hintText: "Email",
                  // errorText: "Please try again !!",
                  // errorBorder: UnderlineInputBorder(),
                  hintStyle: TextStyle(
                    color: Color(0xff858585),
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                  ),
                ),
                cursorColor: Color(0xff858585),
                textInputAction: TextInputAction.go,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Color(0xff858585),
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
