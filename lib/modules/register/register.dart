import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_book/core/enums/app_state_enum.dart';
import 'package:recipes_book/core/widgets/default_button.dart';
import 'package:recipes_book/modules/register/controllers/register_controller.dart';

class Register extends GetView<RegisterController> {
  const Register({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final RegisterController controller = RegisterController.to;

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height - AppBar().preferredSize.height,
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Create your account!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Form(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Obx((){
                          return TextFormField(
                            onChanged: controller.nameChanged,
                            decoration: InputDecoration(
                              labelText: "name",
                              hintText: "John Doe",
                              errorStyle: TextStyle(fontSize: 0.0),
                              errorText: controller.nameTouched.value && controller.errorName.value != '' ? controller.errorName.value : null,
                            ),
                          );
                        }),
                        SizedBox(
                          height: 30.0,
                          child: Obx(() => Text(controller.errorName.value)),
                        ),
                        TextFormField(
                          onChanged: controller.usernameChanged,
                          decoration: InputDecoration(
                            labelText: "username",
                            hintText: "doejohn",
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                          child: Obx(() => Text(controller.errorUsername.value)),
                        ),
                        TextFormField(
                          onChanged: controller.emailChanged,
                          decoration: InputDecoration(
                            labelText: "e-mail",
                            hintText: "youremail@example.com",
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                          child: Obx(() => Text(controller.errorEmail.value)),
                        ),
                        TextFormField(
                          onChanged: controller.passwordChanged,
                          decoration: InputDecoration(
                            labelText: "password",
                            hintText: "••••••••••",
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                          child: Obx(() => Text(controller.errorPassword.value)),
                        ),
                        TextFormField(
                          onChanged: controller.confirmPasswordChanged,
                          decoration: InputDecoration(
                            labelText: "confirm password",
                            hintText: "••••••••••",
                          ),
                        ),
                        SizedBox(
                          height: 48.0,
                          child: Obx(() => Text(controller.errorConfirmPassword.value)),
                        ),
                        Obx(() => DefaultButton(
                          disabled: controller.enableButton,
                          child: Text(
                            "Create account",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          onPressed: () async{
                            await controller.go(context);
                          },
                        )),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ),
          Obx((){
            return controller.appState.value != AppState.LOADING ? SizedBox() : Container(
              color: Colors.white.withOpacity(0.7),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }),
        ],
      ),
    );
  }
}