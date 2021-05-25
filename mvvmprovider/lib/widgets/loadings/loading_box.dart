
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

// class LoadingBox extends StatelessWidget {
//   final Widget child;
//   final bool visible;

//   /*
//   *   Constructor
//   *
//   *   @param    child                 Widget                  Child widget
//   *   @param    visible               EdgetInsets             Whether to show the view
//   */
//   LoadingBox({
//     @required this.child,
//     this.visible = false,
//   }) : assert(child != null);

//   @override
//   Widget build(BuildContext context) {
//     if (visible) {
//       return Stack(
//         children: <Widget>[
//           child,
//           Stack(
//             children: <Widget>[
//               Opacity(
//                 opacity: 0.8,
//                 child: ModalBarrier(
//                   color: Colors.white,
//                   dismissible: true,
//                 ),
//               ),
//               Center(
//                 child: Container(
//                   width: 150,
//                   height: 150,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5.0),
//                     color: MyColors.primary(),
//                   ),
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(
//                         height: 40.0,
//                       ),
//                       Center(
//                         child: CircularProgressIndicator(
//                           valueColor: AlwaysStoppedAnimation(Colors.white),
//                           strokeWidth: 2.0,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20.0,
//                       ),
//                       Center(
//                         child: Text(
//                           '${MyStaticTexts.loading}',
//                           style: TextStyle(
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       );
//     } else {
//       return child;
//     }
//   }
// }
