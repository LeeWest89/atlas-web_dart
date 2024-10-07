// Creates class Password and checks if a _password is valid

class Password {
  String _password = "";

  // Constructor
  Password({required String password}) {
    this.password = password;
  }

  // Setter
  set password(String value) {
    _password = value;
  }

  // Getter
  String get password {
    return (_password);
  }

  bool isValid (String password) {
    if (password.isEmpty || password.length < 8 || password.length > 16) {
      return (false);
    }

    bool hasUpper = password.contains(RegExp('[A-Z]'));
    bool hasLower = password.contains(RegExp('[a-z]'));
    bool hasNum = password.contains(RegExp('[0-9]'));

    return (hasUpper && hasLower && hasNum);
  }

  @override
  String toString() {
    return ('Your Password is: $_password');
  }
}