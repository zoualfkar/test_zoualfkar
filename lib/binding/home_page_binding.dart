import 'package:get/get.dart';
import 'package:zoualfkar/controller/home_controller.dart';
import 'package:zoualfkar/controller/home_page_controller.dart';
import 'package:zoualfkar/controller/profile_contrller.dart';
import 'package:zoualfkar/controller/schedule_controller.dart';


class HomePagedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<ScheduleController>(() => ScheduleController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}