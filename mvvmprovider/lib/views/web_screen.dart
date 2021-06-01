import 'package:mvvmprovider/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebScreen extends StatefulWidget {
  @override
  _WebScreenState createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://www.google.com",
      appBar: new AppBar(
        elevation: 1,
        leading: MaterialButton(
          shape: CircleBorder(),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: ImageIcon(
            AssetImage(
              'assets/icon/ic_rollback.png',
            ),
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: new Text(
          "Widget webview",
          style: AppFonts.h4(),
        ),
      ),
    );
  }
}
