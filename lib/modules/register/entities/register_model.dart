import 'package:equatable/equatable.dart';

class RegisterModel extends Equatable{
  final String email;
  final String username;
  final String name;
  final String password;

  RegisterModel({
    required this.email,
    required this.username,
    required this.name,
    required this.password
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }

  @override
  List<Object> get props => [email, username, name, password];
}