// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:skillmatrix_new_webpage/utilities/gradient_box.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:skillmatrix_new_webpage/app/modules/desktop/views/body/download_app/slantlinepainter.dart';
// import 'package:skillmatrix_new_webpage/app/modules/desktop/views/body/download_app/launching_soon.dart';
// import 'dart:async';
//
// class UniButton extends StatefulWidget {
//   const UniButton({Key? key}) : super(key: key);
//
//   @override
//   _UniButtonState createState() => _UniButtonState();
// }
//
// class _UniButtonState extends State<UniButton> {
//   bool isDownloadButtonClicked = false;
//
//   void _onDownloadButtonClicked() {
//     setState(() {
//       isDownloadButtonClicked = true;
//       // Start the timer when the button is clicked
//       Timer(const Duration(seconds: 5), () {
//         setState(() {
//           // After 5 seconds, set the isDownloadButtonClicked back to false
//           isDownloadButtonClicked = false;
//         });
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (isDownloadButtonClicked) {
//       return
//         const LaunchingSoon();
//     } else {
//       return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 00),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GradientBox(
//               height: 7.2.h, //7.6.h,
//               width: 12.w, //12.w
//               radius: 10,
//               padding: const EdgeInsets.all(8),
//               child: ElevatedButton(
//                 onPressed: _onDownloadButtonClicked,
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.transparent,
//                     shadowColor: Colors.transparent
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//
//                   children: [
//                     SvgPicture.asset(
//                       "assets/icons/download_app/apple.svg",
//                       height: 3.h,
//                       width: 3.w,
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//
//                         Text(
//                           "Download on the",
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                               fontWeight: FontWeight.w200,
//                               fontSize: 2.sp,
//                               color: const Color.fromARGB(224, 251, 251, 252),
//                               height: 1.21),
//                         ),
//
//                         Text(
//                           "Apple Store",
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 3.sp,
//                               color: Colors.white,
//                               height: 1.21),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//
//
//
//             SizedBox(width: 2.w),
//             CustomPaint(
//               size: Size(1.w, 5.w),
//               painter: SlantLinePainter(),
//             ),
//             SizedBox(width: 2.w),
//
//
//
//
//             GradientBox(
//               height: 7.2.h,
//               width: 12.w,
//               radius: 10,
//               padding: const EdgeInsets.all(8),
//               child: ElevatedButton(
//                 onPressed: _onDownloadButtonClicked,
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.transparent,
//                     shadowColor: Colors.transparent
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SvgPicture.asset(
//                       "assets/icons/download_app/playstore.svg",
//                       height: 3.h,
//                       width: 3.w,
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Download on the",
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                               fontWeight: FontWeight.w200,
//                               fontSize: 2.sp,
//                               color: const Color.fromARGB(224, 251, 251, 252),
//                               height: 1.21),
//                         ),
//
//                         Text(
//                           "Google Play",
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 3.sp,
//                               color: Colors.white,
//                               height: 1.21),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     }
//   }
// }
