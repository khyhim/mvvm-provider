/*
| ---------------------------------------------------------------------- 
| Add More Action Button / Menu
| ----------------------------------------------------------------------     
|   @file       = config_wrapper.dart
|
*/

import 'package:flutter/material.dart';

class MyButtons {
  //  Remove default constructor
  //MyButtons._internal();

  //button size
  static double sizePrimaryButton = 46.0;

  /*
  *   Rounded Shape
  *   @return Shape
  */
  static roundedShape() {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));
  }

  /*
  *   Beveled Shape
  *   @return Shape
  */
  static beveledShape() {
    return BeveledRectangleBorder(borderRadius: BorderRadius.circular(10));
  }

  /*
  *   Border Shape
  *   @return Shape
  */
  static borderShape() {
    return Border.all(width: 2.0, color: Colors.redAccent);
  }

  /*
  *   Border Style Shape
  *   @return Shape
  */
  static borderStyleShape() {
    return BorderSide(
        color: Colors.black, width: 1.0, style: BorderStyle.solid);
  }

  /*
  *   Circle Style Shape
  *   @return Shape
  */
  static circleShape() {
    return CircleBorder();
  }
}
