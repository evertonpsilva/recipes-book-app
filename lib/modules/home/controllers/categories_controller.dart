import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class CategoriesController extends GetxController with SingleGetTickerProviderMixin {

  AnimationController? animationController;
  static CategoriesController get to => Get.find();

  RxInt index = 999.obs;

  @override
  void onInit(){
    super.onInit();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 800));
  }

  void pageChanged(int newIndex){
    index.value = newIndex;
    print(index.value);
    print(newIndex);
  }

}