import 'package:flutter/material.dart';
import 'package:mvvmprovider/configs/config.dart';
import 'package:mvvmprovider/configs/config_wrapper.dart';
import 'package:mvvmprovider/constants/app_fonts.dart';

class ComingSoonScreen extends StatefulWidget {
  @override
  _ComingSoonScreenState createState() => _ComingSoonScreenState();
}

class _ComingSoonScreenState extends State<ComingSoonScreen> {
  @override
  Widget build(BuildContext context) {
    AppConfig appConfig = AppConfigWrapper.of(context);
    return Scaffold(
      appBar: AppBar(
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
        title: Text(
          appConfig.translate('comingSoon'),
          style: AppFonts.h4(),
        ),
      ),
      body: Container(
        color: Color(0xFFE5E5E5),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Image.asset(
                "assets/logo/logo.png",
                fit: BoxFit.fitWidth,
                width: 139,
                height: 110,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                config.translate('comingSoon'),
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
