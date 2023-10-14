import 'package:lakevista/core/extensions/strings_ext.dart';

class Validation {
  static String? validateEmail(String? email) {
    if (email?.isEmpty ?? true) {
      return 'Email is required.';
    } else if (!(email?.isValidEmail ?? true)) {
      return 'Please provide a valid email.';
    } else {
      return null;
    }
  }

  static String? validatePassword(String? password) {
    if (password?.isEmpty ?? true) {
      return 'Password is required.';
    } else if (!(password?.isValidPassword ?? true)) {
      return 'Please provide valid password.';
    } else {
      return null;
    }
  }
}
