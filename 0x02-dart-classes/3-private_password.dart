// Creates class Password and checks if a _password is valid

class Password {
  String _password = "";

  // Constructor
  Password({required String password}) {
    _password = password;
  }

  // Setter
  set password(String value) {
    _password = value;
  }

  // Getter
  String get password {
    return (_password);
  }

  bool isValid () {
    if (_password.length < 8 || _password.length > 16) {
      return (false);
    }

    bool hasUpper = _password.contains(RegExp('[A-Z]'));
    bool hasLower = _password.contains(RegExp('[a-z]'));
    bool hasNum = _password.contains(RegExp('[0-9]'));

    return (hasUpper && hasLower && hasNum);
  }

  @override
  String toString() {
    return ('Your Password is: $_password');
  }
}