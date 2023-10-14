extension ValidationExtension on String {
  /// RegX

  bool get isValidUserName => RegExp(r'[a-zA-Z].{2,}').hasMatch(this);

  bool get isValidEmail =>
      RegExp(r"^[a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(this);

  bool get isValidPassword => RegExp(r'^(?=.*[A-Za-z\d]).{8,}$').hasMatch(this);

  bool get isValidText => RegExp(r'[a-zA-Z].{40,}').hasMatch(this);
}
