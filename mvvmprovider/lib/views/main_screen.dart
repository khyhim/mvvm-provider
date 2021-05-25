// import 'dart:convert';
// import 'dart:io';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:carousel_slider/carousel_controller.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:kommunicate_flutter_plugin/kommunicate_flutter_plugin.dart';
// import 'package:provider/provider.dart';
// import 'package:rxdart/rxdart.dart';
// import 'package:url_launcher/url_launcher.dart';

// FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   CarouselController buttonCarouselController = CarouselController();
//   var userStreamController = BehaviorSubject<UserCustomer>();
//   var loadingStreamController = BehaviorSubject<bool>();
//   var currentStreamController = BehaviorSubject<int>();

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     userStreamController.close();
//     loadingStreamController.close();
//     currentStreamController.close();
//     super.dispose();
//   }

//   @override
//   void initState() {
//     super.initState();
//     loadingStreamController.add(false);
//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//       Provider.of<PromotionViewModel>(context, listen: false).getPromotion();
//       Provider.of<ContactUsViewModel>(context, listen: false).getContactUs();
//       Provider.of<NotificationViewModel>(context, listen: false)
//           .getNotification();
//       AppSharePreference.instance
//           .getString(SharePreferenceKey.kCusInfo)
//           .then((value) {
//         UserCustomer userCustomer = UserCustomer.fromJson(jsonDecode(value));
//         userStreamController.add(userCustomer);
//       });
//       await LocaleNotification.instance
//           .initialisation(onDidReceiveLocalNotification, onSelectNotification);
//       initializeFirebaseMessage();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Config config = ConfigWrapper.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF2F2F2F),
//         title: Image.asset(
//           'assets/icon/ic_logo_brand.png',
//           fit: BoxFit.fitHeight,
//           width: 152,
//           height: 11,
//         ),
//         actions: <Widget>[
//           InkWell(
//             onTap: () {
//               Navigator.of(context).pushNamed('/notificaion_screen');
//             },
//             child: Container(
//               padding: EdgeInsets.only(top: 16.0),
//               child: new Stack(
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.only(right: 13.0, left: 13.0),
//                     child: new Image.asset(
//                       "assets/icon/ic_notification.png",
//                       fit: BoxFit.fill,
//                       width: 22,
//                       height: 22,
//                     ),
//                   ),
//                   new Positioned(
//                       right: 5,
//                       bottom: 15,
//                       child: Selector<NotificationViewModel, int>(
//                           selector: (_, viewModel) => viewModel.unread,
//                           builder: (_, snapshot, __) {
//                             if (snapshot != null && snapshot > 0) {
//                               return new Container(
//                                 padding: EdgeInsets.all(1),
//                                 decoration: new BoxDecoration(
//                                   border: Border.all(
//                                     color: Color(0xFF2F2F2F),
//                                     width: 2.0,
//                                   ),
//                                   color: MyColors.bgRed(),
//                                   borderRadius: BorderRadius.circular(50),
//                                 ),
//                                 constraints: BoxConstraints(
//                                   minWidth: 18,
//                                   minHeight: 10,
//                                 ),
//                                 child: new Text(
//                                   snapshot.toString(),
//                                   style: new TextStyle(
//                                     color: Color(0xFF2F2F2F),
//                                     fontSize: 11,
//                                   ),
//                                   textAlign: TextAlign.center,
//                                 ),
//                               );
//                             }
//                             return new SizedBox.shrink();
//                           }))
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             child: Selector<ContactUsViewModel, ContactUs>(
//                 selector: (context, viewModel) => viewModel.contactUs,
//                 builder: (_, value, __) {
//                   return InkWell(
//                       onTap: () {
//                         launch(('tel://${value.phone}'));
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(right: 13.0, left: 13.0),
//                         child: new Image.asset(
//                           'assets/icon/ic_phone.png',
//                           width: 22,
//                           height: 22,
//                         ),
//                       ));
//                 }),
//           ),
//           Container(
//             margin: EdgeInsets.only(right: 13.0),
//             child: InkWell(
//               onTap: () {
//                 Navigator.of(context).pushNamed('/account_screen');
//               },
//               child: new Stack(
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         top: 10.0, right: 13.0, left: 13.0),
//                     child: Container(
//                       width: 35,
//                       height: 35,
//                       child: Card(
//                         child: StreamBuilder(
//                           stream: userStreamController.stream,
//                           builder:
//                               (context, AsyncSnapshot<UserCustomer> snapshot) {
//                             return CachedNetworkImage(
//                               imageUrl: correctImageUrl(
//                                   context,
//                                   snapshot.data != null
//                                       ? snapshot.data.profileImage
//                                       : ''),
//                               placeholder: (context, url) => Image.asset(
//                                   "assets/image/default_profile.png",
//                                   fit: BoxFit.fill),
//                               errorWidget: (context, url, error) => Image.asset(
//                                   "assets/image/default_profile.png",
//                                   fit: BoxFit.fill),
//                               fit: BoxFit.cover,
//                               fadeInDuration: Duration(seconds: 0),
//                               fadeOutDuration: Duration(seconds: 0),
//                             );
//                           },
//                         ),
//                         clipBehavior: Clip.antiAlias,
//                       ),
//                     ),
//                   ),
//                   new Positioned(
//                     right: 8,
//                     bottom: 8,
//                     child: new Container(
//                         padding: EdgeInsets.all(1),
//                         decoration: new BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                         ),
//                         constraints: BoxConstraints(
//                           minWidth: 18,
//                           minHeight: 10,
//                         ),
//                         child: new Image.asset(
//                           'assets/icon/ic_top_ranking.png',
//                           width: 14,
//                           height: 14,
//                         )),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         child: InkWell(
//           onTap: () {
//             Navigator.of(context).pushNamed('/booking_screen');
//           },
//           child: Container(
//             color: Color(0xFF32373F),
//             height: 75,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   config.translate('bookNow'),
//                   style: MyFonts.h2(),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       body:RefreshIndicator(
//               child: Stack(
//           children: [
//             _homeScreenBody(config),
//             _loadingView(),
//           ],
//         ),
//      onRefresh: () async{
//  WidgetsBinding.instance.addPostFrameCallback((_) async {
//       Provider.of<PromotionViewModel>(context, listen: false).getPromotion();
//       Provider.of<ContactUsViewModel>(context, listen: false).getContactUs();
//       Provider.of<NotificationViewModel>(context, listen: false)
//           .getNotification();
 
