import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoualfkar/controller/profile_contrller.dart';
import 'package:zoualfkar/controller/schedule_controller.dart';
import 'package:zoualfkar/model/doctor.dart';
import 'package:zoualfkar/view/profileView/src/doctor_info.dart';
import 'package:zoualfkar/view/profileView/src/work_info.dart';
import 'package:zoualfkar/widget/rating_widget.dart';
import 'package:zoualfkar/widget/tap_widget.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        child: ListView(children: [
          Container(
            height: 225,
            width: Get.width,
            child: Stack(
              children: [
              Image.asset( "assets/images/background.png",
                width: Get.width,
                height: 150,
                fit: BoxFit.fill,
              ),
              Align(
                  alignment: AlignmentDirectional.topCenter ,
                  child:Container(
                    height: 60,
                    child: AppBar(
                backgroundColor: Color(0xFF0F5699),
              actions: [
                IconButton(
                    icon:  Image.asset(
                      "assets/icons/calendar.png",
                      fit: BoxFit.fill,
                      width: 30.0,
                      height: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                ),
                IconButton(
                    icon:  Image.asset(
                      "assets/icons/alert.png",
                      fit: BoxFit.fill,
                      width: 25.0,
                      height: 25.0,
                      color: Colors.white,
                    ),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ],),
                  )),
              Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      Row(
                        children: [
                          Text(controller.doctor!.name??"",
                            style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w700),),
                          SizedBox(width: 5,),
                          Image.asset( 'assets/icons/check.png',
                            width: 13,
                            height: 13,
                            fit: BoxFit.fill,)
                        ],
                      ),
                        SizedBox(height: 10,),

                        Text(controller.doctor!.professionalTitle??"",
                        style: TextStyle(fontSize: 10,color: Colors.black),),
                      SizedBox(height: 10,),
                      StarRating(rating: 3.5,color: Color(0xFFE1992D),onRatingChanged: (value){},)
                    ],),

                    Material(
                      borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      type: MaterialType.transparency,
                      child: Image.asset( 'assets/images/image.jpg',
                      width: 125,
                      height: 125,
                      fit: BoxFit.fill,),
                    )
                ],
              ),
                  ))
            ],)),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              itemHeaderData('Profile View', controller.doctor!.profileView??""),
              Container(width: 1,height: 30, color: Colors.grey),
              itemHeaderData('Patients', controller.doctor!.patients??""),
              Container(width: 1,height: 30, color: Colors.grey),
              itemHeaderData('Experience', controller.doctor!.experience??""),


            ],
          ),

          SizedBox(height: 10,),

          Obx((){
            return Column(
              children: [
                TapBar(selectedTab: controller.selectedTap.value,
                  listTitle: ['Doctor Info','Work Info'],
                  onTap: (index){
                    controller.selectedTap.value=index;
                  },),
                SizedBox(height: 10,),
                if(controller.selectedTap.value==0)
                  DoctorInfo()
                else WorkInfo()
              ],
            );
          }),






        ],),
      ),
    ));
  }
  itemHeaderData(String tilte,String data){
    return Column(children: [
      Text(tilte,style: TextStyle(fontSize: 14),),
      Text(data,style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18,color: Color(0xFF8FCBEC)),)
    ],);
  }
}
