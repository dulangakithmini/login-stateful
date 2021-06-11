class ValidationMixin {
  String validateEmail(String value) {
    /// Return null if valid. Return a String( with the error message) if invalid
    if (!value.contains('@')) {
      return 'Enter a valid Email address!';
    }

    return null;
  }

  String validatePassword(String value) {
    if (value.length < 8) {
      return 'Enter a password of 8 characters';
    }

    return null;
  }
}
