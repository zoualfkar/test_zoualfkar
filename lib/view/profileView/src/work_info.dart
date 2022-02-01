import 'package:flutter/material.dart';
import 'package:zoualfkar/widget/ItemInfoWidget.dart';

class WorkInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 10,),
          ItemInfoWidget('Clinic Information'),
          SizedBox(height: 10,),
          ItemInfoWidget('Consultation'),
          SizedBox(height: 10,),
          ItemInfoWidget('Assistant name ,number'),

        ],
      ),
    );
  }
}
