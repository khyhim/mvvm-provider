/*
| ---------------------------------------------------------------------- 
| Driver
| ----------------------------------------------------------------------     
| All class here is driver connection hold app to use
|   
|  
|   
*/

import 'package:flutter/material.dart';
import 'package:mvvmprovider/lang/lang.dart';

// ignore: must_be_immutable
class AppConfig extends InheritedWidget {
  Map<String, String> configuration;
  Map<String, String> translation;
  String language;

  AppConfig(
      {Key key,
      @required Widget child,
      @required this.configuration,
      this.language})
      : assert(child != null),
        assert(configuration != null),
        super(child: child, key: key) {
    if (language == null) {
      language = configuration["lang"];
    }
    translation = lang[language];
  }

  @override
  bool updateShouldNotify(AppConfig oldWidget) {
    // TODO: implement updateShouldNotify
    return this.language != oldWidget.language;
  }

  String translate(String text) {
    return translation[text] ?? "No text found";
  }
}
