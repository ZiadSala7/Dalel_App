String? emailValidateMethod(String email) {
  return (email.contains(RegExp(
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')) &&
          email.isNotEmpty)
      ? "Enter a valid email"
      : null;
}

String? passwordValidation(password) {
  return password.length >= 8 ? null : 'Password must be more than 8 chars';
}

String? publicValidation(value) {
  return value.isNotEmpty ? null : "Field can't be empty";
}
