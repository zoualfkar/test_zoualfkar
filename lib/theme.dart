import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant/constants.dart';


ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    highlightColor:Colors.white24 ,
    hintColor: Colors.white54 ,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Color(0xFFFAFAFA),
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: kContentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor:  Colors.black,),
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}


const appBarTheme =  AppBarTheme(centerTitle: true, elevation: 0,backgroundColor: Color(0xFFFAFAFA) );
