enum ValidatorType { email, password, fullName, confirmPassword }

extension ErrorTextType on ValidatorType {
  String get errorValue {
    switch (this) {
      case ValidatorType.email:
        return 'Masukkan alamat email yang tepat';
      case ValidatorType.password:
        return 'Kata sandi harus terdiri dari minimal 6 karakter dengan \nminimal angka, huruf kapital dan simbol';
      case ValidatorType.fullName:
        return 'Nama lengkap harus terdiri dari alfabet';
      case ValidatorType.confirmPassword:
        return 'Pastikan kedua kata sandi sama';
    }
  }
}

class AuthValidator {
  static final _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  static final _passwordRegex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{6,}$');
  static final _nameRegex = RegExp(r'^[a-z A-Z]+$');

  RegExp get emailRegex => _emailRegex;
  RegExp get passwordRegex => _passwordRegex;
  RegExp get nameRegex => _nameRegex;

  bool validateEmail(String value) {
    return emailRegex.hasMatch(value);
  }

  bool validatePassword(String value) {
    return passwordRegex.hasMatch(value);
  }

  bool validateFullName(String value) {
    return nameRegex.hasMatch(value);
  }

  String errorText(ValidatorType value) {
    return value.errorValue;
  }
}

final authValidator = AuthValidator();
