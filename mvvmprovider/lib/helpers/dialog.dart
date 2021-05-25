/*
| ---------------------------------------------------------------------- 
| Add More Action Button / Menu
| ----------------------------------------------------------------------     
|
|
|
*/

// import 'package:aklasse/config/config.dart';
// import 'package:aklasse/config/config_wrapper.dart';
// import 'package:aklasse/constants/colors.dart';
// import 'package:aklasse/constants/fonts.dart';
// import 'package:aklasse/utils/share_preference.dart';
// import 'package:aklasse/utils/share_preference_key.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class DialogCustom {
//   static Future<void> logOutDialog(BuildContext context) async {
//     return showDialog(
//         barrierDismissible: false,
//         context: context,
//         builder: (BuildContext context) {
//           Config config = ConfigWrapper.of(context);
//           return Dialog(
//               backgroundColor: Color(0xFF212121),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10.0))),
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(10.0))),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Container(
//                     height: 200.0,
//                     child: Column(
//                       children: <Widget>[
//                         Padding(
//                           padding:
//                               const EdgeInsets.only(top: 37.0, bottom: 16.0),
//                           child: new Text(
//                             config.translate('logOut'),
//                             style: MyFonts.largerText(),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 25.0),
//                           child: new Text(
//                             config.translate('doYouWantToLogout'),
//                             style: MyFonts.mediumText(),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                         Row(
//                           children: <Widget>[
//                             Material(
//                               color: Color(0xFF32373F),
//                               borderRadius: new BorderRadius.all(
//                                 Radius.circular(9.0),
//                               ),
//                               child: InkWell(
//                                 onTap: () {
//                                   Navigator.pop(context, 'Cancel');
//                                 },
//                                 child: Container(
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 40.0,
//                                         right: 40.0,
//                                         top: 18,
//                                         bottom: 18.0),
//                                     child: new Text(
//                                       config.translate('cancel'),
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 13,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Spacer(),
//                             Material(
//                               color: Color(0xFFBC3430),
//                               borderRadius: new BorderRadius.all(
//                                 Radius.circular(9.0),
//                               ),
//                               child: InkWell(
//                                 onTap: () async {
//                                   //sign out from firebase
//                                   await FirebaseAuth.instance.signOut();
//                                   await FirebaseMessaging().deleteInstanceID();
//                                   //clear token and data
//                                   await AppSharePreference.instance
//                                       .setString(SharePreferenceKey.kTOKEN, '');
//                                   await AppSharePreference.instance
//                                       .setString(SharePreferenceKey.kCusID, '');
//                                   await AppSharePreference.instance.setString(
//                                       SharePreferenceKey.kCusInfo, '');
//                                   //navigate to login
//                                   Navigator.of(context).pushNamedAndRemoveUntil(
//                                       '/loginphone_screen',
//                                       (Route<dynamic> route) => false);
//                                   //FirebaseUser user = FirebaseAuth.instance.currentUser;
//                                 },
//                                 child: Container(
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 48.0,
//                                         right: 48.0,
//                                         top: 18.0,
//                                         bottom: 18.0),
//                                     child: new Text(
//                                       config.translate('yes'),
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 13,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ));
//         });
//   }

