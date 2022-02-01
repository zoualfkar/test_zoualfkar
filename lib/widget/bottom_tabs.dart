import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zoualfkar/constant/constants.dart';

class BottomTabs extends StatelessWidget {
  final int? selectedTab;
  final Function(int)? tabPressed;
   BottomTabs({ this.selectedTab, this.tabPressed});



  @override
  Widget build(BuildContext context) {



    return Container(
      margin:  EdgeInsets.all(10),
      decoration:  BoxDecoration(
        color:Colors.white,
        borderRadius:  BorderRadius.all(Radius.circular(20.0),),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 0.1,
              blurRadius: 0.1,
            )
          ]
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomTabBtn(
            title: 'Home',
            imagePath: "assets/icons/home.png",
            selected: selectedTab == 0 ? true : false,
            onPressed: () {
              tabPressed!(0);
            },
          ),
          BottomTabBtn(
            title: 'Schedule',
            imagePath: "assets/icons/calendar.png",
            selected: selectedTab == 1 ? true : false,
            onPressed: () {
              tabPressed!(1);
            },
          ),
          BottomTabBtn(
            title: 'Message',
            imagePath:  "assets/icons/message.png",
            selected: selectedTab == 2 ? true : false,
            onPressed: () {
              tabPressed!(2);
            },
          ),
          BottomTabBtn(
            title: 'More',
            imagePath: "assets/icons/more.png",
            selected: selectedTab == 3 ? true : false,
            onPressed: () {
              tabPressed!(3);
            },
          ),

        ],
      ),
    );
  }
}

class BottomTabBtn extends StatelessWidget {
  final String? imagePath;
  final bool? selected;
  final void Function()? onPressed;
  final String? title;

  BottomTabBtn({this.imagePath, this.selected, this.onPressed,this.title});

  @override
  Widget build(BuildContext context) {
    bool _selected = selected ?? false;

    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 5.0,
        ),
        decoration: BoxDecoration(
          // border: Border(
          //   top: BorderSide(
          //     color: _selected ? kPrimaryColor : Colors.transparent,
          //     width: 2.0,
          //   )
          // )
        ),
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                imagePath ??"",
              width: 24.0,
              height: 24.0,
              color: _selected ? kPrimaryColor : kTextColor,
            ),
            Text(title ??"",style: TextStyle(color:_selected ?kPrimaryColor : kTextColor,
                fontWeight: _selected ?FontWeight.bold :FontWeight.normal ,
                fontSize: 12
            ),)
          ],
        ),
      ),
    );
  }


}

