import 'package:get/get.dart';
import 'package:recipes_book/core/routes/routes.dart';
import 'package:recipes_book/modules/category/category_page.dart';
import 'package:recipes_book/modules/home/home.dart';
import 'package:recipes_book/modules/login/login.dart';
import 'package:recipes_book/modules/profile/profile.dart';
import 'package:recipes_book/modules/recipe/recipe.dart';
import 'package:recipes_book/modules/register/bindings/register_binding.dart';
import 'package:recipes_book/modules/register/register.dart';

class RecipesBookPages{

  static List<GetPage> pages = [
    GetPage(name: RecipesBookRoutes.LOGIN, page: () => Login()),
    GetPage(name: RecipesBookRoutes.REGISTER, page: () => Register(), binding: RegisterBinding()),
    GetPage(name: RecipesBookRoutes.HOME, page: () => Home()),
    GetPage(name: RecipesBookRoutes.RECIPE_PAGE, page: () => Recipe()),
    GetPage(name: RecipesBookRoutes.PROFILE, page: () => Profile()),
    GetPage(name: RecipesBookRoutes.CATEGORY_PAGE, page: () => CategoryPage())
  ];

}