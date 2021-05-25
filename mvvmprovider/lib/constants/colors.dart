/*
| ---------------------------------------------------------------------- 
| Add More Action Button / Menu
| ----------------------------------------------------------------------     
|
|
*/

import 'dart:ui';
import 'package:flutter/material.dart';

class MyColors {
  //  Remove default constructor
  //MyColors._internal();

  /*
   *  White color
   *  @return Color
   */
  static whiteColor() {
    return Colors.white;
  }

  /*
   *  Vehicle color
   *  @return Color
   */
  static vehicleColor() {
    return Color(0xFF979797);
  }

  /*
   *  Theme Color
   *  @return Color
   */
  static themeColor() {
    return Color(0xFF2F2F2F);
  }

  /*
   *  Black color
   *  @return Color
   */
  static blackColor() {
    return Color(0xff090909);
  }

  /*
   *  red color
   *  @return Color
   */
  static redColor() {
    return Color(0xFFBC3430);
  }

  /*
   *  Gray color
   *  @return Color
   */
  static grayColor() {
    return Color(0xFF464646);
  }

  /*
  *   Success color
  *   @return Color
  */
  static successColor() {
    return Color(0xff28a745);
  }

  /*
  *   Primary color
  *   @return Color
  */
  static primaryColor() {
    return Color(0xff007bff);
  }

  /*
  *   Secondary color
  *   @return Color
  */
  static secondaryColor() {
    return Color(0xff6c757d);
  }

  /*
  *   Danger color
  *   @return Color
  */
  static dangerColor() {
    return Color(0xffdc3545);
  }

  /*
  *   Warning color
  *   @return Color
  */
  static warningColor() {
    return Color(0xffffc107);
  }

  /*
  *   Information color
  *   @return Color
  */
  static infoColor() {
    return Color(0xff17a2b8);
  }

  /*
  *   Light color
  *   @return Color
  */
  static lightColor() {
    return Color(0xfff8f9fa);
  }

  /*
  *   Muted color
  *   @return Color
  */
  static mutedtColor() {
    return Color(0xff6c757d);
  }

  /*
  *   Dark color
  *   @return Color
  */
  static darkColor() {
    return Color(0xFF000000);
  }

  /*
  *   bglinearGradient color
  *   @return Color
  */
  static bgLinearGradient() {
    return LinearGradient(
        colors: [
          const Color(0xFF1C1C1B),
          const Color(0xFF000000),
        ],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
        tileMode: TileMode.mirror);
  }

  /*
  *   bgLoginGradient color
  *   @return Color
  */
  static bgLoginGradient() {
    return LinearGradient(
        colors: [
          const Color(0xFF1C1C1B),
          const Color(0xFF212121),
        ],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
        tileMode: TileMode.mirror);
  }

  /*
  *   Maroon color
  *   @return Color
  */
  static maroonColor() {
    return Color(0xffD81B60);
  }

  /*
  *   Purple color
  *   @return Color
  */
  static purpleColor() {
    return Color(0xff605ca8);
  }

  /*
  *   Navy color
  *   @return Color
  */
  static navyColor() {
    return Color(0xff001F3F);
  }

  /*
  *   Orange color
  *   @return Color
  */
  static orangeColor() {
    return Color(0xffFF851B);
  }

  /*
  *   Olive color
  *   @return Color
  */
  static oliveColor() {
    return Color(0xffFF851B);
  }

  /*
  *   bg-success color
  *   @return Color
  */
  static bgSuccess() {
    return Color(0xff28a745);
  }

  /*
  *   bg-rimary color
  *   @return Color
  */
  static bgPrimary() {
    return Color(0xff007bff);
  }

  /*
  *   bg-secondary color
  *   @return Color
  */
  static bgSecondary() {
    return Color(0xff6c757d);
  }

  /*
  *   bg-danger color
  *   @return Color
  */
  static bgDanger() {
    return Color(0xffdc3545);
  }

  static bgRed() {
    return Color(0xFFBC3430);
  }

