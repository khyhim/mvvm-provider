/*
| ---------------------------------------------------------------------- 
| imageUrl
| ----------------------------------------------------------------------     
| imageUrl is string type need context make full url
|
|
|
*/

import 'package:flutter/material.dart';
import 'package:mvvmprovider/configs/config_wrapper.dart';

String url = "";

String imageUrlHelper(BuildContext context, String path) {
  if (url.isEmpty) {
    url = ConfigWrapper.of(context).configuration['url'];
  }
  return "$url/$path";
}
