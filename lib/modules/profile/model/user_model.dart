import 'package:equatable/equatable.dart';

class User extends Equatable{
  String username;
  String name;
  String email;
  bool emailVerified;
  String? photoUrl;
  String? bio;
  String? location;
  DateTime? createdAt;

  User({
    required this.username,
    required this.name,
    required this.email,
    required this.emailVerified,
    this.photoUrl,
    this.bio,
    this.location,
    this.createdAt
  });

  @override
  List<Object> get props => [username, name, email, emailVerified];

  factory User.fromJson(Map<String, dynamic> json) {
    print(json["username"]);
    return new User(
      username: json['username'],
      name: json['name'],
      email: json['email'],
      photoUrl: json['photoUrl'],
      bio: json['bio'],
      location: json['location'],
      createdAt: json['createdAt'],
      emailVerified: json['emailVerified']
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['name'] = this.name;
    data['email'] = this.email;
    data['photoUrl'] = this.photoUrl;
    data['bio'] = this.bio;
    data['location'] = this.location;
    data['createdAt'] = this.createdAt;
    data['emailVerified'] = this.emailVerified;
    return data;
  }
}