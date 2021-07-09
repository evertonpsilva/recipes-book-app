import 'package:get/get.dart';
import 'package:recipes_book/modules/register/controllers/register_controller.dart';
import 'package:recipes_book/modules/register/services/register_service.dart';

class RegisterBinding extends Bindings{

  @override
  
  void dependencies(){
    Get.lazyPut<RegisterService>(
      () => RegisterService());

    Get.lazyPut<RegisterController>(
      () => RegisterController(Get.find<RegisterService>()));
  }

}