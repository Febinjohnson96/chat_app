class AuthModel {
  int? id;
  String? email;
  String? password;
  String? phoneNumber;
  String? displayName;
  String? confirmPassword;
  int? isAuthenticated;

  AuthModel(
      {this.id,
      this.email,
      this.password,
      this.phoneNumber,
      this.displayName,
      this.confirmPassword,
      this.isAuthenticated});

  AuthModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
    phoneNumber = json['phoneNumber'];
    displayName = json['displayName'];
    isAuthenticated = json['isAuthenticated'];
    confirmPassword = json['confirmPassword'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
      'displayName': displayName,
      'isAuthenticated': isAuthenticated,
      'confirmPassword': confirmPassword
    };
  }
}
