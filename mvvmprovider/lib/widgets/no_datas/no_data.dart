/*
| ---------------------------------------------------------------------- 
| Add More Action Button / Menu
| ----------------------------------------------------------------------     
|
|
|
|
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoData extends StatelessWidget {
  final Widget child;
  final bool visible;

  /*
  *   Constructor
  *
  *   @param    child       Widget                  Child widget
  *   @param    visible     bool                    Whether to show the view
  */
  NoData({
    @required this.child,
    this.visible = false,
  }) : assert(child != null);

  @override
  Widget build(BuildContext context) {
    if (visible) {
      return Container(
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0), color: Colors.white),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: Image(
                    width: 40.0,
                    image: AssetImage('assets/images/empty.png'),
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                    'Nothing found',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return child;
    }
  }
}
