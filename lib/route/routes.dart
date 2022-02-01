import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:zoualfkar/binding/home_page_binding.dart';
import 'package:zoualfkar/controller/home_page_controller.dart';
import 'package:zoualfkar/controller/profile_contrller.dart';
import 'package:zoualfkar/controller/schedule_controller.dart';
import 'package:zoualfkar/view/home_page.dart';
import 'package:zoualfkar/view/profileView/profile_view.dart';
import 'package:zoualfkar/view/scheduleView/schedule_view.dart';

abstract class Routes {
  static const HOME_PAGE  = '/home';

  static const SCHEDULE  = '/schedule';
  static const PROFILE = '/profile';


}

abstract class AppPages {
  static String INITIAL = Routes.HOME_PAGE;

  static final routes = [
    GetPage(
      name: Routes.HOME_PAGE,
      page: () => HomePage(),
      binding: HomePagedBinding(),
    ),

    GetPage(
      name: Routes.PROFILE,
      page: () => ProfileView(),
      binding: BindingsBuilder.put(() => ProfileController()),
    ),
  ];
}