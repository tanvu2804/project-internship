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
  static const String PASSWORD_BLANK = "Password cannot blank";
  static const String PASSWORD_CHARACTER =
      "Password must have at least 5 characters";
  static const String REMEMBER_ME = "REMEMBER ME";
  static const String FORGOT_PASSWORD_UPPERCASE = "FORGET PASSWORD?";
  static const String AGREE_TERM = "By continuing, you agree to the";
  static const String AND = " and ";
  static const String PRIVACY_POLICY = "Privacy Policy";
  static const String TERM = "Terms of Service";
  static const String NOT_ACCOUNT = "Don't have an account ? ";
  static const String SIGNUP_HERE = "SIGN UP";
  static const String DISCOVER_THE_BEST_YOU = "DISCOVER THE BEST YOU";
  static const String FACE_ID = "FACE ID";
  static const String FINGERPRINT = "Fingerprint";
  static const String TECHNICAL = "Technical assistance";
  static const String FREQUENTLY = "FREQUENTLY ASKED QUESTION";
  static const String FREQUENTLY_LOWERCASE = "Frequently asked questions";
  static const String USER_BLANK = "User name cannot blank";
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

  static const String CONDITIONS_WARRANTY = "Conditions Warranty";
  static const String STATUS_WARRANTY = "Status Warranty";
  static const String DURATIONS_WARRANTY = "Durations Warranty";
  static const String CUSTOMER_REPORT = "Customer Report Machine Error";

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

abstract class HomeAdminString {
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

  static const String WAREHOUSE_INPUT = "Warehouse Input";
  static const String WAREHOUSE_INPUT_DESCRIPTION = "Device inspection";

  //drawer
  static const String CONTACT_US = "Contact us";
  static const String RESOURCES = "Resources";
  static const String LOG_OUT = "Log out";
}

abstract class ContactString {
  //contact
  static const String CONTACT_US_TITLE = "Contact Us";
  static const String BTN_EXIT = "EXIT";
}

abstract class ResourcesString {
  static const String RESOURCES_TITLE = "Resources";
  static const String SEARCH_BAR = "Search bar";
}

abstract class WarrantyStatusString {
  static const String WARRANTY_STATUS = "Warranty status";
  static const String DEVICE_SERIAL_NUMBER = "Device serial number";
  static const String SERIAL_NUMBER_EDIT_TEXT = "Serial number";
  static const String WARRANTY_STATUS_TITLE = "Warranty Status";

  static const String DETAIL_DEVICE_SERIAL = "Device Serial Number:";
  static const String DETAIL_DEVICE_NAME = "Device Name:";
  static const String DETAIL_INVOICE_NUMBER = "Invoice Number:";
  static const String DETAIL_DATE_OF_PURCHASE = "Date of Purchase:";
  static const String DETAIL_REMAINING_WARRANTY = "Remaining warranty";
  static const String DETAIL_WARRANTY_DATE = "Warranty Date";
  static const String OUT_OF_WARRANTY = "Out of warranty";

  static const String DETAIL_DAY = " days";
  static const String BTN_EXIT = "EXIT";
  static const String BTN_SCAN = "Scan";
  static const String WAITING_UPDATE = "Waiting for update";
  static const String RESULT = "Result";
  static const String CHECK_TOMORROW = "PLEASE CHECK AGAIN ON TOMORROW";
  static const String EMPTY = "Please input your serial number";
}

abstract class InspectionString {
  static const String INSPECTION_STATUS_TITLE = "Inspection Status";
  static const String DEVICE_NAME = "Device Name";
  static const String STATUS = "Status";
  static const String SUBMISSION_NUMBER = "Submission number";
  static const String INSPECTION_NO_DEVICE =
      "You have no device inspection request.";
  static const String DEVICE_CHECKING = "Device checking";

//dialog
  static const String DIALOG_SUBMISSION_NUMBER = 'Submission number';
  static const String DIALOG_DEVICE_NAME = 'Device Name';
  static const String DIALOG_DEVICE_SERIAL_NUMBER = 'Device serial number';
  static const String DIALOG_DATE_OF_SUBMISSION = 'Date of submission';
  static const String DIALOG_REPORT_ISSUE = 'Reported issue';
  static const String DIALOG_STATUS = 'Status';
}

abstract class ReportSubmitString {
  static const String SUBMIT_YOUR_DEVICE_TITLE = "Submit your device";
  static const String DESCRIPTION =
      "Nu Skin Singapore Experience Centre \n 331, North Bridge Road, #18—01,Odeon Towers Singapore, S(188720)Operating hours:  \n Monday - Friday 12 pm to 8.30 pmSaturday 12 pm to 4 pm";

  static const String BUTTON_SUBMIT = "SUBMIT";
  static const String AGREE_REPORT_SUBMIT = "I agree to ";
  static const String TERM = "Terms & Conditions";
  static const String ACKNOWLEDGE_REPORT_SUBMIT =
      "I acknowledge the following: ";
  static const String DAYS_WORKING =
      "- Inspection process take 7-10 working days";
//THIEU DIALOG
}

abstract class ReportFaultyString {
  static const String REPORT_FAULTY_DEVICE_TITLE = "Report Faulty Device";
  static const String AGELOC_DEVICE_TITLE = "ageLOC Device";
  static const String ESCOPHERE_WATER_PURIFIER_TITLE =
      "Ecosphere Water Purifier";
  static const String SERIAL_NUMBER_TITLE = "Serial number";
  static const String SERIAL_NUMBER_SCAN_EDIT_TEXT = "Scan series number";
  static const String BUTTON_SCAN = "Scan";
}

