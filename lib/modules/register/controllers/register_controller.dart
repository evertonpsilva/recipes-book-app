import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_book/core/enums/app_state_enum.dart';
import 'package:recipes_book/core/routes/routes.dart';
import 'package:recipes_book/modules/register/entities/register_model.dart';
import 'package:recipes_book/modules/register/services/register_service.dart';

class RegisterController extends GetxController{

  static RegisterController get to => Get.find();

  final RegisterService _service;

  RegisterController(this._service);

  Rx<AppState> appState = Rx<AppState>(AppState.DONE);

  RxString name = ''.obs;
  RxString errorName = RxString('');
  RxBool nameTouched = false.obs;

  RxString username = ''.obs;
  RxString errorUsername = RxString('');
  RxBool usernameTouched = false.obs;

  RxString email = ''.obs;
  RxString errorEmail = RxString('');
  RxBool emailTouched = false.obs;

  RxString password = ''.obs;
  RxString errorPassword = RxString('');
  RxBool passwordTouched = false.obs;

  RxString confirmPassword = ''.obs;
  RxString errorConfirmPassword = RxString('');
  RxBool confirmPasswordTouched = false.obs;

  @override
  void onInit(){
    super.onInit();
    debounce(name, verifyName, time: Duration(milliseconds: 500));
    debounce(username, verifyUsername, time: Duration(milliseconds: 500)); 
    debounce(email, verifyEmail, time: Duration(milliseconds: 500));
    debounce(password, verifyPassword, time: Duration(milliseconds: 500));
    debounce(confirmPassword, verifyConfirmPassword, time: Duration(milliseconds: 500));
  }

  void nameChanged(String val){
    name.value = val;
  }
  
  void usernameChanged(String val){
    username.value = val;
  }

  void emailChanged(String val){
    email.value = val;
  }
  
  void passwordChanged(String val){
    password.value = val;
  }
  
  void confirmPasswordChanged(String val){
    confirmPassword.value = val;
  }

  void verifyName(String val) async{
    errorName.value = "";
    nameTouched.value = true;
    if(val.isEmpty){
      errorName.value = "Name cannot be empty";
    }
  }

  void verifyUsername(String val) async{
    errorUsername.value = "";
    usernameTouched.value = true;
    if(val.isEmpty){
      errorUsername.value = "Name cannot be empty";
    }else if(await _usernameAvaliable(val)){
      errorUsername.value = "Username already in use";
    }
  }
  
  void verifyEmail(String val) async{
    errorEmail.value = "";
    emailTouched.value = true;
    if(val.isEmpty){
      errorEmail.value = "Email cannot be empty";
    }else if(!RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").hasMatch(val)){
      errorEmail.value = "Email bad formated";
    }else if(await _emailInUse(val)){
      errorEmail.value = "Email already in use";
    }
  }
  
  void verifyPassword(String val) async{
    errorPassword.value = "";
    passwordTouched.value = true;
    if(val.isEmpty){
      errorPassword.value = "Password cannot be empty";
    }
  }
  
  void verifyConfirmPassword(String val) async{
    errorConfirmPassword.value = "";
    confirmPasswordTouched.value = true;
    if(val.isEmpty){
      errorConfirmPassword.value = "Name cannot be empty";
    }else if(val != password.value){
      errorConfirmPassword.value = "Password not match";
    }
  }

  Future<bool> _usernameAvaliable(String username) async {
    return await this._service.usernameInUse(username);
  }

  Future<bool> _emailInUse(String email) async {
    return await this._service.emailInUse(email);
  }

  bool get enableButton{
    if((errorName.value == '' && nameTouched.value) && 
      (errorUsername.value == '' && usernameTouched.value) &&
      (errorEmail.value == '' && emailTouched.value) &&
      (errorPassword.value == '' && passwordTouched.value) &&
      (errorConfirmPassword.value == '' && confirmPasswordTouched.value)){
        return false;
    }
    return true;
  }

  Future<void> go(BuildContext context) async{
    appState.value = AppState.LOADING;
    RegisterModel data = new RegisterModel(
      email: email.value, 
      username: username.value, 
      name: name.value, 
      password: password.value
    );
    await this._service.createAccount(data).then((value) {
      appState.value = AppState.DONE;
      sucessCreatedAccountDialog(context);
    }).catchError((e) {
      appState.value = AppState.ERROR;
      print(e);
    });
  }

  Future<void> sucessCreatedAccountDialog(BuildContext context) async{
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text("Account created!"),
          content: Text("Your account has been created. Please confirm your e-mail to continue."),
          actions: [
            TextButton(
              onPressed: (){
                Get.offAndToNamed(RecipesBookRoutes.LOGIN);
              }, 
              child: Text("Close"),
            )
          ],
        );
      },
    );
  }

}