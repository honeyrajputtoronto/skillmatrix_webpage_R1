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
            style: TextStyle(fontSize: 8.w, fontWeight: FontWeight.bold),
            gradient: const LinearGradient(
                colors: [Color(0xFFE86E80), Color(0xFFE89C78)]),
          ),
        ),
        SizedBox(height: 2.h),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Text(
                  textAlign: TextAlign.center,
                  'All you need to make learning awesome',
                  style: TextStyle(
                    fontSize: 6.w,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 1.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal : 8.w),
                  child: Text(
                    textAlign: TextAlign.center,
                    'SkillMatrix is the all-in-one engagement, assessment, and review tool loved by teachers, students and admins.',
                    style: TextStyle(
                      fontSize: 3.w,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              Container(
                height: 52.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          'assets/images/teamelimination.png',
                         height: 40.w,
                          width: 80.w,
                        ),
                        Positioned(
                          bottom: -20.w,
                          right: -10.w,
                          child: Image.asset(
                            'assets/images/head-to-head.png',
                            height: 40.w,
                            width: 80.w,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
