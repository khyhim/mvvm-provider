/*
| ---------------------------------------------------------------------- 
| AppSharePreference
| ----------------------------------------------------------------------     
| @ call instance
|
|
|
*/

import 'dart:convert';

import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';

class AppSharePreference {
  static EncryptedSharedPreferences _preferences;

  static EncryptedSharedPreferences get instance {
    if (_preferences == null) {
      _preferences = EncryptedSharedPreferences();
    }
    return _preferences;
  }
}
