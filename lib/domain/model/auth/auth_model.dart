class AuthModel {
  String? email;
  String? password;
  String? phoneNumber;
  String? displayName;
  String? confirmPassword;
  bool? isAuthenticated;

  AuthModel(
      {this.email,
      this.password,
      this.phoneNumber,
      this.displayName,
      this.confirmPassword,
      this.isAuthenticated});

  AuthModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    phoneNumber = json['phoneNumber'];
    displayName = json['displayName'];
    isAuthenticated = json['isAuthenticated'];
    confirmPassword = json['confirmPassword'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
      'displayName': displayName,
      'isAuthenticated': isAuthenticated,
      'confirmPassword': confirmPassword
    };
  }
}
