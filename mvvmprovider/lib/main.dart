/*
| ---------------------------------------------------------------------- 
| main.dadrt is first run app
| ----------------------------------------------------------------------     
|   MultiProvider state management 
|   PartRoute is running page 
|
*/

import 'package:connectivity/connectivity.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvvmprovider/config/config_wrapper.dart';
import 'package:mvvmprovider/helpers/share_preference.dart';
import 'package:mvvmprovider/helpers/share_preference_key.dart';
import 'package:mvvmprovider/routes/route.dart';
import 'package:provider/provider.dart';
import 'constants/app_colors.dart';
import 'env.dart';

var navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //await AppSharePreference.instance.setString(SharePreferenceKey.kLanguage, 'en');
  var language = await AppSharePreference.instance
      .getString(SharePreferenceKey.kLanguage); //get from share preference
  runApp(MultiProvider(
    child: ConfigWrapper(
      child: MyApp(navigatorKey: navigatorKey),
      /*
      |----------------------------------------------
      | configuration is running file env connection api url
      |----------------------------------------------
      | @env is name contant in env.dart 
      |
      |*/

      configuration: env,
      language: language, // get from share preference
    ),
    providers: [
      StreamProvider.value(value: Connectivity().onConnectivityChanged),
      // ChangeNotifierProvider.value(value: HistoryViewModel()),
    ],
  ));
}

class MyApp extends StatelessWidget {
  /*
  |-------------------------------------------
  | MyApp screen running
  |-------------------------------------------
  |This widget is the root of your application.
  |
  |*/

  final navigatorKey;

  const MyApp({Key key, this.navigatorKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: AppColors.primaryBlack,
        primaryColor: AppColors.themeColor(),
      ),
      debugShowCheckedModeBanner: false,
      /*
      |------------------------------------------
      | home route the first running app
      |------------------------------------------
      | @initialRoute is root of route
      | @routes is a route connection to file route
      | @navigatorKey is navigation globle screen connection provider
      |
      */
      //home: Container(),
      initialRoute: '/',
      routes: PartRoute.allRoutes(),
      navigatorKey: navigatorKey,
    );
  }
}