//     });
//      }, ),
      
  


//       floatingActionButton: Container(
//         height: 65.0,
//         width: 65.0,
//         child: FittedBox(
//           child: FloatingActionButton(
//               backgroundColor: MyColors.bgRed(),
//               onPressed: () async {
//                 try {
//                   dynamic conversationObject = {
//                     'appId': '199521a9b4f30c17606a3f961323a09e9'
//                   };
//                   loadingStreamController.add(true);
//                   dynamic result =
//                       await KommunicateFlutterPlugin.buildConversation(
//                           conversationObject);
//                   loadingStreamController.add(false);
//                 } on Exception catch (e) {}
//               },
//               child: StreamBuilder(
//                 stream: loadingStreamController.stream,
//                 builder: (context, snapshot) {
//                   if (snapshot.data != null && snapshot.data == true) {
//                     return CircularProgressIndicator();
//                   }
//                   return new Image.asset(
//                     'assets/icon/ic_chat.png',
//                     width: 25,
//                     height: 25,
//                   );
//                 },
//               )),
//         ),
//       ),
//     );
//   }

//   _homeScreenBody(config) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       decoration: new BoxDecoration(
//         gradient: MyColors.bgLinearGradient(),
//       ),
//       child: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             _rowPromotion(config),
//             _builderListViewPromotion(),
//             _rowMenu(config),
//             _rowMenuList(config),
//             _bgCar(),
//           ],
//         ),
//       ),
//     );
//   }

//   _rowPromotion(config) {
//     return new IntrinsicHeight(
//         child: Container(
//       padding: const EdgeInsets.only(left: 20, right: 20),
//       child: new Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
//             child: Text(
//               config.translate('promotions'),
//               style: MyFonts.largeText(),
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).pushNamed("/promotion_tab");
//             },
//             child: Text(
//               config.translate('seeAll'),
//               style: TextStyle(color: MyColors.redColor(), fontSize: 15.0),
//             ),
//           ),
//         ],
//       ),
//     ));
//   }