//   static Future<void> bookingDialog(BuildContext context) async {
//     return showDialog(
//         barrierDismissible: false,
//         context: context,
//         builder: (BuildContext context) {
//           Config config = ConfigWrapper.of(context);
//           return Dialog(
//               backgroundColor: Color(0xFF212121),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10.0))),
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(10.0))),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Container(
//                     height: 320.0,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: <Widget>[
//                         Center(
//                           child: Padding(
//                             padding:
//                                 const EdgeInsets.only(top: 10.0, bottom: 16.0),
//                             child: new Text(
//                               config.translate('booking'),
//                               style: MyFonts.largerText(),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
//                           child: Text(
//                             config.translate('time'),
//                             style: MyFonts.fieldText(),
//                           ),
//                         ),
//                         Container(
//                           child: TextFormField(
//                             controller: null,
//                             keyboardType: TextInputType.text,
//                             textInputAction: TextInputAction.next,
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                             decoration: InputDecoration(
//                               hintStyle: MyFonts.hintText(),
//                               hintText: config.translate('pleaseSelect'),
//                               alignLabelWithHint: true,
//                               suffixIcon: Icon(
//                                 Icons.calendar_today,
//                                 color: Color(0xFF777777),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
//                           child: Text(
//                             config.translate('description'),
//                             style: MyFonts.fieldText(),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(bottom: 20.0),
//                           child: TextFormField(
//                             controller: null,
//                             keyboardType: TextInputType.text,
//                             textInputAction: TextInputAction.next,
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                             decoration: InputDecoration(
//                               hintStyle: MyFonts.hintText(),
//                               hintText: config.translate('pleaseEnter'),
//                               alignLabelWithHint: true,
//                             ),
//                           ),
//                         ),
//                         Row(
//                           children: <Widget>[
//                             Material(
//                               color: Color(0xFF32373F),
//                               borderRadius: new BorderRadius.all(
//                                 Radius.circular(9.0),
//                               ),
//                               child: InkWell(
//                                 onTap: () {
//                                   Navigator.pop(context, 'Cancel');
//                                 },
//                                 child: Container(
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 40.0,
//                                         right: 40.0,
//                                         top: 18,
//                                         bottom: 18.0),
//                                     child: new Text(
//                                       config.translate('cancel'),
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 13,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Spacer(),
//                             Material(
//                               color: Color(0xFFBC3430),
//                               borderRadius: new BorderRadius.all(
//                                 Radius.circular(9.0),
//                               ),
//                               child: InkWell(
//                                 onTap: () async {
//                                   showDialog(
//                                       context: context,
//                                       builder: (context) {
//                                         Future.delayed(Duration(seconds: 5),
//                                             () {
//                                           Navigator.of(context).pop(true);
//                                         });
//                                         return AlertDialog(
//                                           backgroundColor: Colors.transparent,
//                                           content: Container(
//                                             width: 300.0,
//                                             height: 248.0,
//                                             decoration: new BoxDecoration(
//                                               shape: BoxShape.rectangle,
//                                               color: MyColors.grayColor(),
//                                               borderRadius: new BorderRadius
//                                                       .all(
//                                                   new Radius.circular(10.0)),
//                                             ),
//                                             child: Center(
//                                               child: Column(
//                                                 children: <Widget>[
//                                                   Container(
//                                                     padding:
//                                                         EdgeInsets.only(
//                                                             top: 40),
//                                                     child: Center(
//                                                       child: Image(
//                                                         width: 60.0,
//                                                         image: AssetImage(
//                                                             'assets/icon/ic_success.png'),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding: const EdgeInsets.symmetric(vertical: 20.0),
//                                                     child: Text(
//                                                       config.translate('done'),
//                                                       style: TextStyle(
//                                                           fontWeight:
//                                                               FontWeight.w500,
//                                                           fontSize: 24,
//                                                           color: Colors.white),
//                                                     ),
//                                                   ),
//                                                   Text(config.translate('thankForBookingOurTeamWill')
//                                                     ,
//                                                     style: TextStyle(
//                                                       color: Colors.white,
//                                                       fontSize: 14.0,
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding:
//                                                         const EdgeInsets.only(top:10.0,
//                                                             bottom: 20.0),
//                                                     child: Text(
//                                                       config.translate('contactToYouSoon'),
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 14.0,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         );
//                                       });
//                                 },
//                                 child: Container(
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 48.0,
//                                         right: 48.0,
//                                         top: 18.0,
//                                         bottom: 18.0),
//                                     child: new Text(
//                                       config.translate('book'),
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 13,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ));
//         });
//   }
// }
