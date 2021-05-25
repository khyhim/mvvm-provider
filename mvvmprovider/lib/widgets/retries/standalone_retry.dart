
/*
| ---------------------------------------------------------------------- 
| Add More Action Button / Menu
| ----------------------------------------------------------------------     
|
|
|
|
*/


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'package:tryjins/constants/colors.dart';
// import 'package:tryjins/constants/static_texts.dart';

// class RetryStandalone extends StatelessWidget {
//   final Function onRetry;

//   /*
//   *   Constructor
//   *
//   *   @param    onRetry     Function                Callback function when retry button is tapped
//   */
//   RetryStandalone({
//     this.onRetry,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Container(
//           width: 200,
//           height: 200,
//           decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0), color: Colors.white),
//           child: Column(
//             children: <Widget>[
//               SizedBox(
//                 height: 50.0,
//               ),
//               Center(
//                 child: Image(
//                   width: 30.0,
//                   image: AssetImage('assets/images/no_connection.png'),
//                   color: Colors.black54,
//                 ),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Center(
//                 child: Text(
//                   '${MyStaticTexts.noInternetConnection}',
//                   style: TextStyle(
//                     color: Colors.black54,
//                     fontSize: 12.0,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Center(
//                 child: CupertinoButton(
//                   padding: EdgeInsets.all(0),
//                   child: Text(
//                     '${MyStaticTexts.retry}',
//                     style: TextStyle(
//                       color: MyColors.primary(),
//                     ),
//                   ),
//                   onPressed: () {
//                     onRetry();
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
