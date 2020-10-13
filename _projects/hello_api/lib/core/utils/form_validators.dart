final _emailRegex = RegExp(
  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
);

String validateEmail(String value) {
  if (value == null || value.trim().isEmpty) {
    return "Required field";
  } else if (!_emailRegex.hasMatch(value)) {
    return 'Invalid email';
  }

  return null;
}

String validatePassword(String value) {
  if (value == null || value.isEmpty) {
    return "Required field";
  } else if (value.contains(' ')) {
    return 'Blank spaces not allowed';
  }
  return null;
}
