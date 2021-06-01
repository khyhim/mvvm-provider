/*
| ---------------------------------------------------------------------- 
| PhoneAuth
| ----------------------------------------------------------------------     
|
|
|
|
|
*/

import 'package:firebase_auth/firebase_auth.dart';

typedef VerificationComplete = void Function(AuthCredential authCredential);
typedef VerificationFail = void Function(FirebaseAuthException authException);
typedef CodeSent = dynamic Function(String verificationId);
typedef CodeAutoRetrievalTimeOut = dynamic Function(String verificationId);

class PhoneAuth {
  FirebaseAuth _auth;
  String verificationId;
  static final PhoneAuth instance = PhoneAuth();
  PhoneAuth() {
    _auth = FirebaseAuth.instance;
  }

  handleSignIn(
      String phone,
      VerificationComplete verificationComplete,
      VerificationFail verificationFail,
      CodeSent codeSent,
      CodeAutoRetrievalTimeOut timeOut) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: verificationComplete,
        verificationFailed: verificationFail,
        codeSent: (verificationId, [force]) {
          this.verificationId = verificationId;
          codeSent(verificationId);
        },
        codeAutoRetrievalTimeout: timeOut);
  }

  codeSent(String verificationId, [int forceResendingToken]) async {
    this.verificationId = verificationId;
  }

  codeAutoRetrievalTimeout(String verificationId) {
    this.verificationId = verificationId;
  }

  final PhoneVerificationFailed verificationFailed =
      (FirebaseAuthException authException) {
    String status;
    if (authException.message.contains('not authorized'))
      status = 'Something has gone wrong, please try later';
    else if (authException.message.contains('Network'))
      status = 'Please check your internet connection and try again';
    else
      status = 'Something has gone wrong, please try later';
  };
  verificationCompleted(AuthCredential authCredential) {
    _auth
        .signInWithCredential(authCredential)
        .then((UserCredential value) async {
      if (value.user != null) {
        //TODO: Login to Server
      }
    }).catchError((_) {});
  }

  Future<UserCredential> signInWithPhoneNumber(String smsCode) async {
    try {
      var authCredential = PhoneAuthProvider.credential(
          verificationId: this.verificationId, smsCode: smsCode);
      UserCredential authResult =
          await _auth.signInWithCredential(authCredential);
      return authResult;
    } catch (err) {
      throw Exception(err);
    }
  }

  Future<UserCredential> signInWithCredentail(
      AuthCredential authCredential) async {
    try {
      UserCredential authResult =
          await _auth.signInWithCredential(authCredential);
      return authResult;
    } catch (err) {
      throw Exception(err);
    }
  }
}
