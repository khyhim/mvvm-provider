/*
| ---------------------------------------------------------------------- 
| Driver
| ----------------------------------------------------------------------     
| All class here is driver connection hold app to use
|   
|  
|   
*/

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mvvmprovider/configs/config.dart';

// ignore: must_be_immutable
class AppConfigWrapper extends StatefulWidget {
  final Widget child;
  final Map<String, String> configuration;
  static Dio _dio;
  String language;

  static Dio get dio => _dio;

  AppConfigWrapper({Key key, this.configuration, this.child, this.language})
      : super(key: key) {
    _dio = Dio();
    _dio.options.baseUrl = configuration["base_url"];
    _dio.options.connectTimeout = int.parse(configuration["api_timeout"]);
  }

  @override
  _AppConfigWrapperState createState() => _AppConfigWrapperState(
      child: child,
      configuration: configuration,
      language: language == "" ? configuration['default_lang'] : language);

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Config>();
  }

  static changeLanguage(BuildContext context, String language) {
    (context.findAncestorStateOfType<_AppConfigWrapperState>())
        .changeLanguage(language);
  }
}

class _AppConfigWrapperState extends State<AppConfigWrapper> {
  Widget child;
  Map<String, String> configuration;
  String language;

  _AppConfigWrapperState({this.child, this.configuration, this.language});

  @override
  Widget build(BuildContext context) {
    return AppConfig(
      child: child,
      configuration: configuration,
      language: language,
    );
  }

  changeLanguage(String language) {
    setState(() {
      this.language = language;
    });
  }
}
