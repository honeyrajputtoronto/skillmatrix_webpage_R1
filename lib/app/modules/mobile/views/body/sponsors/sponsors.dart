import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillmatrix_new_webpage/utilities/gradient_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sponsors extends StatelessWidget {
  const Sponsors({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w,right :4.w,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GradientText(
            "Trusted and partnered with",
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 232, 110, 128),
                Color.fromARGB(255, 232, 156, 120),
              ],
            ),
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 7.w,
            ),
          ),
          SizedBox(height: 10.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/sponsors/EV.svg",
                //height: 0.7 * 10.h, // Scale height by 1.5
                width: 30.w,  // Scale width by 1.5
              ),
              Image.asset(
                "assets/icons/sponsors/IBZ.png",
               //height: 10.h,
               width: 30.w,
              ),

            ],
          ),
          SizedBox(height: 10.w),
        ],
      ),
    );
  }
}
