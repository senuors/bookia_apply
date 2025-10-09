class AuthParams {
  String? name;
  String? email;
  String? password;
  String? password_confirmation;

  AuthParams({
    this.name,
    this.email,
    this.password,
    this.password_confirmation,
  });

  factory AuthParams.fromJson(Map<String, dynamic> json) {
    return AuthParams(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      password_confirmation: json['password_confirmation'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': password_confirmation,
    };
  }
}
