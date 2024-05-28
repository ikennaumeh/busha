bool isEmpty(String? s) {
  return s == null || s.isEmpty;
}

bool isNotEmpty(String? s) {
  return s != null && s.isNotEmpty;
}

bool isValidEmail(String email) {
  return RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  ).hasMatch(email);
}
