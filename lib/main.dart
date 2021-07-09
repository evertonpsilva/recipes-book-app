import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_book/core/routes/pages.dart';
import 'package:recipes_book/core/routes/routes.dart';
import 'package:recipes_book/modules/home/home.dart';
import 'package:recipes_book/modules/profile/profile.dart';
import 'package:recipes_book/modules/recipe/recipe.dart';
import 'package:recipes_book/shared/theme/dark_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Recipes Book',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: darkpalette,
        primaryColor: Color(0xFF2E3545),
        accentColor: Color(0xFF306EFF),
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: TextStyle(fontSize: 12.0),
          filled: true
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        primaryIconTheme: IconThemeData(
          color: Color(0xFF2E3545),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RecipesBookRoutes.LOGIN,
      getPages: RecipesBookPages.pages,
    );
  }
}