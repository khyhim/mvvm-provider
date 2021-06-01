/*
| ---------------------------------------------------------------------- 
| Retry
| ----------------------------------------------------------------------     
|
|
|
|
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvmprovider/constants/app_colors.dart';

class Retry extends StatelessWidget {
  final Widget child;
  final bool visible;
  final Function onRetry;

  /*
  *   Constructor
  *
  *   @param    child       Widget                  Child widget
  *   @param    visible     bool                    Whether to show the view
  *   @param    onRetry     Color                   Callback function when retry button is tapped
  */
  Retry({
    @required this.child,
    this.visible = false,
    this.onRetry,
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
                    width: 30.0,
                    image: AssetImage('assets/images/no_connection.png'),
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                    'NoInternetConnection',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: CupertinoButton(
                    padding: EdgeInsets.all(0),
                    child: Text(
                      'retry',
                      style: TextStyle(
                        color: AppColors.primaryBlack,
                      ),
                    ),
                    onPressed: () {
                      onRetry();
                    },
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
