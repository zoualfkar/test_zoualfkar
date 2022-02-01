import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:zoualfkar/controller/home_page_controller.dart';
import 'package:zoualfkar/widget/bottom_tabs.dart';

import 'home.dart';
import 'scheduleView/schedule_view.dart';

class HomePage extends  GetView<HomePageController> {


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Obx((){
             return  Expanded(
                 child: IndexedStack(
                   index:controller.selectedTab.value,
                   children: [
                     HomeView(),
                     ScheduleView(),
                     //  SavedTab(),
                   ],
                 )
             );
           })

          ],
        ),
        bottomNavigationBar: Obx((){
          return  BottomTabs(
            selectedTab: controller.selectedTab.value,
            tabPressed: (index) {
              controller.selectedTab.value=index;
            },
          );
        }),
      ),
    );
  }

}
