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
import 'package:mvvmprovider/config/config.dart';

// ignore: must_be_immutable
class ConfigWrapper extends StatefulWidget {
  final Widget child;
  final Map<String, String> configuration;
  static Dio _dio;
  String language;

  static Dio get dio => _dio;

  ConfigWrapper({Key key, this.configuration, this.child, this.language})
      : super(key: key) {
    _dio = Dio();
    _dio.options.baseUrl = configuration["base_url"];
    _dio.options.connectTimeout = int.parse(configuration["api_timeout"]);
  }

  @override
  _ConfigWrapperState createState() => _ConfigWrapperState(
      child: child,
      configuration: configuration,
      language: language == "" ? configuration['default_lang'] : language);

  static Config of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Config>();
  }

  static changeLanguage(BuildContext context, String language) {
    (context.findAncestorStateOfType<_ConfigWrapperState>())
        .changeLanguage(language);
  }
}

class _ConfigWrapperState extends State<ConfigWrapper> {
  Widget child;
  Map<String, String> configuration;
  String language;

  _ConfigWrapperState({this.child, this.configuration, this.language});

  @override
  Widget build(BuildContext context) {
    return Config(
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