abstract class ReportScanFaultyString {
  static const String REPORT_FAULTY_DEVICE_TITLE = "Report Faulty Device";
  static const String AGELOC_DEVICE_TITLE = "ageLOC Device";
  static const String ESCOPHERE_WATER_PURIFIER_TITLE =
      "Ecosphere Water Purifier";
  static const String SERIAL_NUMBER_TITLE = "Serial number";
  static const String SERIAL_NUMBER_SCAN_EDIT_TEXT = "Scan series number";
  static const String BUTTON_SCAN = "Scan";
}

abstract class ReportYourParticularsString {
  static const String YOUR_PARTICULARS_TITLE = "Your particulars";

  static const String REPORT_EMAIL = "Email";
  static const String REPORT_PHONE = "Contact number";
  static const String AGREE = "I agree to the ";
  static const String TERM = "Terms & Conditions";
  static const String AND = " and ";
  static const String PRIVACY_POLICY = "Privacy Policy";
  static const String BUTTON_PROCEED = "PROCEED";
}

abstract class ReportDeviceString {
  static const String REPORT_FAULTY_DEVICE_TITLE = "Report Faulty Device";
  static const String DEVICE_SERIAL_NUMBER = "Device Serial Number:";
  static const String DEVICE_NAME = "Device Name:";
  static const String WARRANTY_STATUS = "Warranty Status:";
  static const String BUTTON_PROCEED = "PROCEED";
  static const String WAITING_UPDATE = "Waiting for update";
}

abstract class DeviceExchangeString {
  static const String FAULTY_DEVICE_EXCHANGE_TITLE = "Faulty device exchange";

  static const String BTN_SUBMIT = "SUBMIT";
  static const String BTN_EXIT = "EXIT";
  static const String FAULTY_DEVICE = "Faulty device";
  static const String INPUT_FAULTY_DEVICE = "...";
  static const String NEW_DEVICE = "New device";
  static const String INPUT_NEW_DEVICE = "...";
}

abstract class WarehouseString {
  static const String WAREHOUSE_INPUT = "Warehouse Input";
  static const String WARRANTY_STATUS = "Warranty status";
  static const String FAULTY_DEVICE_EXCHANGE_TITLE = "Faulty device exchange";
  static const String DEVICE_CHECKING_TITLE = "Device checking";
}

abstract class WarehouseInputSeriesString {
  static const String WAREHOUSE_INPUT = "Warehouse Input";
  static const String UPDATE_SUCCESS = "Successfully updated!";
}

abstract class DeviceCheckingString {
  static const String DEVICE_CHECKING_TITLE = "Device checking";
  static const String DEVICE_NAME = "Device Name";
  static const String STATUS = "Status";
  static const String SUBMISSION_NUMBER = "Submission number";
  static const String INSPECTION_NO_DEVICE =
      "You have no device inspection request.";
  static const String DEVICE_SERIAL_NUMBER = "Device serial number";
  static const String DATE_OF_SUBMISSION = "Date of submission";
  static const String SUBMIT = "SUBMIT";
}

abstract class NotificationString {
  static const String NOTIFICATION_TITLE = "Notification";
  static const String SUBMISSION_NUMBER = "Submission number: ";
  static const String DEVICE_SERIAL_NUMBER = "Device serial number: ";
  static const String STATUS = "Status: ";
}

abstract class ResourceDetailString {
  static const String RESOURCE_DETAIL_TITLE = "Resource";
}

abstract class ParticularString {
  static const String APP_TITLE = "You particulars";
  static const String CONTACT_NUMBER = "Contact number";
  static const String EMAIL_ADDRESS = "Email address";
  static const String PROCEED = "PROCEED";
  static const String PRIVACY_HINT_FIRST = "I agree to the ";
  static const String PRIVACY_HINT_SECOND = "PROCEED";
  static const String AND = " and ";
  static const String PRIVACY_POLICY = "Privacy Policy";
  static const String EMAIL = "Email";
  static const String TERM = "Terms of Service";
  static const String ACCEPT_TERM = "Please agree to the Terms & Conditions ";
}

abstract class AppString {
  static const String APP_TITLE = "NSMY Device Care";

  //Scan code
  static const String SCAN_QR_CODE = "Scan QR code";
  static const String CLICK_FOR_HELP = "Click for help to locate QR code";
  static const String SCAN_QUESTION = "Where is the QR code?";
}

abstract class CommonString {
  static const String FORGET_PASSWORD_SUCCESS = "Email send successfully";
  static const String SUCCESS = "Success";
  static const String OK = "OK";
  static const String CANCEL = "Cancel";
  static const String ERROR = "Error!";
  static const String ERROR_MESSAGE = "Error! Please try again later";
  static const String REQUIRE = "Required field";
  static const String NO_INFORMATION = "No information found";
  static const String LOADING = "Loading...";
  static const String CHANGE_STATUS = "Change status";
  static const String REQUIRE_STATUS = "Status is required field";
  static const String SPLASH_TEXT = "Nu Skin Enterprises Malaysia Ptd Ltd";
  static const String SELECT_DATE = "Select Date";
  static const String LANGUAGE = "Language";
  static const String CLOSE = "Close app";
  static const String SIGN_OUT = "Sign out";
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
