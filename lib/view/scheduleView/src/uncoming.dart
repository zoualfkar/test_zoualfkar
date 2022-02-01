import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoualfkar/model/doctor.dart';
import 'package:zoualfkar/route/routes.dart';
import 'package:zoualfkar/widget/doctor_widget.dart';
import 'package:zoualfkar/widget/no_data_widget.dart';

class UncomingPart extends StatelessWidget {

  List<Doctor>? list=[];


  UncomingPart(this.list);

  @override
  Widget build(BuildContext context) {
    if(list!.isEmpty){
      return NoDataWidget("assets/images/noData.png");
    }
    return Column(
      children: [
        const SizedBox(height: 10,),
        Container(
          width:MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.only(start: 10,top: 5,bottom: 5),
          child: const Text('this Week',style:const TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 18),),color: Colors.white,),
        const SizedBox(height: 20,),
        for(var element in list!)...[
          DoctorWidget(element,
            onTap: (){
              Get.toNamed(Routes.PROFILE,arguments: element);
            },),
          const SizedBox(height: 20,)
        ],

      ],
    );
  }
}