//   _builderListViewPromotion() {
//     return Column(
//       children: <Widget>[
//         Selector<PromotionViewModel, List<Promotion>>(
//             selector: (context, provider) => provider.oldPromotionList,
//             builder: (context, promotionShipList, _) {
//               return CarouselSlider(
//                 items: promotionShipList.map((element) {
//                   return InkWell(
//                     onTap: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PromotionDetailScreen(promotion: element)));
//                     },
//                     child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(9.0),
//                         child: CachedNetworkImage(
//                           imageUrl: correctImageUrl(
//                               context, '${element.promotionImage}'),
//                           placeholder: (context, url) => Image.asset(
//                               "assets/image/default_promotion.png",
//                               fit: BoxFit.fill),
//                           errorWidget: (context, url, error) => Image.asset(
//                               "assets/image/default_promotion.png",
//                               fit: BoxFit.fill),
//                           fit: BoxFit.cover,
//                           fadeInCurve: Curves.ease,
//                           filterQuality: FilterQuality.low,
//                         ),
//                       ),
//                     ),
//                   );
//                 }).toList(),
//                 carouselController: buttonCarouselController,
//                 options: CarouselOptions(
//                     height: 125.0,
//                     autoPlay: true,
//                     enlargeCenterPage: true,
//                     viewportFraction: 0.9,
//                     aspectRatio: 0.60,
//                     onPageChanged: (element, reason) {
//                       currentStreamController.add(element);
//                     }),
//               );
//             }),

            
//         Selector<PromotionViewModel, List<Promotion>>(
//             selector: (context, provider) => provider.oldPromotionList,
//             builder: (context, promotionShipList, _) {
//               return Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: promotionShipList.map((element) {
//                   int index = promotionShipList.indexOf(element);
//                   return StreamBuilder<int>(
//                     stream: currentStreamController.stream,
//                     builder: (context, AsyncSnapshot<int> snapshot) {
//                       if (snapshot.data == index) {
//                         return Container(
//                           width: 10.0,
//                           height: 4.0,
//                           margin: EdgeInsets.symmetric(
//                               vertical: 10.0, horizontal: 5.0),
//                           decoration: BoxDecoration(
//                             shape: BoxShape.rectangle,
//                             color: MyColors.bgRed(),
//                           ),
//                         );
//                       }
//                       return Container(
//                         width: 10.0,
//                         height: 4.0,
//                         margin: EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 5.0),
//                         decoration: BoxDecoration(
//                             shape: BoxShape.rectangle,
//                             color: MyColors.bgWhite()),
//                       );
//                     },
//                   );
//                 }).toList(),
//               );
//             }),
//       ],
//     );
//   }

//   _rowMenu(config) {
//     return new IntrinsicHeight(
//         child: Container(
//       padding: const EdgeInsets.only(left: 20, right: 20),
//       child: new Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(bottom: 10.0),
//             child: Text(
//               config.translate('menu'),
//               style: MyFonts.largeText(),
//             ),
//           ),
//         ],
//       ),
//     ));
//   }

//   _rowMenuList(config) {
//     return Container(
//         padding: const EdgeInsets.only(left: 20, right: 20),
//         child: new GridView(
//           shrinkWrap: true,
//           physics: NeverScrollableScrollPhysics(),
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
//           children: <Widget>[
//             _menuItem("/video_screen", "assets/icon/ic_education.png",
//                 config.translate('education')),
//             _menuItem("/vehiclelist_screen", "assets/icon/ic_vehicles.png",
//                 config.translate('vehicles')),
//             _menuItem("/booking_history_screen", "assets/icon/ic_booking.png",
//                 config.translate('booking')),
//             _menuItem("/balance_screen", "assets/icon/ic_balance.png",
//                 config.translate('balance')),
//             _menuItem("/garagelocator_tab", "assets/icon/ic_locator.png",
//                 config.translate('branchLocator')),
//             _menuItem("/payment_history_screen", "assets/icon/ic_history.png",
//                 config.translate('history')),
//           ],
//         ));
//   }

