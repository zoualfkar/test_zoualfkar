import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoualfkar/controller/schedule_controller.dart';
import 'package:zoualfkar/view/scheduleView/src/accepted.dart';
import 'package:zoualfkar/view/scheduleView/src/uncoming.dart';
import 'package:zoualfkar/widget/doctor_widget.dart';
import 'package:zoualfkar/widget/tap_widget.dart';

class ScheduleView extends GetView<ScheduleController> {
  const ScheduleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text( 'Schedule',style: TextStyle(color: Colors.black),),
      actions: [
        IconButton(
          icon:  Image.asset(
            "assets/icons/setting.png",
            width: 30.0,
            height: 30.0,
            color: Colors.black,
            fit: BoxFit.fill,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ],
        leading: IconButton(
          icon:  Image.asset(
            "assets/icons/drawer.png",
            fit: BoxFit.fill,
            width: 30.0,
            height: 30.0,
            color: Colors.black,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),

      body:GetBuilder<ScheduleController>(
    builder: (controller) =>controller.state==1 ? Center(child: CircularProgressIndicator()):
    ListView(
        children: [

          SizedBox(height: 10,),
          TapBar(selectedTab: controller.selectedTap,
            listTitle: ['Upcoming','Accepted'],
            onTap: (index){
            controller.selectedTap=index;
           controller.update();
          },),
         if(controller.selectedTap==0 )
           UncomingPart(controller.upcomingList)
         else AcceptedPart(controller.acceptedList),
        ],
      )),
    );
  }
}
