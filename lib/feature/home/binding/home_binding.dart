import 'package:get/get.dart';
import 'package:simple_app_getx/feature/home/controller/home_controller.dart';

 class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(()  => HomeController());
  }
  
}
