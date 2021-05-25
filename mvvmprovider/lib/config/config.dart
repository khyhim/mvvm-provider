/*
| ---------------------------------------------------------------------- 
| Add More Action Button / Menu
| ----------------------------------------------------------------------     
|
|
*/

import 'package:flutter/material.dart';
import 'package:mvvmprovider/localization/locale.dart';

// ignore: must_be_immutable
class Config extends InheritedWidget {
  Map<String, String> configuration;
  Map<String, String> translation;
  String language;

  Config(
      {Key key,
      @required Widget child,
      @required this.configuration,
      this.language})
      : assert(child != null),
        assert(configuration != null),
        super(child: child, key: key) {
    if (language == null) {
      language = configuration["locale"];
    }
    translation = locale[language];
  }

  @override
  bool updateShouldNotify(Config oldWidget) {
    // TODO: implement updateShouldNotify
    return this.language != oldWidget.language;
  }

  String translate(String text) {
    return translation[text] ?? "No text found";
  }
}
