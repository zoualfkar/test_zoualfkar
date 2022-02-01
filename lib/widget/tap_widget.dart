import 'package:flutter/material.dart';
import 'package:zoualfkar/constant/constants.dart';

class TapBar extends StatelessWidget {
  final int selectedTab;
  final Function(int) onTap;
  List<String> listTitle;
  TapBar({
    required this.onTap,
    required this.selectedTab,
    required this.listTitle
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: kGreyColor,
        borderRadius: const BorderRadius.all(
          const Radius.circular(7.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          TapButton(
            title: listTitle[0],
            isSelected: 0 == selectedTab,
            click: () {
              this.onTap(0);
            },
          ),
          TapButton(
            title: listTitle[1],
            isSelected: 1 == selectedTab,
            click: () {
              onTap(1);
            },
          )
        ],
      ),
    );
  }
}

class TapButton extends StatelessWidget {
  String? title;
  bool? isSelected;
  Function click;

  TapButton(
      {required this.title, required this.isSelected, required this.click});

  @override
  Widget build(BuildContext context) {
    if (isSelected!) {
      return Expanded(
        child: InkWell(
          onTap: (){
           click();
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(7.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1.0,
                    blurRadius: 30.0,
                  )
                ]),
            child: Center(
                child: Text(
              title ?? "",
              style: const TextStyle(
                  color: Color(0xFF52B1E4),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            )),
          ),
        ),
      );
    } else {
      return Expanded(
        child: InkWell(
          onTap:(){
            click();
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            height: 40,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(7.0),
              ),
            ),
            child: Center(
                child: Text(
              title ?? "",
              style: const TextStyle(
                  color: kTextColor, fontSize: 18, fontWeight: FontWeight.w500),
            )),
          ),
        ),
      );
    }
  }
}
