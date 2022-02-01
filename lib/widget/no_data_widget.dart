import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class NoDataWidget extends StatelessWidget {
  String image;

  NoDataWidget(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 400,
      child: Center(
        child: Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image,width: 200,height: 100,fit: BoxFit.fill,),
              SizedBox(height: 10,),
              Text('No Available Bookings',style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}
