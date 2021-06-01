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

class NoDataStandAlone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  'nothingFound',
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
  }
}
