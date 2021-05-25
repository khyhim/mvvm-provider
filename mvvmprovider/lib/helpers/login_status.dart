/*
| ---------------------------------------------------------------------- 
| Add More Action Button / Menu
| ----------------------------------------------------------------------     
|
|
|
|
|
*/

// import 'package:aklasse/components/warning/warning_dialog.dart';
// import 'package:aklasse/viewmodels/login_viewmodel.dart';
// import 'package:aklasse/viewmodels/videoedcucation_viewmodel.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// enum LoginStatus {
//   not_yet,
//   success,
//   fail
// }

// class LoginObserver extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Builder(
//       builder: (context) {
//         return Selector<LoginViewModel, LoginStatus>(
//           selector: (context, LoginViewModel model) => model.loginStatus,
//           builder: (context, LoginStatus loginStatus, _) {
//             //if user is null, mean not yet login
//             //if user not null, mean already login, go to home
//             if (loginStatus == LoginStatus.success) {
//               //go to home
//               WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//                 Navigator.of(context).pushNamedAndRemoveUntil('/main_screen', (Route<dynamic> route) => false);
//               });
//             } else if (loginStatus == LoginStatus.fail) {
//               //go to signup
//               WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//                 Navigator.of(context).pushReplacementNamed('/create_account_screen');
//               });
//             }
//             return SizedBox.shrink();
//           },
//         );
//       },
//     );
//   }
// }

// class ErrorObserver extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Builder(
//       builder: (context) {
//         return Selector<LoginViewModel, String>(
//           selector: (context, LoginViewModel model) => model.errorMessage,
//           builder: (context, String errorMessage, _) {
//             if(errorMessage != null){
//               WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
//                 await showWarningDialog(context,(){
//                   Provider.of<LoginViewModel>(context).errorMessage = null;
//                 });
//               });
//             }
//             return SizedBox.shrink();
//           },
//         );
//       },
//     );
//   }
// }

