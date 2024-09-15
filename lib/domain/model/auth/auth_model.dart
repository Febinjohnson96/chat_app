class AuthModel {
  String? email;
  String? password;
  String? phoneNumber;
  String? displayName;

  AuthModel({this.email, this.password, this.phoneNumber, this.displayName});

  AuthModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    phoneNumber = json['phoneNumber'];
    displayName = json['displayName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
      'displayName': displayName
    };
  }
}
