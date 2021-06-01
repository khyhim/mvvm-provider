import 'package:flutter/material.dart';
import 'package:mvvmprovider/views/coming_soon_screen.dart';
import 'package:mvvmprovider/views/splash_screen.dart';

class PartRoute {
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api". Enjoy building your API!
|
*/

  /*
  |-----------------------------------------
  |   All routes
  |------------------------------------------
  |   @return  Map<String, WidgetBuilder>
  |
  */
  static Map<String, WidgetBuilder> allRoutes() {
    return {
      '/': (BuildContext context) => SplashScreen(),
      '/coming_soon_screen': (BuildContext context) => ComingSoonScreen(),
    };
  }
}
