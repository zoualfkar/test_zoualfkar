import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoualfkar/constant/constants.dart';
import 'package:zoualfkar/model/doctor.dart';

class DoctorWidget extends StatelessWidget {

  Doctor doctor;
  Function onTap;


  DoctorWidget(this.doctor,{required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration:  BoxDecoration(
            color:Colors.white,
            borderRadius:  BorderRadius.all(Radius.circular(5.0),),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 0.2,
                blurRadius: 0.01,
              )
            ]
        ),
        child: Column(
       //   crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(doctor.name??"",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                      SizedBox(height: 10,),
                      Text('Online Consultation',style: TextStyle(color: Colors.black,fontSize: 13),),
                    ]
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(  doctor.avatar??""),
                  )
                ],
              ),
            ),
            Divider(thickness: 1,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,              children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment:CrossAxisAlignment.end ,
                        children: [
                          Image.asset(
                            "assets/icons/calendar.png",
                            width: 15.0,
                            height: 15.0,
                            color: Color(0xFF868696),
                            fit: BoxFit.fill,
                          ),
                          SizedBox(width: 10,),
                          Text( doctor.date??"",style:TextStyle(fontSize: 10, color: Color(0xFF868696),),),
                        ],
                      ),
                      SizedBox(height: 11,),
                      Container(
                        height: 40,
                        width: 150,
                        child: TextButton(onPressed: (){}, child: Text('Start examination',style: TextStyle(color: Colors.white),),
                          style: TextButton.styleFrom(backgroundColor: kPrimaryColor),),
                      ),

                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration:  BoxDecoration(
                              color:doctor.isConfirmed??false  ?Colors.green:Colors.red ,
                              borderRadius:  BorderRadius.all(Radius.circular(20.0),),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text( doctor.isConfirmed??false  ?'Confirmed':'Not Confimed' ,style: TextStyle( color: Color(0xFF868696),fontSize: 10),),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Container(
                        height: 40,
                        width: 100,
                        child: TextButton(onPressed: (){}, child: Text('Reshedule',style: TextStyle(color: Color(0xff52B1E4)),),
                          style: TextButton.styleFrom(backgroundColor: Color(0xFFF1F9FD) ,),),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,)


          ],
        ),
      ),
    );
  }
}
