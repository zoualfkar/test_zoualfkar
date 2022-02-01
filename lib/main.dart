import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:zoualfkar/theme.dart';
import 'route/routes.dart';




void main() async{
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {

  const MyApp();
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages:AppPages.routes,
       theme: lightThemeData(context),
       darkTheme: lightThemeData(context),
    );

  }
}
