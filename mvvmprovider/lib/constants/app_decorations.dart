/*
| ---------------------------------------------------------------------- 
| AppDecorations
| ----------------------------------------------------------------------     
| AppDecorations is style for Container Wiget<>
|
|
|
*/

import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppDecorations {
  //  Remove default constructor
  AppDecorations._internal();

  /*
  *   primary callout Round BoxDecoration
  *   @return BoxDecoration
  */
  static primaryCalloutRound() {
    return BoxDecoration(
        border: Border.all(
          color: AppColors.bgPrimary(),
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)));
  }

  /*
  *   Grey callout Round BoxDecoration
  *   @return BoxDecoration
  */
  static greyCalloutRound() {
    return BoxDecoration(
        border: Border.all(
          color: Color(0xFFf4f4f4),
        ),
        borderRadius: BorderRadius.all(Radius.circular(1)));
  }

  /*
  *   primary callout Top BoxDecoration
  *   @return BoxDecoration
  */
  static primaryCalloutTop() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgPrimary(),
      border: Border(
        top: BorderSide(
          color: Color(0xFF00733e),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Success callout Top BoxDecoration
  *   @return BoxDecoration
  */
  static successCalloutTop() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgSuccess(),
      border: Border(
        top: BorderSide(
          color: Color(0xFF00733e),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Danger callout Top BoxDecoration
  *   @return BoxDecoration
  */
  static dangerCalloutTop() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgDanger(),
      border: Border(
        top: BorderSide(
          color: Color(0xFFc23321),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Information callout Top BoxDecoration
  *   @return BoxDecoration
  */
  static InfoCalloutTop() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgInfo(),
      border: Border(
        top: BorderSide(
          color: Color(0xFF0097bc),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Secondary callout Top BoxDecoration
  *   @return BoxDecoration
  */
  static secondaryCalloutTop() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgSecondary(),
      border: Border(
        top: BorderSide(
          color: Color(0xFFc87f0a),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   primary callout Top BoxDecoration
  *   @return BoxDecoration
  */
  static primaryCalloutBottom() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgPrimary(),
      border: Border(
        bottom: BorderSide(
          color: Color(0xFF00733e),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Success callout Bottom BoxDecoration
  *   @return BoxDecoration
  */
  static successCalloutBottom() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgSuccess(),
      border: Border(
        bottom: BorderSide(
          color: Color(0xFF00733e),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Danger callout Bottom BoxDecoration
  *   @return BoxDecoration
  */
  static dangerCalloutBottom() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgDanger(),
      border: Border(
        bottom: BorderSide(
          color: Color(0xFFc23321),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Information callout Bottom BoxDecoration
  *   @return BoxDecoration
  */
  static InfoCalloutBottom() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgInfo(),
      border: Border(
        bottom: BorderSide(
          color: Color(0xFF0097bc),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Secondary callout Bottom BoxDecoration
  *   @return BoxDecoration
  */
  static secondaryCalloutBottom() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgSecondary(),
      border: Border(
        bottom: BorderSide(
          color: Color(0xFFc87f0a),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   primary callout left BoxDecoration
  *   @return BoxDecoration
  */
  static primaryCalloutLeft() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgPrimary(),
      border: Border(
        left: BorderSide(
          color: Color(0xFF00733e),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Success callout left BoxDecoration
  *   @return BoxDecoration
  */
  static successCalloutLeft() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgSuccess(),
      border: Border(
        left: BorderSide(
          color: Color(0xFF00733e),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Danger callout left BoxDecoration
  *   @return BoxDecoration
  */
  static dangerCalloutLeft() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgDanger(),
      border: Border(
        left: BorderSide(
          color: Color(0xFFc23321),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Information callout left BoxDecoration
  *   @return BoxDecoration
  */
  static InfoCalloutLeft() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgInfo(),
      border: Border(
        left: BorderSide(
          color: Color(0xFF0097bc),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Secondary callout left BoxDecoration
  *   @return BoxDecoration
  */
  static secondaryCalloutLeft() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgSecondary(),
      border: Border(
        left: BorderSide(
          color: Color(0xFFc87f0a),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   primary callout Right BoxDecoration
  *   @return BoxDecoration
  */
  static primaryCalloutRight() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgPrimary(),
      border: Border(
        right: BorderSide(
          color: Color(0xFF00733e),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Success callout Right BoxDecoration
  *   @return BoxDecoration
  */
  static successCalloutRight() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgSuccess(),
      border: Border(
        right: BorderSide(
          color: Color(0xFF00733e),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Danger callout Right BoxDecoration
  *   @return BoxDecoration
  */
  static dangerCalloutRight() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgDanger(),
      border: Border(
        right: BorderSide(
          color: Color(0xFFc23321),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Information callout Right BoxDecoration
  *   @return BoxDecoration
  */
  static InfoCalloutRight() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgInfo(),
      border: Border(
        right: BorderSide(
          color: Color(0xFF0097bc),
          width: 2,
        ),
      ),
    );
  }

  /*
  *   Secondary callout Right BoxDecoration
  *   @return BoxDecoration
  */
  static secondaryCalloutRight() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgSecondary(),
      border: Border(
        right: BorderSide(
          color: Color(0xFFc87f0a),
          width: 2,
        ),
      ),
    );
  }
}
