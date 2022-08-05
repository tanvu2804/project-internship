abstract class Message {
  static const String EMPTY_EMAIL = "Please enter your email.";
  static const String EMPTY_PASSWORD = "Please enter your password.";
  static const String EMPTY_CPASSWORD = "Please enter your confirm password.";
  static const String VALID_EMAIL = "Please enter a valid email address.";
  static const String VALID_LOGIN = "Email or password is not incorrect.";
  static const String EMPTY_FULLNAME = "Please enter your full name.";
  static const String EMPTY_ADDRESS = "Please enter your address.";
  static const String EMPTY_CITY = "Please enter your city.";
  static const String EMPTY_CHOOSE_CITY = "Please selected your city.";
  static const String EMPTY_CHOOSE_STATE = "Please selected your state.";
  static const String EMPTY_ZIP = "Please enter your Zip / Postal.";
  static const String EMPTY_TEL = "Please enter your phone number.";
  static const String VALID_TEL = "Please enter a valid 8 digit number.";
  static const String VALID_ZIP = "Please enter a valid 5 digit number.";
  static const String VALID_C_PASSWORD =
      "Please enter the correct confirm password.";
  static const String VALID_PASSWORD =
      "The 6-character password consists of number, uppercase, lowercase letters and special characters.";
  static const String REQUIRE_ALL = "Please enter all required fields.";
}

abstract class LoginString {
  static const String LOGIN = "LOG IN";
  static const String EMAIL = "Email address";
  static const String PASSWORD = "Password";
  static const String REMEMBER_ME = "REMEMBER ME";
  static const String FORGOT_PASSWORD_UPPERCASE = "FORGET PASSWORD?";
  static const String AGREE_TERM = "By continuing, you agree to the";
  static const String AND = " and ";
  static const String PRIVACY_POLICY = "Privacy Policy";
  static const String TERM = "Terms of Service";
  static const String NOT_ACCOUNT = "Don't have an account ? ";
  static const String SIGNUP_HERE = "Sign up here";
  static const String DISCOVER_THE_BEST_YOU = "DISCOVER THE BEST YOU";
  static const String FACE_ID = "FACE ID";
  static const String FINGERPRINT = "Fingerprint";
}

abstract class ForgetPassString {
  static const String FORGOT_PASSWORD_APPBAR_TITLE = "Password recovery";
  static const String EMAIL = "Email address";
  static const String SUBMIT = "SUBMIT";
  static const String DISCOVER_THE_BEST_YOU = "DISCOVER THE BEST YOU";
  static const String NOT_ACCOUNT = "Don't have an account? ";
  static const String SIGNUP_HERE = "Sign up here";
  static const String SUCCESS_TITLE = "An email has been sent!";
  static const String OK = "OK";
}

abstract class SignUpString {
  static const String SIGNUP_TITLE = "Create a new account";
  static const String DISCOVER_THE_BEST_YOU = "DISCOVER THE BEST YOU";
  static const String EMAIL = "Email address";
  static const String PASSWORD = "Password";
  static const String CONFIRM_PASSWORD = "Confirm password";
  static const String TERM = "Terms of Service";
  static const String AND = " and ";
  static const String PRIVACY_POLICY = "Privacy Policy";

  static const String SIGNUP = "SIGN UP";
  static const String AGREE_SIGNUP = "I agree to the ";
  static const String ACCEPT_TERM = "Please agree to the Terms & Conditions ";
  static const String SIGN_UP_LOADING = "Sign Up...";
  static const String SUCCESS_TITLE = "Success";
  static const String OK = "OK";
}

abstract class HomeString {
  //home
  static const String HONE_TITLE = "Home";
  static const String TERM_CONDITIONS_TITLE = "Terms & Conditions";
  static const String TERM_CONDITIONS_DESCRIPTION =
      "See what is covered under warranty";
  static const String WARRANTY_STATUS_TITLE = "Warranty Status";
  static const String WARRANTY_STATUS_DESCRIPTION =
      "Check your device warranty period";
  static const String REPORT_FAULTY_DEVICE_TITLE = "Report Faulty Device";
  static const String REPORT_FAULTY_DEVICE_DESCRIPTION =
      "Submit information for device inspection";
  static const String INSPECTION_STATUS_DEVICE_TITLE = "Inspection Status";
  static const String INSPECTION_STATUS_DEVICE_DESCRIPTION =
      "Check your device inspection status";

  //drawer
  static const String CONTACT_US = "Contact us";
  static const String RESOURCES = "Resources";
  static const String LIGHT_MODE = "Light mode";
  static const String DARK_MODE = "Dark mode";
  static const String LOG_OUT = "Log out";
}

abstract class ConfigApi {
  static const String BASEURL = "https://dcdev.nsmyapp.com/mobile.php";
  static const String APIURL = "https://dcdev.nsmyapp.com";
  static const String APPKEY = "D3raCMSver30";
  static const String OPTION = "mobile";
  static const String VERSION = "1.0";
  static const String ACT_LOGIN = "authentic";
  static const String NOTIFICATION = "notification";
  static const String BOOKING = "booking";
  static const String PAYMENT = "payment";

  static const String CONFIG = "config";
  static const String UPLOAD = "upload";
  static const String PRODUCT = "product";
  static const String REPORT_ERROR = "report_error";
  static const String NEWS = "news";
  static const String REGISTER = "register";
  static const String FORGOT_PASSWORD = "forgotpassword";
  static const String LANG = "lang";
  static const String CUSTOMFIELD = "customfield";
}
