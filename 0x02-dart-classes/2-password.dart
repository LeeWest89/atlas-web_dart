// Creates class Password and checks if a password is valid

class Password {
  String password = "";

  bool isValid () {
    if (password.length < 8 || password.length > 16) {
      return (false);
    }

    bool hasUpper = password.contains(RegExp('[A-Z]'));
    bool hasLower = password.contains(RegExp('[a-z]'));
    bool hasNum = password.contains(RegExp('[0-9]'));

    return (hasUpper && hasLower && hasNum);
  }

  @override
  String toString() {
    return ('Your Password is: $password');
  }
}