import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../../utilities/gradient_text.dart';

class Gamification extends StatelessWidget {
  const Gamification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Add Gamification In Your Course',
            style: TextStyle(
                fontSize: 8.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children :[
            Container(
              width: 35.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children :[
                  GradientText(
                    'Create or Select Tournament',
                    style: TextStyle(fontSize: 6.sp, fontWeight: FontWeight.bold),
                    gradient: const LinearGradient(
                        colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    'Make your own learning content in the Creator, use our question generator powered by AI, or choose from ready-to-play tournaments created by our Verified creators and content partners on our platform.',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 5.sp,
                        color: Colors.white),
                  ),
                ]
              ),
            ),
            SizedBox(width: 3.w),
            Image.asset(
              'assets/images/g1.png',
              height: 35.h,
              width: 35.w,
            ),
          ]
        ),
        SizedBox(height: 5.h),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children :[
              Image.asset(
                'assets/images/g2.png',
                height: 35.h,
                width: 35.w,
              ),
              SizedBox(width: 3.w),
              Container(
                width: 35.w,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children :[
                      GradientText(
                        'Host and Play',
                        style: TextStyle(fontSize: 6.sp, fontWeight: FontWeight.bold),
                        gradient: const LinearGradient(
                            colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        'Invite students to join on any device, in-person, virtually, or in a hybrid learning environment, at skillmatrix.tech through a simple QR code, link in your LMS or game pin.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 5.sp,
                            color: Colors.white),
                      ),
                    ]
                ),
              ),

            ]
        ),
        SizedBox(height: 5.h),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children :[
              Container(
                width: 35.w,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children :[
                      GradientText(
                        'Review',
                        style: TextStyle(fontSize: 6.sp, fontWeight: FontWeight.bold),
                        gradient: const LinearGradient(
                            colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        'As soon as the tournament is done, you’ll be able to view a full report of your student\'s responses and even identify difficult questions to reinforce learning and knowledge retention!.',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 5.sp,
                            color: Colors.white),
                      ),
                    ]
                ),
              ),
              SizedBox(width: 3.w),
              Image.asset(
                'assets/images/g3.png',
                height: 35.h,
                width: 35.w,
              ),
            ]
        ),
      ],
    );
  }
}
