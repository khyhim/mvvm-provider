import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mvvmprovider/helpers/share_preference.dart';
import 'package:mvvmprovider/helpers/share_preference_key.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//  bool isHasUser = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      //initialize firebase app
      await Firebase.initializeApp();

      Timer(Duration(seconds: 3), () async {
        //check for login user firebase
        var firebaseUser = FirebaseAuth.instance.currentUser;
        if (firebaseUser != null) {
          var token = await AppSharePreference.instance
              .getString(SharePreferenceKey.kTOKEN);
          var cusID = await AppSharePreference.instance
              .getString(SharePreferenceKey.kCusID);

          if (token == '' || cusID == '') {
            //user is log out
            await FirebaseAuth.instance.signOut();
          } else {
            //user is log in
            Navigator.of(context).pushReplacementNamed("/main_screen");
            return;
          }
        }
        Navigator.of(context).pushReplacementNamed("/loginphone_screen");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: [
              const Color(0xF242424),
              const Color(0xFF080808),
              const Color(0xFF000000),
            ],
            begin: const FractionalOffset(0.5, 0.5),
            end: const FractionalOffset(0.5, 0.5),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Image.asset(
                "assets/logo/logo_aklasse.png",
                fit: BoxFit.fitWidth,
                width: 139,
                height: 110,
              ),
            ),
            Divider(
              height: 30,
            ),
            Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/image/bg_aklasse.png",
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
