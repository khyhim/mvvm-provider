/*
| ---------------------------------------------------------------------- 
| Add More Action Button / Menu
| ----------------------------------------------------------------------     
|  
|
|
|
*/

import 'package:flutter/material.dart';
import 'colors.dart';

class MyFonts {
  //  Remove default constructor
  MyFonts._internal();

  /*
  *   H1
  *   @return TextStyle
  */
  static h1() {
    return TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w500,
      color: MyColors.whiteColor(),
    );
  }

  /*
  *   H2
  *   @return TextStyle
  */
  static h2() {
    return TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
      color: MyColors.whiteColor(),
    );
  }

  static h2Black() {
    return TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
    );
  }

  /*
  *   H3
  *   @return TextStyle
  */
  static h3() {
    return TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: MyColors.whiteColor(),
    );
  }

  /*
  *   H4
  *   @return TextStyle
  */
  static h4() {
    return TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      color: MyColors.whiteColor(),
    );
  }

  /*
  *   H5
  *   @return TextStyle
  */
  static h5() {
    return TextStyle(
      fontSize: 13.0,
      fontWeight: FontWeight.w500,
      color: MyColors.whiteColor(),
    );
  }

  /*
  *   H5
  *   @return TextStyle
  */
  static h6() {
    return TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w500,
      color: MyColors.whiteColor(),
    );
  }

  /*
  *   genderText GenderText
  *   @return TextStyle
  */
  static genderText() {
    return TextStyle(
      fontSize: 15.0,
      //fontWeight: FontWeight.w500,
      color: MyColors.grayColor(),
    );
  }

  /*
  *   hintText HintText
  *   @return TextStyle
  */
  static hintText() {
    return TextStyle(
      fontSize: 17.0,
      //fontWeight: FontWeight.w500,
      color: MyColors.grayColor(),
    );
  }

  /*
  *   actionText ActionText
  *   @return TextStyle
  */
  static actionText() {
    return TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      color: MyColors.redColor(),
    );
  }

  /*
  *   email Paragraph
  *   @return TextStyle
  */
  static emailText() {
    return TextStyle(
      fontSize: 14.0,
      color: MyColors.redColor(),
    );
  }

  /*
  *   smaller Paragraph
  *   @return TextStyle
  */
  static smallerText() {
    return TextStyle(
      fontSize: 6.0,
      //fontWeight: FontWeight.w500,
      color: MyColors.whiteColor(),
    );
  }

  /*
  *   xxsmall Paragraph
  *   @return TextStyle
  */
  static xxsmallText() {
    return TextStyle(
      fontSize: 8.0,
      //fontWeight: FontWeight.w500,
      color: Color(0xFF777777),
    );
  }

  /*
  *   xsmall Paragraph
  *   @return TextStyle
  */
  static xSmallText() {
    return TextStyle(
      fontSize: 12.0,
      color: Colors.white70,
    );
  }

  /*
  *   xsmall Paragraph
  *   @return TextStyle
  */
  static dateText() {
    return TextStyle(fontSize: 13.0, color: MyColors.bgOrange());
  }

  /*
  *   small Paragraph
  *   @return TextStyle
  */
  static smallText() {
    return TextStyle(
      fontSize: 13.0,
      color: MyColors.whiteColor(),
      height: 1.5,
    );
  }

  /*
  *   medium Paragraph
  *   @return TextStyle
  */
  static mediumText() {
    return TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: MyColors.whiteColor(),
    );
  }

  /*
  *   large Paragraph
  *   @return TextStyle
  */
  static largeText() {
    return TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      color: MyColors.whiteColor(),
    );
  }

  /*
  *   large Paragraph
  *   @return TextStyle
  */
  static largeTextRed() {
    return TextStyle(
      fontSize: 15.0,
      color: MyColors.bgRed(),
    );
  }

  /*
  *   large Paragraph
  *   @return TextStyle
  */
  static largeTextGray() {
    return TextStyle(
      fontSize: 15.0,
      color: Color(0xFFB4B4B4),
      fontWeight: FontWeight.w500,
    );
  }

  /*
  *   xlarge Paragraph
  *   @return TextStyle
  */
  static xlargeText() {
    return TextStyle(
      fontSize: 18.0,
      //fontWeight: FontWeight.w500,
      color: MyColors.whiteColor(),
    );
  }

  /*
  *   xxlarge Paragraph
  *   @return TextStyle
  */
  static xxlargeText() {
    return TextStyle(
      fontSize: 20.0,
      //fontWeight: FontWeight.w500,
      color: MyColors.whiteColor(),
    );
  }

  /*
  *   larger Paragraph
  *   @return TextStyle
  */
  static largerText() {
    return TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w500,
      color: MyColors.whiteColor(),
    );
  }

  /*
  *   larger Paragraph
  *   @return TextStyle
  */
  static fieldText() {
    return TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      decorationColor: MyColors.whiteColor(),
      color: MyColors.whiteColor(),
    );
  }

  static starValidation() {
    return TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: MyColors.redColor(),
    );
  }

  /*
  *   smaller Paragraph
  *   @return TextStyle
  */
  static vehicleTextColor() {
    return TextStyle(
      fontSize: 12.0,
      color: MyColors.vehicleColor(),
    );
  }
}