//   _menuItem(String route, String imageAsset, String title) {
//     return Material(
//       color: Color(0xFF2F2F2F),
//       borderRadius: new BorderRadius.all(
//         Radius.circular(9.0),
//       ),
//       child: InkWell(
//         onTap: () {
//           Navigator.of(context).pushNamed(route);
//         },
//         child: Container(
//           height: 105,
//           width: 105,
//           child: Column(
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(top: 20.0),
//                 child: Image.asset(
//                   imageAsset,
//                   fit: BoxFit.fill,
//                   width: 39.0,
//                   height: 41.0,
//                 ),
//               ),
//               Text(
//                 title,
//                 style: MyFonts.smallText(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   _loadingView(){
//     return  Selector<PromotionViewModel, ListenerState>(
//       selector: (context, viewModel) => viewModel.listenerState,
//       builder: (_, value, __) {
//         if (value == ListenerState.Loading) {
//           return Container(
//             child: Center(
//               child: Loading(),
//             ),
//           );
//         } else if (value == ListenerState.Loaded) {
//           return SizedBox.shrink();
//         } else if (value == ListenerState.Error) {
//           return SizedBox.shrink();
//         }else {
//           return SizedBox.shrink();
//         }
//       },
//     );
//   }
//   _bgCar() {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       margin: const EdgeInsets.only(top: 10),
//       child: Column(
//         children: <Widget>[
//           Image.asset(
//             "assets/image/bg_home.png",
//             fit: BoxFit.fitHeight,
//             width: MediaQuery.of(context).size.width,
//           ),
//         ],
//       ),
//     );
//   }

//   initializeFirebaseMessage() {
//     _firebaseMessaging.requestNotificationPermissions(
//         IosNotificationSettings(sound: true, badge: true, alert: true));
//     _firebaseMessaging.getToken().then((value) {
//       print("notification $value");
//     });
//     _firebaseMessaging.configure(
//       onMessage: onMessage,
//       onResume: onResume,
//       onLaunch: onLaunch,
//       onBackgroundMessage: Platform.isIOS ? null : myBackgroundMessageHandler,
//     );
//   }

//   Future onMessage(Map<dynamic, dynamic> message) async {
//     //run when receive notification in foreground
//     print("notification onMessage $message");
//     try {
//       Map<dynamic, dynamic> notification = Platform.isAndroid
//           ? message['notification']
//           : message['aps']['alert'];
//       LocaleNotification.instance.displayingNotification(
//           PromotionChannel.channelID,
//           PromotionChannel.channelName,
//           PromotionChannel.channelDescription,
//           notification['title'],
//           notification['body']);
//       await Provider.of<NotificationViewModel>(context).getNotification();
//     } catch (e) {
//       print("Local $e");
//     }
//   }

//   Future onResume(Map<String, dynamic> message) {
//     print("notification onResume $message");
//     //run when open app and click home, then receive notification
//     //push to notification page
//     Navigator.of(context).pushNamed('/notificaion_screen');
//   }

//   Future onLaunch(Map<String, dynamic> message) {
//     print("notification onLaunch $message");
//     //run when app is not yet open
//     //push to notification page
//     Navigator.of(context).pushNamed('/notificaion_screen');
//   }

//   Future onDidReceiveLocalNotification(
//       int id, String title, String body, String payload) {
//     print("notification onDidReceiveLocalNotification $payload");
//   }

//   Future onSelectNotification(String payload) {
//     print("notification onSelectNotification $payload");
//     //run when click local notification
//     //push to notification page
//     Navigator.of(context).pushNamed('/notificaion_screen');
//   }
// }

// Future<dynamic> myBackgroundMessageHandler(Map<String, dynamic> message) async {
//   print("notification myBackgroundMessageHandler $message");
//   if (message.containsKey('data')) {
//     // Handle data message
//     final dynamic data = message['data'];
//   }

//   if (message.containsKey('notification')) {
//     // Handle notification message
//     final dynamic notification = message['notification'];
//   }

//   // Or do other work.
// }
