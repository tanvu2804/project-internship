import 'package:flutter/material.dart';
import 'package:project_internship/constant/app_colors.dart';
import 'package:project_internship/constant/app_images.dart';
import 'package:project_internship/constant/app_string.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/backgrounds/bg_login.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: height * 4 / 31),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  AppImages.bgLogin,
                  fit: BoxFit.cover,
                  width: width / 2.25,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: width * 39 / 640,
                    left: width * 39 / 640,
                    top: height * 37 / 1136,
                  ),
                  child: _formValidation(),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Wrap(
          runSpacing: 0,
          alignment: WrapAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                  width: 60,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: AppColors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                      LoginString.SIGNUP_HERE,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 140,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: AppColors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                      LoginString.TECHNICAL,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 160,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: AppColors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                      LoginString.FREQUENTLY,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UsernameTextFieldWidget extends StatelessWidget {
  UsernameTextFieldWidget({Key? key}) : super(key: key);
  final Account _account = new Account();
  @override
  Widget build(BuildContext context) {
    String? _validateUserName(String value) {
      return value.isEmpty ? LoginString.USER_BLANK : null;
    }

    return TextFormField(
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: AppColors.white,
      ),
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.white15,
        hintText: LoginString.EMAIL,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: AppColors.white,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      validator: (value) => _validateUserName(value!),
      onSaved: (value) => _account.user = value,
    );
  }
}

class CheckBox extends StatefulWidget {
  final checkboxKey = GlobalKey<_CheckBoxState>();
  CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool onTapIcon = true;
  refresh() {
    setState(() {
      onTapIcon = !onTapIcon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        refresh();
        if (onTapIcon == true)
          print('change state checkbox true');
        else
          print('change state checkbox false');
      },
      child: AnimatedCrossFade(
        duration: Duration(milliseconds: 300),
        firstChild: const Icon(
          Icons.check_circle,
          color: Colors.white,
          size: 30,
        ),
        secondChild: const Icon(
          Icons.check_circle_outline,
          color: Colors.white,
          size: 30,
        ),
        crossFadeState:
            onTapIcon ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
    );
  }
}

class _formValidation extends StatefulWidget {
  const _formValidation({Key? key}) : super(key: key);

  @override
  State<_formValidation> createState() => _formValidationState();
}

class _formValidationState extends State<_formValidation> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  double height = 1150;
  double width = 640;
  final Account _account = Account();

  bool _isObscure = true;

  String? _validatePassword(String value) {
    if (value.isEmpty) {
      return LoginString.PASSWORD_BLANK;
    } else if (value.length < 5) {
      return LoginString.PASSWORD_CHARACTER;
    } else
      return null;
  }

  String? _validateUserName(String value) {
    return value.isEmpty ? LoginString.USER_BLANK : null;
  }

  void _submitOrder() {
    if (_formStateKey.currentState!.validate()) {
      _formStateKey.currentState?.save();
      print('User name: ${_account.user}');
      print('Password: ${_account.password}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formStateKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Image.asset(
                AppImages.iconEmail,
                height: height * 55 / 1136,
                width: width * 20 / 640,
              ),
              SizedBox(
                width: width * 10 / 640,
              ),
              Expanded(
                child: TextFormField(
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.white15,
                    hintText: LoginString.EMAIL,
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  validator: (value) => _validateUserName(value!),
                  onSaved: (value) => _account.user = value,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 32 / 1136,
          ),
          Row(
            children: <Widget>[
              Image.asset(
                AppImages.iconPassword,
                height: height * 55 / 1136,
                width: width * 20 / 640,
              ),
              SizedBox(
                width: width * 10 / 640,
              ),
              Expanded(
                child: TextFormField(
                  obscureText: _isObscure,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      color: AppColors.white,
                      iconSize: 25,
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: AppColors.white15,
                    hintText: LoginString.PASSWORD,
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  validator: (value) => _validatePassword(value!),
                  onSaved: (value) => _account.password = value,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CheckBox(),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    LoginString.REMEMBER_ME,
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: AppColors.white,
                ),
                onPressed: () {},
                child: Text(
                  LoginString.FORGOT_PASSWORD_UPPERCASE,
                  style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: width,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.bluePurple,
                shadowColor: Colors.black,
              ),
              onPressed: () {
                _submitOrder();
              },
              child: Text(
                LoginString.LOGIN,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Account {
  String? user;
  String? password;
}
