
/*
| ---------------------------------------------------------------------- 
| Add More Action Button / Menu
| ----------------------------------------------------------------------     
|
|
|
|
*/
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:timeago/timeago.dart' as timeago;

// class TimeAgoView extends StatefulWidget {
//   final DateTime datetime;
//   final TextStyle style;

//   /*
//   *   Constructor
//   *
//   *   @param    datetime               DateTime              Initial date and time
//   *   @param    style                  TextStyle             Text style
//   */
//   TimeAgoView({
//     @required this.datetime,
//     this.style,
//   }) : assert(datetime != null);

//   @override
//   State<StatefulWidget> createState() => _TimeAgoState();
// }

// class _TimeAgoState extends State<TimeAgoView> {
//   Timer timer;

//   @override
//   void initState() {
//     timer = Timer.periodic(const Duration(minutes: 1), (Timer t) {
//       setState(() {});
//     });

//     super.initState();
//   }

//   @override
//   void dispose() {
//     timer.cancel();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       '${timeago.format(widget.datetime, locale: 'en_short')}',
//       style: widget.style != null ? widget.style : TextStyle(),
//     );
//   }
// }
