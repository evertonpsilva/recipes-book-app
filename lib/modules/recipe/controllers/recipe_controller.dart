import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecipeController extends GetxController with SingleGetTickerProviderMixin{

  TabController? tabController;

  @override
  void onInit(){
    tabController = new TabController(vsync: this, length: 3);
    super.onInit();
  }

}