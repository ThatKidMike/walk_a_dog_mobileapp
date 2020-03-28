import 'package:flutter/widgets.dart';

emailValidation(String value) {
  RegExp emailRegex = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  return value.isEmpty
      ? 'Email can\'t be empty'
      : emailRegex.hasMatch(value) ? null : 'Provide correct email';
}

nameValidation(String value) {
  RegExp nameRegex = new RegExp(r"^[a-zA-Z0-9]{5}");
  return value.isEmpty
      ? 'Name can\'t be empty'
      : nameRegex.hasMatch(value)
          ? null
          : 'Name must consist of at least 5 alphanumeric characters';
}

passwordValidation(
    String value, TextEditingController passwordConfirmationController) {
  if (passwordConfirmationController != null) {
    return value.isEmpty
        ? 'Password can\'t be empty'
        : value.length < 8
            ? 'Password must be at least 8 characters long'
            : value != passwordConfirmationController.text
                ? 'Passwords doesn\'t match'
                : null;
  } else {
    return value.isEmpty
        ? 'Password can\'t be empty'
        : value.length < 8
            ? 'Password must be at least 8 characters long'
            : null;
  }
}

passwordConfirmationValidation(
    String value, TextEditingController passwordController) {
  return value != passwordController.text
      ? 'Passwords doesn\'t match'
      : value.length < 8 ? 'Password must be at least 8 characters long' : null;
}
