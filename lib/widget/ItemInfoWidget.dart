import 'package:flutter/material.dart';

class ItemInfoWidget extends StatelessWidget {

  String title;


  ItemInfoWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadiusDirectional.all(Radius.circular(10)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: ListTile(leading: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF8FCBEC).withOpacity(0.2),),

          child: Icon(Icons.info_outline,color: Color(0xFF8FCBEC),)),
        title: Text(title,style: TextStyle(fontSize: 12),),
        trailing: Container(
          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),

          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.all(Radius.circular(12)),
            shape: BoxShape.rectangle,
            color: Color(0xFF8FCBEC).withOpacity(0.2),),
          child: Text('Edit',style: TextStyle(fontSize: 12, color:Color(0xFF8FCBEC)),),
        ),),

    );
  }
}
