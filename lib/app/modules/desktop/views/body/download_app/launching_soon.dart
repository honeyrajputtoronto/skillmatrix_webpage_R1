import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillmatrix_new_webpage/utilities/gradient_box.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skillmatrix_new_webpage/app/modules/desktop/views/body/download_app/slantlinepainter.dart';
import 'package:skillmatrix_new_webpage/utilities/gradient_circle.dart';

class LaunchingSoon extends StatelessWidget {
  const LaunchingSoon({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Container(
        // color:Colors.pink[100],
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

          const GradientCircle(
            width: 10, 
            height: 10),
           SizedBox(width: 1.w),
           const  GradientCircle(
            width: 20, 
            height: 20),
            SizedBox(width: 1.w),
           const  GradientCircle(
            width: 30, 
            height: 30),
            SizedBox(width: 1.w),
              Text(
                "Launching Soon",
                // textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 5.sp,
                    color: const Color.fromARGB(224, 224, 225, 253),
                    height: 1.21),
              ),

            SizedBox(width: 1.w),
           const GradientCircle(
            width: 30, 
            height: 30),
            SizedBox(width: 1.w),
           const  GradientCircle(
            width: 20, 
            height: 20),
            SizedBox(width: 1.w),
            const GradientCircle(
            width: 10, 
            height: 10),



        ],)
      ),
      );
  }
}