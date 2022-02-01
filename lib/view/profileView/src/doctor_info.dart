import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoualfkar/controller/profile_contrller.dart';
import 'package:zoualfkar/widget/ItemInfoWidget.dart';

class DoctorInfo extends  GetView<ProfileController>  {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          ItemInfoWidget('Basic Information'),
          SizedBox(height: 10,),
          Text("""Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem
          """),
          SizedBox(height: 10,),
          ItemInfoWidget('Certificates'),
          SizedBox(height: 10,),
          Container(
            height: 60,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount:controller.doctor?.certificates?.length ??0 ,
              itemBuilder: (BuildContext context, int index) =>
                  Container(
                    margin: EdgeInsetsDirectional.only(end: 10),
                    child: Material(
                      borderRadius: BorderRadiusDirectional.all(Radius.circular(5)),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      type: MaterialType.transparency,
                      child: Image.asset( 'assets/images/cert.jpg',
                        width: 125,
                        height: 125,
                        fit: BoxFit.fill,),
                    ),
                  ),
            )),
          SizedBox(height: 10,),
          ItemInfoWidget('Insurance companies'),
          for(String title in controller.doctor?.companies??[])...[
            SizedBox(height: 5,),
            Container(width: Get.width, child: Text(title)),
          ],
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}
