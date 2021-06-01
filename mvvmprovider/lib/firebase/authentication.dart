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
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class AuthenticationHelper {
  /*
  *   Log out
  *   Remove data from share preferrence
  *   Remove data from global scope (See: global.dart)
  *   Redirect to designated route
  *
  *   @param    context          BuildContext
  *   @param    route            String                     Route name (in route.dart)
  */
  //static proceedLogout(BuildContext context, String route) async {
  //  Log out of facebook
//    final FacebookLogin _facebookLogin = FacebookLogin();
//    _facebookLogin.logOut();

  //  Remove data from share preferrence
//    final prefs = await SharedPreferences.getInstance();
//    prefs.remove(MyEnvironment.userTokenSharePreferrenceName);
//    prefs.remove(MyEnvironment.userIdSharePreferrenceName);

  // Remove firebase messaging
//    FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
//    _firebaseMessaging.unsubscribeFromTopic('${global.userId}');

  //  Remove global data
  // global.clearAll();

  //  Redirect to designated view
//    Navigator.pushNamedAndRemoveUntil(
//      context,
//      route,
//          (Route<dynamic> rt) => false,
//    );
  //}
}
