import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:recipes_book/modules/profile/model/user_model.dart';
import 'package:recipes_book/modules/register/entities/register_model.dart';

class RegisterService{


  Future<bool> emailInUse(String email) async{
    try {
      var response = await Dio().get("http://192.168.1.10:8080/users/email-in-use/${email}");
      print(response);
      return response.data as bool;
    }catch(e){
      throw e;
    }
  }

  Future<bool> usernameInUse(String username) async{
    try {
      var response = await Dio().get("http://192.168.1.10:8080/users/username-in-use/${username}");
      print(response);
      return response.data as bool;
    }catch(e){
      throw e;
    }
  }

  Future<User> createAccount(RegisterModel data) async{

    try{
      Response response = await Dio().post("http://localhost:8080/users", data: data);
      User createdUser = User.fromJson(response.data);
      return createdUser;
    }catch(e){
      print(e);
      print(e);
      throw e;
    }

  }

}