/*
| ---------------------------------------------------------------------- 
| DialogHelper
| ----------------------------------------------------------------------     
| DialogHelper is Dialog style
|
|
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogHelper {
  static Future<void> logOutDialog(BuildContext context) async {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Color(0xFF212121),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Container(),
          );
        });
  }
}
