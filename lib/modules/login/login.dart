import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_book/core/routes/routes.dart';
import 'package:recipes_book/core/widgets/default_button.dart';
import 'package:recipes_book/core/widgets/logo.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 42.0,),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Logo(width: 178.0,),
                        Text(
                          "Recipes Book",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    "Welcome!",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "e-mail",
                              hintText: "youemail@example.com",
                            ),
                          ),
                          SizedBox(height: 30.0),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "password",
                              hintText: "••••••••••••",
                            ),
                          ),
                          SizedBox(height: 48.0),
                          DefaultButton(
                            disabled: false,
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            onPressed: (){},
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Don't have an account yet?"),
                          InkWell(
                            onTap: (){
                              Get.toNamed(RecipesBookRoutes.REGISTER);
                            },
                            child: Text(
                              "Sign up!",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}