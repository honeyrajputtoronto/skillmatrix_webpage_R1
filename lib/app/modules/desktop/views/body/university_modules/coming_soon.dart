import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../../utilities/gradient_text.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: GradientText(
            'Coming Soon !!',
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
            gradient: const LinearGradient(
                colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
          ),
        ),
        SizedBox(height: 6.h),
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(children: [
                    Text(
                      'All you need to make learning awesome',
                      style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 2.5.h),
                    Text(
                      'SkillMatrix is the all-in-one engagement, assesment, and review tool loved by teachers, students and admins.',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                      ),
                    ),
                  ]),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 52.h,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Image.asset(
                                'assets/images/teamelimination.png',
                                height: 35.h,
                                width: 35.w,
                              ),
                              Positioned(
                                bottom: -17.h,
                                right: -17.w,
                                child: Image.asset(
                                  'assets/images/head-to-head.png',
                                  height: 35.h,
                                  width: 35.w,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            ]),
        SizedBox(
          height: 7.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children :[
            Text(
              'Engage students in learning through',
              style: TextStyle(
                fontSize: 8.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            GradientText(
              ' GAMIFICATION',
              style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.bold),
              gradient: const LinearGradient(
                  colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
            ),
          ]
        ),
        SizedBox(
          height: 3.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children :[
            Container(
              width: 90.w,
              child: Text(
                'Turn your lessons into interactive experiences that motivate students to actively participate in learning. Incorporate challenges, rewards, and tournament-styled competitions in your existing lesson content through a variety of question types and game modes to boost your students’ focus and enthusiasm for learning.',
                style: TextStyle(
                  fontSize: 5.sp,
                  color: Colors.white,
                ),
                  textAlign: TextAlign.center,
              ),
            ),
          ]
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          decoration : BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey[400],
          ),
          height: 25.h,
          width: 85.w,
          child : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children : [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children :[
                  Icon(
                      Icons.horizontal_split,
                      color: const Color.fromRGBO(101, 54, 202, 1),
                      size : 5.w,
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    'Review Content',
                    style: TextStyle(
                      fontSize: 5.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ]
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children :[
                    Icon(
                      Icons.school,
                      color: const Color.fromRGBO(101, 54, 202, 1),
                      size : 5.w,
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      'Reinforce Learning',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ]
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children :[
                    Icon(
                      Icons.psychology,
                      color: const Color.fromRGBO(101, 54, 202, 1),
                      size : 5.w,
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      'Increase Focus and Motivation',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ]
              ),
            ],
          ),
        )
      ],
    );
  }
}
