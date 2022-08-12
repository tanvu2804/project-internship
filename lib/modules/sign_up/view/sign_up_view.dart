import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_internship/constants/app_images.dart';
import 'package:project_internship/constants/app_string.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isCheck =true;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background/bg_sign_up.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent.withOpacity(0.0),
        appBar: AppBar(
          backgroundColor: Colors.transparent.withOpacity(0.0),
          elevation: 0,
          title: Text(SignUpString.SIGNUP_TITLE),
          titleTextStyle: TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
          leading: IconButton(
            padding: EdgeInsets.only(left: 10.0),
            icon: Icon(Icons.chevron_left),
            iconSize: 40.0,
            onPressed: () {},
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                  children: [
                  const Logo(),
              Row(
                children: <Widget>[
                  Image.asset(
                    AppImages.Phone,
                    height: 35,
                    width: 35,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.0)),
                  Expanded(child: const PhoneInput()),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0, top: 5.0)),
              Row(
                children: <Widget>[
                  Image.asset(
                    AppImages.Envelope,
                    height: 35,
                    width: 35,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.0)),
                  Expanded(child: const EmailAddress()),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0, top: 5.0)),
              Row(
                children: <Widget>[
                  Image.asset(
                    AppImages.Unlock,
                    height: 35,
                    width: 35,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.0)),
                  Expanded(child: Password()),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0, top: 5.0)),
              Row(
                children: <Widget>[
                  Image.asset(
                    AppImages.Unlock,
                    height: 35,
                    width: 35,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.0)),
                  Expanded(child: ConfirmPassword()),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Image.asset(
                AppImages.Privacy,
                width: 300.0,
              ),
              Row(
                children: <Widget>[
                  IconButton(onPressed: () {
                    setState(() {
                      isCheck = !isCheck;
                    });
                  },
                      icon: isCheck?Icon(Icons.radio_button_off_outlined):Icon(Icons.radio_button_checked_outlined, color: Colors.white)),
                  const Privacy(),
                ],
              ),
              Container(
                width: 300,
                child: FlatButton(
                onPressed: () {},
                  child: Text('SIGN UP',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                  color: Color(0xff7123D9),
                  textColor: Colors.white,
                ),
              )
                  ],
          ),
        ),
      ),


    ),
    );
  }
}

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Image(
          image: AssetImage("assets/images/logo.png"),
          height: 155.0,
          width: 155.0,
        )
      ],
    );
  }
}

class PhoneInput extends StatelessWidget {
  const PhoneInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(),
            fillColor: Color(0xffffffff).withOpacity(0.15),
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.0, color: Colors.grey)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.0, color: Colors.grey)),
            hintText: "Phone Number",
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class EmailAddress extends StatelessWidget {
  const EmailAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TextField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(),
            fillColor: Color(0xffffffff).withOpacity(0.15),
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.0, color: Colors.grey)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.0, color: Colors.grey)),
            hintText: SignUpString.EMAIL,
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TextField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(),
            fillColor: Color(0xffffffff).withOpacity(0.15),
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.0, color: Colors.grey)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.0, color: Colors.grey)),
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class ConfirmPassword extends StatelessWidget {
  const ConfirmPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TextField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(),
            fillColor: Color(0xffffffff).withOpacity(0.15),
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.0, color: Colors.grey)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.0, color: Colors.grey)),
            hintText: 'Confirm Password',
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          text: SignUpString.AGREE_SIGNUP,
          style: TextStyle(
            fontSize: 10,
          ),
          children: <TextSpan>[
            TextSpan(
              text: SignUpString.TERM,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: SignUpString.AND,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            TextSpan(
              text: SignUpString.PRIVACY_POLICY,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