  /*
  *   bg-warning color
  *   @return Color
  */
  static bgWarning() {
    return Color(0xffffc107);
  }

  /*
  *   bg-Information color
  *   @return Color
  */
  static bgInfo() {
    return Color(0xff17a2b8);
  }

  /*
  *   bg-Light color
  *   @return Color
  */
  static bgLight() {
    return Color(0xfff8f9fa);
  }

  /*
  *   bg-dark color
  *   @return Color
  */
  static bgDark() {
    return Color(0xff343a40);
  }

  /*
  *   bg-maroon color
  *   @return Color
  */
  static bgMaroon() {
    return Color(0xffD81B60);
  }

  /*
  *   bg-purple color
  *   @return Color
  */
  static bgPurple() {
    return Color(0xff605ca8);
  }

  /*
  *   bg-navy color
  *   @return Color
  */
  static bgNavy() {
    return Color(0xff001F3F);
  }

  /*
  *   bg-orange color
  *   @return Color
  */
  static bgOrange() {
    return Color(0xffFFB94A);
  }

  /*
  *   bg-olive color
  *   @return Color
  */
  static bgOlive() {
    return Color(0xffFF851B);
  }

  /*
  *   bg-white color
  *   @return Color
  */
  static bgWhite() {
    return Color(0xffffffff);
  }

  /*
  *   Alert Success color
  *   @return Color
  */
  static alertSuccess() {
    return Color(0xffd4edda);
  }

  /*
  *   Alert Primary color
  *   @return Color
  */
  static alertPrimary() {
    return Color(0xffcce5ff);
  }

  /*
  *   Alert Secondary color
  *   @return Color
  */
  static alertSecondary() {
    return Color(0xffe2e3e5);
  }

  /*
  *  Alert Danger color
  *   @return Color
  */
  static alertDanger() {
    return Color(0xfff8d7da);
  }

  /*
  *   Alert Warning color
  *   @return Color
  */
  static alertWarning() {
    return Color(0xfffff3cd);
  }

  /*
  *   Alert Information color
  *   @return Color
  */
  static alertInfo() {
    return Color(0xffd1ecf1);
  }

  /*
  *   Alert Light color
  *   @return Color
  */
  static alertLight() {
    return Color(0xfffefefe);
  }

  /*
  *   Alert Dark color
  *   @return Color
  */
  static alertDark() {
    return Color(0xffd6d8d9);
  }

  /*this is return color brand
   * Social Buttons media
   */

  /*
  *   bg-bitbucket color
  *   @return Color
  */
  static bgBitbucket() {
    return Color(0xff205081);
  }

  /*
  *   bg-dropbox color
  *   @return Color
  */
  static bgDropbox() {
    return Color(0xff1087dd);
  }

  /*
  *   bg-Facebook color
  *   @return Color
  */
  static bgFacebook() {
    return Color(0xff3b5998);
  }

  /*
  *   bg-Flickr color
  *   @return Color
  */
  static bgFlickr() {
    return Color(0xffff0084);
  }

  /*
  *   bg-Foursquare color
  *   @return Color
  */
  static bgFoursquare() {
    return Color(0xfff94877);
  }

  /*
  *   bg-Github color
  *   @return Color
  */
  static bgGithub() {
    return Color(0xff444444);
  }

  /*
  *   bg-Instagram color
  *   @return Color
  */
  static bgInstagram() {
    return Color(0xff3f729b);
  }

  /*
  *   bg-LinkedIn color
  *   @return Color
  */
  static bgLinkedIn() {
    return Color(0xff007bb6);
  }

  /*
  *   bg-Tumblr color
  *   @return Color
  */
  static bgTumblr() {
    return Color(0xff2c4762);
  }

  /*
  *   bg-Twitter color
  *   @return Color
  */
  static bgTwitter() {
    return Color(0xff55acee);
  }

  /*
  *   bg-VK color
  *   @return Color
  */
  static bgVK() {
    return Color(0xff587ea3);
  }

  static MaterialColor primaryBlack = const MaterialColor(0xFF0F0F0F, const {
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(0xFF000000),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  });
}
