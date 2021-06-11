class ValidationMixin {
  String validateEmail(String value) {
    /// Return null if valid. Return a String( with the error message) if invalid
    if (!value.contains('@')) {
      return 'Enter a valid Email address!';
    }
    return null;
  }
}
