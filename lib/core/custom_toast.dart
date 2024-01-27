// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'pallete.dart';

// showToast(String msg) {
//   Fluttertoast.showToast(
//     msg: msg,
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb: 2,
//     backgroundColor: Pallete.mainColor,
//     textColor: Colors.white,
//     fontSize: 16.0,
//   );
// }

// void showSnackBar({
//   required String title,
//   required String msg,
//   int type = -1, // 0 for success, 1 for error, default for normal snackbar
// }) {
//   IconData? iconData;
//   Color? iconColor;

//   switch (type) {
//     case 0:
//       iconData = Icons.check_circle;
//       iconColor = Colors.white;
//       break;
//     case 1:
//       iconData = Icons.error;
//       iconColor = Colors.white;
//       break;
//     default:
//       break;
//   }

//   Get.snackbar(
//     title,
//     msg,
//     duration: const Duration(seconds: 3),
//     colorText: Colors.white,
//     forwardAnimationCurve: Curves.elasticInOut,
//     reverseAnimationCurve: Curves.easeOut,
//     snackPosition: SnackPosition.BOTTOM,
//     borderRadius: 15,
//     backgroundColor: Pallete.mainColor,
//     margin: const EdgeInsets.only(bottom: 100, left: 20, right: 20),
//     icon: iconData != null ? Icon(iconData, color: iconColor) : null,
//     padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
//   );
// }
